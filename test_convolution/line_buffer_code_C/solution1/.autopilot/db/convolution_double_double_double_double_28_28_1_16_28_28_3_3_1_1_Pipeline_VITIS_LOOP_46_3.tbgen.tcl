set moduleName convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3
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
set C_modelName {convolution<double, double, double, double, 28, 28, 1, 16, 28, 28, 3, 3, 1, 1>_Pipeline_VITIS_LOOP_46_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ or_ln49 int 1 regular  }
	{ bitcast_ln53 double 64 regular  }
	{ line_buffer_1 double 64 regular {array 28 { 0 1 } 1 1 } {global 2}  }
	{ line_buffer_0 double 64 regular {array 28 { 0 3 } 0 1 } {global 1}  }
	{ line_buffer_2 double 64 regular {array 28 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "or_ln49", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln53", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "line_buffer_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "line_buffer_0", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "line_buffer_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ or_ln49 sc_in sc_lv 1 signal 0 } 
	{ bitcast_ln53 sc_in sc_lv 64 signal 1 } 
	{ line_buffer_1_address0 sc_out sc_lv 5 signal 2 } 
	{ line_buffer_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ line_buffer_1_we0 sc_out sc_logic 1 signal 2 } 
	{ line_buffer_1_d0 sc_out sc_lv 64 signal 2 } 
	{ line_buffer_1_address1 sc_out sc_lv 5 signal 2 } 
	{ line_buffer_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ line_buffer_1_q1 sc_in sc_lv 64 signal 2 } 
	{ line_buffer_0_address0 sc_out sc_lv 5 signal 3 } 
	{ line_buffer_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ line_buffer_0_we0 sc_out sc_logic 1 signal 3 } 
	{ line_buffer_0_d0 sc_out sc_lv 64 signal 3 } 
	{ line_buffer_2_address0 sc_out sc_lv 5 signal 4 } 
	{ line_buffer_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ line_buffer_2_we0 sc_out sc_logic 1 signal 4 } 
	{ line_buffer_2_d0 sc_out sc_lv 64 signal 4 } 
	{ line_buffer_2_q0 sc_in sc_lv 64 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "or_ln49", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "or_ln49", "role": "default" }} , 
 	{ "name": "bitcast_ln53", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln53", "role": "default" }} , 
 	{ "name": "line_buffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "line_buffer_1", "role": "address0" }} , 
 	{ "name": "line_buffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_1", "role": "ce0" }} , 
 	{ "name": "line_buffer_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_1", "role": "we0" }} , 
 	{ "name": "line_buffer_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "line_buffer_1", "role": "d0" }} , 
 	{ "name": "line_buffer_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "line_buffer_1", "role": "address1" }} , 
 	{ "name": "line_buffer_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_1", "role": "ce1" }} , 
 	{ "name": "line_buffer_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "line_buffer_1", "role": "q1" }} , 
 	{ "name": "line_buffer_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "line_buffer_0", "role": "address0" }} , 
 	{ "name": "line_buffer_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_0", "role": "ce0" }} , 
 	{ "name": "line_buffer_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_0", "role": "we0" }} , 
 	{ "name": "line_buffer_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "line_buffer_0", "role": "d0" }} , 
 	{ "name": "line_buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "line_buffer_2", "role": "address0" }} , 
 	{ "name": "line_buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_2", "role": "ce0" }} , 
 	{ "name": "line_buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_2", "role": "we0" }} , 
 	{ "name": "line_buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "line_buffer_2", "role": "d0" }} , 
 	{ "name": "line_buffer_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "line_buffer_2", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "or_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buffer_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "line_buffer_2", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3 {
		or_ln49 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln53 {Type I LastRead 0 FirstWrite -1}
		line_buffer_1 {Type IO LastRead 0 FirstWrite 1}
		line_buffer_0 {Type O LastRead -1 FirstWrite 1}
		line_buffer_2 {Type IO LastRead 0 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32", "Max" : "32"}
	, {"Name" : "Interval", "Min" : "32", "Max" : "32"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	or_ln49 { ap_none {  { or_ln49 in_data 0 1 } } }
	bitcast_ln53 { ap_none {  { bitcast_ln53 in_data 0 64 } } }
	line_buffer_1 { ap_memory {  { line_buffer_1_address0 mem_address 1 5 }  { line_buffer_1_ce0 mem_ce 1 1 }  { line_buffer_1_we0 mem_we 1 1 }  { line_buffer_1_d0 mem_din 1 64 }  { line_buffer_1_address1 MemPortADDR2 1 5 }  { line_buffer_1_ce1 MemPortCE2 1 1 }  { line_buffer_1_q1 in_data 0 64 } } }
	line_buffer_0 { ap_memory {  { line_buffer_0_address0 mem_address 1 5 }  { line_buffer_0_ce0 mem_ce 1 1 }  { line_buffer_0_we0 mem_we 1 1 }  { line_buffer_0_d0 mem_din 1 64 } } }
	line_buffer_2 { ap_memory {  { line_buffer_2_address0 mem_address 1 5 }  { line_buffer_2_ce0 mem_ce 1 1 }  { line_buffer_2_we0 mem_we 1 1 }  { line_buffer_2_d0 mem_din 1 64 }  { line_buffer_2_q0 in_data 0 64 } } }
}
