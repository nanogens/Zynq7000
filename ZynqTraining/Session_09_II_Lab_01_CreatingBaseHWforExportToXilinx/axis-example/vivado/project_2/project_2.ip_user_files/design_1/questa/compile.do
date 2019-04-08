vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../project_2.srcs/sources_1/bd/design_1/ipshared/67ba/hdl/sample_generator_v1_0_M_AXIS.vhd" \
"../../../project_2.srcs/sources_1/bd/design_1/ipshared/67ba/hdl/sample_generator_v1_0_S_AXIS.vhd" \
"../../../project_2.srcs/sources_1/bd/design_1/ipshared/67ba/hdl/sample_generator_v1_0.vhd" \
"../../../project_2.srcs/sources_1/bd/design_1/ip/design_1_sample_generator_0_0/sim/design_1_sample_generator_0_0.vhd" \
"../../../project_2.srcs/sources_1/bd/design_1/sim/design_1.vhd" \


