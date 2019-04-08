-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Feb  9 20:55:38 2019
-- Host        : LAPTOP-QIAK00UP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sample_generator_0_0_sim_netlist.vhdl
-- Design      : design_1_sample_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_generator_v1_0_M_AXIS is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    framesize : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_aresetn : in STD_LOGIC;
    en : in STD_LOGIC;
    axi_en : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_generator_v1_0_M_AXIS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_generator_v1_0_M_AXIS is
  signal \afterResetCycleCounterR[7]_i_3_n_0\ : STD_LOGIC;
  signal \afterResetCycleCounterR_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal counterR0 : STD_LOGIC;
  signal \counterR[31]_i_1_n_0\ : STD_LOGIC;
  signal \counterR[3]_i_2_n_0\ : STD_LOGIC;
  signal \counterR_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \counterR_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \counterR_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \counterR_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \counterR_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \counterR_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \counterR_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \counterR_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \counterR_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \counterR_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \counterR_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \counterR_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \counterR_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \counterR_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \counterR_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \counterR_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \counterR_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \counterR_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \counterR_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \counterR_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \counterR_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \counterR_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \counterR_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \counterR_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \counterR_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \counterR_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \counterR_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \counterR_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \counterR_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \counterR_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \counterR_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \counterR_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \counterR_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \counterR_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \counterR_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \counterR_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \counterR_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \counterR_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \counterR_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \counterR_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \counterR_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \counterR_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \counterR_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \counterR_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \counterR_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \counterR_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \counterR_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \counterR_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \counterR_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \counterR_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \counterR_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \counterR_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \counterR_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \counterR_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \counterR_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \counterR_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \counterR_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \counterR_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \counterR_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \counterR_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \counterR_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \counterR_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \counterR_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal packetCounter0_carry_i_1_n_0 : STD_LOGIC;
  signal packetCounter0_carry_i_2_n_0 : STD_LOGIC;
  signal packetCounter0_carry_i_3_n_0 : STD_LOGIC;
  signal packetCounter0_carry_i_4_n_0 : STD_LOGIC;
  signal packetCounter0_carry_i_5_n_0 : STD_LOGIC;
  signal packetCounter0_carry_i_6_n_0 : STD_LOGIC;
  signal packetCounter0_carry_n_2 : STD_LOGIC;
  signal packetCounter0_carry_n_3 : STD_LOGIC;
  signal \packetCounter[7]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter[7]_i_3_n_0\ : STD_LOGIC;
  signal \packetCounter_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sampleGeneratorEnR : STD_LOGIC;
  signal sampleGeneratorEnR_i_1_n_0 : STD_LOGIC;
  signal sampleGeneratorEnR_i_2_n_0 : STD_LOGIC;
  signal sampleGeneratorEnR_i_3_n_0 : STD_LOGIC;
  signal tValidR : STD_LOGIC;
  signal tValidR_i_1_n_0 : STD_LOGIC;
  signal \NLW_counterR_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_packetCounter0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_packetCounter0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \afterResetCycleCounterR[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \afterResetCycleCounterR[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \afterResetCycleCounterR[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \afterResetCycleCounterR[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \afterResetCycleCounterR[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \afterResetCycleCounterR[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of packetCounter0_carry_i_5 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of packetCounter0_carry_i_6 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \packetCounter[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \packetCounter[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \packetCounter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \packetCounter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \packetCounter[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \packetCounter[7]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of sampleGeneratorEnR_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sampleGeneratorEnR_i_3 : label is "soft_lutpair3";
begin
  m_axis_tdata(31 downto 0) <= \^m_axis_tdata\(31 downto 0);
  m_axis_tlast <= \^m_axis_tlast\;
\afterResetCycleCounterR[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \afterResetCycleCounterR_reg__0\(0),
      O => plusOp(0)
    );
\afterResetCycleCounterR[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \afterResetCycleCounterR_reg__0\(0),
      I1 => \afterResetCycleCounterR_reg__0\(1),
      O => plusOp(1)
    );
\afterResetCycleCounterR[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \afterResetCycleCounterR_reg__0\(0),
      I1 => \afterResetCycleCounterR_reg__0\(1),
      I2 => \afterResetCycleCounterR_reg__0\(2),
      O => plusOp(2)
    );
\afterResetCycleCounterR[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \afterResetCycleCounterR_reg__0\(1),
      I1 => \afterResetCycleCounterR_reg__0\(0),
      I2 => \afterResetCycleCounterR_reg__0\(2),
      I3 => \afterResetCycleCounterR_reg__0\(3),
      O => plusOp(3)
    );
\afterResetCycleCounterR[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \afterResetCycleCounterR_reg__0\(2),
      I1 => \afterResetCycleCounterR_reg__0\(0),
      I2 => \afterResetCycleCounterR_reg__0\(1),
      I3 => \afterResetCycleCounterR_reg__0\(3),
      I4 => \afterResetCycleCounterR_reg__0\(4),
      O => plusOp(4)
    );
\afterResetCycleCounterR[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \afterResetCycleCounterR_reg__0\(3),
      I1 => \afterResetCycleCounterR_reg__0\(1),
      I2 => \afterResetCycleCounterR_reg__0\(0),
      I3 => \afterResetCycleCounterR_reg__0\(2),
      I4 => \afterResetCycleCounterR_reg__0\(4),
      I5 => \afterResetCycleCounterR_reg__0\(5),
      O => plusOp(5)
    );
\afterResetCycleCounterR[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \afterResetCycleCounterR[7]_i_3_n_0\,
      I1 => \afterResetCycleCounterR_reg__0\(6),
      O => plusOp(6)
    );
\afterResetCycleCounterR[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sampleGeneratorEnR,
      O => p_0_in
    );
\afterResetCycleCounterR[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \afterResetCycleCounterR[7]_i_3_n_0\,
      I1 => \afterResetCycleCounterR_reg__0\(6),
      I2 => \afterResetCycleCounterR_reg__0\(7),
      O => plusOp(7)
    );
\afterResetCycleCounterR[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \afterResetCycleCounterR_reg__0\(5),
      I1 => \afterResetCycleCounterR_reg__0\(3),
      I2 => \afterResetCycleCounterR_reg__0\(1),
      I3 => \afterResetCycleCounterR_reg__0\(0),
      I4 => \afterResetCycleCounterR_reg__0\(2),
      I5 => \afterResetCycleCounterR_reg__0\(4),
      O => \afterResetCycleCounterR[7]_i_3_n_0\
    );
\afterResetCycleCounterR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => plusOp(0),
      Q => \afterResetCycleCounterR_reg__0\(0),
      R => \counterR[31]_i_1_n_0\
    );
\afterResetCycleCounterR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => plusOp(1),
      Q => \afterResetCycleCounterR_reg__0\(1),
      R => \counterR[31]_i_1_n_0\
    );
\afterResetCycleCounterR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => plusOp(2),
      Q => \afterResetCycleCounterR_reg__0\(2),
      R => \counterR[31]_i_1_n_0\
    );
\afterResetCycleCounterR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => plusOp(3),
      Q => \afterResetCycleCounterR_reg__0\(3),
      R => \counterR[31]_i_1_n_0\
    );
\afterResetCycleCounterR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => plusOp(4),
      Q => \afterResetCycleCounterR_reg__0\(4),
      R => \counterR[31]_i_1_n_0\
    );
\afterResetCycleCounterR_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => plusOp(5),
      Q => \afterResetCycleCounterR_reg__0\(5),
      R => \counterR[31]_i_1_n_0\
    );
\afterResetCycleCounterR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => plusOp(6),
      Q => \afterResetCycleCounterR_reg__0\(6),
      R => \counterR[31]_i_1_n_0\
    );
\afterResetCycleCounterR_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => plusOp(7),
      Q => \afterResetCycleCounterR_reg__0\(7),
      R => \counterR[31]_i_1_n_0\
    );
\counterR[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_aresetn,
      O => \counterR[31]_i_1_n_0\
    );
\counterR[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tValidR,
      I1 => m_axis_tready,
      O => counterR0
    );
\counterR[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_axis_tdata\(0),
      O => \counterR[3]_i_2_n_0\
    );
\counterR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[3]_i_1_n_7\,
      Q => \^m_axis_tdata\(0),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[11]_i_1_n_5\,
      Q => \^m_axis_tdata\(10),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[11]_i_1_n_4\,
      Q => \^m_axis_tdata\(11),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterR_reg[7]_i_1_n_0\,
      CO(3) => \counterR_reg[11]_i_1_n_0\,
      CO(2) => \counterR_reg[11]_i_1_n_1\,
      CO(1) => \counterR_reg[11]_i_1_n_2\,
      CO(0) => \counterR_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counterR_reg[11]_i_1_n_4\,
      O(2) => \counterR_reg[11]_i_1_n_5\,
      O(1) => \counterR_reg[11]_i_1_n_6\,
      O(0) => \counterR_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^m_axis_tdata\(11 downto 8)
    );
