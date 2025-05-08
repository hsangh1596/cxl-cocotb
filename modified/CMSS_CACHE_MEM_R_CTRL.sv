// Copyright (c) 2024 Sungkyunkwan University
// All rights reserved
// Author: Jungrae Kim <dale40@gmail.com>
// Description:

`include "CMSS_PKG.svh"

module CMSS_CACHE_MEM_R_CTRL (
    input   wire                        aclk
  , input   wire                        areset_n

  , AXI4_R_IF.master                    mem_r_if

  , CMSS_MEM_RD_IF.src                  axi_ctxt_rd_if
  , CMSS_MEM_WR_IF.src                  cxl_ctxt_wr_if

    // for read hits
  , CMSS_CACHE_RDATA_WR_IF.src          rdata_wr_if

    // for write hits
  , CMSS_CACHE_MEM_WR_IF.src            mem_wr_if
  , CMSS_CACHE_METADATA_WR_IF.src       metadata_wr_if

    // for misses (to host)
  , output  logic                       d2h_req_return_credit_o
  , CMSS_CACHE_D2H_REQ_WR_IF.src        d2h_req_wr_if

    // debugging
  , output  logic                       warn_awcache_o
  , output  logic                       warn_arcache_o
);
    import CMSS_PKG::*;
    import CPI_PKG::*;
    import CXL_PKG::*;
    import AXI4_PKG::*;

    typedef struct packed {
        logic   [MEM_ID_WIDTH-1:0]      rid;
        logic   [AXI_DATA_WIDTH-1:0]    rdata;
        logic   [1:0]                   rresp;
        logic                           rfirst;
        logic                           rlast;
    } rch_entry_t;

    //--------------------------------------------------------------------
    // RFIRST (a.k.a. SOP (Start Of Packet)) generation
    // - The first data contains the cache metadata
    localparam MEM_ID_CNT               = 1 << MEM_ID_WIDTH;
    wire                                rfirst_by_axi_id[MEM_ID_CNT];

    generate
        for (genvar geni = 0; geni < MEM_ID_CNT; geni = geni+1) begin: sop_gen_by_axi_id
            SAL_SOP_GEN                         u_sop_gen
            (
                .clk                            (aclk)
              , .rst_n                          (areset_n)

              , .handshake_i                    (mem_r_if.rvalid & mem_r_if.rready & (mem_r_if.rid == geni))
              , .last_i                         (mem_r_if.rlast)

              , .sop_o                          (rfirst_by_axi_id[geni])
            );
        end
    endgenerate

    //--------------------------------------------------------------------
    // The overall operation looks like this.
    //--------------------------------------------------------------------
    // (RD: 3-burst)
    // clk          : __--__--__--__--__--__--__
    // rvalid       : ___------------___________
    // rfirst (SOP) : -------________-----------
    // rlast        : ___________----___________
    // rdata        :   |tag|D0 |D1 |

    // ctxt_rden    : _______----_______________
    // ctxt_raddr   :        |RID|

    // (WR: 1-burst)
    // clk          : __--__--__--__--__--__--__
    // rvalid       : ___----___________________
    // rfirst (SOP) : --------------------------
    // rlast        : ___----___________________
    // rdata        :   |tag|

    // ctxt_rden    : _______----_______________
    // ctxt_raddr   :        |RID|

    // CHECKME: no backpressure on mem_r_if
    //      d2h_req_wr_if.ready can be 'b0, but it should not wait for the valid signal
    //      RAMs(axi_ctxt_rd_if, cxl_ctxt_wr_if) don't have backpressure
    //      others(mem_wr_if, metadata_wr_if, rdata_wr_if) should be always 'b1
    assign  mem_r_if.rready             = d2h_req_wr_if.ready;

    //--------------------------------------------------------------------
    // buffer the data for timing closure
    //--------------------------------------------------------------------
    logic                               delayed_rch_valid;
    rch_entry_t                         delayed_rch_entry;

    always_ff @(posedge aclk)
        if (~areset_n) begin
            delayed_rch_valid               <= 1'b0;
            // do not reset the data to save area
        end
        else begin
            delayed_rch_valid               <= mem_r_if.rvalid & mem_r_if.rready;
            delayed_rch_entry.rid           <= mem_r_if.rid;
            delayed_rch_entry.rdata         <= mem_r_if.rdata;
            delayed_rch_entry.rresp         <= mem_r_if.rresp;
            delayed_rch_entry.rfirst        <= rfirst_by_axi_id[mem_r_if.rid];
            delayed_rch_entry.rlast         <= mem_r_if.rlast;
        end

    //--------------------------------------------------------------------
    // Fetch the AXI context
    //--------------------------------------------------------------------
    assign  axi_ctxt_rd_if.rden         = delayed_rch_valid * delayed_rch_entry.rfirst;
    assign  axi_ctxt_rd_if.raddr        = delayed_rch_entry.rid;

    //--------------------------------------------------------------------
    // align AXI R data with context data
    //--------------------------------------------------------------------
    wire                                aligned_rch_valid;
    rch_entry_t                         aligned_rch_entry;

    SAL_DELAY
    #(
        .DELAY                          (1)
      , .DATA_TYPE                      (rch_entry_t)
    )
    u_ctxt_rd_delay
    (
        .clk                            (aclk)
      , .rst_n                          (areset_n)

      , .valid_i                        (delayed_rch_valid)
      , .data_i                         (delayed_rch_entry)
      , .valid_o                        (aligned_rch_valid)
      , .data_o                         (aligned_rch_entry)
    );

    //----------------------------------------------------------
    logic                               rd_forward_by_axi_id[MEM_ID_CNT];
    logic                               rd_forward_by_axi_id_n[MEM_ID_CNT];

    always_ff @(posedge aclk)
        if (~areset_n) begin
            for (int i = 0; i < MEM_ID_CNT; i++) begin
                rd_forward_by_axi_id[i]         <= 1'b0;
            end
        end
        else begin
            rd_forward_by_axi_id            <= rd_forward_by_axi_id_n;
        end

    //----------------------------------------------------------
    // The cache should NOT hold the RREADY for a long period of time.
    // - Otherwise, other masters cannot receive their data, leading
    //  to a congestion or deadlock.
    // - To achieve that, before sending an AXI request, make sure that
    //  the cache has enough room to receive RDATA in any cases;
    //   . RD hit case: OK (the request has been sent with an allocated slot)
    //   . WR hit case: NOT OK yet (use a linked list)
    //   . RD/WR miss cases: OK (the request has been sent with a D2H REQ credit)
    assign  metadata_wr_if.req          = mem_wr_if.valid & mem_wr_if.ready;
    assign  metadata_wr_if.wlast        = (mem_wr_if.req.alen == 'b0); // in case tag_only

    always_comb begin
        logic                           write_cache;
        logic   [3:0]                   acache;
        logic   [CACHE_TAG_WIDTH-1:0]   axi_tag;
        cache_metadata_t                rch_metadata;
        cache_state_t                   state;
        logic                           cache_hit;

`ifdef VIVADO_DEMO
        write_cache                     = 1'b0;
        acache                          = AXI4_AWCACHE_WB_WA;
        mem_wr_if.req.acache            = AXI4_AWCACHE_WB_WA;
        axi_tag                         = get_cache_tag(axi_ctxt_rd_if.rdata.aaddr);
        rch_metadata                    = aligned_rch_entry.rdata;
        state                           = STATE_MODIFIED;
        cache_hit                       = 1'b1;
        metadata_wr_if.data.state       = STATE_MODIFIED;
