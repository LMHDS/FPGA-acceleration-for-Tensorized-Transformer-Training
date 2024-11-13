set moduleName TransposeA
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {TransposeA}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ aSplit_0 int 32 regular {fifo 0 volatile }  }
	{ aSplit_1 int 32 regular {fifo 0 volatile }  }
	{ aSplit_2 int 32 regular {fifo 0 volatile }  }
	{ aSplit_3 int 32 regular {fifo 0 volatile }  }
	{ aSplit_4 int 32 regular {fifo 0 volatile }  }
	{ aSplit_5 int 32 regular {fifo 0 volatile }  }
	{ aSplit_6 int 32 regular {fifo 0 volatile }  }
	{ aSplit_7 int 32 regular {fifo 0 volatile }  }
	{ aSplit_8 int 32 regular {fifo 0 volatile }  }
	{ aSplit_9 int 32 regular {fifo 0 volatile }  }
	{ aSplit_10 int 32 regular {fifo 0 volatile }  }
	{ aSplit_11 int 32 regular {fifo 0 volatile }  }
	{ aSplit_12 int 32 regular {fifo 0 volatile }  }
	{ aSplit_13 int 32 regular {fifo 0 volatile }  }
	{ aSplit_14 int 32 regular {fifo 0 volatile }  }
	{ aSplit_15 int 32 regular {fifo 0 volatile }  }
	{ aPipes_0 int 32 regular {fifo 1 volatile }  }
	{ size_n int 32 regular {fifo 0}  }
	{ size_k int 32 regular {fifo 0}  }
	{ size_m int 32 regular {fifo 0}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "aSplit_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_7", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_8", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_9", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_10", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_11", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_12", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_13", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_14", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aSplit_15", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aPipes_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "size_n", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_k", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_m", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 107
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ aSplit_0_dout sc_in sc_lv 32 signal 0 } 
	{ aSplit_0_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ aSplit_0_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ aSplit_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ aSplit_0_read sc_out sc_logic 1 signal 0 } 
	{ aSplit_1_dout sc_in sc_lv 32 signal 1 } 
	{ aSplit_1_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ aSplit_1_fifo_cap sc_in sc_lv 11 signal 1 } 
	{ aSplit_1_empty_n sc_in sc_logic 1 signal 1 } 
	{ aSplit_1_read sc_out sc_logic 1 signal 1 } 
	{ aSplit_2_dout sc_in sc_lv 32 signal 2 } 
	{ aSplit_2_num_data_valid sc_in sc_lv 11 signal 2 } 
	{ aSplit_2_fifo_cap sc_in sc_lv 11 signal 2 } 
	{ aSplit_2_empty_n sc_in sc_logic 1 signal 2 } 
	{ aSplit_2_read sc_out sc_logic 1 signal 2 } 
	{ aSplit_3_dout sc_in sc_lv 32 signal 3 } 
	{ aSplit_3_num_data_valid sc_in sc_lv 11 signal 3 } 
	{ aSplit_3_fifo_cap sc_in sc_lv 11 signal 3 } 
	{ aSplit_3_empty_n sc_in sc_logic 1 signal 3 } 
	{ aSplit_3_read sc_out sc_logic 1 signal 3 } 
	{ aSplit_4_dout sc_in sc_lv 32 signal 4 } 
	{ aSplit_4_num_data_valid sc_in sc_lv 11 signal 4 } 
	{ aSplit_4_fifo_cap sc_in sc_lv 11 signal 4 } 
	{ aSplit_4_empty_n sc_in sc_logic 1 signal 4 } 
	{ aSplit_4_read sc_out sc_logic 1 signal 4 } 
	{ aSplit_5_dout sc_in sc_lv 32 signal 5 } 
	{ aSplit_5_num_data_valid sc_in sc_lv 11 signal 5 } 
	{ aSplit_5_fifo_cap sc_in sc_lv 11 signal 5 } 
	{ aSplit_5_empty_n sc_in sc_logic 1 signal 5 } 
	{ aSplit_5_read sc_out sc_logic 1 signal 5 } 
	{ aSplit_6_dout sc_in sc_lv 32 signal 6 } 
	{ aSplit_6_num_data_valid sc_in sc_lv 11 signal 6 } 
	{ aSplit_6_fifo_cap sc_in sc_lv 11 signal 6 } 
	{ aSplit_6_empty_n sc_in sc_logic 1 signal 6 } 
	{ aSplit_6_read sc_out sc_logic 1 signal 6 } 
	{ aSplit_7_dout sc_in sc_lv 32 signal 7 } 
	{ aSplit_7_num_data_valid sc_in sc_lv 11 signal 7 } 
	{ aSplit_7_fifo_cap sc_in sc_lv 11 signal 7 } 
	{ aSplit_7_empty_n sc_in sc_logic 1 signal 7 } 
	{ aSplit_7_read sc_out sc_logic 1 signal 7 } 
	{ aSplit_8_dout sc_in sc_lv 32 signal 8 } 
	{ aSplit_8_num_data_valid sc_in sc_lv 11 signal 8 } 
	{ aSplit_8_fifo_cap sc_in sc_lv 11 signal 8 } 
	{ aSplit_8_empty_n sc_in sc_logic 1 signal 8 } 
	{ aSplit_8_read sc_out sc_logic 1 signal 8 } 
	{ aSplit_9_dout sc_in sc_lv 32 signal 9 } 
	{ aSplit_9_num_data_valid sc_in sc_lv 11 signal 9 } 
	{ aSplit_9_fifo_cap sc_in sc_lv 11 signal 9 } 
	{ aSplit_9_empty_n sc_in sc_logic 1 signal 9 } 
	{ aSplit_9_read sc_out sc_logic 1 signal 9 } 
	{ aSplit_10_dout sc_in sc_lv 32 signal 10 } 
	{ aSplit_10_num_data_valid sc_in sc_lv 11 signal 10 } 
	{ aSplit_10_fifo_cap sc_in sc_lv 11 signal 10 } 
	{ aSplit_10_empty_n sc_in sc_logic 1 signal 10 } 
	{ aSplit_10_read sc_out sc_logic 1 signal 10 } 
	{ aSplit_11_dout sc_in sc_lv 32 signal 11 } 
	{ aSplit_11_num_data_valid sc_in sc_lv 11 signal 11 } 
	{ aSplit_11_fifo_cap sc_in sc_lv 11 signal 11 } 
	{ aSplit_11_empty_n sc_in sc_logic 1 signal 11 } 
	{ aSplit_11_read sc_out sc_logic 1 signal 11 } 
	{ aSplit_12_dout sc_in sc_lv 32 signal 12 } 
	{ aSplit_12_num_data_valid sc_in sc_lv 11 signal 12 } 
	{ aSplit_12_fifo_cap sc_in sc_lv 11 signal 12 } 
	{ aSplit_12_empty_n sc_in sc_logic 1 signal 12 } 
	{ aSplit_12_read sc_out sc_logic 1 signal 12 } 
	{ aSplit_13_dout sc_in sc_lv 32 signal 13 } 
	{ aSplit_13_num_data_valid sc_in sc_lv 11 signal 13 } 
	{ aSplit_13_fifo_cap sc_in sc_lv 11 signal 13 } 
	{ aSplit_13_empty_n sc_in sc_logic 1 signal 13 } 
	{ aSplit_13_read sc_out sc_logic 1 signal 13 } 
	{ aSplit_14_dout sc_in sc_lv 32 signal 14 } 
	{ aSplit_14_num_data_valid sc_in sc_lv 11 signal 14 } 
	{ aSplit_14_fifo_cap sc_in sc_lv 11 signal 14 } 
	{ aSplit_14_empty_n sc_in sc_logic 1 signal 14 } 
	{ aSplit_14_read sc_out sc_logic 1 signal 14 } 
	{ aSplit_15_dout sc_in sc_lv 32 signal 15 } 
	{ aSplit_15_num_data_valid sc_in sc_lv 11 signal 15 } 
	{ aSplit_15_fifo_cap sc_in sc_lv 11 signal 15 } 
	{ aSplit_15_empty_n sc_in sc_logic 1 signal 15 } 
	{ aSplit_15_read sc_out sc_logic 1 signal 15 } 
	{ aPipes_0_din sc_out sc_lv 32 signal 16 } 
	{ aPipes_0_num_data_valid sc_in sc_lv 3 signal 16 } 
	{ aPipes_0_fifo_cap sc_in sc_lv 3 signal 16 } 
	{ aPipes_0_full_n sc_in sc_logic 1 signal 16 } 
	{ aPipes_0_write sc_out sc_logic 1 signal 16 } 
	{ size_n_dout sc_in sc_lv 32 signal 17 } 
	{ size_n_num_data_valid sc_in sc_lv 3 signal 17 } 
	{ size_n_fifo_cap sc_in sc_lv 3 signal 17 } 
	{ size_n_empty_n sc_in sc_logic 1 signal 17 } 
	{ size_n_read sc_out sc_logic 1 signal 17 } 
	{ size_k_dout sc_in sc_lv 32 signal 18 } 
	{ size_k_num_data_valid sc_in sc_lv 3 signal 18 } 
	{ size_k_fifo_cap sc_in sc_lv 3 signal 18 } 
	{ size_k_empty_n sc_in sc_logic 1 signal 18 } 
	{ size_k_read sc_out sc_logic 1 signal 18 } 
	{ size_m_dout sc_in sc_lv 32 signal 19 } 
	{ size_m_num_data_valid sc_in sc_lv 3 signal 19 } 
	{ size_m_fifo_cap sc_in sc_lv 3 signal 19 } 
	{ size_m_empty_n sc_in sc_logic 1 signal 19 } 
	{ size_m_read sc_out sc_logic 1 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "aSplit_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_0", "role": "dout" }} , 
 	{ "name": "aSplit_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_0", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_0", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_0", "role": "empty_n" }} , 
 	{ "name": "aSplit_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_0", "role": "read" }} , 
 	{ "name": "aSplit_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_1", "role": "dout" }} , 
 	{ "name": "aSplit_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_1", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_1", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_1", "role": "empty_n" }} , 
 	{ "name": "aSplit_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_1", "role": "read" }} , 
 	{ "name": "aSplit_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_2", "role": "dout" }} , 
 	{ "name": "aSplit_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_2", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_2", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_2", "role": "empty_n" }} , 
 	{ "name": "aSplit_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_2", "role": "read" }} , 
 	{ "name": "aSplit_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_3", "role": "dout" }} , 
 	{ "name": "aSplit_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_3", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_3", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_3", "role": "empty_n" }} , 
 	{ "name": "aSplit_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_3", "role": "read" }} , 
 	{ "name": "aSplit_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_4", "role": "dout" }} , 
 	{ "name": "aSplit_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_4", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_4", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_4", "role": "empty_n" }} , 
 	{ "name": "aSplit_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_4", "role": "read" }} , 
 	{ "name": "aSplit_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_5", "role": "dout" }} , 
 	{ "name": "aSplit_5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_5", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_5", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_5", "role": "empty_n" }} , 
 	{ "name": "aSplit_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_5", "role": "read" }} , 
 	{ "name": "aSplit_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_6", "role": "dout" }} , 
 	{ "name": "aSplit_6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_6", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_6", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_6", "role": "empty_n" }} , 
 	{ "name": "aSplit_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_6", "role": "read" }} , 
 	{ "name": "aSplit_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_7", "role": "dout" }} , 
 	{ "name": "aSplit_7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_7", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_7", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_7", "role": "empty_n" }} , 
 	{ "name": "aSplit_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_7", "role": "read" }} , 
 	{ "name": "aSplit_8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_8", "role": "dout" }} , 
 	{ "name": "aSplit_8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_8", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_8", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_8", "role": "empty_n" }} , 
 	{ "name": "aSplit_8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_8", "role": "read" }} , 
 	{ "name": "aSplit_9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_9", "role": "dout" }} , 
 	{ "name": "aSplit_9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_9", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_9", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_9", "role": "empty_n" }} , 
 	{ "name": "aSplit_9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_9", "role": "read" }} , 
 	{ "name": "aSplit_10_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_10", "role": "dout" }} , 
 	{ "name": "aSplit_10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_10", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_10", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_10_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_10", "role": "empty_n" }} , 
 	{ "name": "aSplit_10_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_10", "role": "read" }} , 
 	{ "name": "aSplit_11_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_11", "role": "dout" }} , 
 	{ "name": "aSplit_11_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_11", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_11_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_11", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_11", "role": "empty_n" }} , 
 	{ "name": "aSplit_11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_11", "role": "read" }} , 
 	{ "name": "aSplit_12_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_12", "role": "dout" }} , 
 	{ "name": "aSplit_12_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_12", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_12_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_12", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_12_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_12", "role": "empty_n" }} , 
 	{ "name": "aSplit_12_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_12", "role": "read" }} , 
 	{ "name": "aSplit_13_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_13", "role": "dout" }} , 
 	{ "name": "aSplit_13_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_13", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_13_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_13", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_13_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_13", "role": "empty_n" }} , 
 	{ "name": "aSplit_13_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_13", "role": "read" }} , 
 	{ "name": "aSplit_14_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_14", "role": "dout" }} , 
 	{ "name": "aSplit_14_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_14", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_14_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_14", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_14_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_14", "role": "empty_n" }} , 
 	{ "name": "aSplit_14_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_14", "role": "read" }} , 
 	{ "name": "aSplit_15_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_15", "role": "dout" }} , 
 	{ "name": "aSplit_15_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_15", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_15_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_15", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_15_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_15", "role": "empty_n" }} , 
 	{ "name": "aSplit_15_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_15", "role": "read" }} , 
 	{ "name": "aPipes_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aPipes_0", "role": "din" }} , 
 	{ "name": "aPipes_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aPipes_0", "role": "num_data_valid" }} , 
 	{ "name": "aPipes_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aPipes_0", "role": "fifo_cap" }} , 
 	{ "name": "aPipes_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aPipes_0", "role": "full_n" }} , 
 	{ "name": "aPipes_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aPipes_0", "role": "write" }} , 
 	{ "name": "size_n_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_n", "role": "dout" }} , 
 	{ "name": "size_n_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_n", "role": "num_data_valid" }} , 
 	{ "name": "size_n_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_n", "role": "fifo_cap" }} , 
 	{ "name": "size_n_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_n", "role": "empty_n" }} , 
 	{ "name": "size_n_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_n", "role": "read" }} , 
 	{ "name": "size_k_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_k", "role": "dout" }} , 
 	{ "name": "size_k_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_k", "role": "num_data_valid" }} , 
 	{ "name": "size_k_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_k", "role": "fifo_cap" }} , 
 	{ "name": "size_k_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_k", "role": "empty_n" }} , 
 	{ "name": "size_k_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_k", "role": "read" }} , 
 	{ "name": "size_m_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_m", "role": "dout" }} , 
 	{ "name": "size_m_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_m", "role": "num_data_valid" }} , 
 	{ "name": "size_m_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_m", "role": "fifo_cap" }} , 
 	{ "name": "size_m_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_m", "role": "empty_n" }} , 
 	{ "name": "size_m_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_m", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4"],
		"CDFG" : "TransposeA",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aSplit_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aPipes_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aPipes_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "size_n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound16", "Type" : "None", "Direction" : "I"},
			{"Name" : "aPipes_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bound4", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_k_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "aSplit_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_10", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_11", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_12", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_13", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_14", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_15", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_15_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_24ns_41ns_64_1_1_U77", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_24ns_64ns_87_1_1_U78", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	TransposeA {
		aSplit_0 {Type I LastRead 2 FirstWrite -1}
		aSplit_1 {Type I LastRead 2 FirstWrite -1}
		aSplit_2 {Type I LastRead 2 FirstWrite -1}
		aSplit_3 {Type I LastRead 2 FirstWrite -1}
		aSplit_4 {Type I LastRead 2 FirstWrite -1}
		aSplit_5 {Type I LastRead 2 FirstWrite -1}
		aSplit_6 {Type I LastRead 2 FirstWrite -1}
		aSplit_7 {Type I LastRead 2 FirstWrite -1}
		aSplit_8 {Type I LastRead 2 FirstWrite -1}
		aSplit_9 {Type I LastRead 2 FirstWrite -1}
		aSplit_10 {Type I LastRead 2 FirstWrite -1}
		aSplit_11 {Type I LastRead 2 FirstWrite -1}
		aSplit_12 {Type I LastRead 2 FirstWrite -1}
		aSplit_13 {Type I LastRead 2 FirstWrite -1}
		aSplit_14 {Type I LastRead 2 FirstWrite -1}
		aSplit_15 {Type I LastRead 2 FirstWrite -1}
		aPipes_0 {Type O LastRead -1 FirstWrite 2}
		size_n {Type I LastRead 0 FirstWrite -1}
		size_k {Type I LastRead 0 FirstWrite -1}
		size_m {Type I LastRead 0 FirstWrite -1}}
	TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1 {
		bound16 {Type I LastRead 0 FirstWrite -1}
		aPipes_0 {Type O LastRead -1 FirstWrite 2}
		aSplit_0 {Type I LastRead 2 FirstWrite -1}
		bound4 {Type I LastRead 0 FirstWrite -1}
		size_k_1 {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		aSplit_1 {Type I LastRead 2 FirstWrite -1}
		aSplit_2 {Type I LastRead 2 FirstWrite -1}
		aSplit_3 {Type I LastRead 2 FirstWrite -1}
		aSplit_4 {Type I LastRead 2 FirstWrite -1}
		aSplit_5 {Type I LastRead 2 FirstWrite -1}
		aSplit_6 {Type I LastRead 2 FirstWrite -1}
		aSplit_7 {Type I LastRead 2 FirstWrite -1}
		aSplit_8 {Type I LastRead 2 FirstWrite -1}
		aSplit_9 {Type I LastRead 2 FirstWrite -1}
		aSplit_10 {Type I LastRead 2 FirstWrite -1}
		aSplit_11 {Type I LastRead 2 FirstWrite -1}
		aSplit_12 {Type I LastRead 2 FirstWrite -1}
		aSplit_13 {Type I LastRead 2 FirstWrite -1}
		aSplit_14 {Type I LastRead 2 FirstWrite -1}
		aSplit_15 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	aSplit_0 { ap_fifo {  { aSplit_0_dout fifo_data_in 0 32 }  { aSplit_0_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_0_fifo_cap fifo_update 0 11 }  { aSplit_0_empty_n fifo_status 0 1 }  { aSplit_0_read fifo_port_we 1 1 } } }
	aSplit_1 { ap_fifo {  { aSplit_1_dout fifo_data_in 0 32 }  { aSplit_1_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_1_fifo_cap fifo_update 0 11 }  { aSplit_1_empty_n fifo_status 0 1 }  { aSplit_1_read fifo_port_we 1 1 } } }
	aSplit_2 { ap_fifo {  { aSplit_2_dout fifo_data_in 0 32 }  { aSplit_2_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_2_fifo_cap fifo_update 0 11 }  { aSplit_2_empty_n fifo_status 0 1 }  { aSplit_2_read fifo_port_we 1 1 } } }
	aSplit_3 { ap_fifo {  { aSplit_3_dout fifo_data_in 0 32 }  { aSplit_3_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_3_fifo_cap fifo_update 0 11 }  { aSplit_3_empty_n fifo_status 0 1 }  { aSplit_3_read fifo_port_we 1 1 } } }
	aSplit_4 { ap_fifo {  { aSplit_4_dout fifo_data_in 0 32 }  { aSplit_4_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_4_fifo_cap fifo_update 0 11 }  { aSplit_4_empty_n fifo_status 0 1 }  { aSplit_4_read fifo_port_we 1 1 } } }
	aSplit_5 { ap_fifo {  { aSplit_5_dout fifo_data_in 0 32 }  { aSplit_5_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_5_fifo_cap fifo_update 0 11 }  { aSplit_5_empty_n fifo_status 0 1 }  { aSplit_5_read fifo_port_we 1 1 } } }
	aSplit_6 { ap_fifo {  { aSplit_6_dout fifo_data_in 0 32 }  { aSplit_6_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_6_fifo_cap fifo_update 0 11 }  { aSplit_6_empty_n fifo_status 0 1 }  { aSplit_6_read fifo_port_we 1 1 } } }
	aSplit_7 { ap_fifo {  { aSplit_7_dout fifo_data_in 0 32 }  { aSplit_7_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_7_fifo_cap fifo_update 0 11 }  { aSplit_7_empty_n fifo_status 0 1 }  { aSplit_7_read fifo_port_we 1 1 } } }
	aSplit_8 { ap_fifo {  { aSplit_8_dout fifo_data_in 0 32 }  { aSplit_8_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_8_fifo_cap fifo_update 0 11 }  { aSplit_8_empty_n fifo_status 0 1 }  { aSplit_8_read fifo_port_we 1 1 } } }
	aSplit_9 { ap_fifo {  { aSplit_9_dout fifo_data_in 0 32 }  { aSplit_9_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_9_fifo_cap fifo_update 0 11 }  { aSplit_9_empty_n fifo_status 0 1 }  { aSplit_9_read fifo_port_we 1 1 } } }
	aSplit_10 { ap_fifo {  { aSplit_10_dout fifo_data_in 0 32 }  { aSplit_10_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_10_fifo_cap fifo_update 0 11 }  { aSplit_10_empty_n fifo_status 0 1 }  { aSplit_10_read fifo_port_we 1 1 } } }
	aSplit_11 { ap_fifo {  { aSplit_11_dout fifo_data_in 0 32 }  { aSplit_11_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_11_fifo_cap fifo_update 0 11 }  { aSplit_11_empty_n fifo_status 0 1 }  { aSplit_11_read fifo_port_we 1 1 } } }
	aSplit_12 { ap_fifo {  { aSplit_12_dout fifo_data_in 0 32 }  { aSplit_12_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_12_fifo_cap fifo_update 0 11 }  { aSplit_12_empty_n fifo_status 0 1 }  { aSplit_12_read fifo_port_we 1 1 } } }
	aSplit_13 { ap_fifo {  { aSplit_13_dout fifo_data_in 0 32 }  { aSplit_13_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_13_fifo_cap fifo_update 0 11 }  { aSplit_13_empty_n fifo_status 0 1 }  { aSplit_13_read fifo_port_we 1 1 } } }
	aSplit_14 { ap_fifo {  { aSplit_14_dout fifo_data_in 0 32 }  { aSplit_14_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_14_fifo_cap fifo_update 0 11 }  { aSplit_14_empty_n fifo_status 0 1 }  { aSplit_14_read fifo_port_we 1 1 } } }
	aSplit_15 { ap_fifo {  { aSplit_15_dout fifo_data_in 0 32 }  { aSplit_15_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_15_fifo_cap fifo_update 0 11 }  { aSplit_15_empty_n fifo_status 0 1 }  { aSplit_15_read fifo_port_we 1 1 } } }
	aPipes_0 { ap_fifo {  { aPipes_0_din fifo_data_in 1 32 }  { aPipes_0_num_data_valid fifo_status_num_data_valid 0 3 }  { aPipes_0_fifo_cap fifo_update 0 3 }  { aPipes_0_full_n fifo_status 0 1 }  { aPipes_0_write fifo_port_we 1 1 } } }
	size_n { ap_fifo {  { size_n_dout fifo_data_in 0 32 }  { size_n_num_data_valid fifo_status_num_data_valid 0 3 }  { size_n_fifo_cap fifo_update 0 3 }  { size_n_empty_n fifo_status 0 1 }  { size_n_read fifo_port_we 1 1 } } }
	size_k { ap_fifo {  { size_k_dout fifo_data_in 0 32 }  { size_k_num_data_valid fifo_status_num_data_valid 0 3 }  { size_k_fifo_cap fifo_update 0 3 }  { size_k_empty_n fifo_status 0 1 }  { size_k_read fifo_port_we 1 1 } } }
	size_m { ap_fifo {  { size_m_dout fifo_data_in 0 32 }  { size_m_num_data_valid fifo_status_num_data_valid 0 3 }  { size_m_fifo_cap fifo_update 0 3 }  { size_m_empty_n fifo_status 0 1 }  { size_m_read fifo_port_we 1 1 } } }
}