\counterR_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[15]_i_1_n_7\,
      Q => \^m_axis_tdata\(12),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[15]_i_1_n_6\,
      Q => \^m_axis_tdata\(13),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[15]_i_1_n_5\,
      Q => \^m_axis_tdata\(14),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[15]_i_1_n_4\,
      Q => \^m_axis_tdata\(15),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterR_reg[11]_i_1_n_0\,
      CO(3) => \counterR_reg[15]_i_1_n_0\,
      CO(2) => \counterR_reg[15]_i_1_n_1\,
      CO(1) => \counterR_reg[15]_i_1_n_2\,
      CO(0) => \counterR_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counterR_reg[15]_i_1_n_4\,
      O(2) => \counterR_reg[15]_i_1_n_5\,
      O(1) => \counterR_reg[15]_i_1_n_6\,
      O(0) => \counterR_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^m_axis_tdata\(15 downto 12)
    );
\counterR_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[19]_i_1_n_7\,
      Q => \^m_axis_tdata\(16),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[19]_i_1_n_6\,
      Q => \^m_axis_tdata\(17),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[19]_i_1_n_5\,
      Q => \^m_axis_tdata\(18),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[19]_i_1_n_4\,
      Q => \^m_axis_tdata\(19),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterR_reg[15]_i_1_n_0\,
      CO(3) => \counterR_reg[19]_i_1_n_0\,
      CO(2) => \counterR_reg[19]_i_1_n_1\,
      CO(1) => \counterR_reg[19]_i_1_n_2\,
      CO(0) => \counterR_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counterR_reg[19]_i_1_n_4\,
      O(2) => \counterR_reg[19]_i_1_n_5\,
      O(1) => \counterR_reg[19]_i_1_n_6\,
      O(0) => \counterR_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^m_axis_tdata\(19 downto 16)
    );
