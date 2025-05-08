verdiSetActWin -dock widgetDock_<Message>
verdiFindBar -show -widget <Message>
simSetSimulator "-vcssv" -exec "sim_build/simv" -args \
           "+define+COCOTB_SIM=1 -full64"
debImport "-dbdir" "sim_build/simv.daidir/"
debLoadSimResult /home/hsh/cocotb/cmss_top/dump.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "1517" "189" "1080" "1897"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvRestoreSignal -win $_nWave2 "/home/hsh/cocotb/cmss_top/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvScrollDown -win $_nWave2 12
wvResizeWindow -win $_nWave2 1080 23 2560 1369
wvResizeWindow -win $_nWave2 1080 23 2560 1369
verdiWindowBeWindow -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 16
wvScrollUp -win $_nWave2 64
wvScrollUp -win $_nWave2 84
wvScrollUp -win $_nWave2 113
wvScrollUp -win $_nWave2 101
wvScrollUp -win $_nWave2 26
wvScrollUp -win $_nWave2 16
wvScrollUp -win $_nWave2 17
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvZoom -win $_nWave2 10152514.816711 10196973.413696
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 8
wvScrollUp -win $_nWave2 22
wvScrollUp -win $_nWave2 25
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 6
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 20
wvScrollDown -win $_nWave2 16
wvScrollDown -win $_nWave2 12
wvScrollDown -win $_nWave2 10
wvScrollDown -win $_nWave2 16
wvScrollDown -win $_nWave2 8
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 13
wvScrollDown -win $_nWave2 16
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 15
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 10
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 22
wvScrollDown -win $_nWave2 15
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 3
wvZoom -win $_nWave2 10172275.592534 10175298.273349
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 8
wvScrollDown -win $_nWave2 8
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 8
wvScrollDown -win $_nWave2 39
wvScrollDown -win $_nWave2 60
wvScrollDown -win $_nWave2 43
wvScrollDown -win $_nWave2 18
wvScrollDown -win $_nWave2 22
wvScrollDown -win $_nWave2 12
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G11" 98 )} 
wvSelectSignal -win $_nWave2 {( "G11" 102 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_valid_o" -line 30 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_ready_i" -line 31 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "is_all_data" -line 34 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_following_o" -line 33 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_ready_i" -line 31 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_valid_o" -line 30 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_ready_i" -line 31 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_payload_o" -line 32 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_following_o" -line 33 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "is_all_data" -line 34 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_following_o" -line 33 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_payload_o" -line 32 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_ready_i" -line 31 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_valid_o" -line 30 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_ready_i" -line 31 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_payload_o" -line 32 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_following_o" -line 33 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "is_all_data" -line 34 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_following_o" -line 33 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_payload_o" -line 32 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_ready_i" -line 31 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_valid_o" -line 30 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_ready_i" -line 31 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_payload_o" -line 32 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_payload_o" -line 218 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G11" 119)}
wvSetPosition -win $_nWave2 {("G11" 123)}
wvSetPosition -win $_nWave2 {("G11" 124)}
wvSetPosition -win $_nWave2 {("G12" 0)}
wvSetPosition -win $_nWave2 {("G12" 1)}
wvSetPosition -win $_nWave2 {("G12" 0)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_pack/flit_payload_o\[511:0\]"
wvSetPosition -win $_nWave2 {("G12" 0)}
wvSetPosition -win $_nWave2 {("G12" 1)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10167032.568557 -snap {("G12" 1)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack.flit_payload_o\[511:0\]" \
           -TraceByDConWave -TraceTime 295000 -TraceValue \
           00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "G1" -line 219 -pos 1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "G1" -line 219 -pos 2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "H1" -line 219 -pos 1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "G1" -line 219 -pos 1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "G1" -line 219 -pos 3
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "G1" -line 219 -pos 2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10189035.629809 -snap {("G12" 1)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack.flit_payload_o\[511:0\]" \
           -TraceByDConWave -TraceTime 10169000 -TraceValue \
           00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 10190981.105959 -snap {("G12" 1)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack.flit_payload_o\[511:0\]" \
           -TraceByDConWave -TraceTime 10189000 -TraceValue \
           10110111111110000101111101010110111010010000101111101000010110111101101010001011011111100000011111111100111111111011110101110010110110011111011001100111001100001110100000110001010101101110101010010000100111001100001000010100010100000110101010111111100111010010110100000111110100001010001000110110100000010010101010101100011001100111001011111100101111100111111001100101101110011011000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011100000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10189035.629809 -snap {("G12" 1)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack.flit_payload_o\[511:0\]" \
           -TraceByDConWave -TraceTime 10169000 -TraceValue \
           00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "slot_h0" -line 231 -pos 1 -win $_nTrace1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cache" -delim "." -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_d2h_req_ctrl" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_d2h_req_ctrl" -delim "." -win \
           $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_d2h_req_ctrl" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 19 -pos 7 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G11" 118)}
wvSetPosition -win $_nWave2 {("G11" 121)}
wvSetPosition -win $_nWave2 {("G11" 122)}
wvSetPosition -win $_nWave2 {("G11" 123)}
wvSetPosition -win $_nWave2 {("G11" 124)}
wvSetPosition -win $_nWave2 {("G12" 0)}
wvSetPosition -win $_nWave2 {("G11" 124)}
wvSetPosition -win $_nWave2 {("G11" 124)}
wvSetPosition -win $_nWave2 {("G11/d2h_req_if(tx_header)" 0)}
wvAddSubGroup -win $_nWave2 -holdpost {d2h_req_if(tx_header)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_is_valid" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_protocol_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_vc_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_shared_credit" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_header" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_block"
wvSetPosition -win $_nWave2 {("G11/d2h_req_if(tx_header)" 0)}
wvSetPosition -win $_nWave2 {("G11/d2h_req_if(tx_header)" 6)}
wvSetPosition -win $_nWave2 {("G11" 124)}
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G11/d2h_req_if(tx_header)" 2 )} 
wvSelectSignal -win $_nWave2 {( "G11/d2h_req_if(tx_header)" 5 )} 
wvSetPosition -win $_nWave2 {("G11/d2h_req_if(tx_header)" 5)}
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G11/d2h_req_if(tx_header)" 11 )} 
wvSelectSignal -win $_nWave2 {( "G11/d2h_req_if(tx_header)" 10 )} 
wvSelectSignal -win $_nWave2 {( "G11/d2h_req_if(tx_header)" 8 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_d2h_data_ctrl" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_d2h_data_ctrl" -delim "." -win \
           $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_d2h_data_ctrl" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
srcSelect -word -line 27 -pos 7 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G11" 109)}
wvSetPosition -win $_nWave2 {("G11" 110)}
wvSetPosition -win $_nWave2 {("G11" 111)}
wvSetPosition -win $_nWave2 {("G11" 112)}
wvSetPosition -win $_nWave2 {("G11" 113)}
wvSetPosition -win $_nWave2 {("G11" 114)}
wvSetPosition -win $_nWave2 {("G11" 115)}
wvSetPosition -win $_nWave2 {("G11" 117)}
wvSetPosition -win $_nWave2 {("G11" 118)}
wvSetPosition -win $_nWave2 {("G11" 119)}
wvSetPosition -win $_nWave2 {("G11" 120)}
wvSetPosition -win $_nWave2 {("G11" 121)}
wvSetPosition -win $_nWave2 {("G11" 122)}
wvSetPosition -win $_nWave2 {("G11" 124)}
wvSetPosition -win $_nWave2 {("G11" 122)}
wvSetPosition -win $_nWave2 {("G11/d2h_req_if(tx_header)" 13)}
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 140
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G17" 11)}
wvSetPosition -win $_nWave2 {("G17" 12)}
wvSetPosition -win $_nWave2 {("G18" 0)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 0)}
wvRenameGroup -win $_nWave2 {G18} {d2h_data_if(tx)#1}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_rxcrd_valid" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_rxcrd_protocol_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_rxcrd_vc_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_rxcrd_shared" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_txblock_crd_flow" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_is_valid" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_protocol_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_vc_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_shared_credit" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_header" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_body\[511:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_byte_enable\[63:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_poison" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_parity\[7:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_eop" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_cmd_parity" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_data_ctrl/d2h_data_if/data_block"
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 0)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 17)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 17)}
wvSetPosition -win $_nWave2 {("G18" 0)}
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10186884.645608 -snap {("d2h_data_if(tx)#1" 10)}
wvSelectSignal -win $_nWave2 {( "d2h_data_if(tx)#1" 10 )} 
wvSelectSignal -win $_nWave2 {( "d2h_data_if(tx)#1" 11 )} 
wvSetCursor -win $_nWave2 10188967.127121 -snap {("d2h_data_if(tx)#1" 11)}
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "data_if.data_body" -line 116 -pos 1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "data_if.data_body" -line 116 -pos 1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10186775.041318 -snap {("G18" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_arr_o" -line 119 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 10189295.939992 -snap {("G18" 2)}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G18" 2 )} 
wvExpandBus -win $_nWave2
wvSetCursor -win $_nWave2 10186884.645608 -snap {("G18" 1)}
wvSetCursor -win $_nWave2 10189076.731411 -snap {("G18" 2)}
wvSetCursor -win $_nWave2 10186884.645608 -snap {("G18" 1)}
wvSetCursor -win $_nWave2 10188967.127121 -snap {("G18" 2)}
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -delim "." -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -win $_nTrace1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
srcSelect -signal "d2h_data_arr_i\[0\].data\[127:0\]" -line 232 -pos 1 -win \
          $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSelectSignal -win $_nWave2 {( "G18" 4 )} 
wvSelectSignal -win $_nWave2 {( "G18" 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G18" 4 5 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18" 3)}
srcSelect -signal "d2h_data_arr_i\[0\].data\[255:128\]" -line 233 -pos 1 -win \
          $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -signal "d2h_data_arr_i\[0\].data\[383:256\]" -line 234 -pos 1 -win \
          $_nTrace1
wvSetPosition -win $_nWave2 {("G17" 7)}
wvSetPosition -win $_nWave2 {("G17" 10)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 1)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 14)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 15)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 16)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 17)}
wvSetPosition -win $_nWave2 {("G18" 1)}
wvSetPosition -win $_nWave2 {("G18" 2)}
wvSetPosition -win $_nWave2 {("G18" 3)}
wvSetPosition -win $_nWave2 {("G19" 0)}
wvSetPosition -win $_nWave2 {("G18" 3)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_pack/d2h_data_arr_i\[0\].data\[127:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_pack/d2h_data_arr_i\[0\].data\[255:128\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_pack/d2h_data_arr_i\[0\].data\[383:256\]"
wvSetPosition -win $_nWave2 {("G18" 3)}
wvSetPosition -win $_nWave2 {("G18" 6)}
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSelectSignal -win $_nWave2 {( "G18" 4 5 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoom -win $_nWave2 10111573.219074 10467912.963295
wvZoom -win $_nWave2 10180698.086905 10314535.596970
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rollover_data_slot\[0\]" -line 288 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 1)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 2)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 3)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 4)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 5)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 6)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 7)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 8)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 11)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 12)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 13)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 14)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 17)}
wvSetPosition -win $_nWave2 {("G18" 0)}
wvSetPosition -win $_nWave2 {("G18" 2)}
wvSetPosition -win $_nWave2 {("G18" 3)}
wvSetPosition -win $_nWave2 {("G18" 4)}
wvSetPosition -win $_nWave2 {("G18" 5)}
wvSetPosition -win $_nWave2 {("G18" 6)}
wvSetPosition -win $_nWave2 {("G19" 0)}
wvSetPosition -win $_nWave2 {("G18" 6)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_pack/rollover_data_slot\[0\]\[127:0\]"
wvSetPosition -win $_nWave2 {("G18" 6)}
wvSetPosition -win $_nWave2 {("G18" 7)}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G18" 7 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 10191035.771934 -snap {("G18" 7)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10217077.268586 -snap {("G18" 4)}
wvSetCursor -win $_nWave2 10247064.446549 -snap {("G18" 5)}
wvSetCursor -win $_nWave2 10188747.276774 -snap {("G18" 4)}
wvSetCursor -win $_nWave2 10457053.605916 -snap {("G18" 6)}
wvSetCursor -win $_nWave2 10189204.975809 -snap {("G18" 4)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10218008.449380 -snap {("G18" 4)}
wvSetCursor -win $_nWave2 10248626.936352 -snap {("G18" 5)}
wvSetCursor -win $_nWave2 10276404.532781 -snap {("G18" 5)}
wvSetCursor -win $_nWave2 10308601.292277 -snap {("G18" 5)}
wvSetCursor -win $_nWave2 10337325.852220 -snap {("G18" 5)}
wvSetCursor -win $_nWave2 10364787.794144 -snap {("G18" 5)}
wvZoom -win $_nWave2 10390671.463543 10406454.188786
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10396776.102552 -snap {("G18" 5)}
wvSetCursor -win $_nWave2 10366104.013871 -snap {("G18" 5)}
wvSetCursor -win $_nWave2 10341983.245103 -snap {("G18" 4)}
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
srcSelect -word -line 15 -pos 7 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
srcSelect -word -line 40 -pos 5 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_payload_o" -line 32 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G17" 8)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 2)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 7)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 8)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 9)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 10)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 11)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 12)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 13)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 14)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 15)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 16)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 17)}
wvSetPosition -win $_nWave2 {("G18" 0)}
wvSetPosition -win $_nWave2 {("G18" 4)}
wvSetPosition -win $_nWave2 {("G18" 5)}
wvSetPosition -win $_nWave2 {("G18" 7)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_pack/flit_payload_o\[511:0\]"
wvSetPosition -win $_nWave2 {("G18" 7)}
wvSetPosition -win $_nWave2 {("G18" 8)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 10183262.630863 10201725.441525
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10189097.575732 -snap {("G18" 8)}
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 10187146.788195 10202909.848241
wvSetCursor -win $_nWave2 10192946.404622 -snap {("G18" 8)}
wvSetCursor -win $_nWave2 10195204.909098 -snap {("G18" 8)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10196887.169633 -snap {("G18" 8)}
wvSetCursor -win $_nWave2 10217074.296061 -snap {("G18" 8)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10404587.791966 -snap {("G18" 8)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "is_all_data" -line 34 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_payload_o" -line 32 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_valid_o" -line 30 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G18" 9)}
wvSetPosition -win $_nWave2 {("G18" 8)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G18" 8)}
wvSetPosition -win $_nWave2 {("G18" 9)}
wvSetCursor -win $_nWave2 10167071.192850 -snap {("G18" 8)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "CXL_FLIT_TYPE_PROTOCOL" -line 159 -pos 1
verdiSetActWin -win $_nWave2
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack.flit_payload_o\[511:0\]" \
           -TraceByDConWave -TraceTime 10169000 -TraceValue \
           00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 10191072.682391 -snap {("G18" 7)}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G18" 8 )} 
wvSetCursor -win $_nWave2 10191221.390505 -snap {("G18" 8)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack.flit_payload_o\[511:0\]" \
           -TraceByDConWave -TraceTime 10189000 -TraceValue \
           10001100000001101111010101000011010110010010010110011000110000100111001000000111101111010100000010101001000011101000000111001011011011111000101011110100101010101111100000110110011000011010000100110001011001111111010001000101100011010000001101110100000101100001100110100110110111010101101001000111110101101101000111011010110100101000110111010011000100011000110011001010111111100011010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011100000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10194790.385232 -snap {("G18" 8)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack.flit_payload_o\[511:0\]" \
           -TraceByDConWave -TraceTime 10193000 -TraceValue \
           00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10397182.127904 -snap {("G18" 8)}
wvSetCursor -win $_nWave2 10396587.295449 -snap {("G18" 8)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack.flit_payload_o\[511:0\]" \
           -TraceByDConWave -TraceTime 10377000 -TraceValue \
           00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 10404914.949813 -snap {("G18" 8)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10401048.538858 -snap {("G18" 8)}
wvSetCursor -win $_nWave2 10398669.209040 -snap {("G18" 8)}
wvSetCursor -win $_nWave2 10405063.657927 -snap {("G18" 8)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack.flit_payload_o\[511:0\]" \
           -TraceByDConWave -TraceTime 10401000 -TraceValue \
           00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "phy_txdata" -line 171 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -signal "phy_txdata_valid" -line 173 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G17" 12)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 10)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 12)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 14)}
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 17)}
wvSetPosition -win $_nWave2 {("G18" 1)}
wvSetPosition -win $_nWave2 {("G18" 2)}
wvSetPosition -win $_nWave2 {("G18" 3)}
wvSetPosition -win $_nWave2 {("G18" 7)}
wvSetPosition -win $_nWave2 {("G18" 8)}
wvSetPosition -win $_nWave2 {("G18" 9)}
wvSetPosition -win $_nWave2 {("G18" 10)}
wvSetPosition -win $_nWave2 {("G19" 0)}
wvSetPosition -win $_nWave2 {("G18" 10)}
wvSetPosition -win $_nWave2 {("G18" 9)}
wvAddSignal -win $_nWave2 "/CMSS_TOP_WRAPPER/phy_txdata\[527:0\]" \
           "/CMSS_TOP_WRAPPER/phy_txdata_valid\[3:0\]"
wvSetPosition -win $_nWave2 {("G18" 9)}
wvSetPosition -win $_nWave2 {("G18" 11)}
wvSetCursor -win $_nWave2 10197021.006937 -snap {("G18" 10)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10381181.134874 -snap {("G18" 11)}
wvZoom -win $_nWave2 10379545.345624 10384006.589033
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10380955.266889 -snap {("G18" 11)}
srcActiveTrace "CMSS_TOP_WRAPPER.phy_txdata_valid\[3:0\]" -TraceByDConWave \
           -TraceTime 10379000 -TraceValue 0000 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "phy_if.txdata_valid" -line 412 -pos 1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 10380976.310490 -snap {("G18" 12)}
srcActiveTrace "CMSS_TOP_WRAPPER.phy_if.txdata_valid\[3:0\]" -TraceByDConWave \
           -TraceTime 10379000 -TraceValue 0000 -win $_nTrace1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "PCIE_LANE_CNT" -line 453 -pos 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "phy_txdata_valid" -line 453 -pos 1 -win $_nTrace1
wvSetCursor -win $_nWave2 10376956.982701 -snap {("G18" 12)}
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "phy_txdata_valid" -line 453 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "PCIE_LANE_CNT" -line 453 -pos 1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "PCIE_LANE_CNT" -line 453 -pos 1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "phy_txdata_valid" -line 453 -pos 1 -win $_nTrace1
wvSetCursor -win $_nWave2 10380955.266889 -snap {("G18" 13)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.phy_txdata_valid" -TraceByDConWave \
           -TraceTime 10379000 -TraceValue 0 -win $_nTrace1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_i" -line 29 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_encoder.valid_i" -TraceByDConWave \
           -TraceTime 10377000 -TraceValue 0 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 10378914.037593 -snap {("G18" 14)}
verdiSetActWin -win $_nWave2
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_encoder.valid_i" -TraceByDConWave \
           -TraceTime 10377000 -TraceValue 0 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_valid_o" -line 112 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "trans_flit_valid_i" -line 112 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_arbiter.trans_flit_valid_i" \
           -TraceByDConWave -TraceTime 10377000 -TraceValue 0 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 10375084.102213 -snap {("G18" 16)}
verdiSetActWin -win $_nWave2
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_arbiter.trans_flit_valid_i" \
           -TraceByDConWave -TraceTime 10375000 -TraceValue 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 10379040.299199 -snap {("G18" 16)}
verdiSetActWin -win $_nWave2
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_arbiter.trans_flit_valid_i" \
           -TraceByDConWave -TraceTime 10377000 -TraceValue 0 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "trans_flit_payload_o" -line 132 -pos 1 -win $_nTrace1
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10257029.500665 -snap {("G18" 12)}
wvZoom -win $_nWave2 10361574.110371 10392886.988641
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G18" 10 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "trans_flit_valid_o" -line 133 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "llcrd_flit" -line 132 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "llcrd_flit" -line 132 -pos 1 -win $_nTrace1
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 0
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "llcrd_flit" -line 132 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 1
wvExpandBus -win $_nWave2
wvSetCursor -win $_nWave2 10378988.465473 -snap {("G18" 16)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "trans_flit_valid_o" -line 133 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "llcrd_flit.sub_type" -line 122 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "llcrd_flit.ak2" -line 123 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "llcrd_flit.sub_type" -line 122 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "llcrd_flit" -line 116 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "llcrd_flit" -line 117 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "llcrd_flit.flit_type" -line 118 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "CXL_FLIT_TYPE_CONTROL" -line 118 -pos 1
srcDeselectAll -win $_nTrace1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "llcrd_flit" -line 124 -pos 1 -win $_nTrace1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoom -win $_nWave2 10637068.358231 10647998.325174
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10640935.091813 -snap {("G18" 10)}
wvSetCursor -win $_nWave2 10642816.902159 -snap {("G18" 10)}
wvSetCursor -win $_nWave2 10640935.091813 -snap {("G18" 10)}
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvResizeWindow -win $_nWave2 1080 31 2560 1369
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 10185994.424293 10200011.173770
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 35
wvScrollUp -win $_nWave2 17
wvScrollDown -win $_nWave2 3
wvScrollUp -win $_nWave2 17
wvScrollUp -win $_nWave2 32
wvScrollUp -win $_nWave2 43
wvScrollUp -win $_nWave2 18
wvScrollUp -win $_nWave2 8
wvScrollUp -win $_nWave2 47
wvScrollUp -win $_nWave2 60
wvScrollUp -win $_nWave2 35
wvScrollUp -win $_nWave2 32
wvScrollUp -win $_nWave2 52
wvScrollUp -win $_nWave2 85
wvScrollUp -win $_nWave2 41
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 12
wvScrollUp -win $_nWave2 6
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 8
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 13
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 17
wvScrollDown -win $_nWave2 51
wvScrollDown -win $_nWave2 58
wvScrollDown -win $_nWave2 88
wvScrollDown -win $_nWave2 59
wvScrollDown -win $_nWave2 66
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 11
wvScrollDown -win $_nWave2 53
wvScrollDown -win $_nWave2 35
wvScrollDown -win $_nWave2 8
wvScrollDown -win $_nWave2 8
wvScrollDown -win $_nWave2 25
wvScrollDown -win $_nWave2 60
wvScrollDown -win $_nWave2 32
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 14
wvScrollDown -win $_nWave2 14
wvScrollDown -win $_nWave2 27
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 32
wvScrollUp -win $_nWave2 28
wvScrollUp -win $_nWave2 19
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 10
wvScrollDown -win $_nWave2 33
wvScrollDown -win $_nWave2 31
wvScrollDown -win $_nWave2 8
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 12
wvScrollUp -win $_nWave2 59
wvScrollUp -win $_nWave2 24
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 12
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 12
wvScrollUp -win $_nWave2 25
wvScrollUp -win $_nWave2 24
wvScrollUp -win $_nWave2 17
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 8
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 21
wvScrollUp -win $_nWave2 48
wvScrollUp -win $_nWave2 57
wvScrollUp -win $_nWave2 32
wvScrollUp -win $_nWave2 35
wvScrollUp -win $_nWave2 26
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 23
wvScrollUp -win $_nWave2 18
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 8
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER" -delim "." -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "phy_txdata" -line 171 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "phy_rxdata" -line 178 -pos 1 -win $_nTrace1
srcSelect -signal "phy_rxdata_valid" -line 180 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("core_aw_if(slave)/data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)/data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)/data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 33)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)/data_if(rx)" 0)}
wvAddSignal -win $_nWave2 "/CMSS_TOP_WRAPPER/phy_rxdata\[527:0\]" \
           "/CMSS_TOP_WRAPPER/phy_rxdata_valid\[3:0\]"
wvSetPosition -win $_nWave2 {("core_aw_if(slave)/data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)/data_if(rx)" 2)}
verdiSetActWin -win $_nWave2
wvZoom -win $_nWave2 10255614.732344 10283491.268819
wvSetCursor -win $_nWave2 10264995.358556 -snap {("data_if(rx)" 1)}
wvSetCursor -win $_nWave2 10266852.753763 -snap {("data_if(rx)" 1)}
wvSetCursor -win $_nWave2 10268991.099506 -snap {("data_if(rx)" 1)}
wvSetCursor -win $_nWave2 10275015.927658 -snap {("data_if(rx)" 1)}
wvSetCursor -win $_nWave2 10276966.973044 -snap {("data_if(rx)" 1)}
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSetCursor -win $_nWave2 10275023.254743 -snap {("data_if(rx)" 1)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -dock widgetDock_<Message>
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 10164780.432831 -snap {("d2h_req_if(tx_header)" 5)}
wvSelectSignal -win $_nWave2 {( "core_aw_if(slave)/d2h_req_if(tx_header)" 5 )} \
           
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 16
wvSelectSignal -win $_nWave2 {( "core_aw_if(slave)" 1 )} 
wvSelectSignal -win $_nWave2 {( "core_aw_if(slave)" 2 )} 
wvSelectSignal -win $_nWave2 {( "core_aw_if(slave)" 5 )} 
wvSelectSignal -win $_nWave2 {( "core_aw_if(slave)" 6 )} 
wvSelectSignal -win $_nWave2 {( "core_aw_if(slave)" 5 )} 
wvZoom -win $_nWave2 10164842.940150 10172593.847647
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 87
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 41
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "req_if(rx)" 9 )} 
wvSelectSignal -win $_nWave2 {( "req_if(rx)" 10 )} 
wvSetPosition -win $_nWave2 {("req_if(rx)" 10)}
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "req_if(rx)" 17 )} 
wvSelectSignal -win $_nWave2 {( "req_if(rx)" 16 )} 
wvSelectSignal -win $_nWave2 {( "req_if(rx)" 18 )} 
wvSetCursor -win $_nWave2 10173085.656490 -snap {("req_if(rx)" 18)}
wvSetCursor -win $_nWave2 10164823.267787 -snap {("req_if(rx)" 17)}
wvScrollUp -win $_nWave2 144
wvScrollDown -win $_nWave2 114
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -dock widgetDock_<Message>
debReload
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 43
wvScrollUp -win $_nWave2 21
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 12
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_data" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_data" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_data" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 22 -pos 7 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 17)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 20)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 22)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 24)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 25)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 26)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 27)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 28)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 29)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 30)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 33)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)/data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 33)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 33)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)/data_if(tx)" 0)}
wvAddSubGroup -win $_nWave2 -holdpost {data_if(tx)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_rxcrd_valid" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_rxcrd_protocol_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_rxcrd_vc_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_rxcrd_shared" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_txblock_crd_flow" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_is_valid" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_protocol_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_vc_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_shared_credit" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_header" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_body\[511:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_byte_enable\[63:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_poison" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_parity\[7:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_eop" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_cmd_parity" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_if/data_block"
wvSetPosition -win $_nWave2 {("core_aw_if(slave)/data_if(tx)" 0)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)/data_if(tx)" 17)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 33)}
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 18 -pos 7 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 20)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 24)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 27)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 29)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 30)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 31)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 32)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)/data_if(tx)" 0)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 33)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 33)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)/data_if(rx)#1" 0)}
wvAddSubGroup -win $_nWave2 -holdpost {data_if(rx)#1}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_rxcrd_valid" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_rxcrd_protocol_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_rxcrd_vc_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_rxcrd_shared" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_txblock_crd_flow" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_is_valid" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_protocol_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_vc_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_shared_credit" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_header" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_body\[511:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_byte_enable\[63:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_poison" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_parity\[7:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_eop" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_cmd_parity" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_block"
wvSetPosition -win $_nWave2 {("core_aw_if(slave)/data_if(rx)#1" 0)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)/data_if(rx)#1" 17)}
wvSetPosition -win $_nWave2 {("core_aw_if(slave)" 33)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 10163929.107449 10243248.038997
wvSetCursor -win $_nWave2 10186929.584418 -snap {("data_if(rx)#1" 11)}
wvSetCursor -win $_nWave2 10188791.767456 -snap {("data_if(rx)#1" 11)}
wvSetCursor -win $_nWave2 10190855.267578 -snap {("data_if(rx)#1" 11)}
wvSetCursor -win $_nWave2 10194982.267824 -snap {("data_if(rx)#1" 11)}
wvSetCursor -win $_nWave2 10197146.426489 -snap {("data_if(rx)#1" 11)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
verdiSetActWin -dock widgetDock_<Message>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data.u_data_fifo" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data.u_data_fifo" -delim "." \
           -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data.u_data_fifo" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
debReload
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
wvScrollDown -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 10193062.601795 -snap {("core_aw_if(slave)" 29)}
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoom -win $_nWave2 10121848.493263 10248424.413574
wvSetCursor -win $_nWave2 10196862.395271 -snap {("core_aw_if(slave)" 29)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 45
wvScrollDown -win $_nWave2 54
wvSetCursor -win $_nWave2 10164993.534115 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10172944.686470 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10174952.553226 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10178566.713387 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10182903.705580 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10186598.180412 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10190935.172605 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10193264.298042 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10198886.324960 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10202821.743802 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10225149.222131 -snap {("d2h_req_if(tx_header)" 13)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 10168896.524015 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10174946.693791 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10172876.898867 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10174867.086294 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10176777.666223 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10180996.863567 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10182907.443496 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10246832.263628 -snap {("d2h_req_if(tx_header)" 13)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
debReload
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10264817.329827 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10266664.567242 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10221029.771609 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10265202.840246 -snap {("d2h_req_if(tx_header)" 13)}
wvSetCursor -win $_nWave2 10266889.448321 -snap {("d2h_req_if(tx_header)" 13)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "core_aw_if(slave)/d2h_req_if(tx_header)" 9 )} \
           
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 10265042.210905 -snap {("d2h_req_if(tx_header)" 5)}
wvSetCursor -win $_nWave2 10266969.762991 -snap {("d2h_req_if(tx_header)" 12)}
wvSetCursor -win $_nWave2 10273314.621941 -snap {("d2h_req_if(tx_header)" 1)}
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 4
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "core_aw_if(slave)" 4 )} 
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 57
wvScrollUp -win $_nWave2 63
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "core_aw_if(slave)/data_if(tx)" 1 )} 
wvSelectSignal -win $_nWave2 {( "core_aw_if(slave)/data_if(rx)#1" 1 )} 
wvSelectSignal -win $_nWave2 {( "core_aw_if(slave)/data_if(rx)#1" 11 )} 
wvScrollUp -win $_nWave2 9
wvScrollDown -win $_nWave2 8
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 7
wvSelectSignal -win $_nWave2 {( "core_aw_if(slave)/data_if(rx)" 1 )} 
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSetCursor -win $_nWave2 10173045.549441 -snap {("data_if(rx)" 1)}
wvZoom -win $_nWave2 10172724.488830 10178423.314678
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 681
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10269101.171555 -snap {("G18" 10)}
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
srcSelect -word -line 18 -pos 7 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G18" 0)}
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 17)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 18 -pos 7 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "d2h_data_if(tx)#1/data_if(rx)" 17 )} 
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "d2h_data_if(tx)#1/data_if(rx)" 12 13 14 15 16 \
           17 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("d2h_data_if(tx)#1" 17)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cache" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_d2h_req_ctrl" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_d2h_req_ctrl" -delim "." -win \
           $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_d2h_req_ctrl" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 19 -pos 7 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 15
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G19" 0)}
wvSetPosition -win $_nWave2 {("d2h_req_if(tx_header)" 0)}
wvRenameGroup -win $_nWave2 {G19} {d2h_req_if(tx_header)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_is_valid" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_protocol_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_vc_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_shared_credit" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_header" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_block"
wvSetPosition -win $_nWave2 {("d2h_req_if(tx_header)" 0)}
wvSetPosition -win $_nWave2 {("d2h_req_if(tx_header)" 6)}
wvSetPosition -win $_nWave2 {("d2h_req_if(tx_header)" 6)}
wvSetPosition -win $_nWave2 {("G20" 0)}
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 5 )} 
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("d2h_req_if(tx_header)" 5)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G20" 0)}
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 13 )} 
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 12 )} 
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 11 )} 
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 10 11 )} 
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 9 10 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G20" 0)}
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 11 )} 
wvSelectGroup -win $_nWave2 {d2h_req_if(tx_header)}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G20" 0)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("d2h_req_if(tx_header)" 0)}
wvRenameGroup -win $_nWave2 {G20} {d2h_req_if(tx_header)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_is_valid" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_protocol_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_vc_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_shared_credit" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_header" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_block"
wvSetPosition -win $_nWave2 {("d2h_req_if(tx_header)" 0)}
wvSetPosition -win $_nWave2 {("d2h_req_if(tx_header)" 6)}
wvSetPosition -win $_nWave2 {("d2h_req_if(tx_header)" 6)}
wvSetPosition -win $_nWave2 {("G20" 0)}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 6 )} 
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 5 )} 
wvSetPosition -win $_nWave2 {("d2h_req_if(tx_header)" 5)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G20" 0)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 14 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G20" 0)}
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G20" 0)}
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 10 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G20" 0)}
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 9 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G20" 0)}
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 8 )} 
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G20" 0)}
wvSelectSignal -win $_nWave2 {( "d2h_req_if(tx_header)" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G20" 0)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G18" 34)}
wvSetPosition -win $_nWave2 {("G18" 34)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 0)}
wvAddSubGroup -win $_nWave2 -holdpost {d2h_req_if(tx_header)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_is_valid" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_protocol_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_vc_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_shared_credit" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_header" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cache/u_d2h_req_ctrl/d2h_req_if/req_block"
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 0)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 6)}
wvSetPosition -win $_nWave2 {("G18" 34)}
verdiSetActWin -win $_nWave2
wvSelectGroup -win $_nWave2 {d2h_req_if(tx_header)}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18" 34)}
wvSelectSignal -win $_nWave2 {( "G18" 42 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18" 34)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18" 34)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 5 )} 
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 5)}
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 11 )} 
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 10 11 )} 
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 9 10 11 )} 
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 7 9 10 11 )} 
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 6 7 9 10 11 )} 
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 4 6 7 9 10 11 )} 
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 3 4 6 7 9 10 11 )} \
           
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 2 3 4 6 7 9 10 11 \
           )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 5)}
