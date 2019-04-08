// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Mar 24 18:52:08 2019
// Host        : 63L-MT8825 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sample_generator_0_0_sim_netlist.v
// Design      : design_1_sample_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sample_generator_0_0,sample_generator_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "sample_generator_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (framesize,
    en,
    axi_en,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_aclk,
    m_axis_aresetn,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tlast,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_aclk,
    s_axis_aresetn);
  input [7:0]framesize;
  input en;
  input axi_en;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_m_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TSTRB" *) output [3:0]m_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_m_axis_aclk, INSERT_VIP 0" *) input m_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_m_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TSTRB" *) input [3:0]s_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_CLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_m_axis_aclk, INSERT_VIP 0" *) input s_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;

  wire \<const1> ;
  wire axi_en;
  wire en;
  wire [7:0]framesize;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign m_axis_tstrb[3] = \<const1> ;
  assign m_axis_tstrb[2] = \<const1> ;
  assign m_axis_tstrb[1] = \<const1> ;
  assign m_axis_tstrb[0] = \<const1> ;
  assign s_axis_tready = m_axis_tready;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_generator_v1_0 U0
       (.axi_en(axi_en),
        .en(en),
        .framesize(framesize),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tvalid_INST_0
       (.I0(axi_en),
        .I1(s_axis_tvalid),
        .O(m_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_generator_v1_0
   (m_axis_tdata,
    m_axis_tlast,
    m_axis_aclk,
    m_axis_tready,
    framesize,
    m_axis_aresetn,
    en,
    axi_en,
    s_axis_tlast,
    s_axis_tdata);
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
  input m_axis_aclk;
  input m_axis_tready;
  input [7:0]framesize;
  input m_axis_aresetn;
  input en;
  input axi_en;
  input s_axis_tlast;
  input [31:0]s_axis_tdata;

  wire axi_en;
  wire en;
  wire [7:0]framesize;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_generator_v1_0_M_AXIS sample_generator_v1_0_M_AXIS_inst
       (.axi_en(axi_en),
        .en(en),
        .framesize(framesize),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_generator_v1_0_M_AXIS
   (m_axis_tdata,
    m_axis_tlast,
    m_axis_aclk,
    m_axis_tready,
    framesize,
    m_axis_aresetn,
    en,
    axi_en,
    s_axis_tlast,
    s_axis_tdata);
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
  input m_axis_aclk;
  input m_axis_tready;
  input [7:0]framesize;
  input m_axis_aresetn;
  input en;
  input axi_en;
  input s_axis_tlast;
  input [31:0]s_axis_tdata;

  wire \afterResetCycleCounterR[7]_i_3_n_0 ;
  wire [7:0]afterResetCycleCounterR_reg__0;
  wire axi_en;
  wire counterR0;
  wire \counterR[31]_i_1_n_0 ;
  wire \counterR[3]_i_2_n_0 ;
  wire \counterR_reg[11]_i_1_n_0 ;
  wire \counterR_reg[11]_i_1_n_1 ;
  wire \counterR_reg[11]_i_1_n_2 ;
  wire \counterR_reg[11]_i_1_n_3 ;
  wire \counterR_reg[11]_i_1_n_4 ;
  wire \counterR_reg[11]_i_1_n_5 ;
  wire \counterR_reg[11]_i_1_n_6 ;
  wire \counterR_reg[11]_i_1_n_7 ;
  wire \counterR_reg[15]_i_1_n_0 ;
  wire \counterR_reg[15]_i_1_n_1 ;
  wire \counterR_reg[15]_i_1_n_2 ;
  wire \counterR_reg[15]_i_1_n_3 ;
  wire \counterR_reg[15]_i_1_n_4 ;
  wire \counterR_reg[15]_i_1_n_5 ;
  wire \counterR_reg[15]_i_1_n_6 ;
  wire \counterR_reg[15]_i_1_n_7 ;
  wire \counterR_reg[19]_i_1_n_0 ;
  wire \counterR_reg[19]_i_1_n_1 ;
  wire \counterR_reg[19]_i_1_n_2 ;
  wire \counterR_reg[19]_i_1_n_3 ;
  wire \counterR_reg[19]_i_1_n_4 ;
  wire \counterR_reg[19]_i_1_n_5 ;
  wire \counterR_reg[19]_i_1_n_6 ;
  wire \counterR_reg[19]_i_1_n_7 ;
  wire \counterR_reg[23]_i_1_n_0 ;
  wire \counterR_reg[23]_i_1_n_1 ;
  wire \counterR_reg[23]_i_1_n_2 ;
  wire \counterR_reg[23]_i_1_n_3 ;
  wire \counterR_reg[23]_i_1_n_4 ;
  wire \counterR_reg[23]_i_1_n_5 ;
  wire \counterR_reg[23]_i_1_n_6 ;
  wire \counterR_reg[23]_i_1_n_7 ;
  wire \counterR_reg[27]_i_1_n_0 ;
  wire \counterR_reg[27]_i_1_n_1 ;
  wire \counterR_reg[27]_i_1_n_2 ;
  wire \counterR_reg[27]_i_1_n_3 ;
  wire \counterR_reg[27]_i_1_n_4 ;
  wire \counterR_reg[27]_i_1_n_5 ;
  wire \counterR_reg[27]_i_1_n_6 ;
  wire \counterR_reg[27]_i_1_n_7 ;
  wire \counterR_reg[31]_i_3_n_1 ;
  wire \counterR_reg[31]_i_3_n_2 ;
  wire \counterR_reg[31]_i_3_n_3 ;
  wire \counterR_reg[31]_i_3_n_4 ;
  wire \counterR_reg[31]_i_3_n_5 ;
  wire \counterR_reg[31]_i_3_n_6 ;
  wire \counterR_reg[31]_i_3_n_7 ;
  wire \counterR_reg[3]_i_1_n_0 ;
  wire \counterR_reg[3]_i_1_n_1 ;
  wire \counterR_reg[3]_i_1_n_2 ;
  wire \counterR_reg[3]_i_1_n_3 ;
  wire \counterR_reg[3]_i_1_n_4 ;
  wire \counterR_reg[3]_i_1_n_5 ;
  wire \counterR_reg[3]_i_1_n_6 ;
  wire \counterR_reg[3]_i_1_n_7 ;
  wire \counterR_reg[7]_i_1_n_0 ;
  wire \counterR_reg[7]_i_1_n_1 ;
  wire \counterR_reg[7]_i_1_n_2 ;
  wire \counterR_reg[7]_i_1_n_3 ;
  wire \counterR_reg[7]_i_1_n_4 ;
  wire \counterR_reg[7]_i_1_n_5 ;
  wire \counterR_reg[7]_i_1_n_6 ;
  wire \counterR_reg[7]_i_1_n_7 ;
  wire en;
  wire [7:0]framesize;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire p_0_in;
  wire packetCounter0_carry_i_1_n_0;
  wire packetCounter0_carry_i_2_n_0;
  wire packetCounter0_carry_i_3_n_0;
  wire packetCounter0_carry_i_4_n_0;
  wire packetCounter0_carry_i_5_n_0;
  wire packetCounter0_carry_i_6_n_0;
  wire packetCounter0_carry_n_2;
  wire packetCounter0_carry_n_3;
  wire \packetCounter[7]_i_1_n_0 ;
  wire \packetCounter[7]_i_3_n_0 ;
  wire [7:0]packetCounter_reg__0;
  wire [7:0]plusOp;
  wire [7:0]plusOp__0;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire sampleGeneratorEnR;
  wire sampleGeneratorEnR_i_1_n_0;
  wire sampleGeneratorEnR_i_2_n_0;
  wire sampleGeneratorEnR_i_3_n_0;
  wire tValidR;
  wire tValidR_i_1_n_0;
  wire [3:3]\NLW_counterR_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]NLW_packetCounter0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_packetCounter0_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \afterResetCycleCounterR[0]_i_1 
       (.I0(afterResetCycleCounterR_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \afterResetCycleCounterR[1]_i_1 
       (.I0(afterResetCycleCounterR_reg__0[0]),
        .I1(afterResetCycleCounterR_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \afterResetCycleCounterR[2]_i_1 
       (.I0(afterResetCycleCounterR_reg__0[0]),
        .I1(afterResetCycleCounterR_reg__0[1]),
        .I2(afterResetCycleCounterR_reg__0[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \afterResetCycleCounterR[3]_i_1 
       (.I0(afterResetCycleCounterR_reg__0[1]),
        .I1(afterResetCycleCounterR_reg__0[0]),
        .I2(afterResetCycleCounterR_reg__0[2]),
        .I3(afterResetCycleCounterR_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \afterResetCycleCounterR[4]_i_1 
       (.I0(afterResetCycleCounterR_reg__0[2]),
        .I1(afterResetCycleCounterR_reg__0[0]),
        .I2(afterResetCycleCounterR_reg__0[1]),
        .I3(afterResetCycleCounterR_reg__0[3]),
        .I4(afterResetCycleCounterR_reg__0[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \afterResetCycleCounterR[5]_i_1 
       (.I0(afterResetCycleCounterR_reg__0[3]),
        .I1(afterResetCycleCounterR_reg__0[1]),
        .I2(afterResetCycleCounterR_reg__0[0]),
        .I3(afterResetCycleCounterR_reg__0[2]),
        .I4(afterResetCycleCounterR_reg__0[4]),
        .I5(afterResetCycleCounterR_reg__0[5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \afterResetCycleCounterR[6]_i_1 
       (.I0(\afterResetCycleCounterR[7]_i_3_n_0 ),
        .I1(afterResetCycleCounterR_reg__0[6]),
        .O(plusOp[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \afterResetCycleCounterR[7]_i_1 
       (.I0(sampleGeneratorEnR),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \afterResetCycleCounterR[7]_i_2 
       (.I0(\afterResetCycleCounterR[7]_i_3_n_0 ),
        .I1(afterResetCycleCounterR_reg__0[6]),
        .I2(afterResetCycleCounterR_reg__0[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \afterResetCycleCounterR[7]_i_3 
       (.I0(afterResetCycleCounterR_reg__0[5]),
        .I1(afterResetCycleCounterR_reg__0[3]),
        .I2(afterResetCycleCounterR_reg__0[1]),
        .I3(afterResetCycleCounterR_reg__0[0]),
        .I4(afterResetCycleCounterR_reg__0[2]),
        .I5(afterResetCycleCounterR_reg__0[4]),
        .O(\afterResetCycleCounterR[7]_i_3_n_0 ));
  FDRE \afterResetCycleCounterR_reg[0] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(plusOp[0]),
        .Q(afterResetCycleCounterR_reg__0[0]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \afterResetCycleCounterR_reg[1] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(plusOp[1]),
        .Q(afterResetCycleCounterR_reg__0[1]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \afterResetCycleCounterR_reg[2] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(plusOp[2]),
        .Q(afterResetCycleCounterR_reg__0[2]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \afterResetCycleCounterR_reg[3] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(plusOp[3]),
        .Q(afterResetCycleCounterR_reg__0[3]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \afterResetCycleCounterR_reg[4] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(plusOp[4]),
        .Q(afterResetCycleCounterR_reg__0[4]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \afterResetCycleCounterR_reg[5] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(plusOp[5]),
        .Q(afterResetCycleCounterR_reg__0[5]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \afterResetCycleCounterR_reg[6] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(plusOp[6]),
        .Q(afterResetCycleCounterR_reg__0[6]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \afterResetCycleCounterR_reg[7] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(plusOp[7]),
        .Q(afterResetCycleCounterR_reg__0[7]),
        .R(\counterR[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counterR[31]_i_1 
       (.I0(m_axis_aresetn),
        .O(\counterR[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counterR[31]_i_2 
       (.I0(tValidR),
        .I1(m_axis_tready),
        .O(counterR0));
  LUT1 #(
    .INIT(2'h1)) 
    \counterR[3]_i_2 
       (.I0(m_axis_tdata[0]),
        .O(\counterR[3]_i_2_n_0 ));
  FDRE \counterR_reg[0] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[3]_i_1_n_7 ),
        .Q(m_axis_tdata[0]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[10] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[11]_i_1_n_5 ),
        .Q(m_axis_tdata[10]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[11] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[11]_i_1_n_4 ),
        .Q(m_axis_tdata[11]),
        .R(\counterR[31]_i_1_n_0 ));
  CARRY4 \counterR_reg[11]_i_1 
       (.CI(\counterR_reg[7]_i_1_n_0 ),
        .CO({\counterR_reg[11]_i_1_n_0 ,\counterR_reg[11]_i_1_n_1 ,\counterR_reg[11]_i_1_n_2 ,\counterR_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterR_reg[11]_i_1_n_4 ,\counterR_reg[11]_i_1_n_5 ,\counterR_reg[11]_i_1_n_6 ,\counterR_reg[11]_i_1_n_7 }),
        .S(m_axis_tdata[11:8]));
  FDRE \counterR_reg[12] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[15]_i_1_n_7 ),
        .Q(m_axis_tdata[12]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[13] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[15]_i_1_n_6 ),
        .Q(m_axis_tdata[13]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[14] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[15]_i_1_n_5 ),
        .Q(m_axis_tdata[14]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[15] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[15]_i_1_n_4 ),
        .Q(m_axis_tdata[15]),
        .R(\counterR[31]_i_1_n_0 ));
  CARRY4 \counterR_reg[15]_i_1 
       (.CI(\counterR_reg[11]_i_1_n_0 ),
        .CO({\counterR_reg[15]_i_1_n_0 ,\counterR_reg[15]_i_1_n_1 ,\counterR_reg[15]_i_1_n_2 ,\counterR_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterR_reg[15]_i_1_n_4 ,\counterR_reg[15]_i_1_n_5 ,\counterR_reg[15]_i_1_n_6 ,\counterR_reg[15]_i_1_n_7 }),
        .S(m_axis_tdata[15:12]));
  FDRE \counterR_reg[16] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[19]_i_1_n_7 ),
        .Q(m_axis_tdata[16]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[17] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[19]_i_1_n_6 ),
        .Q(m_axis_tdata[17]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[18] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[19]_i_1_n_5 ),
        .Q(m_axis_tdata[18]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[19] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[19]_i_1_n_4 ),
        .Q(m_axis_tdata[19]),
        .R(\counterR[31]_i_1_n_0 ));
  CARRY4 \counterR_reg[19]_i_1 
       (.CI(\counterR_reg[15]_i_1_n_0 ),
        .CO({\counterR_reg[19]_i_1_n_0 ,\counterR_reg[19]_i_1_n_1 ,\counterR_reg[19]_i_1_n_2 ,\counterR_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterR_reg[19]_i_1_n_4 ,\counterR_reg[19]_i_1_n_5 ,\counterR_reg[19]_i_1_n_6 ,\counterR_reg[19]_i_1_n_7 }),
        .S(m_axis_tdata[19:16]));
  FDRE \counterR_reg[1] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[3]_i_1_n_6 ),
        .Q(m_axis_tdata[1]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[20] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[23]_i_1_n_7 ),
        .Q(m_axis_tdata[20]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[21] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[23]_i_1_n_6 ),
        .Q(m_axis_tdata[21]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[22] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[23]_i_1_n_5 ),
        .Q(m_axis_tdata[22]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[23] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[23]_i_1_n_4 ),
        .Q(m_axis_tdata[23]),
        .R(\counterR[31]_i_1_n_0 ));
  CARRY4 \counterR_reg[23]_i_1 
       (.CI(\counterR_reg[19]_i_1_n_0 ),
        .CO({\counterR_reg[23]_i_1_n_0 ,\counterR_reg[23]_i_1_n_1 ,\counterR_reg[23]_i_1_n_2 ,\counterR_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterR_reg[23]_i_1_n_4 ,\counterR_reg[23]_i_1_n_5 ,\counterR_reg[23]_i_1_n_6 ,\counterR_reg[23]_i_1_n_7 }),
        .S(m_axis_tdata[23:20]));
  FDRE \counterR_reg[24] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[27]_i_1_n_7 ),
        .Q(m_axis_tdata[24]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[25] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[27]_i_1_n_6 ),
        .Q(m_axis_tdata[25]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[26] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[27]_i_1_n_5 ),
        .Q(m_axis_tdata[26]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[27] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[27]_i_1_n_4 ),
        .Q(m_axis_tdata[27]),
        .R(\counterR[31]_i_1_n_0 ));
  CARRY4 \counterR_reg[27]_i_1 
       (.CI(\counterR_reg[23]_i_1_n_0 ),
        .CO({\counterR_reg[27]_i_1_n_0 ,\counterR_reg[27]_i_1_n_1 ,\counterR_reg[27]_i_1_n_2 ,\counterR_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterR_reg[27]_i_1_n_4 ,\counterR_reg[27]_i_1_n_5 ,\counterR_reg[27]_i_1_n_6 ,\counterR_reg[27]_i_1_n_7 }),
        .S(m_axis_tdata[27:24]));
  FDRE \counterR_reg[28] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[31]_i_3_n_7 ),
        .Q(m_axis_tdata[28]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[29] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[31]_i_3_n_6 ),
        .Q(m_axis_tdata[29]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[2] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[3]_i_1_n_5 ),
        .Q(m_axis_tdata[2]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[30] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[31]_i_3_n_5 ),
        .Q(m_axis_tdata[30]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[31] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[31]_i_3_n_4 ),
        .Q(m_axis_tdata[31]),
        .R(\counterR[31]_i_1_n_0 ));
  CARRY4 \counterR_reg[31]_i_3 
       (.CI(\counterR_reg[27]_i_1_n_0 ),
        .CO({\NLW_counterR_reg[31]_i_3_CO_UNCONNECTED [3],\counterR_reg[31]_i_3_n_1 ,\counterR_reg[31]_i_3_n_2 ,\counterR_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterR_reg[31]_i_3_n_4 ,\counterR_reg[31]_i_3_n_5 ,\counterR_reg[31]_i_3_n_6 ,\counterR_reg[31]_i_3_n_7 }),
        .S(m_axis_tdata[31:28]));
  FDRE \counterR_reg[3] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[3]_i_1_n_4 ),
        .Q(m_axis_tdata[3]),
        .R(\counterR[31]_i_1_n_0 ));
  CARRY4 \counterR_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\counterR_reg[3]_i_1_n_0 ,\counterR_reg[3]_i_1_n_1 ,\counterR_reg[3]_i_1_n_2 ,\counterR_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counterR_reg[3]_i_1_n_4 ,\counterR_reg[3]_i_1_n_5 ,\counterR_reg[3]_i_1_n_6 ,\counterR_reg[3]_i_1_n_7 }),
        .S({m_axis_tdata[3:1],\counterR[3]_i_2_n_0 }));
  FDRE \counterR_reg[4] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[7]_i_1_n_7 ),
        .Q(m_axis_tdata[4]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[5] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[7]_i_1_n_6 ),
        .Q(m_axis_tdata[5]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[6] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[7]_i_1_n_5 ),
        .Q(m_axis_tdata[6]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[7] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[7]_i_1_n_4 ),
        .Q(m_axis_tdata[7]),
        .R(\counterR[31]_i_1_n_0 ));
  CARRY4 \counterR_reg[7]_i_1 
       (.CI(\counterR_reg[3]_i_1_n_0 ),
        .CO({\counterR_reg[7]_i_1_n_0 ,\counterR_reg[7]_i_1_n_1 ,\counterR_reg[7]_i_1_n_2 ,\counterR_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterR_reg[7]_i_1_n_4 ,\counterR_reg[7]_i_1_n_5 ,\counterR_reg[7]_i_1_n_6 ,\counterR_reg[7]_i_1_n_7 }),
        .S(m_axis_tdata[7:4]));
  FDRE \counterR_reg[8] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[11]_i_1_n_7 ),
        .Q(m_axis_tdata[8]),
        .R(\counterR[31]_i_1_n_0 ));
  FDRE \counterR_reg[9] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(\counterR_reg[11]_i_1_n_6 ),
        .Q(m_axis_tdata[9]),
        .R(\counterR[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[0]),
        .O(m_axis_tdata[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[10]),
        .O(m_axis_tdata[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[11]),
        .O(m_axis_tdata[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[12]),
        .O(m_axis_tdata[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[13]),
        .O(m_axis_tdata[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[14]),
        .O(m_axis_tdata[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[15]),
        .O(m_axis_tdata[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[16]),
        .O(m_axis_tdata[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[17]),
        .O(m_axis_tdata[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[18]),
        .O(m_axis_tdata[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[19]),
        .O(m_axis_tdata[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[1]),
        .O(m_axis_tdata[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[20]),
        .O(m_axis_tdata[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[21]),
        .O(m_axis_tdata[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[22]),
        .O(m_axis_tdata[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[23]),
        .O(m_axis_tdata[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[24]),
        .O(m_axis_tdata[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[25]),
        .O(m_axis_tdata[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[26]),
        .O(m_axis_tdata[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[27]),
        .O(m_axis_tdata[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[28]),
        .O(m_axis_tdata[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[29]),
        .O(m_axis_tdata[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[2]),
        .O(m_axis_tdata[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[30]),
        .O(m_axis_tdata[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[31]),
        .O(m_axis_tdata[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[3]),
        .O(m_axis_tdata[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[4]),
        .O(m_axis_tdata[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[5]),
        .O(m_axis_tdata[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[6]),
        .O(m_axis_tdata[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[7]),
        .O(m_axis_tdata[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[8]),
        .O(m_axis_tdata[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(axi_en),
        .I1(s_axis_tdata[9]),
        .O(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tlast_INST_0
       (.I0(axi_en),
        .I1(s_axis_tlast),
        .O(m_axis_tlast));
  CARRY4 packetCounter0_carry
       (.CI(1'b0),
        .CO({NLW_packetCounter0_carry_CO_UNCONNECTED[3],m_axis_tlast,packetCounter0_carry_n_2,packetCounter0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_packetCounter0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,packetCounter0_carry_i_1_n_0,packetCounter0_carry_i_2_n_0,packetCounter0_carry_i_3_n_0}));
  LUT5 #(
    .INIT(32'h94000294)) 
    packetCounter0_carry_i_1
       (.I0(packetCounter_reg__0[6]),
        .I1(framesize[6]),
        .I2(packetCounter0_carry_i_4_n_0),
        .I3(framesize[7]),
        .I4(packetCounter_reg__0[7]),
        .O(packetCounter0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h8002200808800220)) 
    packetCounter0_carry_i_2
       (.I0(packetCounter0_carry_i_5_n_0),
        .I1(framesize[5]),
        .I2(packetCounter0_carry_i_6_n_0),
        .I3(framesize[4]),
        .I4(packetCounter_reg__0[5]),
        .I5(packetCounter_reg__0[4]),
        .O(packetCounter0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h4002100808400210)) 
    packetCounter0_carry_i_3
       (.I0(packetCounter_reg__0[0]),
        .I1(framesize[2]),
        .I2(framesize[0]),
        .I3(framesize[1]),
        .I4(packetCounter_reg__0[2]),
        .I5(packetCounter_reg__0[1]),
        .O(packetCounter0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    packetCounter0_carry_i_4
       (.I0(framesize[4]),
        .I1(framesize[2]),
        .I2(framesize[0]),
        .I3(framesize[1]),
        .I4(framesize[3]),
        .I5(framesize[5]),
        .O(packetCounter0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAA95556)) 
    packetCounter0_carry_i_5
       (.I0(framesize[3]),
        .I1(framesize[1]),
        .I2(framesize[0]),
        .I3(framesize[2]),
        .I4(packetCounter_reg__0[3]),
        .O(packetCounter0_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    packetCounter0_carry_i_6
       (.I0(framesize[2]),
        .I1(framesize[0]),
        .I2(framesize[1]),
        .I3(framesize[3]),
        .O(packetCounter0_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \packetCounter[0]_i_1 
       (.I0(packetCounter_reg__0[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \packetCounter[1]_i_1 
       (.I0(packetCounter_reg__0[0]),
        .I1(packetCounter_reg__0[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \packetCounter[2]_i_1 
       (.I0(packetCounter_reg__0[0]),
        .I1(packetCounter_reg__0[1]),
        .I2(packetCounter_reg__0[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \packetCounter[3]_i_1 
       (.I0(packetCounter_reg__0[1]),
        .I1(packetCounter_reg__0[0]),
        .I2(packetCounter_reg__0[2]),
        .I3(packetCounter_reg__0[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \packetCounter[4]_i_1 
       (.I0(packetCounter_reg__0[2]),
        .I1(packetCounter_reg__0[0]),
        .I2(packetCounter_reg__0[1]),
        .I3(packetCounter_reg__0[3]),
        .I4(packetCounter_reg__0[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \packetCounter[5]_i_1 
       (.I0(packetCounter_reg__0[3]),
        .I1(packetCounter_reg__0[1]),
        .I2(packetCounter_reg__0[0]),
        .I3(packetCounter_reg__0[2]),
        .I4(packetCounter_reg__0[4]),
        .I5(packetCounter_reg__0[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \packetCounter[6]_i_1 
       (.I0(\packetCounter[7]_i_3_n_0 ),
        .I1(packetCounter_reg__0[6]),
        .O(plusOp__0[6]));
  LUT4 #(
    .INIT(16'h80FF)) 
    \packetCounter[7]_i_1 
       (.I0(m_axis_tlast),
        .I1(tValidR),
        .I2(m_axis_tready),
        .I3(m_axis_aresetn),
        .O(\packetCounter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \packetCounter[7]_i_2 
       (.I0(\packetCounter[7]_i_3_n_0 ),
        .I1(packetCounter_reg__0[6]),
        .I2(packetCounter_reg__0[7]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \packetCounter[7]_i_3 
       (.I0(packetCounter_reg__0[5]),
        .I1(packetCounter_reg__0[3]),
        .I2(packetCounter_reg__0[1]),
        .I3(packetCounter_reg__0[0]),
        .I4(packetCounter_reg__0[2]),
        .I5(packetCounter_reg__0[4]),
        .O(\packetCounter[7]_i_3_n_0 ));
  FDRE \packetCounter_reg[0] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(plusOp__0[0]),
        .Q(packetCounter_reg__0[0]),
        .R(\packetCounter[7]_i_1_n_0 ));
  FDRE \packetCounter_reg[1] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(plusOp__0[1]),
        .Q(packetCounter_reg__0[1]),
        .R(\packetCounter[7]_i_1_n_0 ));
  FDRE \packetCounter_reg[2] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(plusOp__0[2]),
        .Q(packetCounter_reg__0[2]),
        .R(\packetCounter[7]_i_1_n_0 ));
  FDRE \packetCounter_reg[3] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(plusOp__0[3]),
        .Q(packetCounter_reg__0[3]),
        .R(\packetCounter[7]_i_1_n_0 ));
  FDRE \packetCounter_reg[4] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(plusOp__0[4]),
        .Q(packetCounter_reg__0[4]),
        .R(\packetCounter[7]_i_1_n_0 ));
  FDRE \packetCounter_reg[5] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(plusOp__0[5]),
        .Q(packetCounter_reg__0[5]),
        .R(\packetCounter[7]_i_1_n_0 ));
  FDRE \packetCounter_reg[6] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(plusOp__0[6]),
        .Q(packetCounter_reg__0[6]),
        .R(\packetCounter[7]_i_1_n_0 ));
  FDRE \packetCounter_reg[7] 
       (.C(m_axis_aclk),
        .CE(counterR0),
        .D(plusOp__0[7]),
        .Q(packetCounter_reg__0[7]),
        .R(\packetCounter[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    sampleGeneratorEnR_i_1
       (.I0(sampleGeneratorEnR),
        .I1(sampleGeneratorEnR_i_2_n_0),
        .I2(sampleGeneratorEnR_i_3_n_0),
        .I3(m_axis_aresetn),
        .O(sampleGeneratorEnR_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    sampleGeneratorEnR_i_2
       (.I0(afterResetCycleCounterR_reg__0[2]),
        .I1(afterResetCycleCounterR_reg__0[3]),
        .I2(afterResetCycleCounterR_reg__0[5]),
        .I3(afterResetCycleCounterR_reg__0[1]),
        .O(sampleGeneratorEnR_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sampleGeneratorEnR_i_3
       (.I0(afterResetCycleCounterR_reg__0[7]),
        .I1(afterResetCycleCounterR_reg__0[6]),
        .I2(afterResetCycleCounterR_reg__0[4]),
        .I3(afterResetCycleCounterR_reg__0[0]),
        .O(sampleGeneratorEnR_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sampleGeneratorEnR_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(sampleGeneratorEnR_i_1_n_0),
        .Q(sampleGeneratorEnR),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE000)) 
    tValidR_i_1
       (.I0(tValidR),
        .I1(sampleGeneratorEnR),
        .I2(en),
        .I3(m_axis_aresetn),
        .O(tValidR_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tValidR_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(tValidR_i_1_n_0),
        .Q(tValidR),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