\counterR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[3]_i_1_n_6\,
      Q => \^m_axis_tdata\(1),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[23]_i_1_n_7\,
      Q => \^m_axis_tdata\(20),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[23]_i_1_n_6\,
      Q => \^m_axis_tdata\(21),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[23]_i_1_n_5\,
      Q => \^m_axis_tdata\(22),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[23]_i_1_n_4\,
      Q => \^m_axis_tdata\(23),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterR_reg[19]_i_1_n_0\,
      CO(3) => \counterR_reg[23]_i_1_n_0\,
      CO(2) => \counterR_reg[23]_i_1_n_1\,
      CO(1) => \counterR_reg[23]_i_1_n_2\,
      CO(0) => \counterR_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counterR_reg[23]_i_1_n_4\,
      O(2) => \counterR_reg[23]_i_1_n_5\,
      O(1) => \counterR_reg[23]_i_1_n_6\,
      O(0) => \counterR_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^m_axis_tdata\(23 downto 20)
    );
\counterR_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[27]_i_1_n_7\,
      Q => \^m_axis_tdata\(24),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[27]_i_1_n_6\,
      Q => \^m_axis_tdata\(25),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[27]_i_1_n_5\,
      Q => \^m_axis_tdata\(26),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[27]_i_1_n_4\,
      Q => \^m_axis_tdata\(27),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterR_reg[23]_i_1_n_0\,
      CO(3) => \counterR_reg[27]_i_1_n_0\,
      CO(2) => \counterR_reg[27]_i_1_n_1\,
      CO(1) => \counterR_reg[27]_i_1_n_2\,
      CO(0) => \counterR_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counterR_reg[27]_i_1_n_4\,
      O(2) => \counterR_reg[27]_i_1_n_5\,
      O(1) => \counterR_reg[27]_i_1_n_6\,
      O(0) => \counterR_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^m_axis_tdata\(27 downto 24)
    );