wvZoom -win $_nWave2 10162659.731055 10188618.408891
wvSetCursor -win $_nWave2 10166895.989375 -snap {("d2h_req_if(tx_header)" 3)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 3 )} 
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 3 )} 
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 2 )} 
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 2)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 2)}
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 2 )} 
wvExpandBus -win $_nWave2
wvScrollDown -win $_nWave2 1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 18 -pos 7 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G18" 25)}
wvSetPosition -win $_nWave2 {("G18" 27)}
wvSetPosition -win $_nWave2 {("G18" 29)}
wvSetPosition -win $_nWave2 {("G18" 31)}
wvSetPosition -win $_nWave2 {("G18" 32)}
wvSetPosition -win $_nWave2 {("G18" 33)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 0)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 1)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 3)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 4)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 5)}
wvSetPosition -win $_nWave2 {("G20" 0)}
wvSetPosition -win $_nWave2 {("data_if(rx)" 0)}
wvRenameGroup -win $_nWave2 {G20} {data_if(rx)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_rxcrd_valid" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_rxcrd_protocol_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_rxcrd_vc_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_rxcrd_shared" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_txblock_crd_flow" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_is_valid" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_protocol_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_vc_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_shared_credit" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_header" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_body\[511:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_byte_enable\[63:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_poison" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_parity\[7:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_eop" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_cmd_parity" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_d2h_data/data_if/data_block"
wvSetPosition -win $_nWave2 {("data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("data_if(rx)" 17)}
wvSetPosition -win $_nWave2 {("data_if(rx)" 17)}
wvSetPosition -win $_nWave2 {("G20" 0)}
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cache" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_h2d_rsp_ctrl" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_h2d_rsp_ctrl" -delim "." -win \
           $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_h2d_rsp_ctrl" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 18 -pos 7 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 5)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 18 -pos 7 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 9 )} \
           
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 5)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 9 )} \
           
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 10 \
           )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 5)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 8 )} \
           
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 5)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 7 )} \
           
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 5)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6 )} \
           
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 5 )} \
           
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 5)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 4 )} \
           
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 5)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 3 )} \
           
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 5)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 1 )} \
           
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 5)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 3 )} \
           
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 3)}
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 5 )} \
           
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 4 5 \
           )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 8)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 5 )} \
           
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 7)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 5 )} \
           
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 5 )} \
           
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6 )} \
           
