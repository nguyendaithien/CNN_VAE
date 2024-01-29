set moduleName CNN
set isTopModule 1
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
set C_modelName {CNN}
set C_modelType { void 0 }
set C_modelArgList {
	{ padding int 32 regular  }
	{ width int 32 regular  }
	{ hight int 32 regular  }
	{ image_r int 64 regular {pointer 0}  }
	{ output_conv1 int 64 regular {pointer 2}  }
	{ output_pooling1 int 64 regular {pointer 2}  }
	{ output_conv2 int 64 regular {pointer 2}  }
	{ output_pooling2 int 64 regular {pointer 2}  }
	{ output_conv3 int 64 regular {pointer 2}  }
	{ output_pooling3 int 64 regular {pointer 2}  }
	{ output_conv4 int 64 regular {pointer 2}  }
	{ output_upsampling1 int 64 regular {pointer 2}  }
	{ output_conv5 int 64 regular {pointer 2}  }
	{ output_upsampling2 int 64 regular {pointer 2}  }
	{ output_conv6 int 64 regular {pointer 2}  }
	{ output_upsampling3 int 64 regular {pointer 2}  }
	{ output_conv7 int 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "padding", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "padding","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "width","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "hight", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hight","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "image_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "image","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_conv1", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "output_conv1","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_pooling1", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "output_pooling1","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_conv2", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "output_conv2","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_pooling2", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "output_pooling2","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_conv3", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "output_conv3","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_pooling3", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "output_pooling3","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_conv4", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "output_conv4","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_upsampling1", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "output_upsampling1","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_conv5", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "output_conv5","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_upsampling2", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "output_upsampling2","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_conv6", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "output_conv6","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_upsampling3", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "output_upsampling3","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_conv7", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "output_conv7","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
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
	{ output_pooling1_i sc_in sc_lv 64 signal 5 } 
	{ output_pooling1_o sc_out sc_lv 64 signal 5 } 
	{ output_pooling1_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ output_conv2_i sc_in sc_lv 64 signal 6 } 
	{ output_conv2_o sc_out sc_lv 64 signal 6 } 
	{ output_conv2_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ output_pooling2_i sc_in sc_lv 64 signal 7 } 
	{ output_pooling2_o sc_out sc_lv 64 signal 7 } 
	{ output_pooling2_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ output_conv3_i sc_in sc_lv 64 signal 8 } 
	{ output_conv3_o sc_out sc_lv 64 signal 8 } 
	{ output_conv3_o_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ output_pooling3_i sc_in sc_lv 64 signal 9 } 
	{ output_pooling3_o sc_out sc_lv 64 signal 9 } 
	{ output_pooling3_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ output_conv4_i sc_in sc_lv 64 signal 10 } 
	{ output_conv4_o sc_out sc_lv 64 signal 10 } 
	{ output_conv4_o_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ output_upsampling1_i sc_in sc_lv 64 signal 11 } 
	{ output_upsampling1_o sc_out sc_lv 64 signal 11 } 
	{ output_upsampling1_o_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ output_conv5_i sc_in sc_lv 64 signal 12 } 
	{ output_conv5_o sc_out sc_lv 64 signal 12 } 
	{ output_conv5_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ output_upsampling2_i sc_in sc_lv 64 signal 13 } 
	{ output_upsampling2_o sc_out sc_lv 64 signal 13 } 
	{ output_upsampling2_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ output_conv6_i sc_in sc_lv 64 signal 14 } 
	{ output_conv6_o sc_out sc_lv 64 signal 14 } 
	{ output_conv6_o_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ output_upsampling3_i sc_in sc_lv 64 signal 15 } 
	{ output_upsampling3_o sc_out sc_lv 64 signal 15 } 
	{ output_upsampling3_o_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ output_conv7 sc_out sc_lv 64 signal 16 } 
	{ output_conv7_ap_vld sc_out sc_logic 1 outvld 16 } 
}
set NewPortList {[ 
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
 	{ "name": "output_pooling1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_pooling1", "role": "i" }} , 
 	{ "name": "output_pooling1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_pooling1", "role": "o" }} , 
 	{ "name": "output_pooling1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_pooling1", "role": "o_ap_vld" }} , 
 	{ "name": "output_conv2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv2", "role": "i" }} , 
 	{ "name": "output_conv2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv2", "role": "o" }} , 
 	{ "name": "output_conv2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_conv2", "role": "o_ap_vld" }} , 
 	{ "name": "output_pooling2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_pooling2", "role": "i" }} , 
 	{ "name": "output_pooling2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_pooling2", "role": "o" }} , 
 	{ "name": "output_pooling2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_pooling2", "role": "o_ap_vld" }} , 
 	{ "name": "output_conv3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv3", "role": "i" }} , 
 	{ "name": "output_conv3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv3", "role": "o" }} , 
 	{ "name": "output_conv3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_conv3", "role": "o_ap_vld" }} , 
 	{ "name": "output_pooling3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_pooling3", "role": "i" }} , 
 	{ "name": "output_pooling3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_pooling3", "role": "o" }} , 
 	{ "name": "output_pooling3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_pooling3", "role": "o_ap_vld" }} , 
 	{ "name": "output_conv4_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv4", "role": "i" }} , 
 	{ "name": "output_conv4_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv4", "role": "o" }} , 
 	{ "name": "output_conv4_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_conv4", "role": "o_ap_vld" }} , 
 	{ "name": "output_upsampling1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_upsampling1", "role": "i" }} , 
 	{ "name": "output_upsampling1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_upsampling1", "role": "o" }} , 
 	{ "name": "output_upsampling1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_upsampling1", "role": "o_ap_vld" }} , 
 	{ "name": "output_conv5_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv5", "role": "i" }} , 
 	{ "name": "output_conv5_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv5", "role": "o" }} , 
 	{ "name": "output_conv5_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_conv5", "role": "o_ap_vld" }} , 
 	{ "name": "output_upsampling2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_upsampling2", "role": "i" }} , 
 	{ "name": "output_upsampling2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_upsampling2", "role": "o" }} , 
 	{ "name": "output_upsampling2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_upsampling2", "role": "o_ap_vld" }} , 
 	{ "name": "output_conv6_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv6", "role": "i" }} , 
 	{ "name": "output_conv6_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv6", "role": "o" }} , 
 	{ "name": "output_conv6_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_conv6", "role": "o_ap_vld" }} , 
 	{ "name": "output_upsampling3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_upsampling3", "role": "i" }} , 
 	{ "name": "output_upsampling3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_upsampling3", "role": "o" }} , 
 	{ "name": "output_upsampling3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_upsampling3", "role": "o_ap_vld" }} , 
 	{ "name": "output_conv7", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_conv7", "role": "default" }} , 
 	{ "name": "output_conv7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_conv7", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "48", "95", "144", "193", "242", "287", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349"],
		"CDFG" : "CNN",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32347", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684"}],
		"Port" : [
			{"Name" : "padding", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "hight", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_conv1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665", "Port" : "output_conv1"}]},
			{"Name" : "output_pooling1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "output_conv2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608", "Port" : "output_conv2"}]},
			{"Name" : "output_pooling2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "output_conv3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646", "Port" : "output_conv3"}]},
			{"Name" : "output_pooling3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "output_conv4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "output_conv4"}]},
			{"Name" : "output_upsampling1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "output_conv5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627", "Port" : "output_conv5"}]},
			{"Name" : "output_upsampling2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "output_conv6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589", "Port" : "output_conv6"}]},
			{"Name" : "output_upsampling3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "output_conv7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684", "Port" : "output_conv7"}]},
			{"Name" : "line_buffer_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665", "Port" : "line_buffer_1_2"}]},
			{"Name" : "line_buffer_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665", "Port" : "line_buffer_0_2"}]},
			{"Name" : "line_buffer_2_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665", "Port" : "line_buffer_2_2"}]},
			{"Name" : "bias_conv1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665", "Port" : "bias_conv1"}]},
			{"Name" : "kernel_conv1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665", "Port" : "kernel_conv1"}]},
			{"Name" : "bias_conv2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608", "Port" : "bias_conv2"}]},
			{"Name" : "line_buffer_1_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608", "Port" : "line_buffer_1_4"}]},
			{"Name" : "line_buffer_0_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608", "Port" : "line_buffer_0_4"}]},
			{"Name" : "line_buffer_2_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608", "Port" : "line_buffer_2_4"}]},
			{"Name" : "kernel_conv2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608", "Port" : "kernel_conv2"}]},
			{"Name" : "bias_conv3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646", "Port" : "bias_conv3"}]},
			{"Name" : "line_buffer_1_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646", "Port" : "line_buffer_1_5"}]},
			{"Name" : "line_buffer_0_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646", "Port" : "line_buffer_0_5"}]},
			{"Name" : "line_buffer_2_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646", "Port" : "line_buffer_2_5"}]},
			{"Name" : "kernel_conv3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646", "Port" : "kernel_conv3"}]},
			{"Name" : "bias_conv4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "bias_conv4"}]},
			{"Name" : "line_buffer_1_10_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "line_buffer_1_10_0"}]},
			{"Name" : "line_buffer_1_10_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "line_buffer_1_10_1"}]},
			{"Name" : "line_buffer_1_10_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "line_buffer_1_10_2"}]},
			{"Name" : "line_buffer_1_10_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "line_buffer_1_10_3"}]},
			{"Name" : "line_buffer_2_10_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "line_buffer_2_10_0"}]},
			{"Name" : "line_buffer_2_10_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "line_buffer_2_10_1"}]},
			{"Name" : "line_buffer_2_10_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "line_buffer_2_10_2"}]},
			{"Name" : "line_buffer_2_10_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "line_buffer_2_10_3"}]},
			{"Name" : "line_buffer_0_10_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "line_buffer_0_10_0"}]},
			{"Name" : "line_buffer_0_10_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "line_buffer_0_10_1"}]},
			{"Name" : "line_buffer_0_10_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "line_buffer_0_10_2"}]},
			{"Name" : "line_buffer_0_10_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "line_buffer_0_10_3"}]},
			{"Name" : "kernel_conv4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Port" : "kernel_conv4"}]},
			{"Name" : "bias_conv5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627", "Port" : "bias_conv5"}]},
			{"Name" : "line_buffer_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627", "Port" : "line_buffer_1"}]},
			{"Name" : "line_buffer_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627", "Port" : "line_buffer_0"}]},
			{"Name" : "line_buffer_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627", "Port" : "line_buffer_2"}]},
			{"Name" : "kernel_conv5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627", "Port" : "kernel_conv5"}]},
			{"Name" : "bias_conv6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589", "Port" : "bias_conv6"}]},
			{"Name" : "line_buffer_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589", "Port" : "line_buffer_1_3"}]},
			{"Name" : "line_buffer_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589", "Port" : "line_buffer_0_3"}]},
			{"Name" : "line_buffer_2_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589", "Port" : "line_buffer_2_3"}]},
			{"Name" : "kernel_conv6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589", "Port" : "kernel_conv6"}]},
			{"Name" : "line_buffer_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684", "Port" : "line_buffer_1_1"}]},
			{"Name" : "line_buffer_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684", "Port" : "line_buffer_0_1"}]},
			{"Name" : "line_buffer_2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684", "Port" : "line_buffer_2_1"}]},
			{"Name" : "kernel_conv7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684", "Port" : "kernel_conv7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47"],
		"CDFG" : "convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1922", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_conv4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "padding", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_conv4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buffer_1_10_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_1_10_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_1_10_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_1_10_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_2_10_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_2_10_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_2_10_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_2_10_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_0_10_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_0_10_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_0_10_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_0_10_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_conv4", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.bias_conv4_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.kernel_conv4_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U161", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U162", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U163", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U164", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U165", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U166", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U167", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U168", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U169", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U170", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U171", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U172", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U173", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U174", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U175", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U176", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U177", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U178", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U179", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_dcmp_64ns_64ns_1_2_no_dsp_1_U180", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_32ns_32ns_32_1_1_U181", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_32ns_32ns_32_1_1_U182", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_32ns_32ns_32_1_1_U183", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_6ns_6ns_6_1_1_U184", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_10ns_10ns_10_1_1_U185", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_9ns_9ns_9_1_1_U186", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_4ns_4ns_4_1_1_U187", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_6ns_6ns_6_1_1_U188", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_4ns_4ns_4_1_1_U189", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_10ns_10ns_10_1_1_U190", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_10ns_10ns_10_1_1_U191", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_10ns_10ns_10_1_1_U192", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_10ns_10ns_10_1_1_U193", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_10ns_10ns_10_1_1_U194", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_10ns_10ns_10_1_1_U195", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_10ns_10ns_10_1_1_U196", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_10ns_10ns_10_1_1_U197", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_10ns_10ns_10_1_1_U198", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_31ns_31ns_31_1_1_U199", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_mux_42_64_1_1_U200", "Parent" : "1"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_mux_42_64_1_1_U201", "Parent" : "1"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_31ns_31ns_31_1_1_U202", "Parent" : "1"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_3ns_3ns_3_1_1_U203", "Parent" : "1"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_fu_552.CNN_add_7ns_7ns_7_1_1_U204", "Parent" : "1"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589", "Parent" : "0", "Child" : ["49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94"],
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
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.bias_conv6_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.line_buffer_1_3_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.line_buffer_0_3_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.line_buffer_2_3_U", "Parent" : "48"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.kernel_conv6_U", "Parent" : "48"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U262", "Parent" : "48"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U263", "Parent" : "48"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U264", "Parent" : "48"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U265", "Parent" : "48"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U266", "Parent" : "48"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U267", "Parent" : "48"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U268", "Parent" : "48"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U269", "Parent" : "48"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U270", "Parent" : "48"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U271", "Parent" : "48"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U272", "Parent" : "48"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U273", "Parent" : "48"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U274", "Parent" : "48"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U275", "Parent" : "48"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U276", "Parent" : "48"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U277", "Parent" : "48"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U278", "Parent" : "48"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U279", "Parent" : "48"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U280", "Parent" : "48"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_dcmp_64ns_64ns_1_2_no_dsp_1_U281", "Parent" : "48"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_32ns_32ns_32_1_1_U282", "Parent" : "48"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_32ns_32ns_32_1_1_U283", "Parent" : "48"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_32ns_32ns_32_1_1_U284", "Parent" : "48"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_6ns_6ns_6_1_1_U285", "Parent" : "48"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_12ns_12ns_12_1_1_U286", "Parent" : "48"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_4ns_4ns_4_1_1_U287", "Parent" : "48"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_6ns_6ns_6_1_1_U288", "Parent" : "48"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_5ns_5ns_5_1_1_U289", "Parent" : "48"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_11ns_11ns_11_1_1_U290", "Parent" : "48"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_11ns_11ns_11_1_1_U291", "Parent" : "48"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_11ns_11ns_11_1_1_U292", "Parent" : "48"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_11ns_11ns_11_1_1_U293", "Parent" : "48"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_11ns_11ns_11_1_1_U294", "Parent" : "48"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_11ns_11ns_11_1_1_U295", "Parent" : "48"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_11ns_11ns_11_1_1_U296", "Parent" : "48"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_11ns_11ns_11_1_1_U297", "Parent" : "48"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_5ns_5ns_5_1_1_U298", "Parent" : "48"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_31ns_31ns_31_1_1_U299", "Parent" : "48"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_4ns_4ns_4_1_1_U300", "Parent" : "48"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_5ns_5ns_5_1_1_U301", "Parent" : "48"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_fu_589.CNN_add_10ns_10ns_10_1_1_U302", "Parent" : "48"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608", "Parent" : "0", "Child" : ["96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143"],
		"CDFG" : "convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s",
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
			{"Name" : "output_conv2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "padding", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_conv2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buffer_1_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buffer_0_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buffer_2_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "kernel_conv2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.bias_conv2_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.line_buffer_1_4_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.line_buffer_0_4_U", "Parent" : "95"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.line_buffer_2_4_U", "Parent" : "95"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.kernel_conv2_U", "Parent" : "95"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U55", "Parent" : "95"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U56", "Parent" : "95"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U57", "Parent" : "95"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U58", "Parent" : "95"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U59", "Parent" : "95"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U60", "Parent" : "95"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U61", "Parent" : "95"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U62", "Parent" : "95"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U63", "Parent" : "95"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U64", "Parent" : "95"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U65", "Parent" : "95"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U66", "Parent" : "95"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U67", "Parent" : "95"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U68", "Parent" : "95"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U69", "Parent" : "95"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U70", "Parent" : "95"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U71", "Parent" : "95"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U72", "Parent" : "95"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U73", "Parent" : "95"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_dcmp_64ns_64ns_1_2_no_dsp_1_U74", "Parent" : "95"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_32ns_32ns_32_1_1_U75", "Parent" : "95"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_32ns_32ns_32_1_1_U76", "Parent" : "95"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_32ns_32ns_32_1_1_U77", "Parent" : "95"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_8ns_8ns_8_1_1_U78", "Parent" : "95"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_11ns_11ns_11_1_1_U79", "Parent" : "95"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_12ns_12ns_12_1_1_U80", "Parent" : "95"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_5ns_5ns_5_1_1_U81", "Parent" : "95"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_8ns_8ns_8_1_1_U82", "Parent" : "95"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_4ns_4ns_4_1_1_U83", "Parent" : "95"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_11ns_11ns_11_1_1_U84", "Parent" : "95"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_11ns_11ns_11_1_1_U85", "Parent" : "95"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_11ns_11ns_11_1_1_U86", "Parent" : "95"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_11ns_11ns_11_1_1_U87", "Parent" : "95"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_11ns_11ns_11_1_1_U88", "Parent" : "95"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_11ns_11ns_11_1_1_U89", "Parent" : "95"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_11ns_11ns_11_1_1_U90", "Parent" : "95"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_11ns_11ns_11_1_1_U91", "Parent" : "95"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_11ns_11ns_11_1_1_U92", "Parent" : "95"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_4ns_4ns_4_1_1_U93", "Parent" : "95"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_31ns_31ns_31_1_1_U94", "Parent" : "95"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_4ns_4ns_4_1_1_U95", "Parent" : "95"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_5ns_5ns_5_1_1_U96", "Parent" : "95"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_608.CNN_add_9ns_9ns_9_1_1_U97", "Parent" : "95"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627", "Parent" : "0", "Child" : ["145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192"],
		"CDFG" : "convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3202", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_conv5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "padding", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_conv5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buffer_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buffer_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buffer_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "kernel_conv5", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.bias_conv5_U", "Parent" : "144"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.line_buffer_1_U", "Parent" : "144"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.line_buffer_0_U", "Parent" : "144"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.line_buffer_2_U", "Parent" : "144"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.kernel_conv5_U", "Parent" : "144"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U212", "Parent" : "144"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U213", "Parent" : "144"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U214", "Parent" : "144"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U215", "Parent" : "144"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U216", "Parent" : "144"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U217", "Parent" : "144"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U218", "Parent" : "144"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U219", "Parent" : "144"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U220", "Parent" : "144"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U221", "Parent" : "144"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U222", "Parent" : "144"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U223", "Parent" : "144"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U224", "Parent" : "144"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U225", "Parent" : "144"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U226", "Parent" : "144"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U227", "Parent" : "144"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U228", "Parent" : "144"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U229", "Parent" : "144"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U230", "Parent" : "144"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_dcmp_64ns_64ns_1_2_no_dsp_1_U231", "Parent" : "144"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_32ns_32ns_32_1_1_U232", "Parent" : "144"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_32ns_32ns_32_1_1_U233", "Parent" : "144"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_32ns_32ns_32_1_1_U234", "Parent" : "144"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_6ns_6ns_6_1_1_U235", "Parent" : "144"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_10ns_10ns_10_1_1_U236", "Parent" : "144"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_10ns_10ns_10_1_1_U237", "Parent" : "144"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_4ns_4ns_4_1_1_U238", "Parent" : "144"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_6ns_6ns_6_1_1_U239", "Parent" : "144"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_4ns_4ns_4_1_1_U240", "Parent" : "144"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_10ns_10ns_10_1_1_U241", "Parent" : "144"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_10ns_10ns_10_1_1_U242", "Parent" : "144"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_10ns_10ns_10_1_1_U243", "Parent" : "144"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_10ns_10ns_10_1_1_U244", "Parent" : "144"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_10ns_10ns_10_1_1_U245", "Parent" : "144"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_10ns_10ns_10_1_1_U246", "Parent" : "144"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_10ns_10ns_10_1_1_U247", "Parent" : "144"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_10ns_10ns_10_1_1_U248", "Parent" : "144"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_10ns_10ns_10_1_1_U249", "Parent" : "144"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_4ns_4ns_4_1_1_U250", "Parent" : "144"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_31ns_31ns_31_1_1_U251", "Parent" : "144"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_3ns_3ns_3_1_1_U252", "Parent" : "144"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_4ns_4ns_4_1_1_U253", "Parent" : "144"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_fu_627.CNN_add_8ns_8ns_8_1_1_U254", "Parent" : "144"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646", "Parent" : "0", "Child" : ["194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241"],
		"CDFG" : "convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2882", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_conv3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "padding", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_conv3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buffer_1_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buffer_0_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buffer_2_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "kernel_conv3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.bias_conv3_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.line_buffer_1_5_U", "Parent" : "193"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.line_buffer_0_5_U", "Parent" : "193"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.line_buffer_2_5_U", "Parent" : "193"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.kernel_conv3_U", "Parent" : "193"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U108", "Parent" : "193"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U109", "Parent" : "193"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U110", "Parent" : "193"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U111", "Parent" : "193"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U112", "Parent" : "193"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U113", "Parent" : "193"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U114", "Parent" : "193"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U115", "Parent" : "193"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U116", "Parent" : "193"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U117", "Parent" : "193"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U118", "Parent" : "193"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U119", "Parent" : "193"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U120", "Parent" : "193"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U121", "Parent" : "193"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U122", "Parent" : "193"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U123", "Parent" : "193"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U124", "Parent" : "193"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U125", "Parent" : "193"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U126", "Parent" : "193"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_dcmp_64ns_64ns_1_2_no_dsp_1_U127", "Parent" : "193"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_32ns_32ns_32_1_1_U128", "Parent" : "193"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_32ns_32ns_32_1_1_U129", "Parent" : "193"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_32ns_32ns_32_1_1_U130", "Parent" : "193"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_6ns_6ns_6_1_1_U131", "Parent" : "193"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_10ns_10ns_10_1_1_U132", "Parent" : "193"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_10ns_10ns_10_1_1_U133", "Parent" : "193"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_4ns_4ns_4_1_1_U134", "Parent" : "193"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_6ns_6ns_6_1_1_U135", "Parent" : "193"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_4ns_4ns_4_1_1_U136", "Parent" : "193"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_10ns_10ns_10_1_1_U137", "Parent" : "193"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_10ns_10ns_10_1_1_U138", "Parent" : "193"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_10ns_10ns_10_1_1_U139", "Parent" : "193"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_10ns_10ns_10_1_1_U140", "Parent" : "193"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_10ns_10ns_10_1_1_U141", "Parent" : "193"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_10ns_10ns_10_1_1_U142", "Parent" : "193"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_10ns_10ns_10_1_1_U143", "Parent" : "193"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_10ns_10ns_10_1_1_U144", "Parent" : "193"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_10ns_10ns_10_1_1_U145", "Parent" : "193"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_3ns_3ns_3_1_1_U146", "Parent" : "193"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_31ns_31ns_31_1_1_U147", "Parent" : "193"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_3ns_3ns_3_1_1_U148", "Parent" : "193"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_4ns_4ns_4_1_1_U149", "Parent" : "193"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_fu_646.CNN_add_8ns_8ns_8_1_1_U150", "Parent" : "193"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665", "Parent" : "0", "Child" : ["243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286"],
		"CDFG" : "convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1921", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_conv1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "padding", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_1_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buffer_0_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buffer_2_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bias_conv1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_conv1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.line_buffer_1_2_U", "Parent" : "242"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.line_buffer_0_2_U", "Parent" : "242"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.line_buffer_2_2_U", "Parent" : "242"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.bias_conv1_U", "Parent" : "242"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.kernel_conv1_U", "Parent" : "242"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U1", "Parent" : "242"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U2", "Parent" : "242"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U3", "Parent" : "242"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U4", "Parent" : "242"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U5", "Parent" : "242"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U6", "Parent" : "242"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U7", "Parent" : "242"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U8", "Parent" : "242"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U9", "Parent" : "242"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U10", "Parent" : "242"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U11", "Parent" : "242"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U12", "Parent" : "242"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U13", "Parent" : "242"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U14", "Parent" : "242"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U15", "Parent" : "242"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U16", "Parent" : "242"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U17", "Parent" : "242"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U18", "Parent" : "242"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U19", "Parent" : "242"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_dcmp_64ns_64ns_1_2_no_dsp_1_U20", "Parent" : "242"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_32ns_32ns_32_1_1_U21", "Parent" : "242"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_32ns_32ns_32_1_1_U22", "Parent" : "242"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_32ns_32ns_32_1_1_U23", "Parent" : "242"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_8ns_8ns_8_1_1_U24", "Parent" : "242"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_9ns_9ns_9_1_1_U25", "Parent" : "242"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_5ns_5ns_5_1_1_U26", "Parent" : "242"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_8ns_8ns_8_1_1_U27", "Parent" : "242"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_8ns_8ns_8_1_1_U28", "Parent" : "242"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_8ns_8ns_8_1_1_U29", "Parent" : "242"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_8ns_8ns_8_1_1_U30", "Parent" : "242"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_8ns_8ns_8_1_1_U31", "Parent" : "242"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_8ns_8ns_8_1_1_U32", "Parent" : "242"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_8ns_8ns_8_1_1_U33", "Parent" : "242"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_8ns_8ns_8_1_1_U34", "Parent" : "242"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_8ns_8ns_8_1_1_U35", "Parent" : "242"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_5ns_5ns_5_1_1_U36", "Parent" : "242"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_31ns_31ns_31_1_1_U37", "Parent" : "242"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_5ns_5ns_5_1_1_U38", "Parent" : "242"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_665.CNN_add_5ns_5ns_5_1_1_U39", "Parent" : "242"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684", "Parent" : "0", "Child" : ["288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330"],
		"CDFG" : "convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1793", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_conv7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "padding", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buffer_0_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buffer_2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "kernel_conv7", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.line_buffer_1_1_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.line_buffer_0_1_U", "Parent" : "287"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.line_buffer_2_1_U", "Parent" : "287"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.kernel_conv7_U", "Parent" : "287"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U310", "Parent" : "287"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U311", "Parent" : "287"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U312", "Parent" : "287"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U313", "Parent" : "287"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U314", "Parent" : "287"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U315", "Parent" : "287"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U316", "Parent" : "287"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U317", "Parent" : "287"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U318", "Parent" : "287"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dadd_64ns_64ns_64_4_full_dsp_1_U319", "Parent" : "287"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U320", "Parent" : "287"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U321", "Parent" : "287"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U322", "Parent" : "287"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U323", "Parent" : "287"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U324", "Parent" : "287"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U325", "Parent" : "287"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U326", "Parent" : "287"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U327", "Parent" : "287"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dmul_64ns_64ns_64_4_max_dsp_1_U328", "Parent" : "287"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_dcmp_64ns_64ns_1_2_no_dsp_1_U329", "Parent" : "287"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_32ns_32ns_32_1_1_U330", "Parent" : "287"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_32ns_32ns_32_1_1_U331", "Parent" : "287"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_32ns_32ns_32_1_1_U332", "Parent" : "287"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_8ns_8ns_8_1_1_U333", "Parent" : "287"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_9ns_9ns_9_1_1_U334", "Parent" : "287"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_5ns_5ns_5_1_1_U335", "Parent" : "287"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_8ns_8ns_8_1_1_U336", "Parent" : "287"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_8ns_8ns_8_1_1_U337", "Parent" : "287"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_8ns_8ns_8_1_1_U338", "Parent" : "287"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_8ns_8ns_8_1_1_U339", "Parent" : "287"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_8ns_8ns_8_1_1_U340", "Parent" : "287"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_8ns_8ns_8_1_1_U341", "Parent" : "287"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_8ns_8ns_8_1_1_U342", "Parent" : "287"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_8ns_8ns_8_1_1_U343", "Parent" : "287"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_8ns_8ns_8_1_1_U344", "Parent" : "287"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_5ns_5ns_5_1_1_U345", "Parent" : "287"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_31ns_31ns_31_1_1_U346", "Parent" : "287"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_5ns_5ns_5_1_1_U347", "Parent" : "287"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_fu_684.CNN_add_5ns_5ns_5_1_1_U348", "Parent" : "287"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_dcmp_64ns_64ns_1_2_no_dsp_1_U353", "Parent" : "0"},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_5ns_5ns_5_1_1_U354", "Parent" : "0"},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_31ns_31ns_31_1_1_U355", "Parent" : "0"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_31ns_31ns_31_1_1_U356", "Parent" : "0"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_4ns_4ns_4_1_1_U357", "Parent" : "0"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_31ns_31ns_31_1_1_U358", "Parent" : "0"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_31ns_31ns_31_1_1_U359", "Parent" : "0"},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_4ns_4ns_4_1_1_U360", "Parent" : "0"},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_31ns_31ns_31_1_1_U361", "Parent" : "0"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_31ns_31ns_31_1_1_U362", "Parent" : "0"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_4ns_4ns_4_1_1_U363", "Parent" : "0"},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_31ns_31ns_31_1_1_U364", "Parent" : "0"},
	{"ID" : "343", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_31ns_31ns_31_1_1_U365", "Parent" : "0"},
	{"ID" : "344", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_4ns_4ns_4_1_1_U366", "Parent" : "0"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_31ns_31ns_31_1_1_U367", "Parent" : "0"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_31ns_31ns_31_1_1_U368", "Parent" : "0"},
	{"ID" : "347", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_4ns_4ns_4_1_1_U369", "Parent" : "0"},
	{"ID" : "348", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_31ns_31ns_31_1_1_U370", "Parent" : "0"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CNN_add_31ns_31ns_31_1_1_U371", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	CNN {
		padding {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 2 FirstWrite -1}
		hight {Type I LastRead 2 FirstWrite -1}
		image_r {Type I LastRead 0 FirstWrite -1}
		output_conv1 {Type IO LastRead 2 FirstWrite 52}
		output_pooling1 {Type IO LastRead 3 FirstWrite 6}
		output_conv2 {Type IO LastRead 5 FirstWrite 53}
		output_pooling2 {Type IO LastRead 6 FirstWrite 9}
		output_conv3 {Type IO LastRead 8 FirstWrite 53}
		output_pooling3 {Type IO LastRead 9 FirstWrite 12}
		output_conv4 {Type IO LastRead 11 FirstWrite 51}
		output_upsampling1 {Type IO LastRead 12 FirstWrite 14}
		output_conv5 {Type IO LastRead 14 FirstWrite 53}
		output_upsampling2 {Type IO LastRead 15 FirstWrite 17}
		output_conv6 {Type IO LastRead 17 FirstWrite 53}
		output_upsampling3 {Type IO LastRead 18 FirstWrite 20}
		output_conv7 {Type O LastRead -1 FirstWrite 52}
		line_buffer_1_2 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_2 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_2 {Type IO LastRead -1 FirstWrite -1}
		bias_conv1 {Type I LastRead -1 FirstWrite -1}
		kernel_conv1 {Type I LastRead -1 FirstWrite -1}
		bias_conv2 {Type I LastRead -1 FirstWrite -1}
		line_buffer_1_4 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_4 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_conv2 {Type I LastRead -1 FirstWrite -1}
		bias_conv3 {Type I LastRead -1 FirstWrite -1}
		line_buffer_1_5 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_5 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_conv3 {Type I LastRead -1 FirstWrite -1}
		bias_conv4 {Type I LastRead -1 FirstWrite -1}
		line_buffer_1_10_0 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_1_10_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_1_10_2 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_1_10_3 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_10_0 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_10_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_10_2 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_10_3 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_10_0 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_10_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_10_2 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_10_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_conv4 {Type I LastRead -1 FirstWrite -1}
		bias_conv5 {Type I LastRead -1 FirstWrite -1}
		line_buffer_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_conv5 {Type I LastRead -1 FirstWrite -1}
		bias_conv6 {Type I LastRead -1 FirstWrite -1}
		line_buffer_1_3 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_3 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_conv6 {Type I LastRead -1 FirstWrite -1}
		line_buffer_1_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_conv7 {Type I LastRead -1 FirstWrite -1}}
	convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		output_conv4 {Type O LastRead -1 FirstWrite 51}
		padding {Type I LastRead 0 FirstWrite -1}
		bias_conv4 {Type I LastRead -1 FirstWrite -1}
		line_buffer_1_10_0 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_1_10_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_1_10_2 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_1_10_3 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_10_0 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_10_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_10_2 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_10_3 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_10_0 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_10_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_10_2 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_10_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_conv4 {Type I LastRead -1 FirstWrite -1}}
	convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		output_conv6 {Type O LastRead -1 FirstWrite 53}
		padding {Type I LastRead 0 FirstWrite -1}
		bias_conv6 {Type I LastRead -1 FirstWrite -1}
		line_buffer_1_3 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_3 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_conv6 {Type I LastRead -1 FirstWrite -1}}
	convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		output_conv2 {Type O LastRead -1 FirstWrite 53}
		padding {Type I LastRead 0 FirstWrite -1}
		bias_conv2 {Type I LastRead -1 FirstWrite -1}
		line_buffer_1_4 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_4 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_conv2 {Type I LastRead -1 FirstWrite -1}}
	convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		output_conv5 {Type O LastRead -1 FirstWrite 53}
		padding {Type I LastRead 0 FirstWrite -1}
		bias_conv5 {Type I LastRead -1 FirstWrite -1}
		line_buffer_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_conv5 {Type I LastRead -1 FirstWrite -1}}
	convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		output_conv3 {Type O LastRead -1 FirstWrite 53}
		padding {Type I LastRead 0 FirstWrite -1}
		bias_conv3 {Type I LastRead -1 FirstWrite -1}
		line_buffer_1_5 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_5 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_conv3 {Type I LastRead -1 FirstWrite -1}}
	convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		output_conv1 {Type O LastRead -1 FirstWrite 52}
		padding {Type I LastRead 0 FirstWrite -1}
		line_buffer_1_2 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_2 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_2 {Type IO LastRead -1 FirstWrite -1}
		bias_conv1 {Type I LastRead -1 FirstWrite -1}
		kernel_conv1 {Type I LastRead -1 FirstWrite -1}}
	convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		output_conv7 {Type O LastRead -1 FirstWrite 52}
		padding {Type I LastRead 0 FirstWrite -1}
		line_buffer_1_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_0_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_2_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_conv7 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32347", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "32348", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	padding { ap_none {  { padding in_data 0 32 } } }
	width { ap_none {  { width in_data 0 32 } } }
	hight { ap_none {  { hight in_data 0 32 } } }
	image_r { ap_none {  { image_r in_data 0 64 } } }
	output_conv1 { ap_ovld {  { output_conv1_i in_data 0 64 }  { output_conv1_o out_data 1 64 }  { output_conv1_o_ap_vld out_vld 1 1 } } }
	output_pooling1 { ap_ovld {  { output_pooling1_i in_data 0 64 }  { output_pooling1_o out_data 1 64 }  { output_pooling1_o_ap_vld out_vld 1 1 } } }
	output_conv2 { ap_ovld {  { output_conv2_i in_data 0 64 }  { output_conv2_o out_data 1 64 }  { output_conv2_o_ap_vld out_vld 1 1 } } }
	output_pooling2 { ap_ovld {  { output_pooling2_i in_data 0 64 }  { output_pooling2_o out_data 1 64 }  { output_pooling2_o_ap_vld out_vld 1 1 } } }
	output_conv3 { ap_ovld {  { output_conv3_i in_data 0 64 }  { output_conv3_o out_data 1 64 }  { output_conv3_o_ap_vld out_vld 1 1 } } }
	output_pooling3 { ap_ovld {  { output_pooling3_i in_data 0 64 }  { output_pooling3_o out_data 1 64 }  { output_pooling3_o_ap_vld out_vld 1 1 } } }
	output_conv4 { ap_ovld {  { output_conv4_i in_data 0 64 }  { output_conv4_o out_data 1 64 }  { output_conv4_o_ap_vld out_vld 1 1 } } }
	output_upsampling1 { ap_ovld {  { output_upsampling1_i in_data 0 64 }  { output_upsampling1_o out_data 1 64 }  { output_upsampling1_o_ap_vld out_vld 1 1 } } }
	output_conv5 { ap_ovld {  { output_conv5_i in_data 0 64 }  { output_conv5_o out_data 1 64 }  { output_conv5_o_ap_vld out_vld 1 1 } } }
	output_upsampling2 { ap_ovld {  { output_upsampling2_i in_data 0 64 }  { output_upsampling2_o out_data 1 64 }  { output_upsampling2_o_ap_vld out_vld 1 1 } } }
	output_conv6 { ap_ovld {  { output_conv6_i in_data 0 64 }  { output_conv6_o out_data 1 64 }  { output_conv6_o_ap_vld out_vld 1 1 } } }
	output_upsampling3 { ap_ovld {  { output_upsampling3_i in_data 0 64 }  { output_upsampling3_o out_data 1 64 }  { output_upsampling3_o_ap_vld out_vld 1 1 } } }
	output_conv7 { ap_vld {  { output_conv7 out_data 1 64 }  { output_conv7_ap_vld out_vld 1 1 } } }
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
