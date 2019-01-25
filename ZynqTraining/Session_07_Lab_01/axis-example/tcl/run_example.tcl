# MT - Jan 25, 2019
# all of the commands issued by Vivado we place inside this file.
# this is to keep track of all of the changes.

# Created Project
start_gui
create_project project_1 D:/Github/Zynq7000/ZynqTraining/Session_07_Lab_01/axis-example/vivado/project_1 -part xc7z010clg400-1
set_property board_part em.avnet.com:microzed_7010:part0:1.1 [current_project]
set_property target_language VHDL [current_project]
set_property simulator_language VHDL [current_project]

# Create Block Design
create_bd_design "design_1"
update_compile_order -fileset sources_1

# Update the Repository of the Project
set_property  ip_repo_paths  D:/Github/Zynq7000/ZynqTraining/Session_07_Lab_01/axis-example/mycores/ip_repo [current_project]
update_ip_catalog

# Add the Sample Generator to the Block Design
startgroup
create_bd_cell -type ip -vlnv MT:user:sample_generator:1.0 sample_generator_0
endgroup

# Added in FFT Block
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 xfft_0
endgroup

# Added in AXI Data Stream FIFO
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 axis_data_fifo_0
endgroup

# Adding in Zynq Processing Unit
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
endgroup

# Run Block Automation
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable" }  [get_bd_cells processing_system7_0]

# Add AXI DMA
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0
endgroup

# Click on Zynq and add DMA port (HP0)
startgroup
set_property -dict [list CONFIG.PCW_USE_S_AXI_HP0 {1}] [get_bd_cells processing_system7_0]
endgroup

# (AR) Click on Zynq, enable a 2nd clock domain, set it to 200Mhz
startgroup
set_property -dict [list CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {200} CONFIG.PCW_EN_CLK1_PORT {1}] [get_bd_cells processing_system7_0]
endgroup

#####################################################################################

# connections 
connect_bd_intf_net [get_bd_intf_pins sample_generator_0/M_AXIS] [get_bd_intf_pins axis_data_fifo_0/S_AXIS]
connect_bd_intf_net [get_bd_intf_pins axis_data_fifo_0/M_AXIS] [get_bd_intf_pins xfft_0/S_AXIS_DATA]

# FFT Master to DMA Slave (S2MM)
connect_bd_intf_net [get_bd_intf_pins xfft_0/M_AXIS_DATA] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]

# Ran Connection Automation to auto-connect DMA (Master) to Zynq (Slave) - remember to select the appropriate master (S2MM) for Zynq.
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/axi_dma_0/M_AXI_S2MM} Slave {/processing_system7_0/S_AXI_HP0} intc_ip {Auto} master_apm {0}}  [get_bd_intf_pins processing_system7_0/S_AXI_HP0]