`else
        write_cache                     = 1'b0;
        acache                          = axi_ctxt_rd_if.rdata.acache;
        axi_tag                         = get_cache_tag(axi_ctxt_rd_if.rdata.aaddr);
        rch_metadata                    = aligned_rch_entry.rdata;
        state                           = rch_metadata.state;
        cache_hit                       = ((rch_metadata.tag == axi_tag)
                                            & (state != STATE_INVALID));
`endif

        rdata_wr_if.req                 = 1'b0;
        rdata_wr_if.slot_id             = aligned_rch_entry.rid;    // slot ID
        rdata_wr_if.offset              = aligned_rch_entry.rlast;
        rdata_wr_if.data.rdata          = aligned_rch_entry.rdata;
        rdata_wr_if.data.rresp          = aligned_rch_entry.rresp;
        rdata_wr_if.data.rlast          = aligned_rch_entry.rlast;

        mem_wr_if.valid                 = 1'b0;
        `CMSS_AXI4_REQ_CONNECT(axi_ctxt_rd_if.rdata, mem_wr_if.req)
        mem_wr_if.req.aid               = aligned_rch_entry.rid;
        mem_wr_if.req.aaddr             = get_dram_addr(axi_ctxt_rd_if.rdata.aaddr);
        mem_wr_if.req.alen              = CMSS_WRITE_ALEN; // 3-cycle
        mem_wr_if.req.asize             = CMSS_WRITE_ASIZE;
        mem_wr_if.req.aburst            = CMSS_WRITE_ABURST;
        mem_wr_if.slot_id               = aligned_rch_entry.rid;

        metadata_wr_if.slot_id          = aligned_rch_entry.rid;
        metadata_wr_if.data             = {$bits(wdata_metadata_t){1'bx}};
        metadata_wr_if.data.tag         = axi_tag;

        d2h_req_wr_if.valid             = 1'b0;
        d2h_req_wr_if.req               = {$bits(cpi_req_t){1'bx}};
        d2h_req_wr_if.req.addr          = axi_ctxt_rd_if.rdata.aaddr[51:6];
        d2h_req_wr_if.req.id            = aligned_rch_entry.rid;    // slot ID
        d2h_req_return_credit_o         = 1'b0;

        cxl_ctxt_wr_if.wren             = 1'b0;
        cxl_ctxt_wr_if.waddr            = aligned_rch_entry.rid;    // slot ID
        cxl_ctxt_wr_if.wdata            = {$bits(cxl_ctxt_wr_if.wdata){1'b0}};
        cxl_ctxt_wr_if.wdata.hit        = cache_hit;
        cxl_ctxt_wr_if.wdata.state      = state;
        cxl_ctxt_wr_if.wdata.req        = axi_ctxt_rd_if.rdata;

        rd_forward_by_axi_id_n          = rd_forward_by_axi_id;

        warn_awcache_o                  = 1'b0;
        warn_arcache_o                  = 1'b0;

        if (aligned_rch_valid) begin
            //if (metadata.tag == axi_ctxt_rd_if.rdata.aaddr) begin // Cache hit/miss
            if (aligned_rch_entry.rfirst) begin // 1st cycle: metadata
                if (axi_ctxt_rd_if.rdata.core_rw == CMSS_AXI4_AW) begin
`ifdef DEVEL_CXL
                    case (acache)
                        AXI4_AWCACHE_DNB,
                        AXI4_AWCACHE_DB,
                        AXI4_AWCACHE_NC_NB,
                        AXI4_AWCACHE_NC_B: begin
                            if (cache_hit) begin
                                case (state)
                                    STATE_INVALID: begin    // not allowed
                                    end
                                    STATE_SHARED,
                                    STATE_EXCLUSIVE: begin  // flush old data
                                        d2h_req_wr_if.valid             = 1'b1;
                                        d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_CLEAN_EVICT_ND;
                                    end
                                    STATE_MODIFIED: begin   // evict old data
                                        d2h_req_wr_if.valid             = 1'b1;
                                        d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_DIRTY_EVICT;
                                        // TODO: send old data to core_r
                                    end
                                endcase
                            end
                            else begin // cache_miss
                                d2h_req_wr_if.valid             = 1'b1;
                                d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_MEM_WR;
                            end
                        end

                        AXI4_AWCACHE_WB_NA: begin
                            if (cache_hit) begin
                                case (state)
                                    STATE_INVALID: begin    // not allowed
                                    end
                                    STATE_SHARED: begin     // get grant
                                        d2h_req_wr_if.valid             = 1'b1;
                                        d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_RD_OWN_ND;
                                    end
                                    STATE_EXCLUSIVE: begin  // Cache write
                                        mem_wr_if.valid                 = 1'b1;
                                        metadata_wr_if.data.state       = STATE_MODIFIED;
                                    end
                                    STATE_MODIFIED: begin   // Cache write (data only)
                                        mem_wr_if.valid                 = 1'b1;
                                        mem_wr_if.req.aaddr[6:5]        = mem_wr_if.req.aaddr[6:5] + 'd1;
                                        mem_wr_if.req.alen              = CMSS_WRITE_ALEN_DATA; // data only
                                    end
                                endcase
                            end
                            else begin // cache_miss
                                d2h_req_wr_if.valid             = 1'b1;
                                d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_MEM_WR;
                            end
                        end

                        AXI4_AWCACHE_WB_WA,
                        AXI4_AWCACHE_WB_WA2: begin
                            if (cache_hit) begin
                                case (state)
                                    STATE_INVALID: begin    // not allowed
                                    end
                                    STATE_SHARED: begin     // get grant
                                        d2h_req_wr_if.valid             = 1'b1;
                                        d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_RD_OWN_ND;
                                    end
                                    STATE_EXCLUSIVE: begin  // Cache write
                                        mem_wr_if.valid                 = 1'b1;
                                        metadata_wr_if.data.state       = STATE_MODIFIED;
                                    end
                                    STATE_MODIFIED: begin   // Cache write (data only)
                                        mem_wr_if.valid                 = 1'b1;
                                        mem_wr_if.req.aaddr[6:5]        = mem_wr_if.req.aaddr[6:5] + 'd1;
                                        mem_wr_if.req.alen              = CMSS_WRITE_ALEN_DATA; // data only
                                    end
                                endcase
                            end
                            else begin // cache_miss
                                case (state)
                                    STATE_INVALID: begin    // get grant
                                        d2h_req_wr_if.valid             = 1'b1;
                                        d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_RD_OWN_ND;
                                    end
                                    STATE_SHARED,
                                    STATE_EXCLUSIVE: begin  // clean evict victim data
                                        d2h_req_wr_if.valid             = 1'b1;
                                        d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_CLEAN_EVICT_ND;
                                    end
                                    STATE_MODIFIED: begin   // dirty evict victim data
                                        d2h_req_wr_if.valid             = 1'b1;
                                        d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_DIRTY_EVICT;
                                        // TODO: send victim data to core_r
                                    end
                                endcase
                            end
                        end

                        default:
                            case (state)
                                STATE_INVALID,
                                STATE_SHARED,
                                STATE_EXCLUSIVE,
                                STATE_MODIFIED: begin
                                    d2h_req_wr_if.valid             = 1'b1;
                                    d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_MEM_WR;
                                end
                            endcase
                    endcase