wvZoom -win $_nWave2 10179256.896425 10180679.289731
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 5 )} \
           
wvScrollDown -win $_nWave2 5
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 1 )} 
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 1 2 3 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6)}
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6)}
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6)}
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6)}
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6)}
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 2 )} 
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 2 )} 
wvSetPosition -win $_nWave2 {("data_if(rx)" 2)}
wvExpandBus -win $_nWave2
wvScrollDown -win $_nWave2 5
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 4 )} 
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 3 )} 
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("data_if(rx)" 7)}
wvSetPosition -win $_nWave2 {("data_if(rx)" 6)}
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("data_if(rx)" 6)}
wvSetPosition -win $_nWave2 {("data_if(rx)" 5)}
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 5 )} 
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("data_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("data_if(rx)" 4)}
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("data_if(rx)" 3)}
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("data_if(rx)" 2)}
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 5 )} 
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("data_if(rx)" 2)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 1 )} 
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 2 )} 
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 3 )} 
wvSelectSignal -win $_nWave2 {( "data_if(rx)" 4 )} 
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_h2d_data_ctrl" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_h2d_data_ctrl" -delim "." -win \
           $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_h2d_data_ctrl" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 14 -pos 7 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G20" 0)}
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 14 -pos 7 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G18" 34 )} 
wvScrollUp -win $_nWave2 745
wvSelectSignal -win $_nWave2 {( "core_aw_if(slave)" 1 2 3 4 5 6 7 8 9 10 11 12 \
           13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 )} \
           {( "core_aw_if(slave)/data_if(rx)#1" 1 2 3 4 5 6 7 8 9 10 11 12 13 \
           14 15 16 17 )} {( "core_aw_if(slave)/data_if(tx)" 1 2 3 4 5 6 7 8 \
           9 10 11 12 13 14 15 16 17 )} {( "core_aw_if(slave)/data_if(rx)" 1 \
           2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 )} {( "core_aw_if(slave)" \
           91 92 93 94 95 96 97 98 )} {( "core_aw_if(slave)/d2h_req_if(tx_header)" \
           1 2 3 4 5 6 7 8 9 10 11 12 13 14 )} {( "core_aw_if(slave)" 114 115 \
           116 )} {( "core_aw_if(slave)/h2d_rsp_if(rx)" 1 2 3 4 5 6 7 8 9 10 \
           11 12 13 14 15 16 17 )} {( "core_aw_if(slave)/h2d_rsp_if(rx)/h2d_data_if(rx)" \
           1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 )} {( "core_aw_if(slave)/h2d_rsp_if(rx)" \
           36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 )} {( "core_aw_if(slave)/h2d_rsp_if(rx)/data_if(tx)" \
           1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 )} {( "req_if(rx)" \
           1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 )} {( "G4" 1 2 3 4 \
           5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 \
           29 30 31 32 33 34 35 )} {( "core_aw_if(AXI4_A_IF)" 1 2 3 4 5 6 7 )} \
           {( "core_w_if(AXI4_W_IF)" 1 2 3 4 5 )} {( "d2h_req_if(CPI_REQ_IF)" \
           1 2 3 4 5 6 7 8 9 10 11 12 13 14 )} {( "d2h_req_if(CPI_REQ_IF)/req0_if(dst)" \
           1 2 3 4 5 )} {( "d2h_req_if(CPI_REQ_IF)/req0_if(dst)/req1_if(dst)" \
           1 2 3 )} {( "d2h_req_if(CPI_REQ_IF)/req0_if(dst)" 10 )} {( "d2h_req_if(CPI_REQ_IF)" \
           26 )} {( "G8" 1 2 3 4 5 )} {( "G8/wr1_if(dst)" 1 2 3 4 5 6 7 )} {( \
           "G8/wr1_if(dst)/core_r_if(slave)" 1 2 3 4 5 6 )} {( "G8/wr1_if(dst)" \
           15 )} {( "G8/h2d_data_if(rx)" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 \
           16 17 )} {( "G8" 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 \
           57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 )} {( "G8/rsp_if(tx)" \
           1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 )} {( "d2h_data_if(tx)" \
           1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 )} {( "G10" 1 2 )} {( "G10/data_if(rx)" \
           1 2 3 4 5 6 7 8 9 10 11 12 )} {( "G11" 1 )} {( "G11/d2h_data_if(tx)" \
           1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 \
           26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 \
           )} {( "G11/d2h_data_if(tx)/data_if(rx)" 1 2 3 4 5 6 7 8 9 10 11 12 \
           13 14 )} {( "G11/d2h_data_if(tx)" 63 64 65 66 67 68 69 70 71 72 73 \
           74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 )} {( \
           "G11" 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 \
           112 113 114 115 116 117 118 119 120 121 122 123 124 )} {( "G11/d2h_req_if(tx_header)" \
           1 2 3 4 5 6 7 8 9 10 11 12 13 14 )} {( "G12" 1 2 3 4 5 6 7 8 9 10 \
           11 12 13 14 15 16 17 18 19 20 21 )} {( "core_ar_if(AXI4_A_IF)" 1 2 \
           3 4 5 6 7 8 9 10 11 12 13 14 )} {( "core_ar_if(AXI4_A_IF)/mem_ar_if(AXI4_A_IF)" \
           1 2 3 4 5 6 7 8 9 10 11 12 13 14 )} {( "core_ar_if(AXI4_A_IF)/mem_ar_if(AXI4_A_IF)/mem_r_if(AXI4_R_IF)" \
           1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 )} {( "core_ar_if(AXI4_A_IF)/mem_ar_if(AXI4_A_IF)/mem_r_if(AXI4_R_IF)/core_r_if(slave)" \
           1 2 3 4 5 6 )} {( "G15" 1 2 3 4 5 6 7 8 9 10 11 12 13 )} {( "G15/core_aw_if(slave)" \
           1 2 3 4 5 6 7 8 9 10 11 )} {( "G16" 1 2 3 4 5 6 7 8 9 )} {( "G16/h2d_rsp_if(rx)" \
           1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 )} {( "G17" 1 2 3 4 5 \
           6 7 8 9 10 11 12 )} {( "d2h_data_if(tx)#1" 1 2 3 4 5 6 7 8 9 10 11 \
           12 13 14 15 16 17 )} {( "d2h_data_if(tx)#1/data_if(rx)" 1 2 3 4 5 \
           6 7 8 9 10 11 )} {( "G18" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSelectGroup -win $_nWave2 {d2h_data_if(tx)#1/data_if(rx)}
wvSelectGroup -win $_nWave2 {d2h_data_if(tx)#1/data_if(rx)}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSelectGroup -win $_nWave2 {core_aw_if(slave)}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSelectGroup -win $_nWave2 {core_w_if(slave)}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSelectGroup -win $_nWave2 {req_if(rx)}
wvSelectGroup -win $_nWave2 {req_if(rx)} {G4}
wvSelectGroup -win $_nWave2 {req_if(rx)} {G4} {core_aw_if(AXI4_A_IF)}
wvSelectGroup -win $_nWave2 {req_if(rx)} {G4} {core_aw_if(AXI4_A_IF)} \
           {core_w_if(AXI4_W_IF)}
wvSelectGroup -win $_nWave2 {req_if(rx)} {G4} {core_aw_if(AXI4_A_IF)} \
           {core_w_if(AXI4_W_IF)}
wvSelectGroup -win $_nWave2 {req_if(rx)} {G4} {core_aw_if(AXI4_A_IF)} \
           {core_w_if(AXI4_W_IF)}
wvSelectGroup -win $_nWave2 {req_if(rx)} {G4} {core_aw_if(AXI4_A_IF)} \
           {core_w_if(AXI4_W_IF)} {d2h_req_if(CPI_REQ_IF)}
wvSelectGroup -win $_nWave2 {req_if(rx)} {G4} {core_aw_if(AXI4_A_IF)} \
           {core_w_if(AXI4_W_IF)} {d2h_req_if(CPI_REQ_IF)} {G8}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G21" 0)}
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSelectGroup -win $_nWave2 {d2h_data_if(tx)}
wvSelectGroup -win $_nWave2 {d2h_data_if(tx)} {G10}
wvSelectGroup -win $_nWave2 {d2h_data_if(tx)} {G10} {G11}
wvSelectGroup -win $_nWave2 {d2h_data_if(tx)} {G10} {G11} {G12}
wvSelectGroup -win $_nWave2 {d2h_data_if(tx)} {G10} {G11} {G12} {G15}
wvSelectGroup -win $_nWave2 {d2h_data_if(tx)} {G10} {G11} {G12} {G15} {G16}
wvSelectGroup -win $_nWave2 {d2h_data_if(tx)} {G10} {G11} {G12} {G15} {G16} {G17}
wvSelectGroup -win $_nWave2 {d2h_data_if(tx)} {G10} {G11} {G12} {G15} {G16} {G17} \
           {d2h_data_if(tx)#1}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSelectGroup -win $_nWave2 {core_ar_if(AXI4_A_IF)}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 1 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 5 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 4 5 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 3 4 5 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 1 2 3 4 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 12 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvSetCursor -win $_nWave2 10264774.660252 -snap {("d2h_req_if(tx_header)" 5)}
wvSaveSignal -win $_nWave2 "/home/hsh/cocotb/cmss_top/signal1.rc"
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSelectGroup -win $_nWave2 {data_if(rx)}
wvRenameGroup -win $_nWave2 {data_if(rx)} {d2h_data_if(rx)}
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 2 )} 
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 1 )} 
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 156 -pos 8 -win $_nTrace1
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 156 -pos 8 -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_valid_o" -line 30 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 10)}
wvSetPosition -win $_nWave2 {("G21" 0)}
wvAddSignal -win $_nWave2 "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_pack/flit_valid_o"
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSetPosition -win $_nWave2 {("G21" 1)}
wvSetPosition -win $_nWave2 {("G21" 1)}
wvSelectGroup -win $_nWave2 {G5}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G21" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G21" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_payload_o" -line 32 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 8)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 9)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 10)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 11)}
wvSetPosition -win $_nWave2 {("G21" 0)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_pack/flit_payload_o\[511:0\]"
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSetPosition -win $_nWave2 {("G21" 1)}
wvSelectSignal -win $_nWave2 {( "G21" 1 )} 
wvExpandBus -win $_nWave2
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 258
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G21" 1)}
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSelectSignal -win $_nWave2 {( "G21" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G21" 0)}
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "phy_if.tx_mac" -line 470 -pos 1
srcAction -pos 469 7 1 -win $_nTrace1 -name "phy_if.tx_mac" -ctrlKey off
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_arbiter" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_arbiter" -delim "." -win \
           $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_arbiter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "trans_flit_ready_o" -line 9 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "trans_flit_payload_i" -line 10 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G21" 0)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_arbiter/trans_flit_payload_i\[511:0\]"
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSetPosition -win $_nWave2 {("G21" 1)}
verdiSetActWin -win $_nWave2
wvExpandBus -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G21" 1)}
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSelectSignal -win $_nWave2 {( "G21" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G21" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_payload_o" -line 34 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 6)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 9)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 10)}
wvSetPosition -win $_nWave2 {("G21" 0)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_arbiter/flit_payload_o\[511:0\]"
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSetPosition -win $_nWave2 {("G21" 1)}
wvSelectSignal -win $_nWave2 {( "G21" 1 )} 
verdiSetActWin -win $_nWave2
wvExpandBus -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G21" 1)}
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSelectSignal -win $_nWave2 {( "G21" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G21" 0)}
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_mem" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_llctrl" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_init" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_credit" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_decoder" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_encoder" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_encoder" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_encoder" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload_i" -line 14 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload_i" -line 14 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G21" 0)}
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 31 -pos 7 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 31 -pos 7 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_payload_o" -line 32 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 7)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 9)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 10)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 11)}
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_pack/flit_payload_o\[511:0\]"
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 1)}
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_following_o" -line 33 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 9)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 10)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 11)}
wvSetPosition -win $_nWave2 {("G21" 0)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_pack/flit_following_o"
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 1)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 514)}
wvScrollUp -win $_nWave2 4
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 2)}
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 145 -pos 5 -win $_nTrace1
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10214779.005819 -snap {("d2h_data_if(rx)" 2)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_payload_o" -line 195 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_pack/flit_payload_o\[511:0\]"
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 1)}
verdiSetActWin -win $_nWave2
wvSelectGroup -win $_nWave2 {G7}
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 0)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_payload_o" -line 218 -pos 1 -win $_nTrace1
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 1 )} 
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 2 )} 
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 3 )} 
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 2 )} 
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 1 )} 
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 6 )} 
wvSetCursor -win $_nWave2 10278765.700567 -snap {("h2d_data_if(rx)" 6)}
wvSetCursor -win $_nWave2 10280916.513836 -snap {("h2d_data_if(rx)" 6)}
wvSetCursor -win $_nWave2 10284680.437056 -snap {("h2d_data_if(rx)" 6)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 10 )} 
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 1 )} 
wvSetCursor -win $_nWave2 10264785.414322 -snap {("d2h_req_if(tx_header)" 5)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 3 )} 
wvZoom -win $_nWave2 10263710.007688 10277152.590616
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 4 )} 
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)" 3 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10279260.686161 -snap {("h2d_data_if(rx)" 12)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 12 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 11 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 1 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 11 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 10 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 9 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 8 )} 
wvSetCursor -win $_nWave2 10266810.615262 -snap {("d2h_req_if(tx_header)" 5)}
wvSetCursor -win $_nWave2 10264523.867546 -snap {("d2h_req_if(tx_header)" 4)}
wvZoom -win $_nWave2 10263380.493688 10266937.656802
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetCursor -win $_nWave2 10280925.733250 -snap {("h2d_data_if(rx)" 6)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cclk" -line 5 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvAddSignal -win $_nWave2 "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_pack/cclk"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 7 )} 
wvSetCursor -win $_nWave2 10278774.206358 -snap {("h2d_data_if(rx)" 7)}
wvSetCursor -win $_nWave2 10280992.968466 -snap {("h2d_data_if(rx)" 7)}
wvSetCursor -win $_nWave2 10278975.912004 -snap {("h2d_data_if(rx)" 7)}
wvSetCursor -win $_nWave2 10280992.968466 -snap {("h2d_data_if(rx)" 7)}
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 10278908.676789 -snap {("h2d_data_if(rx)" 7)}
verdiSetActWin -win $_nWave2
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10280121.521489 -snap {("h2d_data_if(rx)" 7)}
wvSetCursor -win $_nWave2 10287389.987834 -snap {("h2d_data_if(rx)" 7)}
wvSetCursor -win $_nWave2 10290082.012406 -snap {("h2d_data_if(rx)" 2)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSetCursor -win $_nWave2 10290930.000150 -snap {("h2d_data_if(rx)" 2)}
srcActiveTrace \
           "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_h2d_data_ctrl.h2d_data_if.data_is_valid" \
           -TraceByDConWave -TraceTime 10285000 -TraceValue 0 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hdr_empty" -line 74 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_empty" -line 74 -pos 1 -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
srcSelect -signal "phy_rxdata" -line 416 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("d2h_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("d2h_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("d2h_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvAddSignal -win $_nWave2 "/CMSS_TOP_WRAPPER/phy_rxdata\[527:0\]"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10273028.036746 -snap {("h2d_data_if(rx)" 1)}
wvSetCursor -win $_nWave2 10274912.453946 -snap {("h2d_data_if(rx)" 1)}
wvSetCursor -win $_nWave2 10277066.073604 -snap {("h2d_data_if(rx)" 1)}
wvSetCursor -win $_nWave2 10279219.693262 -snap {("h2d_data_if(rx)" 1)}
wvSetCursor -win $_nWave2 10273028.036746 -snap {("h2d_data_if(rx)" 1)}
wvSetCursor -win $_nWave2 10280969.509234 -snap {("h2d_data_if(rx)" 8)}
wvSetCursor -win $_nWave2 10279219.693262 -snap {("h2d_data_if(rx)" 1)}
wvSetCursor -win $_nWave2 10280902.208619 -snap {("h2d_data_if(rx)" 1)}
wvSetCursor -win $_nWave2 10273028.036746 -snap {("h2d_data_if(rx)" 1)}
wvSetCursor -win $_nWave2 10278815.889576 -snap {("h2d_data_if(rx)" 8)}
srcActiveTrace \
           "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_h2d_data_ctrl.h2d_data_if.data_body\[511:0\]" \
           -TraceByDConWave -TraceTime 0 -TraceValue \
           xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_rdata" -line 85 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 13)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 12)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("d2h_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvAddSignal -win $_nWave2 "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_rdata"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
verdiSetActWin -win $_nWave2
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_data.data_rdata" \
           -TraceByDConWave -TraceTime 0 -TraceValue \
           xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_data" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_data" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_data" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hdr_arr_i" -line 19 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 11)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/hdr_arr_i\[0:3\]"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_slot_arr_i" -line 21 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_data/data_slot_arr_i\[0:3\]"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 7)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 5 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 7)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSetCursor -win $_nWave2 10276901.217816 -snap {("h2d_data_if(rx)" 3)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 13)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_slot_arr_i" -line 21 -pos 1 -win $_nTrace1
srcAction -pos 20 9 3 -win $_nTrace1 -name "data_slot_arr_i" -ctrlKey off
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 6 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 6 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 5 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 5 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 13)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 10)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 10)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 9)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvSetCursor -win $_nWave2 10282956.651007 -snap {("h2d_data_if(rx)" 6)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 )} 
wvZoomIn -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10264463.019193 -snap {("d2h_req_if(tx_header)" 5)}
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10273339.967644 -snap {("h2d_data_if(rx)" 1)}
wvSetCursor -win $_nWave2 10275088.457490 -snap {("h2d_data_if(rx)" 1)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSetCursor -win $_nWave2 10277643.942650 -snap {("h2d_data_if(rx)" 2)}
wvSetCursor -win $_nWave2 10289076.376261 -snap {("h2d_data_if(rx)" 3)}
wvSetCursor -win $_nWave2 10301181.305967 -snap {("h2d_data_if(rx)" 3)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvSetCursor -win $_nWave2 10265001.016069 -snap {("d2h_req_if(tx_header)" 5)}
wvZoom -win $_nWave2 10263387.025442 10270649.983265
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10278939.283698 -snap {("h2d_data_if(rx)" 15)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
wvSetCursor -win $_nWave2 10280763.892774 -snap {("h2d_data_if(rx)" 17)}
verdiSetActWin -win $_nWave2
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSetCursor -win $_nWave2 10286982.989753 -snap {("h2d_data_if(rx)" 17)}
wvSetCursor -win $_nWave2 10294611.270326 -snap {("h2d_data_if(rx)" 17)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 1 )} 
wvSetCursor -win $_nWave2 10273024.859343 -snap {("h2d_data_if(rx)" 1)}
wvSetCursor -win $_nWave2 10277082.455392 -snap {("h2d_data_if(rx)" 3)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvZoom -win $_nWave2 10274323.290078 10302888.766267
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10279003.679936 -snap {("h2d_data_if(rx)" 5)}
wvSetCursor -win $_nWave2 10282808.383953 -snap {("h2d_data_if(rx)" 5)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 13 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 15 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 13 )} 
wvSetCursor -win $_nWave2 10278822.503554 -snap {("h2d_data_if(rx)" 13)}
srcActiveTrace \
           "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_h2d_data_ctrl.h2d_data_if.data_header" \
           -TraceByDConWave -TraceTime 0 -TraceValue \
           000000xxxxxxxxxxxxxxxxxxxxx -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10282989.560335 -snap {("h2d_data_if(rx)" 5)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_data.data_slot_arr_i\[0:3\]" \
           -TraceByDConWave -TraceTime 10281000 -TraceValue \
           xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10288907.988805 -snap {("h2d_data_if(rx)" 3)}
srcActiveTrace \
           "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_data.hdr_arr_i\[0\].cqid\[11:0\]" \
           -TraceByDConWave -TraceTime 10279000 -TraceValue xxxxxxxxxxxx -win \
           $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "h2d_data_hdr_arr\[h2d_data_cnt\]" -line 177 -pos 1 -win \
          $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "h2d_data_hdr_arr\[i\]" -line 100 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 6)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 7)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 6)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_rx_unpack/h2d_data_hdr_arr\[0:3\]"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
