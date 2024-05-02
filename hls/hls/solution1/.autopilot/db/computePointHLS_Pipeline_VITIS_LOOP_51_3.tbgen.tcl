set moduleName computePointHLS_Pipeline_VITIS_LOOP_51_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {computePointHLS_Pipeline_VITIS_LOOP_51_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ add25_31_lcssa104 float 32 regular  }
	{ add25_30_lcssa102 float 32 regular  }
	{ add25_29_lcssa100 float 32 regular  }
	{ add25_28_lcssa98 float 32 regular  }
	{ add25_27_lcssa96 float 32 regular  }
	{ add25_26_lcssa94 float 32 regular  }
	{ add25_25_lcssa92 float 32 regular  }
	{ add25_24_lcssa90 float 32 regular  }
	{ add25_23_lcssa88 float 32 regular  }
	{ add25_22_lcssa86 float 32 regular  }
	{ add25_21_lcssa84 float 32 regular  }
	{ add25_20_lcssa82 float 32 regular  }
	{ add25_19_lcssa80 float 32 regular  }
	{ add25_18_lcssa78 float 32 regular  }
	{ add25_17_lcssa76 float 32 regular  }
	{ add25_16_lcssa74 float 32 regular  }
	{ add25_15_lcssa72 float 32 regular  }
	{ add25_14_lcssa70 float 32 regular  }
	{ add25_13_lcssa68 float 32 regular  }
	{ add25_12_lcssa66 float 32 regular  }
	{ add25_11_lcssa64 float 32 regular  }
	{ add25_10_lcssa62 float 32 regular  }
	{ add25_9_lcssa60 float 32 regular  }
	{ add25_8_lcssa58 float 32 regular  }
	{ add25_7_lcssa56 float 32 regular  }
	{ add25_6_lcssa54 float 32 regular  }
	{ add25_5_lcssa52 float 32 regular  }
	{ add25_4_lcssa50 float 32 regular  }
	{ add25_3_lcssa48 float 32 regular  }
	{ add25_2_lcssa46 float 32 regular  }
	{ add25_1_lcssa44 float 32 regular  }
	{ add25_lcssa42 float 32 regular  }
	{ gmem1 int 512 regular {axi_master 0}  }
	{ gmem0 int 512 regular {axi_master 0}  }
	{ sext_ln49_1 int 58 regular  }
	{ sext_ln49 int 58 regular  }
	{ add25_3140_out float 32 regular {pointer 1}  }
	{ add25_3039_out float 32 regular {pointer 1}  }
	{ add25_2938_out float 32 regular {pointer 1}  }
	{ add25_2837_out float 32 regular {pointer 1}  }
	{ add25_2736_out float 32 regular {pointer 1}  }
	{ add25_2635_out float 32 regular {pointer 1}  }
	{ add25_2534_out float 32 regular {pointer 1}  }
	{ add25_2433_out float 32 regular {pointer 1}  }
	{ add25_2332_out float 32 regular {pointer 1}  }
	{ add25_2231_out float 32 regular {pointer 1}  }
	{ add25_2130_out float 32 regular {pointer 1}  }
	{ add25_2029_out float 32 regular {pointer 1}  }
	{ add25_1928_out float 32 regular {pointer 1}  }
	{ add25_1827_out float 32 regular {pointer 1}  }
	{ add25_1726_out float 32 regular {pointer 1}  }
	{ add25_1625_out float 32 regular {pointer 1}  }
	{ add25_1524_out float 32 regular {pointer 1}  }
	{ add25_1423_out float 32 regular {pointer 1}  }
	{ add25_1322_out float 32 regular {pointer 1}  }
	{ add25_1221_out float 32 regular {pointer 1}  }
	{ add25_1120_out float 32 regular {pointer 1}  }
	{ add25_1019_out float 32 regular {pointer 1}  }
	{ add25_918_out float 32 regular {pointer 1}  }
	{ add25_817_out float 32 regular {pointer 1}  }
	{ add25_716_out float 32 regular {pointer 1}  }
	{ add25_615_out float 32 regular {pointer 1}  }
	{ add25_514_out float 32 regular {pointer 1}  }
	{ add25_413_out float 32 regular {pointer 1}  }
	{ add25_312_out float 32 regular {pointer 1}  }
	{ add25_211_out float 32 regular {pointer 1}  }
	{ add25_110_out float 32 regular {pointer 1}  }
	{ add256_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "add25_31_lcssa104", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_30_lcssa102", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_29_lcssa100", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_28_lcssa98", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_27_lcssa96", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_26_lcssa94", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_25_lcssa92", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_24_lcssa90", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_23_lcssa88", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_22_lcssa86", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_21_lcssa84", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_20_lcssa82", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_19_lcssa80", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_18_lcssa78", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_17_lcssa76", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_16_lcssa74", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_15_lcssa72", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_14_lcssa70", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_13_lcssa68", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_12_lcssa66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_11_lcssa64", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_10_lcssa62", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_9_lcssa60", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_8_lcssa58", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_7_lcssa56", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_6_lcssa54", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_5_lcssa52", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_4_lcssa50", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_3_lcssa48", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_2_lcssa46", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_1_lcssa44", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add25_lcssa42", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "layerWeight","offset": { "type": "dynamic","port_name": "layerWeight","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "dataIn","offset": { "type": "dynamic","port_name": "dataIn","bundle": "control"},"direction": "READONLY"},{"cName": "dataOut_final","offset": { "type": "dynamic","port_name": "dataOut_final","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln49_1", "interface" : "wire", "bitwidth" : 58, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln49", "interface" : "wire", "bitwidth" : 58, "direction" : "READONLY"} , 
 	{ "Name" : "add25_3140_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_3039_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_2938_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_2837_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_2736_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_2635_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_2534_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_2433_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_2332_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_2231_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_2130_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_2029_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_1928_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_1827_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_1726_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_1625_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_1524_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_1423_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_1322_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_1221_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_1120_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_1019_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_918_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_817_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_716_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_615_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_514_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_413_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_312_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_211_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add25_110_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add256_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 201
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 33 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 33 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 33 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 33 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 33 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 33 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 33 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 33 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 33 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 33 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 33 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 33 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 33 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 33 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 33 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 512 signal 33 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 64 signal 33 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 33 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 33 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 33 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 33 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 33 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 33 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 33 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 33 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 33 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 33 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 33 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 33 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 33 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 33 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 33 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 33 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 33 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 33 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 512 signal 33 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 33 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 33 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 33 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 33 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 33 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 33 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 33 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 33 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 33 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 33 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 32 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 32 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 32 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 32 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 32 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 32 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 512 signal 32 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 64 signal 32 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 32 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 32 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 32 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 32 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 32 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 32 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 512 signal 32 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 32 } 
	{ m_axi_gmem1_RFIFONUM sc_in sc_lv 9 signal 32 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 32 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 32 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 32 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 32 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 32 } 
	{ add25_31_lcssa104 sc_in sc_lv 32 signal 0 } 
	{ add25_30_lcssa102 sc_in sc_lv 32 signal 1 } 
	{ add25_29_lcssa100 sc_in sc_lv 32 signal 2 } 
	{ add25_28_lcssa98 sc_in sc_lv 32 signal 3 } 
	{ add25_27_lcssa96 sc_in sc_lv 32 signal 4 } 
	{ add25_26_lcssa94 sc_in sc_lv 32 signal 5 } 
	{ add25_25_lcssa92 sc_in sc_lv 32 signal 6 } 
	{ add25_24_lcssa90 sc_in sc_lv 32 signal 7 } 
	{ add25_23_lcssa88 sc_in sc_lv 32 signal 8 } 
	{ add25_22_lcssa86 sc_in sc_lv 32 signal 9 } 
	{ add25_21_lcssa84 sc_in sc_lv 32 signal 10 } 
	{ add25_20_lcssa82 sc_in sc_lv 32 signal 11 } 
	{ add25_19_lcssa80 sc_in sc_lv 32 signal 12 } 
	{ add25_18_lcssa78 sc_in sc_lv 32 signal 13 } 
	{ add25_17_lcssa76 sc_in sc_lv 32 signal 14 } 
	{ add25_16_lcssa74 sc_in sc_lv 32 signal 15 } 
	{ add25_15_lcssa72 sc_in sc_lv 32 signal 16 } 
	{ add25_14_lcssa70 sc_in sc_lv 32 signal 17 } 
	{ add25_13_lcssa68 sc_in sc_lv 32 signal 18 } 
	{ add25_12_lcssa66 sc_in sc_lv 32 signal 19 } 
	{ add25_11_lcssa64 sc_in sc_lv 32 signal 20 } 
	{ add25_10_lcssa62 sc_in sc_lv 32 signal 21 } 
	{ add25_9_lcssa60 sc_in sc_lv 32 signal 22 } 
	{ add25_8_lcssa58 sc_in sc_lv 32 signal 23 } 
	{ add25_7_lcssa56 sc_in sc_lv 32 signal 24 } 
	{ add25_6_lcssa54 sc_in sc_lv 32 signal 25 } 
	{ add25_5_lcssa52 sc_in sc_lv 32 signal 26 } 
	{ add25_4_lcssa50 sc_in sc_lv 32 signal 27 } 
	{ add25_3_lcssa48 sc_in sc_lv 32 signal 28 } 
	{ add25_2_lcssa46 sc_in sc_lv 32 signal 29 } 
	{ add25_1_lcssa44 sc_in sc_lv 32 signal 30 } 
	{ add25_lcssa42 sc_in sc_lv 32 signal 31 } 
	{ sext_ln49_1 sc_in sc_lv 58 signal 34 } 
	{ sext_ln49 sc_in sc_lv 58 signal 35 } 
	{ add25_3140_out sc_out sc_lv 32 signal 36 } 
	{ add25_3140_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ add25_3039_out sc_out sc_lv 32 signal 37 } 
	{ add25_3039_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ add25_2938_out sc_out sc_lv 32 signal 38 } 
	{ add25_2938_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ add25_2837_out sc_out sc_lv 32 signal 39 } 
	{ add25_2837_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ add25_2736_out sc_out sc_lv 32 signal 40 } 
	{ add25_2736_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ add25_2635_out sc_out sc_lv 32 signal 41 } 
	{ add25_2635_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ add25_2534_out sc_out sc_lv 32 signal 42 } 
	{ add25_2534_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ add25_2433_out sc_out sc_lv 32 signal 43 } 
	{ add25_2433_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ add25_2332_out sc_out sc_lv 32 signal 44 } 
	{ add25_2332_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ add25_2231_out sc_out sc_lv 32 signal 45 } 
	{ add25_2231_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ add25_2130_out sc_out sc_lv 32 signal 46 } 
	{ add25_2130_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ add25_2029_out sc_out sc_lv 32 signal 47 } 
	{ add25_2029_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ add25_1928_out sc_out sc_lv 32 signal 48 } 
	{ add25_1928_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ add25_1827_out sc_out sc_lv 32 signal 49 } 
	{ add25_1827_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ add25_1726_out sc_out sc_lv 32 signal 50 } 
	{ add25_1726_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ add25_1625_out sc_out sc_lv 32 signal 51 } 
	{ add25_1625_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ add25_1524_out sc_out sc_lv 32 signal 52 } 
	{ add25_1524_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ add25_1423_out sc_out sc_lv 32 signal 53 } 
	{ add25_1423_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ add25_1322_out sc_out sc_lv 32 signal 54 } 
	{ add25_1322_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ add25_1221_out sc_out sc_lv 32 signal 55 } 
	{ add25_1221_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ add25_1120_out sc_out sc_lv 32 signal 56 } 
	{ add25_1120_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ add25_1019_out sc_out sc_lv 32 signal 57 } 
	{ add25_1019_out_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ add25_918_out sc_out sc_lv 32 signal 58 } 
	{ add25_918_out_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ add25_817_out sc_out sc_lv 32 signal 59 } 
	{ add25_817_out_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ add25_716_out sc_out sc_lv 32 signal 60 } 
	{ add25_716_out_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ add25_615_out sc_out sc_lv 32 signal 61 } 
	{ add25_615_out_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ add25_514_out sc_out sc_lv 32 signal 62 } 
	{ add25_514_out_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ add25_413_out sc_out sc_lv 32 signal 63 } 
	{ add25_413_out_ap_vld sc_out sc_logic 1 outvld 63 } 
	{ add25_312_out sc_out sc_lv 32 signal 64 } 
	{ add25_312_out_ap_vld sc_out sc_logic 1 outvld 64 } 
	{ add25_211_out sc_out sc_lv 32 signal 65 } 
	{ add25_211_out_ap_vld sc_out sc_logic 1 outvld 65 } 
	{ add25_110_out sc_out sc_lv 32 signal 66 } 
	{ add25_110_out_ap_vld sc_out sc_logic 1 outvld 66 } 
	{ add256_out sc_out sc_lv 32 signal 67 } 
	{ add256_out_ap_vld sc_out sc_logic 1 outvld 67 } 
	{ grp_fu_493_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_493_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_493_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_493_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_493_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "add25_31_lcssa104", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_31_lcssa104", "role": "default" }} , 
 	{ "name": "add25_30_lcssa102", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_30_lcssa102", "role": "default" }} , 
 	{ "name": "add25_29_lcssa100", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_29_lcssa100", "role": "default" }} , 
 	{ "name": "add25_28_lcssa98", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_28_lcssa98", "role": "default" }} , 
 	{ "name": "add25_27_lcssa96", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_27_lcssa96", "role": "default" }} , 
 	{ "name": "add25_26_lcssa94", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_26_lcssa94", "role": "default" }} , 
 	{ "name": "add25_25_lcssa92", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_25_lcssa92", "role": "default" }} , 
 	{ "name": "add25_24_lcssa90", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_24_lcssa90", "role": "default" }} , 
 	{ "name": "add25_23_lcssa88", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_23_lcssa88", "role": "default" }} , 
 	{ "name": "add25_22_lcssa86", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_22_lcssa86", "role": "default" }} , 
 	{ "name": "add25_21_lcssa84", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_21_lcssa84", "role": "default" }} , 
 	{ "name": "add25_20_lcssa82", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_20_lcssa82", "role": "default" }} , 
 	{ "name": "add25_19_lcssa80", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_19_lcssa80", "role": "default" }} , 
 	{ "name": "add25_18_lcssa78", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_18_lcssa78", "role": "default" }} , 
 	{ "name": "add25_17_lcssa76", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_17_lcssa76", "role": "default" }} , 
 	{ "name": "add25_16_lcssa74", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_16_lcssa74", "role": "default" }} , 
 	{ "name": "add25_15_lcssa72", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_15_lcssa72", "role": "default" }} , 
 	{ "name": "add25_14_lcssa70", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_14_lcssa70", "role": "default" }} , 
 	{ "name": "add25_13_lcssa68", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_13_lcssa68", "role": "default" }} , 
 	{ "name": "add25_12_lcssa66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_12_lcssa66", "role": "default" }} , 
 	{ "name": "add25_11_lcssa64", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_11_lcssa64", "role": "default" }} , 
 	{ "name": "add25_10_lcssa62", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_10_lcssa62", "role": "default" }} , 
 	{ "name": "add25_9_lcssa60", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_9_lcssa60", "role": "default" }} , 
 	{ "name": "add25_8_lcssa58", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_8_lcssa58", "role": "default" }} , 
 	{ "name": "add25_7_lcssa56", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_7_lcssa56", "role": "default" }} , 
 	{ "name": "add25_6_lcssa54", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_6_lcssa54", "role": "default" }} , 
 	{ "name": "add25_5_lcssa52", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_5_lcssa52", "role": "default" }} , 
 	{ "name": "add25_4_lcssa50", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_4_lcssa50", "role": "default" }} , 
 	{ "name": "add25_3_lcssa48", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_3_lcssa48", "role": "default" }} , 
 	{ "name": "add25_2_lcssa46", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_2_lcssa46", "role": "default" }} , 
 	{ "name": "add25_1_lcssa44", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_1_lcssa44", "role": "default" }} , 
 	{ "name": "add25_lcssa42", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_lcssa42", "role": "default" }} , 
 	{ "name": "sext_ln49_1", "direction": "in", "datatype": "sc_lv", "bitwidth":58, "type": "signal", "bundle":{"name": "sext_ln49_1", "role": "default" }} , 
 	{ "name": "sext_ln49", "direction": "in", "datatype": "sc_lv", "bitwidth":58, "type": "signal", "bundle":{"name": "sext_ln49", "role": "default" }} , 
 	{ "name": "add25_3140_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_3140_out", "role": "default" }} , 
 	{ "name": "add25_3140_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_3140_out", "role": "ap_vld" }} , 
 	{ "name": "add25_3039_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_3039_out", "role": "default" }} , 
 	{ "name": "add25_3039_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_3039_out", "role": "ap_vld" }} , 
 	{ "name": "add25_2938_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_2938_out", "role": "default" }} , 
 	{ "name": "add25_2938_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_2938_out", "role": "ap_vld" }} , 
 	{ "name": "add25_2837_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_2837_out", "role": "default" }} , 
 	{ "name": "add25_2837_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_2837_out", "role": "ap_vld" }} , 
 	{ "name": "add25_2736_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_2736_out", "role": "default" }} , 
 	{ "name": "add25_2736_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_2736_out", "role": "ap_vld" }} , 
 	{ "name": "add25_2635_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_2635_out", "role": "default" }} , 
 	{ "name": "add25_2635_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_2635_out", "role": "ap_vld" }} , 
 	{ "name": "add25_2534_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_2534_out", "role": "default" }} , 
 	{ "name": "add25_2534_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_2534_out", "role": "ap_vld" }} , 
 	{ "name": "add25_2433_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_2433_out", "role": "default" }} , 
 	{ "name": "add25_2433_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_2433_out", "role": "ap_vld" }} , 
 	{ "name": "add25_2332_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_2332_out", "role": "default" }} , 
 	{ "name": "add25_2332_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_2332_out", "role": "ap_vld" }} , 
 	{ "name": "add25_2231_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_2231_out", "role": "default" }} , 
 	{ "name": "add25_2231_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_2231_out", "role": "ap_vld" }} , 
 	{ "name": "add25_2130_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_2130_out", "role": "default" }} , 
 	{ "name": "add25_2130_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_2130_out", "role": "ap_vld" }} , 
 	{ "name": "add25_2029_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_2029_out", "role": "default" }} , 
 	{ "name": "add25_2029_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_2029_out", "role": "ap_vld" }} , 
 	{ "name": "add25_1928_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_1928_out", "role": "default" }} , 
 	{ "name": "add25_1928_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_1928_out", "role": "ap_vld" }} , 
 	{ "name": "add25_1827_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_1827_out", "role": "default" }} , 
 	{ "name": "add25_1827_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_1827_out", "role": "ap_vld" }} , 
 	{ "name": "add25_1726_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_1726_out", "role": "default" }} , 
 	{ "name": "add25_1726_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_1726_out", "role": "ap_vld" }} , 
 	{ "name": "add25_1625_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_1625_out", "role": "default" }} , 
 	{ "name": "add25_1625_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_1625_out", "role": "ap_vld" }} , 
 	{ "name": "add25_1524_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_1524_out", "role": "default" }} , 
 	{ "name": "add25_1524_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_1524_out", "role": "ap_vld" }} , 
 	{ "name": "add25_1423_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_1423_out", "role": "default" }} , 
 	{ "name": "add25_1423_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_1423_out", "role": "ap_vld" }} , 
 	{ "name": "add25_1322_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_1322_out", "role": "default" }} , 
 	{ "name": "add25_1322_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_1322_out", "role": "ap_vld" }} , 
 	{ "name": "add25_1221_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_1221_out", "role": "default" }} , 
 	{ "name": "add25_1221_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_1221_out", "role": "ap_vld" }} , 
 	{ "name": "add25_1120_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_1120_out", "role": "default" }} , 
 	{ "name": "add25_1120_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_1120_out", "role": "ap_vld" }} , 
 	{ "name": "add25_1019_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_1019_out", "role": "default" }} , 
 	{ "name": "add25_1019_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_1019_out", "role": "ap_vld" }} , 
 	{ "name": "add25_918_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_918_out", "role": "default" }} , 
 	{ "name": "add25_918_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_918_out", "role": "ap_vld" }} , 
 	{ "name": "add25_817_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_817_out", "role": "default" }} , 
 	{ "name": "add25_817_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_817_out", "role": "ap_vld" }} , 
 	{ "name": "add25_716_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_716_out", "role": "default" }} , 
 	{ "name": "add25_716_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_716_out", "role": "ap_vld" }} , 
 	{ "name": "add25_615_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_615_out", "role": "default" }} , 
 	{ "name": "add25_615_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_615_out", "role": "ap_vld" }} , 
 	{ "name": "add25_514_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_514_out", "role": "default" }} , 
 	{ "name": "add25_514_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_514_out", "role": "ap_vld" }} , 
 	{ "name": "add25_413_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_413_out", "role": "default" }} , 
 	{ "name": "add25_413_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_413_out", "role": "ap_vld" }} , 
 	{ "name": "add25_312_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_312_out", "role": "default" }} , 
 	{ "name": "add25_312_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_312_out", "role": "ap_vld" }} , 
 	{ "name": "add25_211_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_211_out", "role": "default" }} , 
 	{ "name": "add25_211_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_211_out", "role": "ap_vld" }} , 
 	{ "name": "add25_110_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add25_110_out", "role": "default" }} , 
 	{ "name": "add25_110_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add25_110_out", "role": "ap_vld" }} , 
 	{ "name": "add256_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add256_out", "role": "default" }} , 
 	{ "name": "add256_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add256_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_493_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_493_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_493_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_493_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_493_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_493_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_493_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_493_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_493_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_493_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "computePointHLS_Pipeline_VITIS_LOOP_51_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "84", "EstimateLatencyMax" : "84",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add25_31_lcssa104", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_30_lcssa102", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_29_lcssa100", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_28_lcssa98", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_27_lcssa96", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_26_lcssa94", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_25_lcssa92", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_24_lcssa90", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_23_lcssa88", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_22_lcssa86", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_21_lcssa84", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_20_lcssa82", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_19_lcssa80", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_18_lcssa78", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_17_lcssa76", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_16_lcssa74", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_15_lcssa72", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_14_lcssa70", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_13_lcssa68", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_12_lcssa66", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_11_lcssa64", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_10_lcssa62", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_9_lcssa60", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_8_lcssa58", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_7_lcssa56", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_6_lcssa54", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_5_lcssa52", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_4_lcssa50", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_3_lcssa48", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_2_lcssa46", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_1_lcssa44", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_lcssa42", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln49_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "add25_3140_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_3039_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_2938_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_2837_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_2736_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_2635_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_2534_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_2433_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_2332_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_2231_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_2130_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_2029_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_1928_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_1827_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_1726_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_1625_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_1524_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_1423_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_1322_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_1221_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_1120_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_1019_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_918_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_817_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_716_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_615_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_514_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_413_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_312_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_211_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add25_110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add256_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_51_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U3", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U4", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U5", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U6", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U7", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U8", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U9", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U10", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U11", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U12", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U13", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U14", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U15", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U16", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U17", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U18", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U19", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U20", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U21", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U22", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	computePointHLS_Pipeline_VITIS_LOOP_51_3 {
		add25_31_lcssa104 {Type I LastRead 0 FirstWrite -1}
		add25_30_lcssa102 {Type I LastRead 0 FirstWrite -1}
		add25_29_lcssa100 {Type I LastRead 0 FirstWrite -1}
		add25_28_lcssa98 {Type I LastRead 0 FirstWrite -1}
		add25_27_lcssa96 {Type I LastRead 0 FirstWrite -1}
		add25_26_lcssa94 {Type I LastRead 0 FirstWrite -1}
		add25_25_lcssa92 {Type I LastRead 0 FirstWrite -1}
		add25_24_lcssa90 {Type I LastRead 0 FirstWrite -1}
		add25_23_lcssa88 {Type I LastRead 0 FirstWrite -1}
		add25_22_lcssa86 {Type I LastRead 0 FirstWrite -1}
		add25_21_lcssa84 {Type I LastRead 0 FirstWrite -1}
		add25_20_lcssa82 {Type I LastRead 0 FirstWrite -1}
		add25_19_lcssa80 {Type I LastRead 0 FirstWrite -1}
		add25_18_lcssa78 {Type I LastRead 0 FirstWrite -1}
		add25_17_lcssa76 {Type I LastRead 0 FirstWrite -1}
		add25_16_lcssa74 {Type I LastRead 0 FirstWrite -1}
		add25_15_lcssa72 {Type I LastRead 0 FirstWrite -1}
		add25_14_lcssa70 {Type I LastRead 0 FirstWrite -1}
		add25_13_lcssa68 {Type I LastRead 0 FirstWrite -1}
		add25_12_lcssa66 {Type I LastRead 0 FirstWrite -1}
		add25_11_lcssa64 {Type I LastRead 0 FirstWrite -1}
		add25_10_lcssa62 {Type I LastRead 0 FirstWrite -1}
		add25_9_lcssa60 {Type I LastRead 0 FirstWrite -1}
		add25_8_lcssa58 {Type I LastRead 0 FirstWrite -1}
		add25_7_lcssa56 {Type I LastRead 0 FirstWrite -1}
		add25_6_lcssa54 {Type I LastRead 0 FirstWrite -1}
		add25_5_lcssa52 {Type I LastRead 0 FirstWrite -1}
		add25_4_lcssa50 {Type I LastRead 0 FirstWrite -1}
		add25_3_lcssa48 {Type I LastRead 0 FirstWrite -1}
		add25_2_lcssa46 {Type I LastRead 0 FirstWrite -1}
		add25_1_lcssa44 {Type I LastRead 0 FirstWrite -1}
		add25_lcssa42 {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 2 FirstWrite -1}
		gmem0 {Type I LastRead 2 FirstWrite -1}
		sext_ln49_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln49 {Type I LastRead 0 FirstWrite -1}
		add25_3140_out {Type O LastRead -1 FirstWrite 7}
		add25_3039_out {Type O LastRead -1 FirstWrite 7}
		add25_2938_out {Type O LastRead -1 FirstWrite 7}
		add25_2837_out {Type O LastRead -1 FirstWrite 7}
		add25_2736_out {Type O LastRead -1 FirstWrite 7}
		add25_2635_out {Type O LastRead -1 FirstWrite 7}
		add25_2534_out {Type O LastRead -1 FirstWrite 7}
		add25_2433_out {Type O LastRead -1 FirstWrite 7}
		add25_2332_out {Type O LastRead -1 FirstWrite 7}
		add25_2231_out {Type O LastRead -1 FirstWrite 7}
		add25_2130_out {Type O LastRead -1 FirstWrite 7}
		add25_2029_out {Type O LastRead -1 FirstWrite 7}
		add25_1928_out {Type O LastRead -1 FirstWrite 7}
		add25_1827_out {Type O LastRead -1 FirstWrite 7}
		add25_1726_out {Type O LastRead -1 FirstWrite 7}
		add25_1625_out {Type O LastRead -1 FirstWrite 7}
		add25_1524_out {Type O LastRead -1 FirstWrite 7}
		add25_1423_out {Type O LastRead -1 FirstWrite 7}
		add25_1322_out {Type O LastRead -1 FirstWrite 7}
		add25_1221_out {Type O LastRead -1 FirstWrite 7}
		add25_1120_out {Type O LastRead -1 FirstWrite 7}
		add25_1019_out {Type O LastRead -1 FirstWrite 7}
		add25_918_out {Type O LastRead -1 FirstWrite 7}
		add25_817_out {Type O LastRead -1 FirstWrite 7}
		add25_716_out {Type O LastRead -1 FirstWrite 7}
		add25_615_out {Type O LastRead -1 FirstWrite 7}
		add25_514_out {Type O LastRead -1 FirstWrite 7}
		add25_413_out {Type O LastRead -1 FirstWrite 7}
		add25_312_out {Type O LastRead -1 FirstWrite 7}
		add25_211_out {Type O LastRead -1 FirstWrite 7}
		add25_110_out {Type O LastRead -1 FirstWrite 7}
		add256_out {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "84", "Max" : "84"}
	, {"Name" : "Interval", "Min" : "84", "Max" : "84"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add25_31_lcssa104 { ap_none {  { add25_31_lcssa104 in_data 0 32 } } }
	add25_30_lcssa102 { ap_none {  { add25_30_lcssa102 in_data 0 32 } } }
	add25_29_lcssa100 { ap_none {  { add25_29_lcssa100 in_data 0 32 } } }
	add25_28_lcssa98 { ap_none {  { add25_28_lcssa98 in_data 0 32 } } }
	add25_27_lcssa96 { ap_none {  { add25_27_lcssa96 in_data 0 32 } } }
	add25_26_lcssa94 { ap_none {  { add25_26_lcssa94 in_data 0 32 } } }
	add25_25_lcssa92 { ap_none {  { add25_25_lcssa92 in_data 0 32 } } }
	add25_24_lcssa90 { ap_none {  { add25_24_lcssa90 in_data 0 32 } } }
	add25_23_lcssa88 { ap_none {  { add25_23_lcssa88 in_data 0 32 } } }
	add25_22_lcssa86 { ap_none {  { add25_22_lcssa86 in_data 0 32 } } }
	add25_21_lcssa84 { ap_none {  { add25_21_lcssa84 in_data 0 32 } } }
	add25_20_lcssa82 { ap_none {  { add25_20_lcssa82 in_data 0 32 } } }
	add25_19_lcssa80 { ap_none {  { add25_19_lcssa80 in_data 0 32 } } }
	add25_18_lcssa78 { ap_none {  { add25_18_lcssa78 in_data 0 32 } } }
	add25_17_lcssa76 { ap_none {  { add25_17_lcssa76 in_data 0 32 } } }
	add25_16_lcssa74 { ap_none {  { add25_16_lcssa74 in_data 0 32 } } }
	add25_15_lcssa72 { ap_none {  { add25_15_lcssa72 in_data 0 32 } } }
	add25_14_lcssa70 { ap_none {  { add25_14_lcssa70 in_data 0 32 } } }
	add25_13_lcssa68 { ap_none {  { add25_13_lcssa68 in_data 0 32 } } }
	add25_12_lcssa66 { ap_none {  { add25_12_lcssa66 in_data 0 32 } } }
	add25_11_lcssa64 { ap_none {  { add25_11_lcssa64 in_data 0 32 } } }
	add25_10_lcssa62 { ap_none {  { add25_10_lcssa62 in_data 0 32 } } }
	add25_9_lcssa60 { ap_none {  { add25_9_lcssa60 in_data 0 32 } } }
	add25_8_lcssa58 { ap_none {  { add25_8_lcssa58 in_data 0 32 } } }
	add25_7_lcssa56 { ap_none {  { add25_7_lcssa56 in_data 0 32 } } }
	add25_6_lcssa54 { ap_none {  { add25_6_lcssa54 in_data 0 32 } } }
	add25_5_lcssa52 { ap_none {  { add25_5_lcssa52 in_data 0 32 } } }
	add25_4_lcssa50 { ap_none {  { add25_4_lcssa50 in_data 0 32 } } }
	add25_3_lcssa48 { ap_none {  { add25_3_lcssa48 in_data 0 32 } } }
	add25_2_lcssa46 { ap_none {  { add25_2_lcssa46 in_data 0 32 } } }
	add25_1_lcssa44 { ap_none {  { add25_1_lcssa44 in_data 0 32 } } }
	add25_lcssa42 { ap_none {  { add25_lcssa42 in_data 0 32 } } }
	 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 32 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 512 }  { m_axi_gmem1_WSTRB STRB 1 64 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 32 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 512 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RFIFONUM LEN 0 9 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 512 }  { m_axi_gmem0_WSTRB STRB 1 64 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 512 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln49_1 { ap_none {  { sext_ln49_1 in_data 0 58 } } }
	sext_ln49 { ap_none {  { sext_ln49 in_data 0 58 } } }
	add25_3140_out { ap_vld {  { add25_3140_out out_data 1 32 }  { add25_3140_out_ap_vld out_vld 1 1 } } }
	add25_3039_out { ap_vld {  { add25_3039_out out_data 1 32 }  { add25_3039_out_ap_vld out_vld 1 1 } } }
	add25_2938_out { ap_vld {  { add25_2938_out out_data 1 32 }  { add25_2938_out_ap_vld out_vld 1 1 } } }
	add25_2837_out { ap_vld {  { add25_2837_out out_data 1 32 }  { add25_2837_out_ap_vld out_vld 1 1 } } }
	add25_2736_out { ap_vld {  { add25_2736_out out_data 1 32 }  { add25_2736_out_ap_vld out_vld 1 1 } } }
	add25_2635_out { ap_vld {  { add25_2635_out out_data 1 32 }  { add25_2635_out_ap_vld out_vld 1 1 } } }
	add25_2534_out { ap_vld {  { add25_2534_out out_data 1 32 }  { add25_2534_out_ap_vld out_vld 1 1 } } }
	add25_2433_out { ap_vld {  { add25_2433_out out_data 1 32 }  { add25_2433_out_ap_vld out_vld 1 1 } } }
	add25_2332_out { ap_vld {  { add25_2332_out out_data 1 32 }  { add25_2332_out_ap_vld out_vld 1 1 } } }
	add25_2231_out { ap_vld {  { add25_2231_out out_data 1 32 }  { add25_2231_out_ap_vld out_vld 1 1 } } }
	add25_2130_out { ap_vld {  { add25_2130_out out_data 1 32 }  { add25_2130_out_ap_vld out_vld 1 1 } } }
	add25_2029_out { ap_vld {  { add25_2029_out out_data 1 32 }  { add25_2029_out_ap_vld out_vld 1 1 } } }
	add25_1928_out { ap_vld {  { add25_1928_out out_data 1 32 }  { add25_1928_out_ap_vld out_vld 1 1 } } }
	add25_1827_out { ap_vld {  { add25_1827_out out_data 1 32 }  { add25_1827_out_ap_vld out_vld 1 1 } } }
	add25_1726_out { ap_vld {  { add25_1726_out out_data 1 32 }  { add25_1726_out_ap_vld out_vld 1 1 } } }
	add25_1625_out { ap_vld {  { add25_1625_out out_data 1 32 }  { add25_1625_out_ap_vld out_vld 1 1 } } }
	add25_1524_out { ap_vld {  { add25_1524_out out_data 1 32 }  { add25_1524_out_ap_vld out_vld 1 1 } } }
	add25_1423_out { ap_vld {  { add25_1423_out out_data 1 32 }  { add25_1423_out_ap_vld out_vld 1 1 } } }
	add25_1322_out { ap_vld {  { add25_1322_out out_data 1 32 }  { add25_1322_out_ap_vld out_vld 1 1 } } }
	add25_1221_out { ap_vld {  { add25_1221_out out_data 1 32 }  { add25_1221_out_ap_vld out_vld 1 1 } } }
	add25_1120_out { ap_vld {  { add25_1120_out out_data 1 32 }  { add25_1120_out_ap_vld out_vld 1 1 } } }
	add25_1019_out { ap_vld {  { add25_1019_out out_data 1 32 }  { add25_1019_out_ap_vld out_vld 1 1 } } }
	add25_918_out { ap_vld {  { add25_918_out out_data 1 32 }  { add25_918_out_ap_vld out_vld 1 1 } } }
	add25_817_out { ap_vld {  { add25_817_out out_data 1 32 }  { add25_817_out_ap_vld out_vld 1 1 } } }
	add25_716_out { ap_vld {  { add25_716_out out_data 1 32 }  { add25_716_out_ap_vld out_vld 1 1 } } }
	add25_615_out { ap_vld {  { add25_615_out out_data 1 32 }  { add25_615_out_ap_vld out_vld 1 1 } } }
	add25_514_out { ap_vld {  { add25_514_out out_data 1 32 }  { add25_514_out_ap_vld out_vld 1 1 } } }
	add25_413_out { ap_vld {  { add25_413_out out_data 1 32 }  { add25_413_out_ap_vld out_vld 1 1 } } }
	add25_312_out { ap_vld {  { add25_312_out out_data 1 32 }  { add25_312_out_ap_vld out_vld 1 1 } } }
	add25_211_out { ap_vld {  { add25_211_out out_data 1 32 }  { add25_211_out_ap_vld out_vld 1 1 } } }
	add25_110_out { ap_vld {  { add25_110_out out_data 1 32 }  { add25_110_out_ap_vld out_vld 1 1 } } }
	add256_out { ap_vld {  { add256_out out_data 1 32 }  { add256_out_ap_vld out_vld 1 1 } } }
}
