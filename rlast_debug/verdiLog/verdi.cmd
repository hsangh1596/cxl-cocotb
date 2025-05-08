verdiSetActWin -dock widgetDock_<Message>
simSetSimulator "-vcssv" -exec "verdi_db" -args
debImport "-rcfile" "rlast_error.rc" "-dbdir" "verdi_db.daidir"
debLoadSimResult \
           /home/peaceyh1/cocotb/cocotb_cmss_top/tests/cmss_top/rlast_debug/dump.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "1923" "267" "1727" "1163"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvCreateWindow
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/home/peaceyh1/cocotb/cocotb_cmss_top/tests/cmss_top/dump.fsdb}
wvRestoreSignal -win $_nWave3 \
           "/home/peaceyh1/cocotb/cocotb_cmss_top/tests/cmss_top/rlast_debug/rlast_error.rc" \
           -overWriteAutoAlias on -appendSignals on
wvSelectSignal -win $_nWave3 {( "G4" 4 )} 
verdiWindowResize -win $_Verdi_1 "1456" "267" "2194" "1620"
wvZoomAll -win $_nWave3
wvZoom -win $_nWave3 8.781022 66.411809
wvSelectSignal -win $_nWave3 {( "G4" 9 )} 
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoom -win $_nWave3 129.243008 145.270505
wvSetCursor -win $_nWave3 143.945841 -snap {("G4" 7)}
wvSelectSignal -win $_nWave3 {( "G4" 10 )} 
wvSelectSignal -win $_nWave3 {( "G4" 9 )} 
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G4" 7 )} 
wvSelectSignal -win $_nWave3 {( "G4" 6 )} 
wvSetCursor -win $_nWave3 39.216216 -snap {("G4" 6)}
wvSetCursor -win $_nWave3 36.914395 -snap {("G4" 6)}
wvSelectSignal -win $_nWave3 {( "G4" 6 )} 
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 37.911010 -snap {("G4" 6)}
wvSetCursor -win $_nWave3 38.423321 -snap {("G4" 6)}
wvSetCursor -win $_nWave3 32.275589 -snap {("G4" 6)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 141.274214 -snap {("G4" 6)}
wvSetCursor -win $_nWave3 32.143852 -snap {("G4" 6)}
wvSelectGroup -win $_nWave3 {G6}
wvSelectGroup -win $_nWave3 {G5}
wvScrollDown -win $_nWave3 44
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 12
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G5" 17 )} 
wvSetPosition -win $_nWave3 {("G5" 38)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G5" 38)}
wvSetPosition -win $_nWave3 {("G6" 0)}
wvSelectSignal -win $_nWave3 {( "G5" 20 )} 
wvSelectSignal -win $_nWave3 {( "G5" 23 )} 
wvSetCursor -win $_nWave3 33.541445 -snap {("G5" 23)}
wvSetCursor -win $_nWave3 140.514018 -snap {("G5" 23)}
wvSetPosition -win $_nWave3 {("G5" 24)}
wvSetPosition -win $_nWave3 {("G5" 23)}
wvSetPosition -win $_nWave3 {("G5" 9)}
wvSetPosition -win $_nWave3 {("G5" 23)}
srcTraceConnectivity \
           "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_core_r.mem_rdata.rdata\[255:0\]" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mem_rdata.rdata" -line 182 -pos 1 -win $_nTrace1
srcAction -pos 181 7 12 -win $_nTrace1 -name "mem_rdata.rdata" -ctrlKey off
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvGetSignalOpen -win $_nWave3
verdiSetActWin -win $_nWave3
wvGetSignalSetSignalFilter -win $_nWave3 "mem*_r"
wvSetPosition -win $_nWave3 {("G6" 0)}
wvSetPosition -win $_nWave3 {("G6" 0)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_r_if/areset_n} \
{/CMSS_TOP_WRAPPER/core_r_if/count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/last_count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/core_r_if/rready} \
{/CMSS_TOP_WRAPPER/core_r_if/rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rvalid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wrptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_fifo_wr} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rden} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/rd_if/req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/ctrl_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/rdptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_data_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_rd_if/rdata.req.core_rw} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/d2h_fifo_afull} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/acache\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/cache_hit} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/delayed_rsp_header.opcode\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/u_header_delay/valid_arr\[0:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/h2d_rsp_if/rsp_is_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rdptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wren_i} \
}
wvCollapseGroup -win $_nWave3 "G1"
wvAddSignal -win $_nWave3 -group {"G2" \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rst_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/creset_n} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/u_cmss/areset_n} \
{/CMSS_TOP_WRAPPER/areset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/cclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/creset_n} \
{/CMSS_TOP_WRAPPER/creset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/pclk} \
{/CMSS_TOP_WRAPPER/pclk} \
{/CMSS_TOP_WRAPPER/u_cmss/preset_n} \
{/CMSS_TOP_WRAPPER/preset_n} \
}
wvCollapseGroup -win $_nWave3 "G3"
wvAddSignal -win $_nWave3 -group {"G4" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arready} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rready} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rlast} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G5" \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdata_timing_optimize/u_mem/di_a\[263:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_core_id\[4:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_b} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/mem\[0:127\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/winner_wren} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr1_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G6" \
}
wvSetPosition -win $_nWave3 {("G6" 0)}
wvGetSignalSetSignalFilter -win $_nWave3 "mem*_r*"
wvSetPosition -win $_nWave3 {("G6" 0)}
wvSetPosition -win $_nWave3 {("G6" 0)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_r_if/areset_n} \
{/CMSS_TOP_WRAPPER/core_r_if/count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/last_count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/core_r_if/rready} \
{/CMSS_TOP_WRAPPER/core_r_if/rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rvalid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wrptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_fifo_wr} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rden} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/rd_if/req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/ctrl_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/rdptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_data_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_rd_if/rdata.req.core_rw} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/d2h_fifo_afull} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/acache\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/cache_hit} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/delayed_rsp_header.opcode\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/u_header_delay/valid_arr\[0:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/h2d_rsp_if/rsp_is_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rdptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wren_i} \
}
wvCollapseGroup -win $_nWave3 "G1"
wvAddSignal -win $_nWave3 -group {"G2" \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rst_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/creset_n} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/u_cmss/areset_n} \
{/CMSS_TOP_WRAPPER/areset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/cclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/creset_n} \
{/CMSS_TOP_WRAPPER/creset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/pclk} \
{/CMSS_TOP_WRAPPER/pclk} \
{/CMSS_TOP_WRAPPER/u_cmss/preset_n} \
{/CMSS_TOP_WRAPPER/preset_n} \
}
wvCollapseGroup -win $_nWave3 "G3"
wvAddSignal -win $_nWave3 -group {"G4" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arready} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rready} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rlast} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G5" \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdata_timing_optimize/u_mem/di_a\[263:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_core_id\[4:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_b} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/mem\[0:127\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/winner_wren} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr1_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G6" \
}
wvSetPosition -win $_nWave3 {("G6" 0)}
wvGetSignalSetSignalFilter -win $_nWave3 "mem_r*"
wvSetPosition -win $_nWave3 {("G6" 0)}
wvSetPosition -win $_nWave3 {("G6" 0)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_r_if/areset_n} \
{/CMSS_TOP_WRAPPER/core_r_if/count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/last_count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/core_r_if/rready} \
{/CMSS_TOP_WRAPPER/core_r_if/rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rvalid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wrptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_fifo_wr} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rden} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/rd_if/req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/ctrl_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/rdptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_data_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_rd_if/rdata.req.core_rw} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/d2h_fifo_afull} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/acache\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/cache_hit} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/delayed_rsp_header.opcode\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/u_header_delay/valid_arr\[0:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/h2d_rsp_if/rsp_is_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rdptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wren_i} \
}
wvCollapseGroup -win $_nWave3 "G1"
wvAddSignal -win $_nWave3 -group {"G2" \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rst_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/creset_n} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/u_cmss/areset_n} \
{/CMSS_TOP_WRAPPER/areset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/cclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/creset_n} \
{/CMSS_TOP_WRAPPER/creset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/pclk} \
{/CMSS_TOP_WRAPPER/pclk} \
{/CMSS_TOP_WRAPPER/u_cmss/preset_n} \
{/CMSS_TOP_WRAPPER/preset_n} \
}
wvCollapseGroup -win $_nWave3 "G3"
wvAddSignal -win $_nWave3 -group {"G4" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arready} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rready} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rlast} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G5" \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdata_timing_optimize/u_mem/di_a\[263:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_core_id\[4:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_b} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/mem\[0:127\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/winner_wren} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr1_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G6" \
}
wvSetPosition -win $_nWave3 {("G6" 0)}
wvSetPosition -win $_nWave3 {("G6" 6)}
wvSetPosition -win $_nWave3 {("G6" 6)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_r_if/areset_n} \
{/CMSS_TOP_WRAPPER/core_r_if/count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/last_count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/core_r_if/rready} \
{/CMSS_TOP_WRAPPER/core_r_if/rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rvalid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wrptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_fifo_wr} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rden} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/rd_if/req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/ctrl_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/rdptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_data_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_rd_if/rdata.req.core_rw} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/d2h_fifo_afull} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/acache\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/cache_hit} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/delayed_rsp_header.opcode\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/u_header_delay/valid_arr\[0:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/h2d_rsp_if/rsp_is_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rdptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wren_i} \
}
wvCollapseGroup -win $_nWave3 "G1"
wvAddSignal -win $_nWave3 -group {"G2" \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rst_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/creset_n} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/u_cmss/areset_n} \
{/CMSS_TOP_WRAPPER/areset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/cclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/creset_n} \
{/CMSS_TOP_WRAPPER/creset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/pclk} \
{/CMSS_TOP_WRAPPER/pclk} \
{/CMSS_TOP_WRAPPER/u_cmss/preset_n} \
{/CMSS_TOP_WRAPPER/preset_n} \
}
wvCollapseGroup -win $_nWave3 "G3"
wvAddSignal -win $_nWave3 -group {"G4" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arready} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rready} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rlast} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G5" \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdata_timing_optimize/u_mem/di_a\[263:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_core_id\[4:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_b} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/mem\[0:127\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/winner_wren} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr1_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G6" \
{/CMSS_TOP_WRAPPER/mem_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_rid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_rlast} \
{/CMSS_TOP_WRAPPER/mem_rready} \
{/CMSS_TOP_WRAPPER/mem_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/mem_rvalid} \
}
wvAddSignal -win $_nWave3 -group {"G7" \
}
wvSelectSignal -win $_nWave3 {( "G6" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave3 {("G6" 6)}
wvSetPosition -win $_nWave3 {("G6" 6)}
wvSetPosition -win $_nWave3 {("G6" 6)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_r_if/areset_n} \
{/CMSS_TOP_WRAPPER/core_r_if/count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/last_count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/core_r_if/rready} \
{/CMSS_TOP_WRAPPER/core_r_if/rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rvalid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wrptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_fifo_wr} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rden} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/rd_if/req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/ctrl_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/rdptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_data_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_rd_if/rdata.req.core_rw} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/d2h_fifo_afull} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/acache\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/cache_hit} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/delayed_rsp_header.opcode\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/u_header_delay/valid_arr\[0:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/h2d_rsp_if/rsp_is_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rdptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wren_i} \
}
wvCollapseGroup -win $_nWave3 "G1"
wvAddSignal -win $_nWave3 -group {"G2" \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rst_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/creset_n} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/u_cmss/areset_n} \
{/CMSS_TOP_WRAPPER/areset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/cclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/creset_n} \
{/CMSS_TOP_WRAPPER/creset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/pclk} \
{/CMSS_TOP_WRAPPER/pclk} \
{/CMSS_TOP_WRAPPER/u_cmss/preset_n} \
{/CMSS_TOP_WRAPPER/preset_n} \
}
wvCollapseGroup -win $_nWave3 "G3"
wvAddSignal -win $_nWave3 -group {"G4" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arready} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rready} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rlast} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G5" \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdata_timing_optimize/u_mem/di_a\[263:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_core_id\[4:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_b} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/mem\[0:127\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/winner_wren} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr1_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G6" \
{/CMSS_TOP_WRAPPER/mem_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_rid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_rlast} \
{/CMSS_TOP_WRAPPER/mem_rready} \
{/CMSS_TOP_WRAPPER/mem_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/mem_rvalid} \
}
wvAddSignal -win $_nWave3 -group {"G7" \
}
wvSelectSignal -win $_nWave3 {( "G6" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave3 {("G6" 6)}
wvGetSignalClose -win $_nWave3
wvZoom -win $_nWave3 16.012724 34.204694
wvSetCursor -win $_nWave3 20.255541 -snap {("G6" 1)}
wvSetCursor -win $_nWave3 20.101473 -snap {("G6" 1)}
wvSetCursor -win $_nWave3 24.332439 -snap {("G6" 1)}
wvSelectSignal -win $_nWave3 {( "G6" 4 )} 
wvSelectSignal -win $_nWave3 {( "G6" 3 )} 
wvSelectSignal -win $_nWave3 {( "G6" 4 )} 
wvSelectSignal -win $_nWave3 {( "G6" 6 )} 
wvSelectGroup -win $_nWave3 {G7}
wvSelectSignal -win $_nWave3 {( "G6" 5 )} 
wvSelectSignal -win $_nWave3 {( "G6" 2 )} 
wvSelectSignal -win $_nWave3 {( "G6" 1 )} 
wvSelectGroup -win $_nWave3 {G6}
wvSetPosition -win $_nWave3 {("G6" 0)}
wvSelectSignal -win $_nWave3 {( "G6" 5 )} 
wvSelectGroup -win $_nWave3 {G7}
wvSelectSignal -win $_nWave3 {( "G6" 6 )} 
wvSelectSignal -win $_nWave3 {( "G6" 4 )} 
wvSelectSignal -win $_nWave3 {( "G5" 36 )} 
wvSelectSignal -win $_nWave3 {( "G5" 35 )} 
wvZoomOut -win $_nWave3
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 12
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 12
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G4" 6 )} 
wvScrollUp -win $_nWave3 21
wvSelectGroup -win $_nWave3 {G3}
wvSelectSignal -win $_nWave3 {( "G2" 4 )} 
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G2" 4 )} 
wvDisplayGridCount -win $_nWave2 -off
wvCloseGetStreamsDialog -win $_nWave2
wvAttrOrderConfigDlg -win $_nWave2 -close
wvCloseDetailsViewDlg -win $_nWave2
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave3 -off
wvCloseGetStreamsDialog -win $_nWave3
wvAttrOrderConfigDlg -win $_nWave3 -close
wvCloseDetailsViewDlg -win $_nWave3
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 12
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 12
wvSetCursor -win $_nWave3 52.016991 -snap {("G4" 6)}
wvZoom -win $_nWave3 44.974980 80.278931
wvSelectSignal -win $_nWave3 {( "G5" 3 )} 
wvZoomOut -win $_nWave3
wvScrollDown -win $_nWave3 12
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSetCursor -win $_nWave3 39.972629 -snap {("G5" 12)}
wvSetCursor -win $_nWave3 42.180563 -snap {("G5" 12)}
wvSetCursor -win $_nWave3 43.836514 -snap {("G5" 12)}
wvSetCursor -win $_nWave3 42.042567 -snap {("G5" 12)}
wvSelectSignal -win $_nWave3 {( "G5" 13 )} 
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSelectSignal -win $_nWave3 {( "G5" 12 )} 
verdiSetActWin -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G5" 14 )} 
wvDisplayGridCount -win $_nWave2 -off
wvCloseGetStreamsDialog -win $_nWave2
wvAttrOrderConfigDlg -win $_nWave2 -close
wvCloseDetailsViewDlg -win $_nWave2
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave3 -off
wvCloseGetStreamsDialog -win $_nWave3
wvAttrOrderConfigDlg -win $_nWave3 -close
wvCloseDetailsViewDlg -win $_nWave3
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G5" 5 )} 
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 12
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G4" 2 3 4 5 6 7 )} 
wvSelectSignal -win $_nWave3 {( "G4" 2 )} 
wvSelectSignal -win $_nWave3 {( "G4" 1 )} 
wvSelectSignal -win $_nWave3 {( "G4" 7 )} 
wvSetCursor -win $_nWave3 65.357510 -snap {("G4" 2)}
wvSelectSignal -win $_nWave3 {( "G5" 2 )} 
wvSelectSignal -win $_nWave3 {( "G4" 2 )} 
wvSelectSignal -win $_nWave3 {( "G4" 1 )} 
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G4" 6 )} 
wvSelectSignal -win $_nWave3 {( "G4" 7 )} 
wvDisplayGridCount -win $_nWave2 -off
wvCloseGetStreamsDialog -win $_nWave2
wvAttrOrderConfigDlg -win $_nWave2 -close
wvCloseDetailsViewDlg -win $_nWave2
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave3 -off
wvCloseGetStreamsDialog -win $_nWave3
wvAttrOrderConfigDlg -win $_nWave3 -close
wvCloseDetailsViewDlg -win $_nWave3
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G4" 1 )} 
wvSelectSignal -win $_nWave3 {( "G4" 2 )} 
wvZoomOut -win $_nWave3
wvZoomAll -win $_nWave3
wvZoomAll -win $_nWave3
wvZoomAll -win $_nWave3
wvZoomAll -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G5" 2 )} 
wvDisplayGridCount -win $_nWave2 -off
wvCloseGetStreamsDialog -win $_nWave2
wvAttrOrderConfigDlg -win $_nWave2 -close
wvCloseDetailsViewDlg -win $_nWave2
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave3 -off
wvCloseGetStreamsDialog -win $_nWave3
wvAttrOrderConfigDlg -win $_nWave3 -close
wvCloseDetailsViewDlg -win $_nWave3
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G5" 8 )} 
wvSelectGroup -win $_nWave3 {G7}
wvSetPosition -win $_nWave3 {("G7" 0)}
wvSetPosition -win $_nWave3 {("G6" 6)}
wvSetPosition -win $_nWave3 {("G7" 0)}
wvGetSignalOpen -win $_nWave3
wvGetSignalSetSignalFilter -win $_nWave3 "mem_aw*"
wvSetPosition -win $_nWave3 {("G7" 0)}
wvSetPosition -win $_nWave3 {("G7" 0)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_r_if/areset_n} \
{/CMSS_TOP_WRAPPER/core_r_if/count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/last_count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/core_r_if/rready} \
{/CMSS_TOP_WRAPPER/core_r_if/rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rvalid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wrptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_fifo_wr} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rden} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/rd_if/req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/ctrl_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/rdptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_data_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_rd_if/rdata.req.core_rw} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/d2h_fifo_afull} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/acache\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/cache_hit} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/delayed_rsp_header.opcode\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/u_header_delay/valid_arr\[0:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/h2d_rsp_if/rsp_is_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rdptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wren_i} \
}
wvCollapseGroup -win $_nWave3 "G1"
wvAddSignal -win $_nWave3 -group {"G2" \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rst_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/creset_n} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/u_cmss/areset_n} \
{/CMSS_TOP_WRAPPER/areset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/cclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/creset_n} \
{/CMSS_TOP_WRAPPER/creset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/pclk} \
{/CMSS_TOP_WRAPPER/pclk} \
{/CMSS_TOP_WRAPPER/u_cmss/preset_n} \
{/CMSS_TOP_WRAPPER/preset_n} \
}
wvCollapseGroup -win $_nWave3 "G3"
wvAddSignal -win $_nWave3 -group {"G4" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arready} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rready} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rlast} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G5" \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdata_timing_optimize/u_mem/di_a\[263:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_core_id\[4:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_b} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/mem\[0:127\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/winner_wren} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr1_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G6" \
{/CMSS_TOP_WRAPPER/mem_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_rid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_rlast} \
{/CMSS_TOP_WRAPPER/mem_rready} \
{/CMSS_TOP_WRAPPER/mem_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/mem_rvalid} \
}
wvAddSignal -win $_nWave3 -group {"G7" \
}
wvSetPosition -win $_nWave3 {("G7" 0)}
wvGetSignalSetSignalFilter -win $_nWave3 "mem_w*"
wvSetPosition -win $_nWave3 {("G7" 5)}
wvSetPosition -win $_nWave3 {("G7" 5)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_r_if/areset_n} \
{/CMSS_TOP_WRAPPER/core_r_if/count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/last_count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/core_r_if/rready} \
{/CMSS_TOP_WRAPPER/core_r_if/rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rvalid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wrptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_fifo_wr} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rden} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/rd_if/req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/ctrl_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/rdptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_data_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_rd_if/rdata.req.core_rw} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/d2h_fifo_afull} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/acache\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/cache_hit} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/delayed_rsp_header.opcode\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/u_header_delay/valid_arr\[0:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/h2d_rsp_if/rsp_is_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rdptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wren_i} \
}
wvCollapseGroup -win $_nWave3 "G1"
wvAddSignal -win $_nWave3 -group {"G2" \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rst_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/creset_n} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/u_cmss/areset_n} \
{/CMSS_TOP_WRAPPER/areset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/cclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/creset_n} \
{/CMSS_TOP_WRAPPER/creset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/pclk} \
{/CMSS_TOP_WRAPPER/pclk} \
{/CMSS_TOP_WRAPPER/u_cmss/preset_n} \
{/CMSS_TOP_WRAPPER/preset_n} \
}
wvCollapseGroup -win $_nWave3 "G3"
wvAddSignal -win $_nWave3 -group {"G4" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arready} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rready} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rlast} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G5" \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdata_timing_optimize/u_mem/di_a\[263:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_core_id\[4:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_b} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/mem\[0:127\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/winner_wren} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr1_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G6" \
{/CMSS_TOP_WRAPPER/mem_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_rid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_rlast} \
{/CMSS_TOP_WRAPPER/mem_rready} \
{/CMSS_TOP_WRAPPER/mem_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/mem_rvalid} \
}
wvAddSignal -win $_nWave3 -group {"G7" \
{/CMSS_TOP_WRAPPER/mem_awaddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/mem_awvalid} \
{/CMSS_TOP_WRAPPER/mem_awready} \
{/CMSS_TOP_WRAPPER/mem_awlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/mem_awid\[5:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G8" \
}
wvSelectSignal -win $_nWave3 {( "G7" 5 )} 
wvSetPosition -win $_nWave3 {("G7" 5)}
wvGetSignalSetSignalFilter -win $_nWave3 "mem_ar*"
wvSetPosition -win $_nWave3 {("G7" 9)}
wvSetPosition -win $_nWave3 {("G7" 9)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_r_if/areset_n} \
{/CMSS_TOP_WRAPPER/core_r_if/count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/last_count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/core_r_if/rready} \
{/CMSS_TOP_WRAPPER/core_r_if/rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rvalid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wrptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_fifo_wr} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rden} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/rd_if/req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/ctrl_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/rdptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_data_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_rd_if/rdata.req.core_rw} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/d2h_fifo_afull} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/acache\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/cache_hit} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/delayed_rsp_header.opcode\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/u_header_delay/valid_arr\[0:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/h2d_rsp_if/rsp_is_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rdptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wren_i} \
}
wvCollapseGroup -win $_nWave3 "G1"
wvAddSignal -win $_nWave3 -group {"G2" \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rst_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/creset_n} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/u_cmss/areset_n} \
{/CMSS_TOP_WRAPPER/areset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/cclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/creset_n} \
{/CMSS_TOP_WRAPPER/creset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/pclk} \
{/CMSS_TOP_WRAPPER/pclk} \
{/CMSS_TOP_WRAPPER/u_cmss/preset_n} \
{/CMSS_TOP_WRAPPER/preset_n} \
}
wvCollapseGroup -win $_nWave3 "G3"
wvAddSignal -win $_nWave3 -group {"G4" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arready} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rready} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rlast} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G5" \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdata_timing_optimize/u_mem/di_a\[263:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_core_id\[4:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_b} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/mem\[0:127\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/winner_wren} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr1_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G6" \
{/CMSS_TOP_WRAPPER/mem_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_rid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_rlast} \
{/CMSS_TOP_WRAPPER/mem_rready} \
{/CMSS_TOP_WRAPPER/mem_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/mem_rvalid} \
}
wvAddSignal -win $_nWave3 -group {"G7" \
{/CMSS_TOP_WRAPPER/mem_awaddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/mem_awvalid} \
{/CMSS_TOP_WRAPPER/mem_awready} \
{/CMSS_TOP_WRAPPER/mem_awlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/mem_awid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_wdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_wvalid} \
{/CMSS_TOP_WRAPPER/mem_wready} \
{/CMSS_TOP_WRAPPER/mem_wlast} \
}
wvAddSignal -win $_nWave3 -group {"G8" \
}
wvSelectSignal -win $_nWave3 {( "G7" 9 )} 
wvSetPosition -win $_nWave3 {("G7" 9)}
wvGetSignalSetSignalFilter -win $_nWave3 "mem_r*"
wvSetPosition -win $_nWave3 {("G7" 15)}
wvSetPosition -win $_nWave3 {("G7" 15)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_r_if/areset_n} \
{/CMSS_TOP_WRAPPER/core_r_if/count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/last_count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/core_r_if/rready} \
{/CMSS_TOP_WRAPPER/core_r_if/rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rvalid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wrptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_fifo_wr} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rden} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/rd_if/req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/ctrl_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/rdptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_data_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_rd_if/rdata.req.core_rw} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/d2h_fifo_afull} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/acache\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/cache_hit} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/delayed_rsp_header.opcode\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/u_header_delay/valid_arr\[0:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/h2d_rsp_if/rsp_is_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rdptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wren_i} \
}
wvCollapseGroup -win $_nWave3 "G1"
wvAddSignal -win $_nWave3 -group {"G2" \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rst_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/creset_n} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/u_cmss/areset_n} \
{/CMSS_TOP_WRAPPER/areset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/cclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/creset_n} \
{/CMSS_TOP_WRAPPER/creset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/pclk} \
{/CMSS_TOP_WRAPPER/pclk} \
{/CMSS_TOP_WRAPPER/u_cmss/preset_n} \
{/CMSS_TOP_WRAPPER/preset_n} \
}
wvCollapseGroup -win $_nWave3 "G3"
wvAddSignal -win $_nWave3 -group {"G4" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arready} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rready} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rlast} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G5" \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdata_timing_optimize/u_mem/di_a\[263:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_core_id\[4:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_b} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/mem\[0:127\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/winner_wren} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr1_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G6" \
{/CMSS_TOP_WRAPPER/mem_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_rid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_rlast} \
{/CMSS_TOP_WRAPPER/mem_rready} \
{/CMSS_TOP_WRAPPER/mem_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/mem_rvalid} \
}
wvAddSignal -win $_nWave3 -group {"G7" \
{/CMSS_TOP_WRAPPER/mem_awaddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/mem_awvalid} \
{/CMSS_TOP_WRAPPER/mem_awready} \
{/CMSS_TOP_WRAPPER/mem_awlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/mem_awid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_wdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_wvalid} \
{/CMSS_TOP_WRAPPER/mem_wready} \
{/CMSS_TOP_WRAPPER/mem_wlast} \
{/CMSS_TOP_WRAPPER/mem_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/mem_arvalid} \
{/CMSS_TOP_WRAPPER/mem_arready} \
{/CMSS_TOP_WRAPPER/mem_arid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_arlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/mem_arsize\[2:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G8" \
}
wvSelectSignal -win $_nWave3 {( "G7" 15 )} 
wvSetPosition -win $_nWave3 {("G7" 15)}
wvSetPosition -win $_nWave3 {("G7" 20)}
wvSetPosition -win $_nWave3 {("G7" 20)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_r_if/areset_n} \
{/CMSS_TOP_WRAPPER/core_r_if/count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/last_count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/core_r_if/rready} \
{/CMSS_TOP_WRAPPER/core_r_if/rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rvalid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wrptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_fifo_wr} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rden} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/rd_if/req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/ctrl_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/rdptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_data_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_rd_if/rdata.req.core_rw} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/d2h_fifo_afull} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/acache\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/cache_hit} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/delayed_rsp_header.opcode\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/u_header_delay/valid_arr\[0:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/h2d_rsp_if/rsp_is_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rdptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wren_i} \
}
wvCollapseGroup -win $_nWave3 "G1"
wvAddSignal -win $_nWave3 -group {"G2" \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rst_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/creset_n} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/u_cmss/areset_n} \
{/CMSS_TOP_WRAPPER/areset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/cclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/creset_n} \
{/CMSS_TOP_WRAPPER/creset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/pclk} \
{/CMSS_TOP_WRAPPER/pclk} \
{/CMSS_TOP_WRAPPER/u_cmss/preset_n} \
{/CMSS_TOP_WRAPPER/preset_n} \
}
wvCollapseGroup -win $_nWave3 "G3"
wvAddSignal -win $_nWave3 -group {"G4" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arready} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rready} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rlast} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G5" \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdata_timing_optimize/u_mem/di_a\[263:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_core_id\[4:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_b} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/mem\[0:127\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/winner_wren} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr1_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G6" \
{/CMSS_TOP_WRAPPER/mem_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_rid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_rlast} \
{/CMSS_TOP_WRAPPER/mem_rready} \
{/CMSS_TOP_WRAPPER/mem_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/mem_rvalid} \
}
wvAddSignal -win $_nWave3 -group {"G7" \
{/CMSS_TOP_WRAPPER/mem_awaddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/mem_awvalid} \
{/CMSS_TOP_WRAPPER/mem_awready} \
{/CMSS_TOP_WRAPPER/mem_awlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/mem_awid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_wdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_wvalid} \
{/CMSS_TOP_WRAPPER/mem_wready} \
{/CMSS_TOP_WRAPPER/mem_wlast} \
{/CMSS_TOP_WRAPPER/mem_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/mem_arvalid} \
{/CMSS_TOP_WRAPPER/mem_arready} \
{/CMSS_TOP_WRAPPER/mem_arid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_arlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/mem_arsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/mem_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_rvalid} \
{/CMSS_TOP_WRAPPER/mem_rready} \
{/CMSS_TOP_WRAPPER/mem_rid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_rlast} \
}
wvAddSignal -win $_nWave3 -group {"G8" \
}
wvSelectSignal -win $_nWave3 {( "G7" 20 )} 
wvSetPosition -win $_nWave3 {("G7" 20)}
wvGetSignalClose -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G7" 2 )} 
wvZoom -win $_nWave3 29.830585 136.425208
wvSelectSignal -win $_nWave3 {( "G7" 5 )} 
wvSelectSignal -win $_nWave3 {( "G7" 4 )} 
wvSetCursor -win $_nWave3 41.844181 -snap {("G7" 4)}
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G7" 10 )} 
wvSelectSignal -win $_nWave3 {( "G7" 11 )} 
wvSelectSignal -win $_nWave3 {( "G7" 11 12 )} 
wvSetCursor -win $_nWave3 31.983310 -snap {("G7" 11)}
wvSelectSignal -win $_nWave3 {( "G7" 14 )} 
wvSetCursor -win $_nWave3 34.830463 -snap {("G7" 17)}
wvSetCursor -win $_nWave3 41.774738 -snap {("G7" 2)}
wvSetCursor -win $_nWave3 47.607929 -snap {("G7" 6)}
wvZoomOut -win $_nWave3
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave3 67.776125 -snap {("G7" 11)}
verdiSetActWin -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G7" 13 )} 
wvSelectSignal -win $_nWave3 {( "G7" 15 )} 
wvSelectSignal -win $_nWave3 {( "G7" 14 )} 
wvSelectGroup -win $_nWave3 {G7}
wvDisplayGridCount -win $_nWave2 -off
wvCloseGetStreamsDialog -win $_nWave2
wvAttrOrderConfigDlg -win $_nWave2 -close
wvCloseDetailsViewDlg -win $_nWave2
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave3 -off
wvCloseGetStreamsDialog -win $_nWave3
wvAttrOrderConfigDlg -win $_nWave3 -close
wvCloseDetailsViewDlg -win $_nWave3
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 8
wvScrollUp -win $_nWave3 15
wvScrollUp -win $_nWave3 7
wvScrollUp -win $_nWave3 18
wvScrollUp -win $_nWave3 47
wvSetCursor -win $_nWave3 65.819334 -snap {("G4" 2)}
wvSelectSignal -win $_nWave3 {( "G4" 3 )} 
wvSelectSignal -win $_nWave3 {( "G4" 5 )} 
wvSelectSignal -win $_nWave3 {( "G4" 6 )} 
wvSelectSignal -win $_nWave3 {( "G4" 5 )} 
wvSelectSignal -win $_nWave3 {( "G4" 9 )} 
wvDisplayGridCount -win $_nWave2 -off
wvCloseGetStreamsDialog -win $_nWave2
wvAttrOrderConfigDlg -win $_nWave2 -close
wvCloseDetailsViewDlg -win $_nWave2
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave3 -off
wvCloseGetStreamsDialog -win $_nWave3
wvAttrOrderConfigDlg -win $_nWave3 -close
wvCloseDetailsViewDlg -win $_nWave3
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G4" 2 )} 
wvSelectSignal -win $_nWave3 {( "G4" 6 )} 
wvDisplayGridCount -win $_nWave2 -off
wvCloseGetStreamsDialog -win $_nWave2
wvAttrOrderConfigDlg -win $_nWave2 -close
wvCloseDetailsViewDlg -win $_nWave2
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave3 -off
wvCloseGetStreamsDialog -win $_nWave3
wvAttrOrderConfigDlg -win $_nWave3 -close
wvCloseDetailsViewDlg -win $_nWave3
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_core_r.u_data_mem" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache" -win $_nTrace1
wvGetSignalOpen -win $_nWave3
verdiSetActWin -win $_nWave3
wvGetSignalSetScope -win $_nWave3 \
           "/CMSS_TOP_WRAPPER.u_cmss.u_cache.u_metadata_buffer.u_out_fifo."
