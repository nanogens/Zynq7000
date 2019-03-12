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
        tb_framesize : in std_logic_vector((C_M_AXIS_TDATA_WIDTH/4)-1 downto 0);
		tb_en : in std_logic; -- MT
		tb_axi_en : in std_logic; -- MT
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Ports of Axi Slave Bus Interface S_AXIS
		tb_s_axis_aclk	: out std_logic; 
		tb_s_axis_aresetn	: out std_logic;
		tb_s_axis_tready	: in std_logic;
		tb_s_axis_tdata	: out std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		tb_s_axis_tstrb	: out std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		tb_s_axis_tlast	: out std_logic;
		tb_s_axis_tvalid	: out std_logic;

		-- Ports of Axi Master Bus Interface M_AXIS
		tb_m_axis_aclk	: out std_logic;
		tb_m_axis_aresetn	: out std_logic;
		tb_m_axis_tvalid	: in std_logic;
		tb_m_axis_tdata	: in std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		tb_m_axis_tstrb	: in std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		tb_m_axis_tlast	: in std_logic;
		tb_m_axis_tready	: out std_logic
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
	

    constant clk_period : time := 10 ns;	
	
component design_1_wrapper is
    port(	
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
end component;

begin


design_1_wrapper_X : design_1_wrapper

    port map
	(
      framesize ((C_M_AXIS_TDATA_WIDTH/4)-1 downto 0) => framesize_s ((C_M_AXIS_TDATA_WIDTH/4)-1 downto 0),
      en => en_s,
      axi_en => axi_en_s,
	
	  s_axis_aresetn => s_axis_aresetn_s,
	  S_AXIS_tready => s_axis_tready_s, 
      S_AXIS_tdata(C_S_AXIS_TDATA_WIDTH-1 downto 0) => s_axis_tdata_s(C_S_AXIS_TDATA_WIDTH-1 downto 0),
      S_AXIS_tstrb((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0) => s_axis_tstrb_s((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0),
	  S_AXIS_tlast => s_axis_tlast_s,
	  S_AXIS_tvalid => s_axis_tvalid_s,

	  m_axis_aclk => m_axis_aclk_s,
	  M_AXIS_tvalid => m_axis_tvalid_s,
	  M_AXIS_tdata (C_M_AXIS_TDATA_WIDTH-1 downto 0) => m_axis_tdata_s(C_M_AXIS_TDATA_WIDTH-1 downto 0),
	  M_AXIS_tstrb ((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0) => m_axis_tstrb_s((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0),
	  M_AXIS_tlast => m_axis_tlast_s,
	  M_AXIS_tready => m_axis_tready_s		
	);

 FN : process(aclkedge_s2) 
 begin 
  -- initialization of values
  if aclkedge_s2'event and aclkedge_s2 = '1' and m_axis_aresetn_s = '0' then

    axi_en_s <= '0';
    framesize_s <= x"10";
  
    S_AXIS_tdata_s <= (others => '0');
    S_AXIS_tlast_s <= '0';
    S_AXIS_tstrb_s <= (others => '0');
    S_AXIS_tvalid_s <= '0';
	
	en_s <= '1';
  end if;    

end process FN;


CLK_SCALE : process(m_axis_aclk_s) 
begin
    if m_axis_aclk_s = '1' then
      aclk_scale_s <= aclk_scale_s + 1;
      if aclk_scale_s > 250 then
	    aclk_scale_s <= 0;
	    aclkedge_s2 <= not aclkedge_s2;
	  end if;
	end if;
end process CLK_SCALE;

 -- CLOCK process definitions( clock with 50% duty cycle is generated here.
CLOCK : process
begin
    m_axis_aclk_s <= '0';
    wait for clk_period/2;  --for 0.5 ns signal is '0'.
    m_axis_aclk_s <= '1';
    wait for clk_period/2;  --for next 0.5 ns signal is '1'.

	m_axis_aresetn_s <= '0';
end process;

end Behavioral;





