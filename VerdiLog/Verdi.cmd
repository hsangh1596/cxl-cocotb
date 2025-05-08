verdiSetActWin -dock widgetDock_<Message>
verdiFindBar -show -widget <Message>
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
simSetSimulator "-vcssv" -exec "/home/hsh/cocotb/cmss_top/sim_build/simv" -args
debImport "-dbdir" "/home/hsh/cocotb/cmss_top/sim_build/simv.daidir"
verdiWindowResize -win $_Verdi_1 "1265" "209" "892" "593"
verdiWindowResize -win $_Verdi_1 "1265" "209" "1555" "793"
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cxl.u_connect_mem" -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_mem_r" -win $_nTrace1
srcSetScope "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_mem_r" -delim "." -win $_nTrace1
srcHBSelect "CMSS_TOP_WRAPPER.u_cmss.u_cache.u_mem_r" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {238 239 3 1 1 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcAction -pos 237 3 2 -win $_nTrace1 -name "DEVEL_CXL" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {240 345 2 1 1 1}
srcDeselectAll -win $_nTrace1
wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/home/hsh/cocotb/cmss_top/dump.fsdb}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/AXI4_PKG"
wvGetSignalSetScope -win $_nWave2 "/CMSS_TOP_WRAPPER"
wvSetPosition -win $_nWave2 {("G1" 37)}
wvSetPosition -win $_nWave2 {("G1" 37)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arburst\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_arcache\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/core_arprot\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_arqos\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arready} \
{/CMSS_TOP_WRAPPER/core_arregion\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} \
{/CMSS_TOP_WRAPPER/core_awaddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_awburst\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_awcache\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_awlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/core_awprot\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_awqos\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awready} \
{/CMSS_TOP_WRAPPER/core_awregion\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_awvalid} \
{/CMSS_TOP_WRAPPER/core_bid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_bready} \
{/CMSS_TOP_WRAPPER/core_bresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_bvalid} \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_rlast} \
{/CMSS_TOP_WRAPPER/core_rready} \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} \
{/CMSS_TOP_WRAPPER/core_wdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_wlast} \
{/CMSS_TOP_WRAPPER/core_wready} \
{/CMSS_TOP_WRAPPER/core_wstrb\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_wvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 )} 
wvSetPosition -win $_nWave2 {("G1" 37)}
wvGetSignalSetSignalFilter -win $_nWave2 "*clk*"
wvSetPosition -win $_nWave2 {("G1" 37)}
wvSetPosition -win $_nWave2 {("G1" 37)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arburst\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_arcache\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/core_arprot\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_arqos\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arready} \
{/CMSS_TOP_WRAPPER/core_arregion\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} \
{/CMSS_TOP_WRAPPER/core_awaddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_awburst\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_awcache\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_awlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/core_awprot\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_awqos\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awready} \
{/CMSS_TOP_WRAPPER/core_awregion\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_awvalid} \
{/CMSS_TOP_WRAPPER/core_bid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_bready} \
{/CMSS_TOP_WRAPPER/core_bresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_bvalid} \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_rlast} \
{/CMSS_TOP_WRAPPER/core_rready} \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} \
{/CMSS_TOP_WRAPPER/core_wdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_wlast} \
{/CMSS_TOP_WRAPPER/core_wready} \
{/CMSS_TOP_WRAPPER/core_wstrb\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_wvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 )} 
wvSetPosition -win $_nWave2 {("G1" 37)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arburst\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_arcache\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/core_arprot\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_arqos\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arready} \
{/CMSS_TOP_WRAPPER/core_arregion\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} \
{/CMSS_TOP_WRAPPER/core_awaddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_awburst\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_awcache\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_awlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/core_awprot\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_awqos\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awready} \
{/CMSS_TOP_WRAPPER/core_awregion\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_awvalid} \
{/CMSS_TOP_WRAPPER/core_bid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_bready} \
{/CMSS_TOP_WRAPPER/core_bresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_bvalid} \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_rlast} \
{/CMSS_TOP_WRAPPER/core_rready} \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} \
{/CMSS_TOP_WRAPPER/core_wdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_wlast} \
{/CMSS_TOP_WRAPPER/core_wready} \
{/CMSS_TOP_WRAPPER/core_wstrb\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_wvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/pclk} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 )} 
wvSetPosition -win $_nWave2 {("G2" 3)}
wvGetSignalSetSignalFilter -win $_nWave2 "*rest*"
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arburst\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_arcache\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/core_arprot\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_arqos\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arready} \
{/CMSS_TOP_WRAPPER/core_arregion\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} \
{/CMSS_TOP_WRAPPER/core_awaddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_awburst\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_awcache\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_awlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/core_awprot\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_awqos\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awready} \
{/CMSS_TOP_WRAPPER/core_awregion\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_awvalid} \
{/CMSS_TOP_WRAPPER/core_bid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_bready} \
{/CMSS_TOP_WRAPPER/core_bresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_bvalid} \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_rlast} \
{/CMSS_TOP_WRAPPER/core_rready} \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} \
{/CMSS_TOP_WRAPPER/core_wdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_wlast} \
{/CMSS_TOP_WRAPPER/core_wready} \
{/CMSS_TOP_WRAPPER/core_wstrb\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_wvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/pclk} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 )} 
wvSetPosition -win $_nWave2 {("G2" 3)}
wvGetSignalSetSignalFilter -win $_nWave2 "*reset*"
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arburst\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_arcache\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/core_arprot\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_arqos\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arready} \
{/CMSS_TOP_WRAPPER/core_arregion\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} \
{/CMSS_TOP_WRAPPER/core_awaddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_awburst\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_awcache\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_awlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/core_awprot\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_awqos\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awready} \
{/CMSS_TOP_WRAPPER/core_awregion\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_awvalid} \
{/CMSS_TOP_WRAPPER/core_bid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_bready} \
{/CMSS_TOP_WRAPPER/core_bresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_bvalid} \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_rlast} \
{/CMSS_TOP_WRAPPER/core_rready} \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} \
{/CMSS_TOP_WRAPPER/core_wdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_wlast} \
{/CMSS_TOP_WRAPPER/core_wready} \
{/CMSS_TOP_WRAPPER/core_wstrb\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_wvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/pclk} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 )} 
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arburst\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_arcache\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/core_arprot\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_arqos\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arready} \
{/CMSS_TOP_WRAPPER/core_arregion\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} \
{/CMSS_TOP_WRAPPER/core_awaddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_awburst\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_awcache\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_awlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/core_awprot\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_awqos\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awready} \
{/CMSS_TOP_WRAPPER/core_awregion\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_awvalid} \
{/CMSS_TOP_WRAPPER/core_bid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_bready} \
{/CMSS_TOP_WRAPPER/core_bresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_bvalid} \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_rlast} \
{/CMSS_TOP_WRAPPER/core_rready} \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} \
{/CMSS_TOP_WRAPPER/core_wdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_wlast} \
{/CMSS_TOP_WRAPPER/core_wready} \
{/CMSS_TOP_WRAPPER/core_wstrb\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_wvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/pclk} \
{/CMSS_TOP_WRAPPER/areset} \
{/CMSS_TOP_WRAPPER/areset_n} \
{/CMSS_TOP_WRAPPER/creset} \
{/CMSS_TOP_WRAPPER/creset_n} \
{/CMSS_TOP_WRAPPER/preset} \
{/CMSS_TOP_WRAPPER/preset_n} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/CMSS_TOP_WRAPPER/core_araddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_arburst\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_arcache\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_arlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/core_arprot\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_arqos\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arready} \
{/CMSS_TOP_WRAPPER/core_arregion\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_arsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_arvalid} \
{/CMSS_TOP_WRAPPER/core_awaddr\[63:0\]} \
{/CMSS_TOP_WRAPPER/core_awburst\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_awcache\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_awlen\[7:0\]} \
{/CMSS_TOP_WRAPPER/core_awprot\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_awqos\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awready} \
{/CMSS_TOP_WRAPPER/core_awregion\[3:0\]} \
{/CMSS_TOP_WRAPPER/core_awsize\[2:0\]} \
{/CMSS_TOP_WRAPPER/core_awvalid} \
{/CMSS_TOP_WRAPPER/core_bid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_bready} \
{/CMSS_TOP_WRAPPER/core_bresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_bvalid} \
{/CMSS_TOP_WRAPPER/core_rdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_rid\[4:0\]} \
{/CMSS_TOP_WRAPPER/core_rlast} \
{/CMSS_TOP_WRAPPER/core_rready} \
{/CMSS_TOP_WRAPPER/core_rresp\[1:0\]} \
{/CMSS_TOP_WRAPPER/core_rvalid} \
{/CMSS_TOP_WRAPPER/core_wdata\[255:0\]} \
{/CMSS_TOP_WRAPPER/core_wlast} \
{/CMSS_TOP_WRAPPER/core_wready} \
{/CMSS_TOP_WRAPPER/core_wstrb\[31:0\]} \
{/CMSS_TOP_WRAPPER/core_wvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/CMSS_TOP_WRAPPER/aclk} \
{/CMSS_TOP_WRAPPER/cclk} \
{/CMSS_TOP_WRAPPER/pclk} \
{/CMSS_TOP_WRAPPER/areset} \
{/CMSS_TOP_WRAPPER/areset_n} \
{/CMSS_TOP_WRAPPER/creset} \
{/CMSS_TOP_WRAPPER/creset_n} \
{/CMSS_TOP_WRAPPER/preset} \
{/CMSS_TOP_WRAPPER/preset_n} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave2 {("G2" 9)}
wvGetSignalClose -win $_nWave2
verdiWindowResize -win $_Verdi_1 "1265" "209" "2153" "1083"
wvZoomAll -win $_nWave2
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 0.000000 400665.081028
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 0.000000 152634.316582
wvZoom -win $_nWave2 0.000000 12295.798974
wvSetCursor -win $_nWave2 6322.915402 -snap {("G2" 7)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
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
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvZoomOut -win $_nWave2
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
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
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvScrollDown -win $_nWave2 5
wvSelectSignal -win $_nWave2 {( "G1" 1 12 )} 
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 5 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvZoom -win $_nWave2 0.000000 1651726.259564
wvZoom -win $_nWave2 0.000000 204089.737705
wvZoom -win $_nWave2 0.000000 24105.087131
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 13 14 15 16 17 18 )} 
wvZoomAll -win $_nWave2
debExit
