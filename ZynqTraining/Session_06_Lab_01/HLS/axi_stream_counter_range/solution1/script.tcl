############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project axi_stream_counter_range
set_top axi_stream_counter_range
add_files C/axi_stream_counter_range.cpp
add_files -tb simC/axi_stream_counter_range_testbench.cpp
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 10 -name default
source "./axi_stream_counter_range/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -rtl vhdl
export_design -format ip_catalog
