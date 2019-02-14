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
    axi_en : in STD_LOGIC = '0';
    en : in STD_LOGIC;
    framesize : in STD_LOGIC_VECTOR ( 7 downto 0 );
	
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tlast : out STD_LOGIC = '0';
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tvalid : out STD_LOGIC;
	
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tvalid : in STD_LOGIC;

    m_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC
  );
end sample_generator_testbench;

architecture Behavioral of sample_generator_testbench is
    signal axi_en_s : STD_LOGIC = x"0A";
    signal en_s : STD_LOGIC;
    signal framesize_s : STD_LOGIC_VECTOR ( 7 downto 0 );
	--master port
    signal M_AXIS_tdata_s : STD_LOGIC_VECTOR ( 31 downto 0 ) = (others => '0');
    signal M_AXIS_tlast_s : STD_LOGIC = '0';
    --M_AXIS_tready_s : STD_LOGIC = '0';
    signal M_AXIS_tstrb_s : STD_LOGIC_VECTOR ( 3 downto 0 ) = (others => '0');
    signal M_AXIS_tvalid_s : STD_LOGIC = '0';
	--slave port
    signal S_AXIS_tdata_s : STD_LOGIC_VECTOR ( 31 downto 0 );
    signal S_AXIS_tlast_s : STD_LOGIC = '0';
    --S_AXIS_tready_s : STD_LOGIC;
    signal S_AXIS_tstrb_s : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal S_AXIS_tvalid_s : STD_LOGIC  = '0';
  
    signal m_axis_aclk_s : STD_LOGIC = '0';
    signal s_axis_aresetn_s : STD_LOGIC;
	
	signal clock_scalar : STD_LOGIC = 
begin

end Behavioral;

m_axis_aclk_s <= '1' when m_axis_aclk = '1' else '0';
	
axi_en <= axi_en_s;
en <= en_s;
framesize <= framesize_s;

--master port
M_AXIS_tdata <= M_AXIS_tdata_s;
M_AXIS_tlast <= M_AXIS_tlast_s;
M_AXIS_tready <= M_AXIS_tready_s;
M_AXIS_tstrb (3 downto 0) <= M_AXIS_tdata_s ( 3 downto 0 );
M_AXIS_tvalid <= M_AXIS_tvalid_s;

--slave port
S_AXIS_tdata (31 downto 0) <= S_AXIS_tdata_s ( 31 downto 0 );
S_AXIS_tlast <= S_AXIS_tlast_s;
S_AXIS_tready <= S_AXIS_tready_s;
S_AXIS_tstrb ( 3 downto 0 ) <= S_AXIS_tstrb_s;
S_AXIS_tvalid <= S_AXIS_tvalid_s;
  
m_axis_aclk <= m_axis_aclk_s;
s_axis_aresetn <= s_axis_aresetn_s;