vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93 \
"../../../project_2.srcs/sources_1/bd/design_1/ipshared/67ba/hdl/sample_generator_v1_0_M_AXIS.vhd" \
"../../bd/design_1/ipshared/67ba/hdl" \
"../../../project_2.srcs/sources_1/bd/design_1/ipshared/67ba/hdl/sample_generator_v1_0.vhd" \
"../../bd/design_1/ip/design_1_sample_generator_0_0/sim" \
"../../../project_2.srcs/sources_1/bd/design_1/sim/design_1.vhd" \