wvSetPosition -win $_nWave3 {("G7" 20)}
wvSetPosition -win $_nWave3 {("G7" 20)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_r_if/areset_n} \
{/CMSS_TOP_WRAPPER/core_r_if/count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/last_count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/core_r_if/rready} \
{/CMSS_TOP_WRAPPER/core_r_if/rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rvalid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wrptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_fifo_wr} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rden} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/rd_if/req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/ctrl_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/rdptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_data_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_rd_if/rdata.req.core_rw} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/d2h_fifo_afull} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/acache\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/cache_hit} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/delayed_rsp_header.opcode\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/u_header_delay/valid_arr\[0:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/h2d_rsp_if/rsp_is_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rdptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wren_i} \
}
wvCollapseGroup -win $_nWave3 "G1"
wvAddSignal -win $_nWave3 -group {"G2" \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rst_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/creset_n} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/u_cmss/areset_n} \
{/CMSS_TOP_WRAPPER/areset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/cclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/creset_n} \
{/CMSS_TOP_WRAPPER/creset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/pclk} \
{/CMSS_TOP_WRAPPER/pclk} \
{/CMSS_TOP_WRAPPER/u_cmss/preset_n} \
{/CMSS_TOP_WRAPPER/preset_n} \
}
wvCollapseGroup -win $_nWave3 "G3"
wvAddSignal -win $_nWave3 -group {"G4" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arready} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rready} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rlast} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G5" \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdata_timing_optimize/u_mem/di_a\[263:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_core_id\[4:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_b} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/mem\[0:127\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/winner_wren} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr1_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G6" \
{/CMSS_TOP_WRAPPER/mem_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_rid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_rlast} \
{/CMSS_TOP_WRAPPER/mem_rready} \
{/CMSS_TOP_WRAPPER/mem_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/mem_rvalid} \
}
wvAddSignal -win $_nWave3 -group {"G7" \
{/CMSS_TOP_WRAPPER/mem_awaddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/mem_awvalid} \
{/CMSS_TOP_WRAPPER/mem_awready} \
{/CMSS_TOP_WRAPPER/mem_awlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/mem_awid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_wdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_wvalid} \
{/CMSS_TOP_WRAPPER/mem_wready} \
{/CMSS_TOP_WRAPPER/mem_wlast} \
{/CMSS_TOP_WRAPPER/mem_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/mem_arvalid} \
{/CMSS_TOP_WRAPPER/mem_arready} \
{/CMSS_TOP_WRAPPER/mem_arid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_arlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/mem_arsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/mem_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_rvalid} \
{/CMSS_TOP_WRAPPER/mem_rready} \
{/CMSS_TOP_WRAPPER/mem_rid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_rlast} \
}
wvAddSignal -win $_nWave3 -group {"G8" \
}
wvSetPosition -win $_nWave3 {("G7" 20)}
wvGetSignalSetSignalFilter -win $_nWave3 "*"
wvScrollDown -win $_nWave3 0
wvSelectGroup -win $_nWave3 {G8}
wvSetPosition -win $_nWave3 {("G8" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvCloseGetStreamsDialog -win $_nWave2
wvAttrOrderConfigDlg -win $_nWave2 -close
wvCloseDetailsViewDlg -win $_nWave2
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave3 -off
wvCloseGetStreamsDialog -win $_nWave3
wvAttrOrderConfigDlg -win $_nWave3 -close
wvCloseDetailsViewDlg -win $_nWave3
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvGetSignalOpen -win $_nWave3
wvGetSignalSetSignalFilter -win $_nWave3 "*"
wvSetPosition -win $_nWave3 {("G8" 29)}
wvSetPosition -win $_nWave3 {("G8" 29)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_r_if/areset_n} \
{/CMSS_TOP_WRAPPER/core_r_if/count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/last_count\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/core_r_if/rready} \
{/CMSS_TOP_WRAPPER/core_r_if/rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_r_if/rvalid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wrptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdptr_n\[2:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_fifo_wr} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rden} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/rd_if/req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/target_req} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/ctrl_fifo_empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/empty_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/rdptr_n\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wrptr\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/u_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_data_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/ctxt_rd_if/rdata.req.core_rw} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/d2h_fifo_afull} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/acache\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/unnamed\$\$_0/cache_hit} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/delayed_rsp_header.opcode\[3:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/u_header_delay/valid_arr\[0:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_h2d_rsp_ctrl/h2d_rsp_if/rsp_is_valid} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rdptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wrptr_n\[5:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/wren_i} \
}
wvCollapseGroup -win $_nWave3 "G1"
wvAddSignal -win $_nWave3 -group {"G2" \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/u_fifo/fifos\[0\]/u_mem/rst_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/creset_n} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/u_cmss/areset_n} \
{/CMSS_TOP_WRAPPER/areset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/cclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/u_cmss/creset_n} \
{/CMSS_TOP_WRAPPER/creset_n} \
{/CMSS_TOP_WRAPPER/u_cmss/pclk} \
{/CMSS_TOP_WRAPPER/pclk} \
{/CMSS_TOP_WRAPPER/u_cmss/preset_n} \
{/CMSS_TOP_WRAPPER/preset_n} \
}
wvCollapseGroup -win $_nWave3 "G3"
wvAddSignal -win $_nWave3 -group {"G4" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arready} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} -color ID_ORANGE5 \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rready} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rlast} -color ID_YELLOW5 \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G5" \
{/CMSS_TOP_WRAPPER/core_r_if/rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/out_fifo_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_out_fifo/rdata_timing_optimize/u_mem/di_a\[263:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_core_id\[4:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_b} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_b\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/mem\[0:127\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/en_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/we_a} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/mem_rdata.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/di_a\[258:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/addr_a\[6:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/winner_wren} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr1_if/ack} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/wr0_if/data.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_mem_r/aligned_rch_entry.rlast} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_core_r/u_data_mem/do_b\[258:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G6" \
{/CMSS_TOP_WRAPPER/mem_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_rid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_rlast} \
{/CMSS_TOP_WRAPPER/mem_rready} \
{/CMSS_TOP_WRAPPER/mem_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/mem_rvalid} \
}
wvAddSignal -win $_nWave3 -group {"G7" \
{/CMSS_TOP_WRAPPER/mem_awaddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/mem_awvalid} \
{/CMSS_TOP_WRAPPER/mem_awready} \
{/CMSS_TOP_WRAPPER/mem_awlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/mem_awid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_wdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_wvalid} \
{/CMSS_TOP_WRAPPER/mem_wready} \
{/CMSS_TOP_WRAPPER/mem_wlast} \
{/CMSS_TOP_WRAPPER/mem_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/mem_arvalid} \
{/CMSS_TOP_WRAPPER/mem_arready} \
{/CMSS_TOP_WRAPPER/mem_arid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_arlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/mem_arsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/mem_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/mem_rvalid} \
{/CMSS_TOP_WRAPPER/mem_rready} \
{/CMSS_TOP_WRAPPER/mem_rid\[5:0\]} \
{/CMSS_TOP_WRAPPER/mem_rlast} \
}
wvAddSignal -win $_nWave3 -group {"G8" \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/aempty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/aempty_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/aempty_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/afull} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/afull_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/afull_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/clk} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/cnt\[7:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/cnt_n\[7:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/debug_o\[31:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/empty} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/empty_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/empty_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/full} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/full_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/full_o} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/overflown} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/overflown_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/rdata_o\[0:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/rden_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/rdptr\[7:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/rdptr_n\[7:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/rst_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/undrflown} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/undrflown_n} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/wdata_i\[0:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/wren_i} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/wrptr\[7:0\]} \
{/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_metadata_buffer/u_out_fifo/wrptr_n\[7:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G9" \
}
wvSelectSignal -win $_nWave3 {( "G8" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 )} 
wvSetPosition -win $_nWave3 {("G8" 29)}
wvGetSignalClose -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G8" 29 )} 
wvSelectSignal -win $_nWave3 {( "G8" 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 \
           20 21 22 23 24 25 26 27 28 29 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G8" 3)}
wvSelectSignal -win $_nWave3 {( "G8" 1 )} 
wvSetPrimaryWindow -win $_nWave3
wvSetCursor -win $_nWave3 42.439856 -snap {("G8" 1)}
srcActiveTrace \
           "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_metadata_buffer.u_out_fifo.aempty" \
           -TraceByDConWave -TraceTime 42000 -TraceValue 0 -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiFindBar -show -widget MTB_SOURCE_TAB_1
verdiFindBar -pattern "overflow_check" -next -widget MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {129 132 7 1 5 1}
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
verdiSetActWin -win $_nWave3
wvSetPosition -win $_nWave3 {("G9" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G9" 3)}
wvSetPosition -win $_nWave3 {("G9" 3)}
wvSelectSignal -win $_nWave3 {( "G9" 3 )} 
wvSelectSignal -win $_nWave3 {( "G9" 3 )} 
wvZoomAll -win $_nWave3
wvZoomAll -win $_nWave3
wvZoomAll -win $_nWave3
wvSetCursor -win $_nWave3 8590.647294 -snap {("G9" 3)}
wvSetCursor -win $_nWave3 8344.881052 -snap {("G9" 3)}
srcActiveTrace \
           "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_metadata_buffer.u_out_fifo.overflown" \
           -TraceByDConWave -TraceTime 4000 -TraceValue 0 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "overflown_n" -line 69 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "overflown_n" -line 69 -pos 1 -win $_nTrace1
srcAction -pos 68 5 3 -win $_nTrace1 -name "overflown_n" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "overflown" -line 103 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
verdiSetActWin -win $_nWave3
wvZoom -win $_nWave3 8154.970773 9015.152622
srcDeselectAll -win $_nTrace1
srcSelect -signal "full_o" -line 103 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -signal "wren_i" -line 103 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvSetCursor -win $_nWave3 8477.188730 -snap {("G9" 6)}
verdiSetActWin -win $_nWave3
wvSetCursor -win $_nWave3 8533.787014 -snap {("G9" 7)}
srcActiveTrace \
           "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_metadata_buffer.u_out_fifo.wren_i" \
           -TraceByDConWave -TraceTime 8476000 -TraceValue 0 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "wr0_if.req" -line 49 -pos 1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -win $_nTrace1 -signal "wr1_if.req" -line 49 -pos 1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "wr0_if.req" -line 49 -pos 1
srcAction -pos 48 5 4 -win $_nTrace1 -name "wr0_if.req" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "mem_wr_if.valid" -line 166 -pos 1
srcSelect -win $_nTrace1 -signal "mem_wr_if.ready" -line 166 -pos 1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "mem_wr_if.ready" -line 166 -pos 1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "mem_wr_if.ready" -line 166 -pos 1
srcAction -pos 165 11 13 -win $_nTrace1 -name "mem_wr_if.ready" -ctrlKey off
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "G7" 16 )} 
verdiSetActWin -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G8" 1 )} 
wvSelectGroup -win $_nWave3 {G9}
wvSelectSignal -win $_nWave3 {( "G8" 2 )} 
verdiWindowResize -win $_Verdi_1 "463" "45" "1455" "985"
verdiWindowResize -win $_Verdi_1 "1456" "267" "2194" "1620"