`else
                    // write to ME_AW and MEM_W
                    mem_wr_if.valid                 = 1'b1;
                    mem_wr_if.req.aaddr[6:5]        = mem_wr_if.req.aaddr[6:5] + 'd1;
                    mem_wr_if.req.alen              = CMSS_WRITE_ALEN_DATA; // data only
`endif
                end
                else begin // CMSS_AXI4_AR
                    rd_forward_by_axi_id_n[aligned_rch_entry.rid]   = 1'b0;
`ifdef DEVEL_CXL
                    case (acache)
                        AXI4_ARCACHE_DNB,
                        AXI4_ARCACHE_DB,
                        AXI4_ARCACHE_NC_NB,
                        AXI4_ARCACHE_NC_B: begin
                            if (cache_hit) begin
                                case (state)
                                    STATE_INVALID: begin    // not allowed
                                    end
                                    STATE_SHARED,
                                    STATE_EXCLUSIVE: begin  // flush old data
                                        d2h_req_wr_if.valid             = 1'b1;
                                        d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_CLEAN_EVICT_ND;
                                    end
                                    STATE_MODIFIED: begin   // evict old data
                                        d2h_req_wr_if.valid             = 1'b1;
                                        d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_DIRTY_EVICT;
                                        // TODO: send old data to core_r
                                    end
                                endcase
                            end
                            else begin // cache_miss
                                d2h_req_wr_if.valid             = 1'b1;
                                d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_RD_CURR;
                            end
                        end

                        AXI4_ARCACHE_WB_NA: begin
                            if (cache_hit) begin
                                rd_forward_by_axi_id_n[aligned_rch_entry.rid]   = 1'b1;
                            end
                            else begin // cache_miss
                                d2h_req_wr_if.valid             = 1'b1;
                                d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_RD_CURR;
                            end
                        end

                        AXI4_ARCACHE_WB_RA,
                        AXI4_ARCACHE_WB_RA2: begin
                            if (cache_hit) begin
                                rd_forward_by_axi_id_n[aligned_rch_entry.rid]   = 1'b1;
                            end
                            else begin // cache_miss
                                case (state)
                                    STATE_INVALID: begin    // get grant
                                        d2h_req_wr_if.valid             = 1'b1;
                                        d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_RD_SHARED;
                                    end
                                    STATE_SHARED,
                                    STATE_EXCLUSIVE: begin  // clean evict victim data
                                        d2h_req_wr_if.valid             = 1'b1;
                                        d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_CLEAN_EVICT_ND;
                                    end
                                    STATE_MODIFIED: begin   // dirty evict victim data
                                        d2h_req_wr_if.valid             = 1'b1;
                                        d2h_req_wr_if.req.opcode        = CXL_D2H_REQ_OPCODE_DIRTY_EVICT;
                                        // TODO: send victim data to core_r
                                    end
                                endcase
                            end
                        end
                    endcase
`else
                    rd_forward_by_axi_id_n[aligned_rch_entry.rid]   = 1'b1;
