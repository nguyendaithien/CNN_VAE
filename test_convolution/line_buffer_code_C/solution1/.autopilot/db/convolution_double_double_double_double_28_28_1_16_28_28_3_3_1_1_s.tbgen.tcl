set moduleName convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s
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
set C_modelName {convolution<double, double, double, double, 28, 28, 1, 16, 28, 28, 3, 3, 1, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 64 regular  }
	{ output_conv1 int 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "output_conv1", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 64 signal 0 } 
	{ output_conv1 sc_out sc_lv 64 signal 1 } 
	{ output_conv1_ap_vld sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "output_conv1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv1", "role": "default" }} , 
 	{ "name": "output_conv1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_conv1", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "8"],
		"CDFG" : "convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16801", "EstimateLatencyMax" : "54241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_conv1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271", "Port" : "output_conv1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "line_buffer_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3_fu_259", "Port" : "line_buffer_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271", "Port" : "line_buffer_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "line_buffer_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3_fu_259", "Port" : "line_buffer_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271", "Port" : "line_buffer_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "line_buffer_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3_fu_259", "Port" : "line_buffer_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271", "Port" : "line_buffer_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "bias_conv1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_conv1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_44_2_Push_pixel", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_conv1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_conv1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3_fu_259", "Parent" : "0", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3_fu_259.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271", "Parent" : "0", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U6", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U7", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U8", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U9", "Parent" : "8"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U10", "Parent" : "8"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U11", "Parent" : "8"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U12", "Parent" : "8"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U13", "Parent" : "8"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U14", "Parent" : "8"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U15", "Parent" : "8"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U16", "Parent" : "8"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U17", "Parent" : "8"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U18", "Parent" : "8"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U19", "Parent" : "8"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U20", "Parent" : "8"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U21", "Parent" : "8"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U22", "Parent" : "8"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U23", "Parent" : "8"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U24", "Parent" : "8"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dcmp_64ns_64ns_1_2_no_dsp_1_U25", "Parent" : "8"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"}]}


set ArgLastReadFirstWriteLatency {
	convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		output_conv1 {Type O LastRead -1 FirstWrite 46}
		line_buffer_0 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2 {Type IO LastRead -1 FirstWrite -1}
		bias_conv1 {Type I LastRead -1 FirstWrite -1}
		kernel_conv1 {Type I LastRead -1 FirstWrite -1}}
	convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3 {
		or_ln49 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln53 {Type I LastRead 0 FirstWrite -1}
		line_buffer_1 {Type IO LastRead 0 FirstWrite 1}
		line_buffer_0 {Type O LastRead -1 FirstWrite 1}
		line_buffer_2 {Type IO LastRead 0 FirstWrite 0}}
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
	{"Name" : "Latency", "Min" : "16801", "Max" : "54241"}
	, {"Name" : "Interval", "Min" : "16801", "Max" : "54241"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 64 } } }
	output_conv1 { ap_vld {  { output_conv1 out_data 1 64 }  { output_conv1_ap_vld out_vld 1 1 } } }
}
