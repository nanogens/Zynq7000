############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project axi_stream_gpio
set_top axi_stream_gpio
add_files C/axi_stream_gpio.cpp
open_solution "solution1"
set_part {xc7z010clg400-3} -tool vivado
create_clock -period 10 -name default
source "./axi_stream_gpio/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl vhdl -format ip_catalog
