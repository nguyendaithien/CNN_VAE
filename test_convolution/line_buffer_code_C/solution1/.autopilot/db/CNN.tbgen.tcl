set moduleName CNN
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {CNN}
set C_modelType { void 0 }
set C_modelArgList {
	{ padding int 32 unused  }
	{ width int 32 regular  }
	{ hight int 32 regular  }
	{ image_r int 64 regular {pointer 0}  }
	{ output_conv1 int 64 regular {pointer 2}  }
	{ output_pooling1 int 64 regular {pointer 1}  }
	{ output_conv2 int 64 unused {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "padding", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hight", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "image_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "output_conv1", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "output_pooling1", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_conv2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ padding sc_in sc_lv 32 signal 0 } 
	{ width sc_in sc_lv 32 signal 1 } 
	{ hight sc_in sc_lv 32 signal 2 } 
	{ image_r sc_in sc_lv 64 signal 3 } 
	{ output_conv1_i sc_in sc_lv 64 signal 4 } 
	{ output_conv1_o sc_out sc_lv 64 signal 4 } 
	{ output_conv1_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ output_pooling1 sc_out sc_lv 64 signal 5 } 
	{ output_pooling1_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ output_conv2 sc_in sc_lv 64 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "padding", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "padding", "role": "default" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "hight", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hight", "role": "default" }} , 
 	{ "name": "image_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "image_r", "role": "default" }} , 
 	{ "name": "output_conv1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv1", "role": "i" }} , 
 	{ "name": "output_conv1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv1", "role": "o" }} , 
 	{ "name": "output_conv1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_conv1", "role": "o_ap_vld" }} , 
 	{ "name": "output_pooling1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_pooling1", "role": "default" }} , 
 	{ "name": "output_pooling1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_pooling1", "role": "ap_vld" }} , 
 	{ "name": "output_conv2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "31", "34", "36"],
		"CDFG" : "CNN",
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
			{"Name" : "padding", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "hight", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_conv1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96", "Port" : "output_conv1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "output_pooling1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122", "Port" : "output_pooling1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "output_conv2", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96", "Port" : "line_buffer_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "line_buffer_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96", "Port" : "line_buffer_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "line_buffer_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96", "Port" : "line_buffer_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "bias_conv1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96", "Port" : "bias_conv1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "kernel_conv1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96", "Port" : "kernel_conv1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "line_buffer_2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114", "Port" : "line_buffer_2_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "line_buffer_1_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114", "Port" : "line_buffer_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "9"],
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
					{"ID" : "9", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271", "Port" : "output_conv1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "line_buffer_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3_fu_259", "Port" : "line_buffer_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "9", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271", "Port" : "line_buffer_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "line_buffer_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3_fu_259", "Port" : "line_buffer_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "9", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271", "Port" : "line_buffer_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "line_buffer_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3_fu_259", "Port" : "line_buffer_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "9", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271", "Port" : "line_buffer_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "bias_conv1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_conv1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_44_2_Push_pixel", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.line_buffer_0_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.line_buffer_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.line_buffer_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.bias_conv1_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.kernel_conv1_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3_fu_259", "Parent" : "1", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3_fu_259.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271", "Parent" : "1", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U6", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U7", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U8", "Parent" : "9"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U9", "Parent" : "9"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U10", "Parent" : "9"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U11", "Parent" : "9"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U12", "Parent" : "9"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U13", "Parent" : "9"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U14", "Parent" : "9"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dadd_64ns_64ns_64_4_full_dsp_1_U15", "Parent" : "9"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U16", "Parent" : "9"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U17", "Parent" : "9"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U18", "Parent" : "9"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U19", "Parent" : "9"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U20", "Parent" : "9"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U21", "Parent" : "9"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U22", "Parent" : "9"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U23", "Parent" : "9"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dmul_64ns_64ns_64_4_max_dsp_1_U24", "Parent" : "9"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.dcmp_64ns_64ns_1_2_no_dsp_1_U25", "Parent" : "9"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114", "Parent" : "0", "Child" : ["32", "33"],
		"CDFG" : "convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s",
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
			{"Name" : "line_buffer_2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buffer_1_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_3", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : []}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114.line_buffer_2_1_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114.line_buffer_1_1_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3",
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
			{"Name" : "sext_ln118_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound7", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp17_i_mid116", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln118", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_conv1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_pooling1", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_126_1_1_U64", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	CNN {
		padding {Type I LastRead -1 FirstWrite -1}
		width {Type I LastRead 2 FirstWrite -1}
		hight {Type I LastRead 2 FirstWrite -1}
		image_r {Type I LastRead 0 FirstWrite -1}
		output_conv1 {Type IO LastRead 2 FirstWrite 46}
		output_pooling1 {Type O LastRead -1 FirstWrite 1}
		output_conv2 {Type I LastRead -1 FirstWrite -1}
		line_buffer_0 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2 {Type IO LastRead -1 FirstWrite -1}
		bias_conv1 {Type I LastRead -1 FirstWrite -1}
		kernel_conv1 {Type I LastRead -1 FirstWrite -1}
		line_buffer_2_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_1_1 {Type O LastRead -1 FirstWrite -1}}
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
		line_buffer_2 {Type I LastRead 24 FirstWrite -1}}
	convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s {
		line_buffer_2_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_1_1 {Type O LastRead -1 FirstWrite -1}}
	CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3 {
		sext_ln118_1 {Type I LastRead 0 FirstWrite -1}
		bound7 {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		cmp17_i_mid116 {Type I LastRead 0 FirstWrite -1}
		sext_ln118 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		output_conv1_load {Type I LastRead 0 FirstWrite -1}
		output_pooling1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	padding { ap_none {  { padding in_data 0 32 } } }
	width { ap_none {  { width in_data 0 32 } } }
	hight { ap_none {  { hight in_data 0 32 } } }
	image_r { ap_none {  { image_r in_data 0 64 } } }
	output_conv1 { ap_ovld {  { output_conv1_i in_data 0 64 }  { output_conv1_o out_data 1 64 }  { output_conv1_o_ap_vld out_vld 1 1 } } }
	output_pooling1 { ap_vld {  { output_pooling1 out_data 1 64 }  { output_pooling1_ap_vld out_vld 1 1 } } }
	output_conv2 { ap_none {  { output_conv2 in_data 0 64 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