\counterR_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[31]_i_3_n_7\,
      Q => \^m_axis_tdata\(28),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[31]_i_3_n_6\,
      Q => \^m_axis_tdata\(29),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[3]_i_1_n_5\,
      Q => \^m_axis_tdata\(2),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[31]_i_3_n_5\,
      Q => \^m_axis_tdata\(30),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[31]_i_3_n_4\,
      Q => \^m_axis_tdata\(31),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterR_reg[27]_i_1_n_0\,
      CO(3) => \NLW_counterR_reg[31]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \counterR_reg[31]_i_3_n_1\,
      CO(1) => \counterR_reg[31]_i_3_n_2\,
      CO(0) => \counterR_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counterR_reg[31]_i_3_n_4\,
      O(2) => \counterR_reg[31]_i_3_n_5\,
      O(1) => \counterR_reg[31]_i_3_n_6\,
      O(0) => \counterR_reg[31]_i_3_n_7\,
      S(3 downto 0) => \^m_axis_tdata\(31 downto 28)
    );
\counterR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[3]_i_1_n_4\,
      Q => \^m_axis_tdata\(3),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counterR_reg[3]_i_1_n_0\,
      CO(2) => \counterR_reg[3]_i_1_n_1\,
      CO(1) => \counterR_reg[3]_i_1_n_2\,
      CO(0) => \counterR_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counterR_reg[3]_i_1_n_4\,
      O(2) => \counterR_reg[3]_i_1_n_5\,
      O(1) => \counterR_reg[3]_i_1_n_6\,
      O(0) => \counterR_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^m_axis_tdata\(3 downto 1),
      S(0) => \counterR[3]_i_2_n_0\
    );
\counterR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[7]_i_1_n_7\,
      Q => \^m_axis_tdata\(4),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[7]_i_1_n_6\,
      Q => \^m_axis_tdata\(5),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[7]_i_1_n_5\,
      Q => \^m_axis_tdata\(6),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[7]_i_1_n_4\,
      Q => \^m_axis_tdata\(7),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterR_reg[3]_i_1_n_0\,
      CO(3) => \counterR_reg[7]_i_1_n_0\,
      CO(2) => \counterR_reg[7]_i_1_n_1\,
      CO(1) => \counterR_reg[7]_i_1_n_2\,
      CO(0) => \counterR_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counterR_reg[7]_i_1_n_4\,
      O(2) => \counterR_reg[7]_i_1_n_5\,
      O(1) => \counterR_reg[7]_i_1_n_6\,
      O(0) => \counterR_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^m_axis_tdata\(7 downto 4)
    );
\counterR_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[11]_i_1_n_7\,
      Q => \^m_axis_tdata\(8),
      R => \counterR[31]_i_1_n_0\
    );
