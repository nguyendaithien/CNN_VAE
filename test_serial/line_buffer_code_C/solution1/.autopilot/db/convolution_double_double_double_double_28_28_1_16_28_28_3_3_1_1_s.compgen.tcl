# This script segment is generated automatically by AutoPilot

set id 1
set name CNN_CNN_dadd_64ns_64ns_64_4_full_dsp_1
set corename simcore_dadd
set op dadd
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 64
set in0_signed 0
set in1_width 64
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 64
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_dadd] == "ap_gen_simcore_dadd"} {
eval "ap_gen_simcore_dadd { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_dadd, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op dadd
set corename DAddSub_fulldsp
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 11
set name CNN_CNN_dmul_64ns_64ns_64_4_max_dsp_1
set corename simcore_dmul
set op dmul
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style max_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 64
set in0_signed 0
set in1_width 64
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 64
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_dmul] == "ap_gen_simcore_dmul"} {
eval "ap_gen_simcore_dmul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_dmul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op dmul
set corename DMul_maxdsp
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 20
set name CNN_CNN_dcmp_64ns_64ns_1_2_no_dsp_1
set corename simcore_dcmp
set op dcmp
set stage_num 2
set max_latency -1
set registered_input 1
set impl_style no_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 64
set in0_signed 0
set in1_width 64
set in1_signed 0
set ce_width 1
set ce_signed 0
set opcode_width 5
set opcode_signed 0
set out_width 1
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_dcmp] == "ap_gen_simcore_dcmp"} {
eval "ap_gen_simcore_dcmp { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_dcmp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op dcmp
set corename DCompare
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 21
set name CNN_CNN_add_32ns_32ns_32_1_1
set corename simcore_add
set op add
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_add] == "ap_gen_simcore_add"} {
eval "ap_gen_simcore_add { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_add, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op add
set corename Adder
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub] == "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub, check your platform lib"
}
}


set id 24
set name CNN_CNN_add_8ns_8ns_8_1_1
set corename simcore_add
set op add
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 8
set in0_signed 0
set in1_width 8
set in1_signed 0
set out_width 8
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_add] == "ap_gen_simcore_add"} {
eval "ap_gen_simcore_add { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_add, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op add
set corename Adder
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub] == "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub, check your platform lib"
}
}


set id 25
set name CNN_CNN_add_9ns_9ns_9_1_1
set corename simcore_add
set op add
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 9
set in0_signed 0
set in1_width 9
set in1_signed 0
set out_width 9
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_add] == "ap_gen_simcore_add"} {
eval "ap_gen_simcore_add { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_add, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op add
set corename Adder
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub] == "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub, check your platform lib"
}
}


set id 26
set name CNN_CNN_add_5ns_5ns_5_1_1
set corename simcore_add
set op add
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 5
set in0_signed 0
set in1_width 5
set in1_signed 0
set out_width 5
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_add] == "ap_gen_simcore_add"} {
eval "ap_gen_simcore_add { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_add, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op add
set corename Adder
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub] == "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub, check your platform lib"
}
}


