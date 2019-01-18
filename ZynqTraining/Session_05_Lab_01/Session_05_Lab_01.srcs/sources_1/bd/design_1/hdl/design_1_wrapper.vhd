--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Thu Jan 17 21:07:47 2019
--Host        : 63L-MT8825 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    ACLK : in STD_LOGIC;
    ARESETN_I : in STD_LOGIC;
    ARESETN_P : in STD_LOGIC;
    M_AXI_PORT_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_PORT_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_PORT_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_PORT_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_PORT_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_PORT_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_PORT_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_PORT_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_PORT_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_PORT_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_PORT_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_PORT_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_PORT_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_PORT_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_PORT_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_PORT_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_PORT_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_PORT_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_PORT_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_PORT_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_PORT_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_PORT_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_PORT_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_PORT_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_PORT_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_PORT_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_PORT_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_PORT_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_PORT_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_PORT_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_PORT_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_PORT_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_PORT_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    interrupt : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    ACLK : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    M_AXI_PORT_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_PORT_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_PORT_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_PORT_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_PORT_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_PORT_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_PORT_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_PORT_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_PORT_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_PORT_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_PORT_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_PORT_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_PORT_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_PORT_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_PORT_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_PORT_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_PORT_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_PORT_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_PORT_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_PORT_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    S_AXI_PORT_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_PORT_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_PORT_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_PORT_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_PORT_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_PORT_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_PORT_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_PORT_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_PORT_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_PORT_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_PORT_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_PORT_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_PORT_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_PORT_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_PORT_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_PORT_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_PORT_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_PORT_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    ARESETN_P : in STD_LOGIC;
    ARESETN_I : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      ACLK => ACLK,
      ARESETN_I => ARESETN_I,
      ARESETN_P => ARESETN_P,
      M_AXI_PORT_araddr(31 downto 0) => M_AXI_PORT_araddr(31 downto 0),
      M_AXI_PORT_arburst(1 downto 0) => M_AXI_PORT_arburst(1 downto 0),
      M_AXI_PORT_arcache(3 downto 0) => M_AXI_PORT_arcache(3 downto 0),
      M_AXI_PORT_arid(1 downto 0) => M_AXI_PORT_arid(1 downto 0),
      M_AXI_PORT_arlen(7 downto 0) => M_AXI_PORT_arlen(7 downto 0),
      M_AXI_PORT_arlock(0) => M_AXI_PORT_arlock(0),
      M_AXI_PORT_arprot(2 downto 0) => M_AXI_PORT_arprot(2 downto 0),
      M_AXI_PORT_arqos(3 downto 0) => M_AXI_PORT_arqos(3 downto 0),
      M_AXI_PORT_arready(0) => M_AXI_PORT_arready(0),
      M_AXI_PORT_arregion(3 downto 0) => M_AXI_PORT_arregion(3 downto 0),
      M_AXI_PORT_arsize(2 downto 0) => M_AXI_PORT_arsize(2 downto 0),
      M_AXI_PORT_arvalid(0) => M_AXI_PORT_arvalid(0),
      M_AXI_PORT_awaddr(31 downto 0) => M_AXI_PORT_awaddr(31 downto 0),
      M_AXI_PORT_awburst(1 downto 0) => M_AXI_PORT_awburst(1 downto 0),
      M_AXI_PORT_awcache(3 downto 0) => M_AXI_PORT_awcache(3 downto 0),
      M_AXI_PORT_awid(1 downto 0) => M_AXI_PORT_awid(1 downto 0),
      M_AXI_PORT_awlen(7 downto 0) => M_AXI_PORT_awlen(7 downto 0),
      M_AXI_PORT_awlock(0) => M_AXI_PORT_awlock(0),
      M_AXI_PORT_awprot(2 downto 0) => M_AXI_PORT_awprot(2 downto 0),
      M_AXI_PORT_awqos(3 downto 0) => M_AXI_PORT_awqos(3 downto 0),
      M_AXI_PORT_awready(0) => M_AXI_PORT_awready(0),
      M_AXI_PORT_awregion(3 downto 0) => M_AXI_PORT_awregion(3 downto 0),
      M_AXI_PORT_awsize(2 downto 0) => M_AXI_PORT_awsize(2 downto 0),
      M_AXI_PORT_awvalid(0) => M_AXI_PORT_awvalid(0),
      M_AXI_PORT_bid(1 downto 0) => M_AXI_PORT_bid(1 downto 0),
      M_AXI_PORT_bready(0) => M_AXI_PORT_bready(0),
      M_AXI_PORT_bresp(1 downto 0) => M_AXI_PORT_bresp(1 downto 0),
      M_AXI_PORT_bvalid(0) => M_AXI_PORT_bvalid(0),
      M_AXI_PORT_rdata(31 downto 0) => M_AXI_PORT_rdata(31 downto 0),
      M_AXI_PORT_rid(1 downto 0) => M_AXI_PORT_rid(1 downto 0),
      M_AXI_PORT_rlast(0) => M_AXI_PORT_rlast(0),
      M_AXI_PORT_rready(0) => M_AXI_PORT_rready(0),
      M_AXI_PORT_rresp(1 downto 0) => M_AXI_PORT_rresp(1 downto 0),
      M_AXI_PORT_rvalid(0) => M_AXI_PORT_rvalid(0),
      M_AXI_PORT_wdata(31 downto 0) => M_AXI_PORT_wdata(31 downto 0),
      M_AXI_PORT_wlast(0) => M_AXI_PORT_wlast(0),
      M_AXI_PORT_wready(0) => M_AXI_PORT_wready(0),
      M_AXI_PORT_wstrb(3 downto 0) => M_AXI_PORT_wstrb(3 downto 0),
      M_AXI_PORT_wvalid(0) => M_AXI_PORT_wvalid(0),
      S_AXI_PORT_araddr(31 downto 0) => S_AXI_PORT_araddr(31 downto 0),
      S_AXI_PORT_arburst(1 downto 0) => S_AXI_PORT_arburst(1 downto 0),
      S_AXI_PORT_arcache(3 downto 0) => S_AXI_PORT_arcache(3 downto 0),
      S_AXI_PORT_arid(1 downto 0) => S_AXI_PORT_arid(1 downto 0),
      S_AXI_PORT_arlen(7 downto 0) => S_AXI_PORT_arlen(7 downto 0),
      S_AXI_PORT_arlock(0) => S_AXI_PORT_arlock(0),
      S_AXI_PORT_arprot(2 downto 0) => S_AXI_PORT_arprot(2 downto 0),
      S_AXI_PORT_arqos(3 downto 0) => S_AXI_PORT_arqos(3 downto 0),
      S_AXI_PORT_arready(0) => S_AXI_PORT_arready(0),
      S_AXI_PORT_arsize(2 downto 0) => S_AXI_PORT_arsize(2 downto 0),
      S_AXI_PORT_arvalid(0) => S_AXI_PORT_arvalid(0),
      S_AXI_PORT_awaddr(31 downto 0) => S_AXI_PORT_awaddr(31 downto 0),
      S_AXI_PORT_awburst(1 downto 0) => S_AXI_PORT_awburst(1 downto 0),
      S_AXI_PORT_awcache(3 downto 0) => S_AXI_PORT_awcache(3 downto 0),
      S_AXI_PORT_awid(1 downto 0) => S_AXI_PORT_awid(1 downto 0),
      S_AXI_PORT_awlen(7 downto 0) => S_AXI_PORT_awlen(7 downto 0),
      S_AXI_PORT_awlock(0) => S_AXI_PORT_awlock(0),
      S_AXI_PORT_awprot(2 downto 0) => S_AXI_PORT_awprot(2 downto 0),
      S_AXI_PORT_awqos(3 downto 0) => S_AXI_PORT_awqos(3 downto 0),
      S_AXI_PORT_awready(0) => S_AXI_PORT_awready(0),
      S_AXI_PORT_awsize(2 downto 0) => S_AXI_PORT_awsize(2 downto 0),
      S_AXI_PORT_awvalid(0) => S_AXI_PORT_awvalid(0),
      S_AXI_PORT_bid(1 downto 0) => S_AXI_PORT_bid(1 downto 0),
      S_AXI_PORT_bready(0) => S_AXI_PORT_bready(0),
      S_AXI_PORT_bresp(1 downto 0) => S_AXI_PORT_bresp(1 downto 0),
      S_AXI_PORT_bvalid(0) => S_AXI_PORT_bvalid(0),
      S_AXI_PORT_rdata(31 downto 0) => S_AXI_PORT_rdata(31 downto 0),
      S_AXI_PORT_rid(1 downto 0) => S_AXI_PORT_rid(1 downto 0),
      S_AXI_PORT_rlast(0) => S_AXI_PORT_rlast(0),
      S_AXI_PORT_rready(0) => S_AXI_PORT_rready(0),
      S_AXI_PORT_rresp(1 downto 0) => S_AXI_PORT_rresp(1 downto 0),
      S_AXI_PORT_rvalid(0) => S_AXI_PORT_rvalid(0),
      S_AXI_PORT_wdata(31 downto 0) => S_AXI_PORT_wdata(31 downto 0),
      S_AXI_PORT_wlast(0) => S_AXI_PORT_wlast(0),
      S_AXI_PORT_wready(0) => S_AXI_PORT_wready(0),
      S_AXI_PORT_wstrb(3 downto 0) => S_AXI_PORT_wstrb(3 downto 0),
      S_AXI_PORT_wvalid(0) => S_AXI_PORT_wvalid(0),
      UART_rxd => UART_rxd,
      UART_txd => UART_txd,
      interrupt => interrupt
    );
end STRUCTURE;