\counterR_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \counterR_reg[11]_i_1_n_6\,
      Q => \^m_axis_tdata\(9),
      R => \counterR[31]_i_1_n_0\
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(0),
      O => \^m_axis_tdata\(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(10),
      O => \^m_axis_tdata\(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(11),
      O => \^m_axis_tdata\(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(12),
      O => \^m_axis_tdata\(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(13),
      O => \^m_axis_tdata\(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(14),
      O => \^m_axis_tdata\(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(15),
      O => \^m_axis_tdata\(15)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(16),
      O => \^m_axis_tdata\(16)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(17),
      O => \^m_axis_tdata\(17)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(18),
      O => \^m_axis_tdata\(18)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(19),
      O => \^m_axis_tdata\(19)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(1),
      O => \^m_axis_tdata\(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(20),
      O => \^m_axis_tdata\(20)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(21),
      O => \^m_axis_tdata\(21)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(22),
      O => \^m_axis_tdata\(22)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(23),
      O => \^m_axis_tdata\(23)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(24),
      O => \^m_axis_tdata\(24)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(25),
      O => \^m_axis_tdata\(25)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(26),
      O => \^m_axis_tdata\(26)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(27),
      O => \^m_axis_tdata\(27)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(28),
      O => \^m_axis_tdata\(28)
    );
\m_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(29),
      O => \^m_axis_tdata\(29)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(2),
      O => \^m_axis_tdata\(2)
    );
\m_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(30),
      O => \^m_axis_tdata\(30)
    );
\m_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(31),
      O => \^m_axis_tdata\(31)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(3),
      O => \^m_axis_tdata\(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(4),
      O => \^m_axis_tdata\(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(5),
      O => \^m_axis_tdata\(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(6),
      O => \^m_axis_tdata\(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(7),
      O => \^m_axis_tdata\(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(8),
      O => \^m_axis_tdata\(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tdata(9),
      O => \^m_axis_tdata\(9)
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tlast,
      O => \^m_axis_tlast\
    );
packetCounter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_packetCounter0_carry_CO_UNCONNECTED(3),
      CO(2) => \^m_axis_tlast\,
      CO(1) => packetCounter0_carry_n_2,
      CO(0) => packetCounter0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_packetCounter0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => packetCounter0_carry_i_1_n_0,
      S(1) => packetCounter0_carry_i_2_n_0,
      S(0) => packetCounter0_carry_i_3_n_0
    );
packetCounter0_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"94000294"
    )
        port map (
      I0 => \packetCounter_reg__0\(6),
      I1 => framesize(6),
      I2 => packetCounter0_carry_i_4_n_0,
      I3 => framesize(7),
      I4 => \packetCounter_reg__0\(7),
      O => packetCounter0_carry_i_1_n_0
    );
packetCounter0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8002200808800220"
    )
        port map (
      I0 => packetCounter0_carry_i_5_n_0,
      I1 => framesize(5),
      I2 => packetCounter0_carry_i_6_n_0,
      I3 => framesize(4),
      I4 => \packetCounter_reg__0\(5),
      I5 => \packetCounter_reg__0\(4),
      O => packetCounter0_carry_i_2_n_0
    );
packetCounter0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4002100808400210"
    )
        port map (
      I0 => \packetCounter_reg__0\(0),
      I1 => framesize(2),
      I2 => framesize(0),
      I3 => framesize(1),
      I4 => \packetCounter_reg__0\(2),
      I5 => \packetCounter_reg__0\(1),
      O => packetCounter0_carry_i_3_n_0
    );
packetCounter0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => framesize(4),
      I1 => framesize(2),
      I2 => framesize(0),
      I3 => framesize(1),
      I4 => framesize(3),
      I5 => framesize(5),
      O => packetCounter0_carry_i_4_n_0
    );
packetCounter0_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => framesize(3),
      I1 => framesize(1),
      I2 => framesize(0),
      I3 => framesize(2),
      I4 => \packetCounter_reg__0\(3),
      O => packetCounter0_carry_i_5_n_0
    );
packetCounter0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => framesize(2),
      I1 => framesize(0),
      I2 => framesize(1),
      I3 => framesize(3),
      O => packetCounter0_carry_i_6_n_0
    );
\packetCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \packetCounter_reg__0\(0),
      O => \plusOp__0\(0)
    );
\packetCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \packetCounter_reg__0\(0),
      I1 => \packetCounter_reg__0\(1),
      O => \plusOp__0\(1)
    );
\packetCounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \packetCounter_reg__0\(0),
      I1 => \packetCounter_reg__0\(1),
      I2 => \packetCounter_reg__0\(2),
      O => \plusOp__0\(2)
    );
\packetCounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \packetCounter_reg__0\(1),
      I1 => \packetCounter_reg__0\(0),
      I2 => \packetCounter_reg__0\(2),
      I3 => \packetCounter_reg__0\(3),
      O => \plusOp__0\(3)
    );
\packetCounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \packetCounter_reg__0\(2),
      I1 => \packetCounter_reg__0\(0),
      I2 => \packetCounter_reg__0\(1),
      I3 => \packetCounter_reg__0\(3),
      I4 => \packetCounter_reg__0\(4),
      O => \plusOp__0\(4)
    );
\packetCounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \packetCounter_reg__0\(3),
      I1 => \packetCounter_reg__0\(1),
      I2 => \packetCounter_reg__0\(0),
      I3 => \packetCounter_reg__0\(2),
      I4 => \packetCounter_reg__0\(4),
      I5 => \packetCounter_reg__0\(5),
      O => \plusOp__0\(5)
    );
\packetCounter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \packetCounter[7]_i_3_n_0\,
      I1 => \packetCounter_reg__0\(6),
      O => \plusOp__0\(6)
    );
\packetCounter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => \^m_axis_tlast\,
      I1 => tValidR,
      I2 => m_axis_tready,
      I3 => m_axis_aresetn,
      O => \packetCounter[7]_i_1_n_0\
    );
\packetCounter[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \packetCounter[7]_i_3_n_0\,
      I1 => \packetCounter_reg__0\(6),
      I2 => \packetCounter_reg__0\(7),
      O => \plusOp__0\(7)
    );
\packetCounter[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \packetCounter_reg__0\(5),
      I1 => \packetCounter_reg__0\(3),
      I2 => \packetCounter_reg__0\(1),
      I3 => \packetCounter_reg__0\(0),
      I4 => \packetCounter_reg__0\(2),
      I5 => \packetCounter_reg__0\(4),
      O => \packetCounter[7]_i_3_n_0\
    );
\packetCounter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \plusOp__0\(0),
      Q => \packetCounter_reg__0\(0),
      R => \packetCounter[7]_i_1_n_0\
    );
\packetCounter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \plusOp__0\(1),
      Q => \packetCounter_reg__0\(1),
      R => \packetCounter[7]_i_1_n_0\
    );
\packetCounter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \plusOp__0\(2),
      Q => \packetCounter_reg__0\(2),
      R => \packetCounter[7]_i_1_n_0\
    );
\packetCounter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \plusOp__0\(3),
      Q => \packetCounter_reg__0\(3),
      R => \packetCounter[7]_i_1_n_0\
    );
\packetCounter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \plusOp__0\(4),
      Q => \packetCounter_reg__0\(4),
      R => \packetCounter[7]_i_1_n_0\
    );
\packetCounter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \plusOp__0\(5),
      Q => \packetCounter_reg__0\(5),
      R => \packetCounter[7]_i_1_n_0\
    );
\packetCounter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \plusOp__0\(6),
      Q => \packetCounter_reg__0\(6),
      R => \packetCounter[7]_i_1_n_0\
    );
