set moduleName convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right
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
set C_modelName {convolution<double, double, double, double, 28, 28, 1, 16, 28, 28, 3, 3, 1, 1>_Pipeline_Shift_win_right}
set C_modelType { void 0 }
set C_modelArgList {
	{ line_buffer_2_load_2 double 64 regular  }
	{ line_buffer_2_load_1 double 64 regular  }
	{ line_buffer_1_load_2 double 64 regular  }
	{ line_buffer_1_load_1 double 64 regular  }
	{ line_buffer_0_load_1 double 64 regular  }
	{ line_buffer_0_load double 64 regular  }
	{ kernel_conv1_load double 64 regular  }
	{ kernel_conv1_load_1 double 64 regular  }
	{ kernel_conv1_load_2 double 64 regular  }
	{ kernel_conv1_load_3 double 64 regular  }
	{ kernel_conv1_load_4 double 64 regular  }
	{ kernel_conv1_load_5 double 64 regular  }
	{ kernel_conv1_load_6 double 64 regular  }
	{ kernel_conv1_load_7 double 64 regular  }
	{ kernel_conv1_load_8 double 64 regular  }
	{ bias_conv1_load double 64 regular  }
	{ output_conv1 int 64 regular {pointer 1}  }
	{ line_buffer_0 double 64 regular {array 28 { 1 3 } 1 1 } {global 0}  }
	{ line_buffer_1 double 64 regular {array 28 { 1 3 } 1 1 } {global 0}  }
	{ line_buffer_2 double 64 regular {array 28 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "line_buffer_2_load_2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "line_buffer_2_load_1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "line_buffer_1_load_2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "line_buffer_1_load_1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "line_buffer_0_load_1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "line_buffer_0_load", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_conv1_load", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_conv1_load_1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_conv1_load_2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_conv1_load_3", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_conv1_load_4", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_conv1_load_5", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_conv1_load_6", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_conv1_load_7", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_conv1_load_8", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bias_conv1_load", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "output_conv1", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "line_buffer_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "line_buffer_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "line_buffer_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ line_buffer_2_load_2 sc_in sc_lv 64 signal 0 } 
	{ line_buffer_2_load_1 sc_in sc_lv 64 signal 1 } 
	{ line_buffer_1_load_2 sc_in sc_lv 64 signal 2 } 
	{ line_buffer_1_load_1 sc_in sc_lv 64 signal 3 } 
	{ line_buffer_0_load_1 sc_in sc_lv 64 signal 4 } 
	{ line_buffer_0_load sc_in sc_lv 64 signal 5 } 
	{ kernel_conv1_load sc_in sc_lv 64 signal 6 } 
	{ kernel_conv1_load_1 sc_in sc_lv 64 signal 7 } 
	{ kernel_conv1_load_2 sc_in sc_lv 64 signal 8 } 
	{ kernel_conv1_load_3 sc_in sc_lv 64 signal 9 } 
	{ kernel_conv1_load_4 sc_in sc_lv 64 signal 10 } 
	{ kernel_conv1_load_5 sc_in sc_lv 64 signal 11 } 
	{ kernel_conv1_load_6 sc_in sc_lv 64 signal 12 } 
	{ kernel_conv1_load_7 sc_in sc_lv 64 signal 13 } 
	{ kernel_conv1_load_8 sc_in sc_lv 64 signal 14 } 
	{ bias_conv1_load sc_in sc_lv 64 signal 15 } 
	{ output_conv1 sc_out sc_lv 64 signal 16 } 
	{ output_conv1_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ line_buffer_0_address0 sc_out sc_lv 5 signal 17 } 
	{ line_buffer_0_ce0 sc_out sc_logic 1 signal 17 } 
	{ line_buffer_0_q0 sc_in sc_lv 64 signal 17 } 
	{ line_buffer_1_address0 sc_out sc_lv 5 signal 18 } 
	{ line_buffer_1_ce0 sc_out sc_logic 1 signal 18 } 
	{ line_buffer_1_q0 sc_in sc_lv 64 signal 18 } 
	{ line_buffer_2_address0 sc_out sc_lv 5 signal 19 } 
	{ line_buffer_2_ce0 sc_out sc_logic 1 signal 19 } 
	{ line_buffer_2_q0 sc_in sc_lv 64 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "line_buffer_2_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "line_buffer_2_load_2", "role": "default" }} , 
 	{ "name": "line_buffer_2_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "line_buffer_2_load_1", "role": "default" }} , 
 	{ "name": "line_buffer_1_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "line_buffer_1_load_2", "role": "default" }} , 
 	{ "name": "line_buffer_1_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "line_buffer_1_load_1", "role": "default" }} , 
 	{ "name": "line_buffer_0_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "line_buffer_0_load_1", "role": "default" }} , 
 	{ "name": "line_buffer_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "line_buffer_0_load", "role": "default" }} , 
 	{ "name": "kernel_conv1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "kernel_conv1_load", "role": "default" }} , 
 	{ "name": "kernel_conv1_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "kernel_conv1_load_1", "role": "default" }} , 
 	{ "name": "kernel_conv1_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "kernel_conv1_load_2", "role": "default" }} , 
 	{ "name": "kernel_conv1_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "kernel_conv1_load_3", "role": "default" }} , 
 	{ "name": "kernel_conv1_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "kernel_conv1_load_4", "role": "default" }} , 
 	{ "name": "kernel_conv1_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "kernel_conv1_load_5", "role": "default" }} , 
 	{ "name": "kernel_conv1_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "kernel_conv1_load_6", "role": "default" }} , 
 	{ "name": "kernel_conv1_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "kernel_conv1_load_7", "role": "default" }} , 
 	{ "name": "kernel_conv1_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "kernel_conv1_load_8", "role": "default" }} , 
 	{ "name": "bias_conv1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bias_conv1_load", "role": "default" }} , 
 	{ "name": "output_conv1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv1", "role": "default" }} , 
 	{ "name": "output_conv1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_conv1", "role": "ap_vld" }} , 
 	{ "name": "line_buffer_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "line_buffer_0", "role": "address0" }} , 
 	{ "name": "line_buffer_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_0", "role": "ce0" }} , 
 	{ "name": "line_buffer_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "line_buffer_0", "role": "q0" }} , 
 	{ "name": "line_buffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "line_buffer_1", "role": "address0" }} , 
 	{ "name": "line_buffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_1", "role": "ce0" }} , 
 	{ "name": "line_buffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "line_buffer_1", "role": "q0" }} , 
 	{ "name": "line_buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "line_buffer_2", "role": "address0" }} , 
 	{ "name": "line_buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_2", "role": "ce0" }} , 
 	{ "name": "line_buffer_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "line_buffer_2", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "75",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "line_buffer_2_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_2_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_1_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_0_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_conv1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_conv1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_conv1_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_conv1_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_conv1_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_conv1_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_conv1_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_conv1_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_conv1_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_conv1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_conv1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "line_buffer_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buffer_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buffer_2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Shift_win_right", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter46", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter46", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_4_full_dsp_1_U6", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_4_full_dsp_1_U7", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_4_full_dsp_1_U8", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_4_full_dsp_1_U9", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_4_full_dsp_1_U10", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_4_full_dsp_1_U11", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_4_full_dsp_1_U12", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_4_full_dsp_1_U13", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_4_full_dsp_1_U14", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_4_full_dsp_1_U15", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_4_max_dsp_1_U16", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_4_max_dsp_1_U17", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_4_max_dsp_1_U18", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_4_max_dsp_1_U19", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_4_max_dsp_1_U20", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_4_max_dsp_1_U21", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_4_max_dsp_1_U22", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_4_max_dsp_1_U23", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_4_max_dsp_1_U24", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U25", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right {
		line_buffer_2_load_2 {Type I LastRead 0 FirstWrite -1}
		line_buffer_2_load_1 {Type I LastRead 0 FirstWrite -1}
		line_buffer_1_load_2 {Type I LastRead 0 FirstWrite -1}
		line_buffer_1_load_1 {Type I LastRead 0 FirstWrite -1}
		line_buffer_0_load_1 {Type I LastRead 0 FirstWrite -1}
		line_buffer_0_load {Type I LastRead 0 FirstWrite -1}
		kernel_conv1_load {Type I LastRead 0 FirstWrite -1}
		kernel_conv1_load_1 {Type I LastRead 0 FirstWrite -1}
		kernel_conv1_load_2 {Type I LastRead 0 FirstWrite -1}
		kernel_conv1_load_3 {Type I LastRead 0 FirstWrite -1}
		kernel_conv1_load_4 {Type I LastRead 0 FirstWrite -1}
		kernel_conv1_load_5 {Type I LastRead 0 FirstWrite -1}
		kernel_conv1_load_6 {Type I LastRead 0 FirstWrite -1}
		kernel_conv1_load_7 {Type I LastRead 0 FirstWrite -1}
		kernel_conv1_load_8 {Type I LastRead 0 FirstWrite -1}
		bias_conv1_load {Type I LastRead 0 FirstWrite -1}
		output_conv1 {Type O LastRead -1 FirstWrite 46}
		line_buffer_0 {Type I LastRead 0 FirstWrite -1}
		line_buffer_1 {Type I LastRead 12 FirstWrite -1}
		line_buffer_2 {Type I LastRead 24 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "75", "Max" : "75"}
	, {"Name" : "Interval", "Min" : "75", "Max" : "75"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	line_buffer_2_load_2 { ap_none {  { line_buffer_2_load_2 in_data 0 64 } } }
	line_buffer_2_load_1 { ap_none {  { line_buffer_2_load_1 in_data 0 64 } } }
	line_buffer_1_load_2 { ap_none {  { line_buffer_1_load_2 in_data 0 64 } } }
	line_buffer_1_load_1 { ap_none {  { line_buffer_1_load_1 in_data 0 64 } } }
	line_buffer_0_load_1 { ap_none {  { line_buffer_0_load_1 in_data 0 64 } } }
	line_buffer_0_load { ap_none {  { line_buffer_0_load in_data 0 64 } } }
	kernel_conv1_load { ap_none {  { kernel_conv1_load in_data 0 64 } } }
	kernel_conv1_load_1 { ap_none {  { kernel_conv1_load_1 in_data 0 64 } } }
	kernel_conv1_load_2 { ap_none {  { kernel_conv1_load_2 in_data 0 64 } } }
	kernel_conv1_load_3 { ap_none {  { kernel_conv1_load_3 in_data 0 64 } } }
	kernel_conv1_load_4 { ap_none {  { kernel_conv1_load_4 in_data 0 64 } } }
	kernel_conv1_load_5 { ap_none {  { kernel_conv1_load_5 in_data 0 64 } } }
	kernel_conv1_load_6 { ap_none {  { kernel_conv1_load_6 in_data 0 64 } } }
	kernel_conv1_load_7 { ap_none {  { kernel_conv1_load_7 in_data 0 64 } } }
	kernel_conv1_load_8 { ap_none {  { kernel_conv1_load_8 in_data 0 64 } } }
	bias_conv1_load { ap_none {  { bias_conv1_load in_data 0 64 } } }
	output_conv1 { ap_vld {  { output_conv1 out_data 1 64 }  { output_conv1_ap_vld out_vld 1 1 } } }
	line_buffer_0 { ap_memory {  { line_buffer_0_address0 mem_address 1 5 }  { line_buffer_0_ce0 mem_ce 1 1 }  { line_buffer_0_q0 in_data 0 64 } } }
	line_buffer_1 { ap_memory {  { line_buffer_1_address0 mem_address 1 5 }  { line_buffer_1_ce0 mem_ce 1 1 }  { line_buffer_1_q0 in_data 0 64 } } }
	line_buffer_2 { ap_memory {  { line_buffer_2_address0 mem_address 1 5 }  { line_buffer_2_ce0 mem_ce 1 1 }  { line_buffer_2_q0 in_data 0 64 } } }
}