verdiSetActWin -win $_nWave2
wvExpandBus -win $_nWave2
wvSetCursor -win $_nWave2 10274897.015283 -snap {("h2d_data_if(rx)" 3)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack.h2d_data_hdr_arr\[0\]" \
           -TraceByDConWave -TraceTime 0 -TraceValue xxxxxxxxxxxxxxxxxxxxxxxx \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "h2d_data_cnt" -line 141 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 8)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 7)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_rx_unpack/h2d_data_cnt\[2:0\]"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetCursor -win $_nWave2 10275017.799538 -snap {("h2d_data_if(rx)" 2)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack.h2d_data_cnt\[2:0\]" \
           -TraceByDConWave -TraceTime 0 -TraceValue 000 -win $_nTrace1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "h2d_data_cnt" -line 88 -pos 1 -win $_nTrace1
wvSetCursor -win $_nWave2 10276889.955482 -snap {("h2d_data_if(rx)" 2)}
wvSetCursor -win $_nWave2 10274776.231029 -snap {("h2d_data_if(rx)" 2)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10277131.523991 -snap {("h2d_data_if(rx)" 2)}
wvSetCursor -win $_nWave2 10275078.191665 -snap {("h2d_data_if(rx)" 2)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack.h2d_data_cnt\[2:0\]" \
           -TraceByDConWave -TraceTime 0 -TraceValue 000 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 10275017.799538 -snap {("h2d_data_if(rx)" 2)}
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
tfgBehaviorAnalysis -incr -clockSkew 0 -loopUnroll 0 -bboxEmptyModule 0 \
           -bboxIgnoreProtected 0 -cellModel 0 -confined_flattern 32768
nsMsgSwitchTab -tab general
tfgNWNodeDisplayTraceActive "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack.h2d_data_cnt\[2:0\]#10275000" -mode sig -stopLevel 10 
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10275017.799538 -snap \
           {("h2d_data_cnt#10275000.000_traceThisValue" 2)}
wvSetCursor -win $_nWave2 10274957.407410 -snap \
           {("h2d_data_cnt#10275000.000_traceThisValue" 1)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack.h2d_data_cnt\[2:0\]" \
           -TraceByDConWave -TraceTime 0 -TraceValue 000 -win $_nTrace1
wvSetCursor -win $_nWave2 10274957.407410 -snap \
           {("h2d_data_cnt#10275000.000_traceThisValue" 2)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 10276769.171228 -snap \
           {("h2d_data_cnt#10275000.000_traceThisValue" 2)}
verdiSetActWin -win $_nWave2
wvZoom -win $_nWave2 10275138.583792 10276165.249955
wvZoom -win $_nWave2 10275388.196071 10275459.823943
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "h2d_data_cnt#10275000.000_traceThisValue" 4 )} \
           
wvSelectGroup -win $_nWave2 {h2d_data_cnt#10275000.000_traceThisValue}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 28)}
wvSetCursor -win $_nWave2 10275191.408713 -snap {("h2d_data_if(rx)" 2)}
wvSetCursor -win $_nWave2 10274881.273656 -snap {("h2d_data_if(rx)" 2)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack.h2d_data_cnt\[2:0\]" \
           -TraceByDConWave -TraceTime 0 -TraceValue 000 -win $_nTrace1
wvSetCursor -win $_nWave2 10286937.773964 -snap {("h2d_data_if(rx)" 2)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack.h2d_data_cnt\[2:0\]" \
           -TraceByDConWave -TraceTime 10277000 -TraceValue 000 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 10276935.918403 -snap {("h2d_data_if(rx)" 2)}
verdiSetActWin -win $_nWave2
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack.h2d_data_cnt\[2:0\]" \
           -TraceByDConWave -TraceTime 10275000 -TraceValue 001 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 10274687.439246 -snap {("h2d_data_if(rx)" 2)}
wvSetCursor -win $_nWave2 10274920.040538 -snap {("h2d_data_if(rx)" 2)}
verdiSetActWin -win $_nWave2
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack.h2d_data_cnt\[2:0\]" \
           -TraceByDConWave -TraceTime 0 -TraceValue 000 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload.flit_hdr.slot0" -line 120 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 10)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("d2h_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("d2h_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("d2h_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_rx_unpack/unnamed\$\$_0/payload.flit_hdr.slot0\[2:0\]"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload.slot0" -line 137 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 7)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 6)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_rx_unpack/unnamed\$\$_0/payload.slot0\[95:0\]"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload.slot1" -line 315 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_rx_unpack/unnamed\$\$_0/payload.slot1\[127:0\]"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 6 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload.flit_hdr.slot2" -line 415 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload.slot2" -line 417 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload.slot3" -line 519 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 7 )} 
wvSetCursor -win $_nWave2 10281029.062851 -snap {("h2d_data_if(rx)" 3)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 7 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 8 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 9 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 9 10 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 6)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 6)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 7 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 8 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 7 )} 
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "h2d_req_cnt" -line 87 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "h2d_rsp_cnt" -line 89 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "h2d_data_cnt" -line 88 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6)}
wvSetPosition -win $_nWave2 {("d2h_data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 6)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_rx_unpack/h2d_data_cnt\[2:0\]"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetCursor -win $_nWave2 10275062.986218 -snap {("h2d_data_if(rx)" 2)}
verdiSetActWin -win $_nWave2
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack.h2d_data_cnt\[2:0\]" \
           -TraceByDConWave -TraceTime 0 -TraceValue 000 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "header.h2d_data.valid" -line 139 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_rx_unpack/unnamed\$\$_0/unnamed\$\$_8/header.h2d_data.valid"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10274791.800917 -snap {("h2d_data_if(rx)" 2)}
srcActiveTrace \
           "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack.unnamed\$\$_0.unnamed\$\$_8.header.h2d_data.valid" \
           -TraceByDConWave -TraceTime 10175000 -TraceValue 0 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSetCursor -win $_nWave2 10274985.504703 -snap {("h2d_data_if(rx)" 2)}
srcActiveTrace \
           "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack.unnamed\$\$_0.unnamed\$\$_8.header.h2d_data.valid" \
           -TraceByDConWave -TraceTime 10175000 -TraceValue 0 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 9)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "header" -line 137 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 6 )} 
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 11 )} 
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 11)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 24)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 6 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 6 )} 
wvSetRadix -win $_nWave2 -format UDec
srcDeselectAll -win $_nTrace1
srcSelect -signal "h2d_rsp_hdr_arr\[i\]" -line 103 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("d2h_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("d2h_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "h2d_rsp_hdr_arr\[i\]" -line 103 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("d2h_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("d2h_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("d2h_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_rx_unpack/h2d_rsp_hdr_arr\[0:3\]"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
verdiSetActWin -win $_nWave2
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 4 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 8 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 7 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 6 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 8 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 7 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10187053.522757 -snap {("d2h_data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 15 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 11 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 10 )} 
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 19 )} 
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 19)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 19)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 21 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 20 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 19 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 19 )} 
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 19 )} 
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 19)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 19)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 10275203.113327 -snap {("h2d_data_if(rx)" 19)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 19 )} 
wvSetRadix -win $_nWave2 -format Hex
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10178461.586052 -snap {("h2d_data_if(rx)" 22)}
wvSetCursor -win $_nWave2 10175017.712913 -snap {("h2d_data_if(rx)" 22)}
wvZoom -win $_nWave2 10169069.204763 10207264.888672
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 16 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 16 17 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 16 17 18 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 16 17 18 19 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 19 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 18 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 17 18 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 16 17 18 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 19)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 16)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 9 )} 
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "phy_if.txdata" -line 410 -pos 1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -signal "phy_rxdata" -line 416 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 7)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvAddSignal -win $_nWave2 "/CMSS_TOP_WRAPPER/phy_if/txdata\[527:0\]" \
           "/CMSS_TOP_WRAPPER/phy_rxdata\[527:0\]"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10168941.515701 -snap {("d2h_req_if(tx_header)" 5)}
