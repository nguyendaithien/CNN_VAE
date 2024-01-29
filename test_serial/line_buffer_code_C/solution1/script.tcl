############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project line_buffer_code_C
set_top CNN
add_files model.cpp
add_files -tb test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xcvu9p-flga2104-2-i}
create_clock -period 6.66 -name default
source "./line_buffer_code_C/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