`endif
                end
                d2h_req_return_credit_o         = ~d2h_req_wr_if.valid;
                cxl_ctxt_wr_if.wren             = d2h_req_wr_if.valid;
            end
            //end
            else begin // 2nd/3rd cycle: read data (writes are single-burst)
                if (rd_forward_by_axi_id[aligned_rch_entry.rid]) begin
                    rdata_wr_if.req                 = 1'b1;
                end
            end
        end
    end

    // synopsys translate_off
    wdata_check: assert property (
        @(posedge aclk) disable iff (~areset_n)
        !((aligned_rch_valid)
        && (axi_ctxt_rd_if.rdata.core_rw == CMSS_AXI4_AW)
        && (aligned_rch_entry.rfirst & !aligned_rch_entry.rlast))
    );

    // d2h_req_wr_if_afull_check: assert property (
    //     @(posedge aclk) disable iff (~areset_n)
    //     (d2h_req_wr_if.ready)
    // );
    rdata_wr_if_ready_check: assert property (
        @(posedge aclk) disable iff (~areset_n)
        (rdata_wr_if.req) |-> (rdata_wr_if.ack)
    );
    mem_wr_if_ready_check: assert property (
        @(posedge aclk) disable iff (~areset_n)
        (mem_wr_if.valid) |-> (mem_wr_if.ready)
    );
    metadata_wr_if_ready_check: assert property (
        @(posedge aclk) disable iff (~areset_n)
        (metadata_wr_if.req) |-> (metadata_wr_if.ack)
    );
    // synopsys translate_on

endmodule
