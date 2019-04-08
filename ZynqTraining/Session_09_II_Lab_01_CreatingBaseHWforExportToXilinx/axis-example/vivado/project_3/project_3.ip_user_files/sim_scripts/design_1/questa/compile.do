vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xlconstant_v1_1_5
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_20
vlib questa_lib/msim/proc_sys_reset_v5_0_13

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap xlconstant_v1_1_5 questa_lib/msim/xlconstant_v1_1_5
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 questa_lib/msim/axi_gpio_v2_0_20
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+C:/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ipshared/67ba/hdl/sample_generator_v1_0_M_AXIS.vhd" \
"../../../bd/design_1/ipshared/67ba/hdl/sample_generator_v1_0_S_AXIS.vhd" \
"../../../bd/design_1/ipshared/67ba/hdl/sample_generator_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_sample_generator_0_0/sim/design_1_sample_generator_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/design_1_axi_dma_0_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0_sim_netlist.vhdl" \

vlog -work xlconstant_v1_1_5 -64 "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+C:/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_3.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../project_3.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+C:/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../project_3.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../project_3.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../project_3.srcs/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_20 -64 -93 \
"../../../../project_3.srcs/sources_1/bd/design_1/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_1_0/sim/design_1_axi_gpio_1_0.vhd" \
"../../../bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_sim_netlist.vhdl" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../project_3.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_2/sim/design_1_rst_ps7_0_100M_2.vhd" \
"../../../bd/design_1/ip/design_1_axi_smc_1/design_1_axi_smc_1_sim_netlist.vhdl" \
"../../../bd/design_1/sim/design_1.vhd" \
"../../../bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_sim_netlist.vhdl" \

vlog -work xil_defaultlib \
"glbl.v"

