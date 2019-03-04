----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2019 09:35:12 PM
-- Design Name: 
-- Module Name: sample_generator_testbench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sample_generator_testbench is
	generic (
		-- Parameters of Axi Slave Bus Interface S_AXIS
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface M_AXIS
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M_AXIS_START_COUNT	: integer	:= 32
	);
--  Port ( );
	port (
		-- Users to add ports here
        framesize : in std_logic_vector((C_M_AXIS_TDATA_WIDTH/4)-1 downto 0);
		en : in std_logic; -- MT
		axi_en : in std_logic; -- MT
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Ports of Axi Slave Bus Interface S_AXIS
		s_axis_aclk	: in std_logic; 
		s_axis_aresetn	: in std_logic;
		s_axis_tready	: out std_logic;
		s_axis_tdata	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		s_axis_tstrb	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s_axis_tlast	: in std_logic;
		s_axis_tvalid	: in std_logic;

		-- Ports of Axi Master Bus Interface M_AXIS
		m_axis_aclk	: in std_logic;
		m_axis_aresetn	: in std_logic;
		m_axis_tvalid	: out std_logic;
		m_axis_tdata	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		m_axis_tstrb	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m_axis_tlast	: out std_logic;
		m_axis_tready	: in std_logic
	);

end entity sample_generator_testbench;

architecture Behavioral of sample_generator_testbench is
    --general signals
    signal framesize_s : STD_LOGIC_VECTOR ((C_M_AXIS_TDATA_WIDTH/4)-1 downto 0);
	signal en_s : STD_LOGIC:='0';
    signal axi_en_s : STD_LOGIC:='0';
	
	--slave port
	signal s_axis_aclk_s : STD_LOGIC:='0';
	signal s_axis_aresetn_s : STD_LOGIC:='0';
	signal s_axis_tready_s : STD_LOGIC:='0';	
    signal s_axis_tdata_s : STD_LOGIC_VECTOR (C_S_AXIS_TDATA_WIDTH-1 downto 0);
    signal s_axis_tstrb_s : STD_LOGIC_VECTOR ((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
    signal s_axis_tlast_s : STD_LOGIC:='0';
    signal s_axis_tvalid_s : STD_LOGIC:='0';	

	--master port
    signal m_axis_aclk_s : STD_LOGIC:='0';
    signal m_axis_aresetn_s : STD_LOGIC:='1';	
    signal m_axis_tvalid_s : STD_LOGIC:='0';	
    signal m_axis_tdata_s : STD_LOGIC_VECTOR (C_S_AXIS_TDATA_WIDTH-1 downto 0);
    signal m_axis_tstrb_s : STD_LOGIC_VECTOR ((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);	
    signal m_axis_tlast_s : STD_LOGIC:='0';
    signal m_axis_tready_s : STD_LOGIC:= '0';

	-- Our signals
	signal start_s : STD_LOGIC:='0';
	signal start_delaycount_s : INTEGER:=0;	
	signal start_delayflag_s : STD_LOGIC:='0';
    signal aclk_scale_s : INTEGER:=0;
    signal aclkedge_s2 : STD_LOGIC:='0';
	
	
component sample_generator_v1_0 is
    port(	
		-- Users to add ports here
        framesize : in std_logic_vector((C_M_AXIS_TDATA_WIDTH/4)-1 downto 0);
		en : in std_logic; -- MT
		axi_en : in std_logic; -- MT
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Ports of Axi Slave Bus Interface S_AXIS
		s_axis_aclk	: in std_logic; 
		s_axis_aresetn	: in std_logic;
		s_axis_tready	: out std_logic;
		s_axis_tdata	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		s_axis_tstrb	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s_axis_tlast	: in std_logic;
		s_axis_tvalid	: in std_logic;

		-- Ports of Axi Master Bus Interface M_AXIS
		m_axis_aclk	: in std_logic;
		m_axis_aresetn	: in std_logic;
		m_axis_tvalid	: out std_logic;
		m_axis_tdata	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		m_axis_tstrb	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m_axis_tlast	: out std_logic;
		m_axis_tready	: in std_logic
	);
end component;

begin


sample_generator_v1_0_X : sample_generator_v1_0

    port map
	(
      framesize ((C_M_AXIS_TDATA_WIDTH/4)-1 downto 0) => framesize_s ((C_M_AXIS_TDATA_WIDTH/4)-1 downto 0),
      en => en_s,
      axi_en => axi_en_s,

	  s_axis_aclk => s_axis_aclk_s, 	
	  s_axis_aresetn => s_axis_aresetn_s,
	  s_axis_tready => s_axis_tready_s, 
      s_axis_tdata(C_S_AXIS_TDATA_WIDTH-1 downto 0) => s_axis_tdata_s(C_S_AXIS_TDATA_WIDTH-1 downto 0),
      s_axis_tstrb((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0) => s_axis_tstrb_s((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0),
	  s_axis_tlast => s_axis_tlast_s,
	  s_axis_tvalid => s_axis_tvalid_s,

	  m_axis_aclk => m_axis_aclk_s,
	  m_axis_aresetn => m_axis_aresetn_s,
	  m_axis_tvalid => m_axis_tvalid_s,
	  m_axis_tdata (C_M_AXIS_TDATA_WIDTH-1 downto 0) => m_axis_tdata_s(C_M_AXIS_TDATA_WIDTH-1 downto 0),
	  m_axis_tstrb ((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0) => m_axis_tstrb_s((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0),
	  m_axis_tlast => m_axis_tlast_s,
	  m_axis_tready => m_axis_tready_s		
	);

 FN : process(aclkedge_s2, s_axis_aresetn_s) 
 begin
   if s_axis_aresetn_s = '1' then -- start up state of reset if high
    start_delaycount_s <= 0;
	start_delayflag_s <= '0';
  end if;
  
  if aclkedge_s2'event and aclkedge_s2 = '1' and start_delayflag_s = '0' then
	if start_delaycount_s = 255 then	
	    start_delayflag_s <= '1';
	else
        start_delaycount_s <= start_delaycount_s + 1;	
	end if;
  end if; 
 
  -- initialization of values
  if start_delayflag_s = '1' then

    axi_en_s <= '0';
    framesize_s <= x"10";
  
    S_AXIS_tdata_s <= (others => '0');
    S_AXIS_tlast_s <= '0';
    S_AXIS_tstrb_s <= (others => '0');
    S_AXIS_tvalid_s <= '0';
	
	en_s <= '1';
  end if;    

end process FN;


CLK : process(s_axis_aclk_s) 
begin
    if s_axis_aclk_s = '1' then
      if aclk_scale_s > 250 then
	    aclk_scale_s <= 0;
	    aclkedge_s2 <= '1';
	  else 
	    aclk_scale_s <= aclk_scale_s + 1;
	    aclkedge_s2 <= '0';
	  end if;
	end if;
end process CLK;

end Behavioral;