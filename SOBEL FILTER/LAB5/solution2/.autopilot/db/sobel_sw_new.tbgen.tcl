set C_TypeInfoList {{ 
"sobel_sw_new" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"input": [[], {"array": [ {"scalar": "unsigned char"}, [264192]]}] }, {"output": [[], {"array": [ {"scalar": "unsigned char"}, [264192]]}] }],[],""]
}}
set moduleName sobel_sw_new
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sobel_sw_new}
set C_modelType { void 0 }
set C_modelArgList {
	{ INPUT_r int 8 regular {axi_master 0}  }
	{ OUTPUT_r int 8 regular {axi_master 1}  }
	{ input_r_r int 32 regular {axi_slave 0}  }
	{ output_r_r int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "INPUT_r", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "input","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "input_r","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 264191,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_r", "interface" : "axi_master", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "output","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "output_r","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 264191,"step" : 1}]}]}]} , 
 	{ "Name" : "input_r_r", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "output_r_r", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_INPUT_r_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_INPUT_r_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_INPUT_r_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_INPUT_r_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_INPUT_r_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_INPUT_r_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_INPUT_r_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_INPUT_r_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_INPUT_r_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_INPUT_r_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_INPUT_r_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_INPUT_r_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_INPUT_r_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_INPUT_r_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_INPUT_r_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_INPUT_r_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_INPUT_r_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_INPUT_r_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_INPUT_r_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_INPUT_r_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_INPUT_r_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_INPUT_r_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_INPUT_r_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_INPUT_r_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_OUTPUT_r_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_OUTPUT_r_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_OUTPUT_r_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_OUTPUT_r_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_OUTPUT_r_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_OUTPUT_r_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_OUTPUT_r_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_OUTPUT_r_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_OUTPUT_r_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_OUTPUT_r_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_OUTPUT_r_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_OUTPUT_r_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_OUTPUT_r_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_OUTPUT_r_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_OUTPUT_r_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_OUTPUT_r_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_OUTPUT_r_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_OUTPUT_r_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_OUTPUT_r_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_OUTPUT_r_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_OUTPUT_r_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_OUTPUT_r_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_OUTPUT_r_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_OUTPUT_r_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_BUSER sc_in sc_lv 1 signal 1 } 
	{ s_axi_CTRL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWADDR" },"address":[{"name":"sobel_sw_new","role":"start","value":"0","valid_bit":"0"},{"name":"sobel_sw_new","role":"continue","value":"0","valid_bit":"4"},{"name":"sobel_sw_new","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_r_r","role":"data","value":"16"},{"name":"output_r_r","role":"data","value":"24"}] },
	{ "name": "s_axi_CTRL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARADDR" },"address":[{"name":"sobel_sw_new","role":"start","value":"0","valid_bit":"0"},{"name":"sobel_sw_new","role":"done","value":"0","valid_bit":"1"},{"name":"sobel_sw_new","role":"idle","value":"0","valid_bit":"2"},{"name":"sobel_sw_new","role":"ready","value":"0","valid_bit":"3"},{"name":"sobel_sw_new","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_INPUT_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_INPUT_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_INPUT_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_INPUT_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWID" }} , 
 	{ "name": "m_axi_INPUT_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_INPUT_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_INPUT_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_INPUT_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_INPUT_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_INPUT_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_INPUT_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_INPUT_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_INPUT_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_INPUT_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_INPUT_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_INPUT_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "INPUT_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_INPUT_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_INPUT_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_INPUT_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "WID" }} , 
 	{ "name": "m_axi_INPUT_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_INPUT_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_INPUT_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_INPUT_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_INPUT_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARID" }} , 
 	{ "name": "m_axi_INPUT_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_INPUT_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_INPUT_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_INPUT_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_INPUT_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_INPUT_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_INPUT_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_INPUT_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_INPUT_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_INPUT_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_INPUT_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_INPUT_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "INPUT_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_INPUT_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_INPUT_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "RID" }} , 
 	{ "name": "m_axi_INPUT_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_INPUT_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "INPUT_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_INPUT_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_INPUT_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_INPUT_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "INPUT_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_INPUT_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "BID" }} , 
 	{ "name": "m_axi_INPUT_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "BUSER" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWID" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_OUTPUT_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_OUTPUT_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_OUTPUT_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_OUTPUT_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_OUTPUT_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_OUTPUT_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "WID" }} , 
 	{ "name": "m_axi_OUTPUT_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARID" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_OUTPUT_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_OUTPUT_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_OUTPUT_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_OUTPUT_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_OUTPUT_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "RID" }} , 
 	{ "name": "m_axi_OUTPUT_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_OUTPUT_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_OUTPUT_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_OUTPUT_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_OUTPUT_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_OUTPUT_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "BID" }} , 
 	{ "name": "m_axi_OUTPUT_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "sobel_sw_new",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "INPUT_r", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "INPUT_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "INPUT_r_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "OUTPUT_r", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "OUTPUT_r_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "OUTPUT_r_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "OUTPUT_r_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "input_r_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_sw_new_CTRL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_sw_new_INPUT_r_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_sw_new_OUTPUT_r_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.small_input_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sobel_sw_new {
		INPUT_r {Type I LastRead 21 FirstWrite -1}
		OUTPUT_r {Type O LastRead 32 FirstWrite 30}
		input_r_r {Type I LastRead 0 FirstWrite -1}
		output_r_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1052939", "Max" : "1842187"}
	, {"Name" : "Interval", "Min" : "1052940", "Max" : "1842188"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	INPUT_r { m_axi {  { m_axi_INPUT_r_AWVALID VALID 1 1 }  { m_axi_INPUT_r_AWREADY READY 0 1 }  { m_axi_INPUT_r_AWADDR ADDR 1 32 }  { m_axi_INPUT_r_AWID ID 1 1 }  { m_axi_INPUT_r_AWLEN LEN 1 8 }  { m_axi_INPUT_r_AWSIZE SIZE 1 3 }  { m_axi_INPUT_r_AWBURST BURST 1 2 }  { m_axi_INPUT_r_AWLOCK LOCK 1 2 }  { m_axi_INPUT_r_AWCACHE CACHE 1 4 }  { m_axi_INPUT_r_AWPROT PROT 1 3 }  { m_axi_INPUT_r_AWQOS QOS 1 4 }  { m_axi_INPUT_r_AWREGION REGION 1 4 }  { m_axi_INPUT_r_AWUSER USER 1 1 }  { m_axi_INPUT_r_WVALID VALID 1 1 }  { m_axi_INPUT_r_WREADY READY 0 1 }  { m_axi_INPUT_r_WDATA DATA 1 32 }  { m_axi_INPUT_r_WSTRB STRB 1 4 }  { m_axi_INPUT_r_WLAST LAST 1 1 }  { m_axi_INPUT_r_WID ID 1 1 }  { m_axi_INPUT_r_WUSER USER 1 1 }  { m_axi_INPUT_r_ARVALID VALID 1 1 }  { m_axi_INPUT_r_ARREADY READY 0 1 }  { m_axi_INPUT_r_ARADDR ADDR 1 32 }  { m_axi_INPUT_r_ARID ID 1 1 }  { m_axi_INPUT_r_ARLEN LEN 1 8 }  { m_axi_INPUT_r_ARSIZE SIZE 1 3 }  { m_axi_INPUT_r_ARBURST BURST 1 2 }  { m_axi_INPUT_r_ARLOCK LOCK 1 2 }  { m_axi_INPUT_r_ARCACHE CACHE 1 4 }  { m_axi_INPUT_r_ARPROT PROT 1 3 }  { m_axi_INPUT_r_ARQOS QOS 1 4 }  { m_axi_INPUT_r_ARREGION REGION 1 4 }  { m_axi_INPUT_r_ARUSER USER 1 1 }  { m_axi_INPUT_r_RVALID VALID 0 1 }  { m_axi_INPUT_r_RREADY READY 1 1 }  { m_axi_INPUT_r_RDATA DATA 0 32 }  { m_axi_INPUT_r_RLAST LAST 0 1 }  { m_axi_INPUT_r_RID ID 0 1 }  { m_axi_INPUT_r_RUSER USER 0 1 }  { m_axi_INPUT_r_RRESP RESP 0 2 }  { m_axi_INPUT_r_BVALID VALID 0 1 }  { m_axi_INPUT_r_BREADY READY 1 1 }  { m_axi_INPUT_r_BRESP RESP 0 2 }  { m_axi_INPUT_r_BID ID 0 1 }  { m_axi_INPUT_r_BUSER USER 0 1 } } }
	OUTPUT_r { m_axi {  { m_axi_OUTPUT_r_AWVALID VALID 1 1 }  { m_axi_OUTPUT_r_AWREADY READY 0 1 }  { m_axi_OUTPUT_r_AWADDR ADDR 1 32 }  { m_axi_OUTPUT_r_AWID ID 1 1 }  { m_axi_OUTPUT_r_AWLEN LEN 1 8 }  { m_axi_OUTPUT_r_AWSIZE SIZE 1 3 }  { m_axi_OUTPUT_r_AWBURST BURST 1 2 }  { m_axi_OUTPUT_r_AWLOCK LOCK 1 2 }  { m_axi_OUTPUT_r_AWCACHE CACHE 1 4 }  { m_axi_OUTPUT_r_AWPROT PROT 1 3 }  { m_axi_OUTPUT_r_AWQOS QOS 1 4 }  { m_axi_OUTPUT_r_AWREGION REGION 1 4 }  { m_axi_OUTPUT_r_AWUSER USER 1 1 }  { m_axi_OUTPUT_r_WVALID VALID 1 1 }  { m_axi_OUTPUT_r_WREADY READY 0 1 }  { m_axi_OUTPUT_r_WDATA DATA 1 32 }  { m_axi_OUTPUT_r_WSTRB STRB 1 4 }  { m_axi_OUTPUT_r_WLAST LAST 1 1 }  { m_axi_OUTPUT_r_WID ID 1 1 }  { m_axi_OUTPUT_r_WUSER USER 1 1 }  { m_axi_OUTPUT_r_ARVALID VALID 1 1 }  { m_axi_OUTPUT_r_ARREADY READY 0 1 }  { m_axi_OUTPUT_r_ARADDR ADDR 1 32 }  { m_axi_OUTPUT_r_ARID ID 1 1 }  { m_axi_OUTPUT_r_ARLEN LEN 1 8 }  { m_axi_OUTPUT_r_ARSIZE SIZE 1 3 }  { m_axi_OUTPUT_r_ARBURST BURST 1 2 }  { m_axi_OUTPUT_r_ARLOCK LOCK 1 2 }  { m_axi_OUTPUT_r_ARCACHE CACHE 1 4 }  { m_axi_OUTPUT_r_ARPROT PROT 1 3 }  { m_axi_OUTPUT_r_ARQOS QOS 1 4 }  { m_axi_OUTPUT_r_ARREGION REGION 1 4 }  { m_axi_OUTPUT_r_ARUSER USER 1 1 }  { m_axi_OUTPUT_r_RVALID VALID 0 1 }  { m_axi_OUTPUT_r_RREADY READY 1 1 }  { m_axi_OUTPUT_r_RDATA DATA 0 32 }  { m_axi_OUTPUT_r_RLAST LAST 0 1 }  { m_axi_OUTPUT_r_RID ID 0 1 }  { m_axi_OUTPUT_r_RUSER USER 0 1 }  { m_axi_OUTPUT_r_RRESP RESP 0 2 }  { m_axi_OUTPUT_r_BVALID VALID 0 1 }  { m_axi_OUTPUT_r_BREADY READY 1 1 }  { m_axi_OUTPUT_r_BRESP RESP 0 2 }  { m_axi_OUTPUT_r_BID ID 0 1 }  { m_axi_OUTPUT_r_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ INPUT_r { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ OUTPUT_r { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ INPUT_r 1 }
	{ OUTPUT_r 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ INPUT_r 1 }
	{ OUTPUT_r 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
