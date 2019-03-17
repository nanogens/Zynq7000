--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Sun Mar 17 19:35:17 2019
--Host        : 63L-MT8825 running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tvalid : in STD_LOGIC;
    axi_en : in STD_LOGIC;
    en : in STD_LOGIC;
    framesize : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_sample_generator_0_0 is
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
  end component design_1_sample_generator_0_0;
  signal S_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXIS_1_TLAST : STD_LOGIC;
  signal S_AXIS_1_TREADY : STD_LOGIC;
  signal S_AXIS_1_TSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXIS_1_TVALID : STD_LOGIC;
  signal axi_en_1 : STD_LOGIC;
  signal en_1 : STD_LOGIC;
  signal framesize_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m_axis_aclk_1 : STD_LOGIC;
  signal s_axis_aresetn_1 : STD_LOGIC;
  signal sample_generator_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sample_generator_0_M_AXIS_TLAST : STD_LOGIC;
  signal sample_generator_0_M_AXIS_TREADY : STD_LOGIC;
  signal sample_generator_0_M_AXIS_TSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sample_generator_0_M_AXIS_TVALID : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of M_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of M_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of S_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_INFO of S_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.M_AXIS_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axis_aclk : signal is "XIL_INTERFACENAME CLK.M_AXIS_ACLK, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET s_axis_aresetn, CLK_DOMAIN design_1_m_axis_aclk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXIS_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axis_aresetn : signal is "XIL_INTERFACENAME RST.S_AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of M_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of M_AXIS_tdata : signal is "XIL_INTERFACENAME M_AXIS, CLK_DOMAIN design_1_m_axis_aclk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M_AXIS_tstrb : signal is "xilinx.com:interface:axis:1.0 M_AXIS TSTRB";
  attribute X_INTERFACE_INFO of S_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of S_AXIS_tdata : signal is "XIL_INTERFACENAME S_AXIS, CLK_DOMAIN design_1_m_axis_aclk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_tstrb : signal is "xilinx.com:interface:axis:1.0 S_AXIS TSTRB";
begin
  M_AXIS_tdata(31 downto 0) <= sample_generator_0_M_AXIS_TDATA(31 downto 0);
  M_AXIS_tlast <= sample_generator_0_M_AXIS_TLAST;
  M_AXIS_tstrb(3 downto 0) <= sample_generator_0_M_AXIS_TSTRB(3 downto 0);
  M_AXIS_tvalid <= sample_generator_0_M_AXIS_TVALID;
  S_AXIS_1_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  S_AXIS_1_TLAST <= S_AXIS_tlast;
  S_AXIS_1_TSTRB(3 downto 0) <= S_AXIS_tstrb(3 downto 0);
  S_AXIS_1_TVALID <= S_AXIS_tvalid;
  S_AXIS_tready <= S_AXIS_1_TREADY;
  axi_en_1 <= axi_en;
  en_1 <= en;
  framesize_1(7 downto 0) <= framesize(7 downto 0);
  m_axis_aclk_1 <= m_axis_aclk;
  s_axis_aresetn_1 <= s_axis_aresetn;
  sample_generator_0_M_AXIS_TREADY <= M_AXIS_tready;
sample_generator_0: component design_1_sample_generator_0_0
     port map (
      axi_en => axi_en_1,
      en => en_1,
      framesize(7 downto 0) => framesize_1(7 downto 0),
      m_axis_aclk => m_axis_aclk_1,
      m_axis_aresetn => s_axis_aresetn_1,
      m_axis_tdata(31 downto 0) => sample_generator_0_M_AXIS_TDATA(31 downto 0),
      m_axis_tlast => sample_generator_0_M_AXIS_TLAST,
      m_axis_tready => sample_generator_0_M_AXIS_TREADY,
      m_axis_tstrb(3 downto 0) => sample_generator_0_M_AXIS_TSTRB(3 downto 0),
      m_axis_tvalid => sample_generator_0_M_AXIS_TVALID,
      s_axis_aclk => m_axis_aclk_1,
      s_axis_aresetn => s_axis_aresetn_1,
      s_axis_tdata(31 downto 0) => S_AXIS_1_TDATA(31 downto 0),
      s_axis_tlast => S_AXIS_1_TLAST,
      s_axis_tready => S_AXIS_1_TREADY,
      s_axis_tstrb(3 downto 0) => S_AXIS_1_TSTRB(3 downto 0),
      s_axis_tvalid => S_AXIS_1_TVALID
    );
end STRUCTURE;
