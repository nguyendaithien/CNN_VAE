set moduleName convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {convolution<double, double, double, double, 16, 16, 8, 16, 14, 14, 3, 3, 1, 0>}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 64 regular  }
	{ output_conv6 int 64 regular {pointer 1}  }
	{ padding int 31 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "output_conv6", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "padding", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 64 signal 0 } 
	{ output_conv6 sc_out sc_lv 64 signal 1 } 
	{ output_conv6_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ padding sc_in sc_lv 31 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "output_conv6", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv6", "role": "default" }} , 
 	{ "name": "output_conv6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_conv6", "role": "ap_vld" }} , 
 	{ "name": "padding", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "padding", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10242", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_conv6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "padding", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_conv6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buffer_1_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buffer_0_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buffer_2_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "kernel_conv6", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_conv6_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_1_3_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_0_3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_2_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_conv6_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U262", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U263", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U264", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U265", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U266", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U267", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U268", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U269", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U270", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U271", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U272", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U273", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U274", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U275", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U276", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U277", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U278", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U279", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U280", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dcmp_64ns_64ns_1_2_no_dsp_1_U281", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_32ns_32ns_32_1_1_U282", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_32ns_32ns_32_1_1_U283", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_32ns_32ns_32_1_1_U284", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_6ns_6ns_6_1_1_U285", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_12ns_12ns_12_1_1_U286", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_4ns_4ns_4_1_1_U287", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_6ns_6ns_6_1_1_U288", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_5ns_5ns_5_1_1_U289", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_11ns_11ns_11_1_1_U290", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_11ns_11ns_11_1_1_U291", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_11ns_11ns_11_1_1_U292", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_11ns_11ns_11_1_1_U293", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_11ns_11ns_11_1_1_U294", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_11ns_11ns_11_1_1_U295", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_11ns_11ns_11_1_1_U296", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_11ns_11ns_11_1_1_U297", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_5ns_5ns_5_1_1_U298", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_31ns_31ns_31_1_1_U299", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_4ns_4ns_4_1_1_U300", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_5ns_5ns_5_1_1_U301", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_10ns_10ns_10_1_1_U302", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		output_conv6 {Type O LastRead -1 FirstWrite 53}
		padding {Type I LastRead 0 FirstWrite -1}
		bias_conv6 {Type I LastRead -1 FirstWrite -1}
		line_buffer_1_3 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_3 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_conv6 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10242", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "10242", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 64 } } }
	output_conv6 { ap_vld {  { output_conv6 out_data 1 64 }  { output_conv6_ap_vld out_vld 1 1 } } }
	padding { ap_none {  { padding in_data 0 31 } } }
}