wvSetCursor -win $_nWave2 10173160.806366 -snap {("h2d_data_if(rx)" 2)}
wvSetCursor -win $_nWave2 10170745.817630 -snap {("h2d_data_if(rx)" 1)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSetCursor -win $_nWave2 10172966.496927 -snap {("h2d_data_if(rx)" 2)}
wvSetCursor -win $_nWave2 10176991.478153 -snap {("h2d_data_if(rx)" 2)}
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_retry" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_llctrl" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_retry" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_llctrl" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_llctrl" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_llctrl" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_llctrl" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "crc_bad_i" -line 15 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -signal "crc_good_i" -line 14 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("d2h_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 0)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 1)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvAddSignal -win $_nWave2 "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_rx_llctrl/crc_bad_i" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_rx_llctrl/crc_good_i"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_rx_unpack" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "state" -line 118 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvAddSignal -win $_nWave2 "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_rx_unpack/state"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload.flit_hdr.slot0" -line 120 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_rx_unpack/unnamed\$\$_0/payload.flit_hdr.slot0\[2:0\]"
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10174909.591312 -snap {("h2d_data_if(rx)" 4)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload.slot0" -line 137 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -win $_nTrace1 -range {131 137 1 6 1 4} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload.slot0" -line 137 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10173053.646607 -snap {("h2d_data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload_i" -line 9 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetCursor -win $_nWave2 10174922.212439 -snap {("h2d_data_if(rx)" 3)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 )} 
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 6 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload.slot1" -line 315 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 7)}
verdiSetActWin -win $_nWave2
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 7)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload.slot3" -line 519 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload.slot3" -line 519 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload.slot2" -line 461 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 8)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 7)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 7)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 8)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 10 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 9 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 8 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 7 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 6 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload" -line 84 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 6)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 5)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 9 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 8 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 7 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 6 )} 
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
wvSetCursor -win $_nWave2 10187040.411434 -snap {("h2d_data_if(rx)" 7)}
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 26
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 18
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 2 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 10)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 9)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 9)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 8)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 4 5 6 7 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 8)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 4 5 6 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 3 )} 
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSetCursor -win $_nWave2 10281358.831336 -snap {("h2d_data_if(rx)" 39)}
wvSetCursor -win $_nWave2 10187212.981975 -snap {("d2h_data_if(rx)" 3)}
wvZoom -win $_nWave2 10186098.961748 10193284.392211
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvZoom -win $_nWave2 10187000.831045 10192999.932052
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10281185.988802 -snap {("h2d_data_if(rx)" 39)}
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSetCursor -win $_nWave2 10187124.268390 -snap {("d2h_data_if(rx)" 3)}
wvSetCursor -win $_nWave2 10191165.002774 -snap {("d2h_data_if(rx)" 3)}
wvSetCursor -win $_nWave2 10195064.781308 -snap {("d2h_data_if(rx)" 3)}
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvResizeWindow -win $_nWave2 1080 31 2560 1369
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10186916.795674 -snap {("d2h_data_if(rx)" 3)}
wvSetCursor -win $_nWave2 10190932.106819 -snap {("d2h_data_if(rx)" 3)}
wvSetCursor -win $_nWave2 10186730.037016 -snap {("d2h_data_if(rx)" 3)}
wvSetCursor -win $_nWave2 10191305.624134 -snap {("d2h_data_if(rx)" 3)}
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_encoder" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_encoder" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_encoder" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_data" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_data" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_data" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 3 )} 
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10195087.486957 -snap {("d2h_data_if(rx)" 3)}
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 2 )} 
wvSetCursor -win $_nWave2 10186845.269038 -snap {("d2h_data_if(rx)" 2)}
wvSetCursor -win $_nWave2 10190965.896663 -snap {("d2h_data_if(rx)" 2)}
wvSetCursor -win $_nWave2 10187176.813789 -snap {("d2h_data_if(rx)" 2)}
wvSetCursor -win $_nWave2 10179125.012682 -snap {("h2d_rsp_if(rx)" 6)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 5 )} \
           
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 6 )} 
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 5 )} 
wvSetCursor -win $_nWave2 10176946.290029 -snap {("h2d_data_if(rx)" 8)}
wvSetCursor -win $_nWave2 10174957.021521 -snap {("h2d_data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 3 )} 
wvSetCursor -win $_nWave2 10187129.450253 -snap {("d2h_data_if(rx)" 3)}
wvSetCursor -win $_nWave2 10178935.558538 -snap {("h2d_rsp_if(rx)" 5)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 4 )} \
           
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6 )} \
           
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 5 )} \
           
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 4 )} \
           
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 3 )} \
           
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 3 )} \
           
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 3)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 3)}
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
wvSelectSignal -win $_nWave2 {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 3 )} \
           
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 3)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("h2d_data_if(rx)" 2)}
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_rsp" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_rsp" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_h2d_rsp" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 20 -pos 7 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 5)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6)}
wvSetPosition -win $_nWave2 \
           {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" 0)}
wvAddSubGroup -win $_nWave2 -holdpost {rsp_if(tx)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/rsp_if/rsp_rxcrd_valid" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/rsp_if/rsp_rxcrd_protocol_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/rsp_if/rsp_rxcrd_vc_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/rsp_if/rsp_rxcrd_shared" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/rsp_if/rsp_txblock_crd_flow" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/rsp_if/rsp_is_valid" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/rsp_if/rsp_protocol_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/rsp_if/rsp_vc_id\[3:0\]" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/rsp_if/rsp_shared_credit" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/rsp_if/rsp_header" \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_h2d_rsp/rsp_if/rsp_block"
wvSetPosition -win $_nWave2 \
           {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" 0)}
wvSetPosition -win $_nWave2 \
           {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" 11)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6)}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 \
           {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" \
           6 )} 
wvSelectSignal -win $_nWave2 \
           {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" \
           5 )} 
wvSelectSignal -win $_nWave2 \
           {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" \
           1 )} 
wvSelectSignal -win $_nWave2 \
           {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" \
           2 )} 
wvSelectSignal -win $_nWave2 \
           {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" \
           2 3 )} 
wvSelectSignal -win $_nWave2 \
           {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" \
           2 3 4 )} 
wvSelectSignal -win $_nWave2 \
           {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" \
           2 3 4 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6)}
wvSelectSignal -win $_nWave2 \
           {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" \
           4 )} 
wvSelectSignal -win $_nWave2 \
           {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" \
           5 )} 
wvSelectSignal -win $_nWave2 \
           {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" \
           6 )} 
wvSetPosition -win $_nWave2 \
           {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" 6)}
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 \
           {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" \
           10 )} 
wvSelectSignal -win $_nWave2 \
           {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" \
           9 )} 
wvSelectSignal -win $_nWave2 \
           {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" \
           8 )} 
wvSelectSignal -win $_nWave2 \
           {( "G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" \
           9 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 10
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 39 )} 
wvSetCursor -win $_nWave2 10281122.387293 -snap {("h2d_data_if(rx)" 39)}
wvSetCursor -win $_nWave2 10186987.359645 -snap {("d2h_data_if(rx)" 3)}
wvSetCursor -win $_nWave2 10180593.282296 -snap {("h2d_data_if(rx)" 8)}
wvSetCursor -win $_nWave2 10183150.913236 -snap {("h2d_data_if(rx)" 6)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 3 )} 
wvSetCursor -win $_nWave2 10186898.119812 -snap {("d2h_data_if(rx)" 3)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10280956.614916 -snap {("h2d_data_if(rx)" 39)}
wvSetCursor -win $_nWave2 10186987.359640 -snap {("d2h_data_if(rx)" 3)}
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 3 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10280909.251380 -snap {("h2d_data_if(rx)" 39)}
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 3 )} 
verdiHighlightSignal -sigColor { \
           "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data.data_if.data_body" N/A }
verdiHighlightSignal -sigColor { \
           "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_d2h_data.data_if.data_body" \
           ID_YELLOW5 }
verdiHighlightSignal -apply
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10186963.485340 -snap {("d2h_data_if(rx)" 3)}
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 3 )} 
wvSetCursor -win $_nWave2 10280790.842542 -snap {("h2d_data_if(rx)" 39)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10187224.177320 -snap {("d2h_data_if(rx)" 3)}
wvSetCursor -win $_nWave2 10281027.660217 -snap {("h2d_data_if(rx)" 39)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 2 )} 
wvSetCursor -win $_nWave2 10186892.632568 -snap {("d2h_data_if(rx)" 3)}
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 3 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 3 )} 
wvSetCursor -win $_nWave2 10281063.893818 -snap {("h2d_data_if(rx)" 39)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 39 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10186897.097948 -snap {("d2h_data_if(rx)" 3)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
debReload
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 3 )} 
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10280793.093761 -snap {("h2d_data_if(rx)" 39)}
wvSelectSignal -win $_nWave2 {( "h2d_data_if(rx)" 39 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10187086.552091 -snap {("d2h_data_if(rx)" 3)}
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 3 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "d2h_data_if(rx)" 3 )} 
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10280913.716749 -snap {("h2d_data_if(rx)" 39)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10186934.656228 -snap {("d2h_data_if(rx)" 3)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvResizeWindow -win $_nWave2 1080 31 2560 1369
wvSetCursor -win $_nWave2 10190806.568689 -snap {("d2h_data_if(rx)" 3)}
wvSetCursor -win $_nWave2 10192922.824069 -snap {("d2h_data_if(rx)" 3)}
wvScrollUp -win $_nWave2 14
wvSetCursor -win $_nWave2 10227300.217025 -snap {("d2h_req_if(tx_header)" 5)}
wvSetCursor -win $_nWave2 10231109.476710 -snap {("d2h_req_if(tx_header)" 5)}
wvSetCursor -win $_nWave2 10226829.938052 -snap {("d2h_req_if(tx_header)" 5)}
wvScrollDown -win $_nWave2 24
wvScrollUp -win $_nWave2 24
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_payload_o" -line 32 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 \
           {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" 4)}
wvSetPosition -win $_nWave2 \
           {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" 2)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 6)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 2)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 5)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 3)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 2)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 1)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 0)}
wvSetPosition -win $_nWave2 {("G18" 0)}
wvAddSignal -win $_nWave2 \
           "/CMSS_TOP_WRAPPER/u_cmss/u_cxl/u_tx_pack/flit_payload_o\[511:0\]"
wvSetPosition -win $_nWave2 {("G18" 0)}
wvSetPosition -win $_nWave2 {("G18" 1)}
verdiSetActWin -win $_nWave2
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack.flit_payload_o\[511:0\]" \
           -TraceByDConWave -TraceTime 10229000 -TraceValue \
           10100100000010111110111100101001000011101101011111011101111110010000001000010000100010010000010100010110110111010110010001110101001101001101101011100001011101111101100110010011110001110000001111101001010011111001011100101111011101010010011011111110010101100111000001100010010100011001101011100001110011101111010010011000111011001100100000001001010011100101100111000000110001100111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011100000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10251049.305183 -snap {("G18" 1)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_pack.flit_payload_o\[511:0\]" \
           -TraceByDConWave -TraceTime 10245000 -TraceValue \
           00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "phy_txdata" -line 171 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -signal "phy_rxdata" -line 178 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 \
           {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" 9)}
wvSetPosition -win $_nWave2 \
           {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)/rsp_if(tx)" 3)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)/h2d_rsp_if(rx)" 4)}
wvSetPosition -win $_nWave2 {("G18/d2h_req_if(tx_header)" 0)}
wvSetPosition -win $_nWave2 {("G18" 1)}
wvSetPosition -win $_nWave2 {("G18" 0)}
wvSetPosition -win $_nWave2 {("G18" 1)}
wvAddSignal -win $_nWave2 "/CMSS_TOP_WRAPPER/phy_txdata\[527:0\]" \
           "/CMSS_TOP_WRAPPER/phy_rxdata\[527:0\]"
wvSetPosition -win $_nWave2 {("G18" 1)}
wvSetPosition -win $_nWave2 {("G18" 3)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10169103.194071 -snap {("G18" 2)}
wvSelectSignal -win $_nWave2 {( "G18" 2 )} 
wvSetCursor -win $_nWave2 10255211.274102 -snap {("G18" 2)}
srcActiveTrace "CMSS_TOP_WRAPPER.phy_txdata\[527:0\]" -TraceByDConWave -TraceTime \
           10255000 -TraceValue \
           000001001111000001011111011101010001011101110010110111100100111001100101001000101101100111011011100111110010100010111011100111000111100101000111111011101100011111011110100111111000100101110011111100111101110101010001010000110100100111101011010111100110011001100001101000110101110101100010110011011001011111011110010101000000010010001110101011000101111110110000101001010100100100110101100001000011111001000001000001100010111110001111011010110001000001001100110100100100110101001100110001011100101100100101111101101101110101110010 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 10254976.134615 -snap {("G18" 2)}
verdiSetActWin -win $_nWave2
srcActiveTrace "CMSS_TOP_WRAPPER.phy_txdata\[527:0\]" -TraceByDConWave -TraceTime \
           10253000 -TraceValue \
           101110101011001101101011010111011010110100001001100010001000010101010111111111101010111110101111111111001011011000001101000001100100000101110011101111111110010111101000000100011001001001101110010110011010100111001011001010101001100101100001010100010010110011010101100110110100110000100001101000011011110000000111010011000111001110010111111000011011010001110011011110111010100101101101101110100001011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011100000000000000000000000000000000 \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "phy_if.txdata" -line 410 -pos 1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "phy_if.txdata" -line 410 -pos 1
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G18" 2)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "phy_if.txdata" -line 410 -pos 1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 10254882.078821 -snap {("G18" 3)}
srcActiveTrace "CMSS_TOP_WRAPPER.phy_if.txdata\[527:0\]" -TraceByDConWave \
           -TraceTime 10253000 -TraceValue \
           101110101011001101101011010111011010110100001001100010001000010101010111111111101010111110101111111111001011011000001101000001100100000101110011101111111110010111101000000100011001001001101110010110011010100111001011001010101001100101100001010100010010110011010101100110110100110000100001101000011011110000000111010011000111001110010111111000011011010001110011011110111010100101101101101110100001011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011100000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit" -line 41 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_encoder.flit" -TraceByDConWave \
           -TraceTime 10255000 -TraceValue \
           000001001111000001011111011101010001011101110010110111100100111001100101001000101101100111011011100111110010100010111011100111000111100101000111111011101100011111011110100111111000100101110011111100111101110101010001010000110100100111101011010111100110011001100001101000110101110101100010110011011001011111011110010101000000010010001110101011000101111110110000101001010100100100110101100001000011111001000001000001100010111110001111011010110001000001001100110100100100110101001100110001011100101100100101111101101101110101110010 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "flit_n" -line 30 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10253095.018722 -snap {("G18" 5)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_encoder.flit_n" -TraceByDConWave \
           -TraceTime 10253000 -TraceValue \
           000001001111000001011111011101010001011101110010110111100100111001100101001000101101100111011011100111110010100010111011100111000111100101000111111011101100011111011110100111111000100101110011111100111101110101010001010000110100100111101011010111100110011001100001101000110101110101100010110011011001011111011110010101000000010010001110101011000101111110110000101001010100100100110101100001000011111001000001000001100010111110001111011010110001000001001100110100100100110101001100110001011100101100100101111101101101110101110010 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G18" 5 )} 
wvSetPosition -win $_nWave2 {("G18" 5)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G18" 5)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload_i" -line 34 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "payload_i" -line 34 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10252859.879235 -snap {("G18" 6)}
srcActiveTrace "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_encoder.payload_i\[511:0\]" \
           -TraceByDConWave -TraceTime 10251000 -TraceValue \
           01101011010111011010110100001001100010001000010101010111111111101010111110101111111111001011011000001101000001100100000101110011101111111110010111101000000100011001001001101110010110011010100111001011001010101001100101100001010100010010110011010101100110110100110000100001101000011011110000000111010011000111001110010111111000011011010001110011011110111010100101101101101110100001011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011100000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "trans_flit_payload_i" -line 167 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 10253000.962927 -snap {("G18" 7)}
verdiSetActWin -win $_nWave2
srcActiveTrace \
           "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_arbiter.trans_flit_payload_i\[511:0\]" \
           -TraceByDConWave -TraceTime 10251000 -TraceValue \
           01101011010111011010110100001001100010001000010101010111111111101010111110101111111111001011011000001101000001100100000101110011101111111110010111101000000100011001001001101110010110011010100111001011001010101001100101100001010100010010110011010101100110110100110000100001101000011011110000000111010011000111001110010111111000011011010001110011011110111010100101101101101110100001011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011100000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "packed_flit_payload_i" -line 90 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 10253000.962927 -snap {("G18" 8)}
srcActiveTrace \
           "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_llctrl.packed_flit_payload_i\[511:0\]" \
           -TraceByDConWave -TraceTime 10251000 -TraceValue \
           01101011010111011010110100001001100010001000010101010111111111101010111110101111111111001011011000001101000001100100000101110011101111111110010111101000000100011001001001101110010110011010100111001011001010101001100101100001010100010010110011010101100110110100110000100001101000011011110000000111010011000111001110010111111000011011010001110011011110111010100101101101101110100001011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011100000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 10250931.735444 -snap {("G18" 8)}
srcActiveTrace \
           "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_tx_llctrl.packed_flit_payload_i\[511:0\]" \
           -TraceByDConWave -TraceTime 10245000 -TraceValue \
           00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -win $_nTrace1 -range {20 42 1 8 1 10}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {476 484 1 2 1 1} -backward
srcDeselectAll -win $_nTrace1
