############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project LAB5
set_top sobel_sw_new
add_files ../sobel_sw_new.h
add_files ../sobel_sw_new.c
add_files -tb ../sobel_testbench.c
open_solution "solution2"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./LAB5/solution2/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
