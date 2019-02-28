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
--  Port ( );
  port (
    axi_en : out STD_LOGIC;
    en : out STD_LOGIC;
    framesize : out STD_LOGIC_VECTOR ( 7 downto 0 );
	
    M_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tlast : in STD_LOGIC;
    M_AXIS_tready : out STD_LOGIC; -- "a signal that we drive and should be a register that we drive"
    M_AXIS_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tvalid : in STD_LOGIC;
	
    S_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tlast : out STD_LOGIC;
    S_AXIS_tready : in STD_LOGIC;
    S_AXIS_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tvalid : out STD_LOGIC;

    aclk : out STD_LOGIC;
    aresetn : out STD_LOGIC;
  );
end entity sample_generator_testbench;

architecture Behavioral of sample_generator_testbench is
    signal axi_en_s : STD_LOGIC:='0';
    signal en_s : STD_LOGIC:='0';
    signal framesize_s : STD_LOGIC_VECTOR ( 7 downto 0 );
	--master port
    signal M_AXIS_tdata_s : STD_LOGIC_VECTOR ( 31 downto 0 ) := (others => '0');
    signal M_AXIS_tlast_s : STD_LOGIC:='0';
    signal M_AXIS_tready_s : STD_LOGIC:= '0';
    signal M_AXIS_tstrb_s : STD_LOGIC_VECTOR ( 3 downto 0 ) := (others => '0');
    signal M_AXIS_tvalid_s : STD_LOGIC:='0';
	--slave port
    signal S_AXIS_tdata_s : STD_LOGIC_VECTOR ( 31 downto 0 ) := (others => '0');
    signal S_AXIS_tlast_s : STD_LOGIC:='0';
    --S_AXIS_tready_s : STD_LOGIC;
    signal S_AXIS_tstrb_s : STD_LOGIC_VECTOR ( 3 downto 0 ) := (others => '0');
    signal S_AXIS_tvalid_s : STD_LOGIC:='0';
  
    signal aclk_s : STD_LOGIC:='0';
    signal aresetn_s : STD_LOGIC:='1';	
	
	signal start_s : STD_LOGIC:='0';
	signal start_delaycount_s : INTEGER:=0;	
	signal start_delayflag_s : STD_LOGIC:='0';

    signal aclk_scale_s : INTEGER:=0;
    signal aclkedge_s2 : STD_LOGIC:='0';

begin
 FN : process(aclkedge_s2, aresetn_s) 
 begin
   if aresetn_s = '1' then -- start up state of reset if high
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
  end if;    

end process FN;


CLK : process(aclk_s) 
begin
    if aclk_s = '1' then
      if aclk_scale_s > 250 then
	    aclk_scale_s <= 0;
	    aclkedge_s2 <= '1';
	  else 
	    aclk_scale_s <= aclk_scale_s + 1;
	    aclkedge_s2 <= '0';
	  end if;
	end if;
end process CLK;


aresetn <= aresetn_s;

aclk_s <= '1' when aclk_s = '1' and aresetn_s = '0' else '0';


	
axi_en <= axi_en_s;
en <= en_s;
framesize ( 7 downto 0 ) <= framesize_s ( 7 downto 0 );

--master port
M_AXIS_tdata_s <= M_AXIS_tdata;
M_AXIS_tlast_s <= M_AXIS_tlast;
M_AXIS_tready <= M_AXIS_tready_s;
M_AXIS_tstrb_s (3 downto 0) <= M_AXIS_tdata ( 3 downto 0 );
M_AXIS_tvalid_s <= M_AXIS_tvalid;

--slave port
S_AXIS_tdata (31 downto 0) <= S_AXIS_tdata_s ( 31 downto 0 );
S_AXIS_tlast <= S_AXIS_tlast_s;
--S_AXIS_tready_s <= S_AXIS_tready;
S_AXIS_tstrb ( 3 downto 0 ) <= S_AXIS_tstrb_s ( 3 downto 0 );
S_AXIS_tvalid <= S_AXIS_tvalid_s;
  
--misc port
aclk <= aclk_s;
aresetn <= aresetn_s;

end Behavioral;