set id 37
set name CNN_CNN_add_31ns_31ns_31_1_1
set corename simcore_add
set op add
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 31
set in0_signed 0
set in1_width 31
set in1_signed 0
set out_width 31
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_add] == "ap_gen_simcore_add"} {
eval "ap_gen_simcore_add { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_add, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op add
set corename Adder
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub] == "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 48
set hasByteEnable 0
set MemName CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_line_buffebkb
set CoreName ap_simcore_mem
set PortList { 1 2 }
set DataWd 64
set AddrRange 28
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.158
set ClkPeriod 6.66
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 49
set hasByteEnable 0
set MemName CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_line_buffecud
set CoreName ap_simcore_mem
set PortList { 2 1 }
set DataWd 64
set AddrRange 28
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.158
set ClkPeriod 6.66
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 50
set hasByteEnable 0
set MemName CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 64
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0011111100001000001001011100010110011101001111001100000100011000" "0011111101011011110001110100110110111000110000111100110000001010" "1011111111000000000110000010100010000000010100011100100111110111" "0011111101001101110011101100110111100001011111010110011010010001" "1011111110000000111110011111010001101111101000000110111001000001" "0011111111001101010010110011001100000100001110010100101010100100" "1011111100101001001111111001100110101101011011001000100010001010" "0011111111000100101010100100111011110011100000110001100111111011" "0011111110100101000010101001011110000000000001100100001000000110" "0011111101001001110100111101100011000010100101001101111010100001" "1011111101000011011001010011101001011100111011000100000011100110" "0011111110000011110010111000100111100111110111000000001100000111" "1011111101000010111010000001110110100001110110001010110110101110" "0011111110000010011010001001110101111000010010110110101100111000" "0011111100111110000100000001000110100000001011110110110110101000" "1011111101010111100001001110110110101101010001011000011110011001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.158
set ClkPeriod 6.66
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 51
set hasByteEnable 0
set MemName CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_kernel_conv1
set CoreName ap_simcore_mem
set PortList { 1 1 1 1 1 1 1 1 1 }
set DataWd 64
set AddrRange 144
set AddrWd 8
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1011111111000100101111100000111010011000111101010000001111111001" "1011111111001111001111000100110101100011001101010010111010001011" "0011111110110000100111101011001111011111110000001111000001001011" "1011111111001010010010010100100100011111001011011100001010110001" "0011111101101100101100010000000110100110010110011000000110111000" "0011111111001111100101110110110011011001000111000011101101110101" "1011111110010101110110010000011101000010101111110110110100111110" "0011111111001100100100100101100011011101100100011100000100001000" "0011111111000100111010011100000110111010100111111111100110000101" "0011111110111100010001110000010011100001101111000001110100100111" "1011111110100010111011000110011001011110111100110110111100111101" "1011111111010101101101100001111101110110101111011100110001111111" "0011111111010100111110011101000011111100010111000101110001110111" "1011111110111001000010111101100001010000011000111001101010101111" "1011111111000001011100100110011010111010010010010011110010001010" "0011111111000001011000000010010100000011110001011000011101011110" "0011111111010000100100000110111010100010100111111111110110001100" "0011111110010111001111111111100101000111110111011001011111010100" "0011111111001010011000100111010011111111101100010101000010011010" "0011111111000011001011011100101111101011001001010111110101101000" "0011111111001010001001001111100100001000101111111110110100010101" "1011111110111010100101111110001011100000001101001000100010011110" "1011111110111011010011110011110101010100111101010010010011011011" "0011111110111111000010011011111101000110011111000110011000101101" "1011111111011001010101011100011111111101110110110000110010101100" "1011111111001011010111101100110001101001001001001011000110111011" "0011111111010000101110011000111110100011011101101001001000101110" "0011111111010001101110111011010000100000101011100111011001001011" "0011111111001011010000111110101011111011111000011110001100110100" "0011111111000100011101011111111011011111110001000111011000111100" "0011111110000000101010100010101110111000000101001010111011100100" "1011111110110101010110111101101111011110011000101010000101100000" "1011111110100110010111011011011010111111011011110100000100101011" "0011111110100110110111100111111111111101100100010011101011010000" "0011111111001001110000011100010001000101100101001011010010101101" "0011111110111011010000011111111010101000000100010010101110100001" "1011111110011101100010000001010110100111011101011110101000000001" "1011111111000111100110001111101100111001000110111101010101110100" "1011111111000110100110100010000110101001110010001110011010111001" "1011111110000110101010100110100101100100011000010110110101000111" "1011111110111100100110011100100011111110111000011111001011001111" "1011111110111011000100101100110100001100001101111100011011000001" "1011111101101101011110111011101011010000001110011101100010000011" "1011111110110000010000110001100110110000001010100101010010111101" "1011111101100111110100010101110101010101010001011010110010110010" "1011111111001111101001010110001011100101111111100100110000100001" "0011111110100010001010110010110011111111011001110111111010111111" "1011111110111111111101101010100010010011010111001001001110101010" "0011111110100100011100100111110001100011000101101011111101111001" "1011111110000010010101101010111001001000101110010110100001111101" "0011111101110110100100110011010100101111000101000111001100110010" "0011111110110001110011011111011101000100010001001010100001111100" "0011111111010001000011110101110000101000111101011100001010001111" "0011111111000101010110111100100000100111110011000111011110111101" "0011111111000001111010011010110110101110001000111001010001011010" "1011111110110000111101011111100101000000111101000001000100001001" "0011111111000001101011110110110000111110110000101000100001111011" "0011111111010000011101000111000011000000001100011000100011100100" "0011111110110011001011101001011100000001101110011011111001111101" "0011111111000101111010000000100001111100111111000010101000001000" "0011111111001111011100101010010000110111010101110101101000101111" "0011111110111001101111111100011000111110100100110011100010101100" "0011111111001010000111000000000001100110101011010011001100101001" "1011111110111010111011011101011000110001110100000101110010100100" "1011111101110001111100001100000100100110010110010000110111000001" "1011111110011010010001001010011101010111011110101110111010111100" "0011111110100000000010101110000101111100110101001000100101010001" "1011111110010101100110110111011000010010101010111101010000101111" "0011111111011110010000011001010001011111011100110000001000101011" "0011111110001010101001001101101011110011110111111001001111010111" "0011111101110100000101010110101101110111000111000110110000011100" "0011111110011101111101100111010111111001101111011000000111100111" "1011111111100001000111110010010001010010110001011001111110110010" "1011111110110101110001110101111100100100101010001010101111011011" "1011111101101111111010000101100000011000100110101101011010000110" "0011111110111101001110110111111110100001101110101001010000101010" "1011111110101000101111110011010101011111100010000101000011000111" "1011111110001001010001011110100101011101000101010001110110111000" "0011111111011010111000010101001111000010011101001101101000011101" "0011111110110110000011000000100101111000101001001010110001110010" "0011111110010000110011100011111111101001011110100000000110100100" "1011111110000101000000000011001010010001000010000000101111001110" "0011111110110101101111001001111110000011000100101001100110001011" "0011111110101100100110101101101001100001010111111110110001001111" "1011111110111111010101011011010010000001010000000100101100111000" "0011111110111101100010111000101010111000001010100101001101100110" "0011111110101010111101101100011110011101000011010001011010010100" "0011111111010110101001000100010110000100100110011000001001001000" "0011111111001010001111010101001000011010111111111110000010100000" "1011111110111000001111001101011001110101000101110010111001000101" "1100000000000111101011001010111110100110010010110101100011000100" "1011111110110110001001110010101110010011000000001100111000110001" "1011111111011001000000010000100010111110100101010111110001111111" "1011111111001110111110100101110011111101110111001110010100011110" "0011111110100011101010010011001000100100001001011011010101010111" "0011111110101011110011000110001100100011000110001001000101111010" "1011111111001101111100101011111011111001110100000110011000001001" "1011111110100111110011010000101010000001101100001001000100100100" "0011111111011100011011111111010000011001010000011111000001100101" "1011111101111111011011000001011111010110001101011000000101000001" "0011111110100001111100101100010001011000001101000001111010010110" "1011111100111010110110001110001100011111011000110110000101101000" "1011111101110101101011110111010111001110111001000010100100110101" "0011111111100100111111100100101010111110011010100011001101111011" "1011111110001101000101000110110010001101011000001011111111111000" "1011111110000001000010111110011001001110011001000100110101000011" "0011111110010100100011000011001010100000001100101011001001010001" "1011111101110010100100000000001111101110101000100000100110101011" "1011111111111000110011111101000101100100000010110100001001010011" "1011111111010010010110010100000001000010111001100010111010011110" "1011111110101000111100000010110100000001110010010110000101100110" "1011111111011111010101001110011011100010001000011100100010101000" "0011111110110000111001000000100010111110000101001010001100100101" "1011111111010001111011101011111110011011100010111110001000100001" "0011111110101111011100010110000000010100100100101011010000100010" "0011111111011110100010100111010100000011101110000001101101100101" "1011111111001100011111100110101110000000010101101010011110000010" "1011111111100111001011001001101011011101111001110101000101011101" "1011111111000110000000111010100001000000101001100110001101010111" "0011111111010000110101000111001011011110011011101110000010110011" "1011111111100010011101111010011001011111011110101011100111011011" "0011111111010011110000101110111100111101111001011110100110101001" "0011111111010110010001001001111100000000111000011010011101001111" "1011111111101001110001100110000101000011000100001111011011001000" "1011111111011001110101111011101001100110100110001011101101001101" "1011111111010101101100010110100011100011011011100100111011101000" "0011111110110010101101100110111000010000101010011100011001100010" "0011111111010101100010110000110110111010101010001011001011100111" "0011111111011101000111000010010101100101000101000101011011001111" "0011111110011111111000010001100001100110110111001011011010000010" "1011111110010111100001000101111011111101011011110000100110101100" "0011111111000100101101110001111011100101100111100101010011101010" "0011111101001100011000000001010011100000000000110101011111000110" "1011111110110111111101011101011100110010001010110111011001010000" "0011111110111100010000101001011110111111101001001100011000011110" "1011111111010010110001111111011010000100000000000101010100111010" "1011111111010101101101100001111010011111111111100011011110101001" "1011111111001100010001011011001011100111100111100101111101010001" "0011111110111001111101101101001010000100110001111010010101110001" "0011111110110010100111011111100000100011000100011101001011100110" "1011111111000101000101100111101111010111111001111011001100000010" "0011111111100001000101111100111000011101001011101110010011110000" "1011111110110110000000111010011110111111110011010000101000001001" "1011111111010000011111110001100110011011010111001001001001010010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.158
set ClkPeriod 6.66
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 9 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 9 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name output_conv1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_conv1 \
    op interface \
    ports { output_conv1 { O 64 vector } output_conv1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name padding \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_padding \
    op interface \
    ports { padding { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