\packetCounter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => counterR0,
      D => \plusOp__0\(7),
      Q => \packetCounter_reg__0\(7),
      R => \packetCounter[7]_i_1_n_0\
    );
sampleGeneratorEnR_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => sampleGeneratorEnR,
      I1 => sampleGeneratorEnR_i_2_n_0,
      I2 => sampleGeneratorEnR_i_3_n_0,
      I3 => m_axis_aresetn,
      O => sampleGeneratorEnR_i_1_n_0
    );
sampleGeneratorEnR_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \afterResetCycleCounterR_reg__0\(2),
      I1 => \afterResetCycleCounterR_reg__0\(3),
      I2 => \afterResetCycleCounterR_reg__0\(5),
      I3 => \afterResetCycleCounterR_reg__0\(1),
      O => sampleGeneratorEnR_i_2_n_0
    );
sampleGeneratorEnR_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \afterResetCycleCounterR_reg__0\(7),
      I1 => \afterResetCycleCounterR_reg__0\(6),
      I2 => \afterResetCycleCounterR_reg__0\(4),
      I3 => \afterResetCycleCounterR_reg__0\(0),
      O => sampleGeneratorEnR_i_3_n_0
    );
sampleGeneratorEnR_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => sampleGeneratorEnR_i_1_n_0,
      Q => sampleGeneratorEnR,
      R => '0'
    );
tValidR_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => tValidR,
      I1 => sampleGeneratorEnR,
      I2 => en,
      I3 => m_axis_aresetn,
      O => tValidR_i_1_n_0
    );
tValidR_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => tValidR_i_1_n_0,
      Q => tValidR,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_generator_v1_0 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    framesize : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_aresetn : in STD_LOGIC;
    en : in STD_LOGIC;
    axi_en : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_generator_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_generator_v1_0 is
begin
sample_generator_v1_0_M_AXIS_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_generator_v1_0_M_AXIS
     port map (
      axi_en => axi_en,
      en => en,
      framesize(7 downto 0) => framesize(7 downto 0),
      m_axis_aclk => m_axis_aclk,
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tlast => s_axis_tlast
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    framesize : in STD_LOGIC_VECTOR ( 7 downto 0 );
    en : in STD_LOGIC;
    axi_en : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_sample_generator_0_0,sample_generator_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sample_generator_v1_0,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_tready\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of m_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXIS_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m_axis_aclk : signal is "XIL_INTERFACENAME M_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_m_axis_aclk, INSERT_VIP 0";
  attribute x_interface_info of m_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXIS_RST RST";
  attribute x_interface_parameter of m_axis_aresetn : signal is "XIL_INTERFACENAME M_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_info of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXIS_CLK CLK";
  attribute x_interface_parameter of s_axis_aclk : signal is "XIL_INTERFACENAME S_AXIS_CLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_m_axis_aclk, INSERT_VIP 0";
  attribute x_interface_info of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXIS_RST RST";
  attribute x_interface_parameter of s_axis_aresetn : signal is "XIL_INTERFACENAME S_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME M_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_m_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M_AXIS TSTRB";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME S_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_m_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S_AXIS TSTRB";
begin
  \^m_axis_tready\ <= m_axis_tready;
  m_axis_tstrb(3) <= \<const1>\;
  m_axis_tstrb(2) <= \<const1>\;
  m_axis_tstrb(1) <= \<const1>\;
  m_axis_tstrb(0) <= \<const1>\;
  s_axis_tready <= \^m_axis_tready\;
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_generator_v1_0
     port map (
      axi_en => axi_en,
      en => en,
      framesize(7 downto 0) => framesize(7 downto 0),
      m_axis_aclk => m_axis_aclk,
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => \^m_axis_tready\,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tlast => s_axis_tlast
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_en,
      I1 => s_axis_tvalid,
      O => m_axis_tvalid
    );
end STRUCTURE;
