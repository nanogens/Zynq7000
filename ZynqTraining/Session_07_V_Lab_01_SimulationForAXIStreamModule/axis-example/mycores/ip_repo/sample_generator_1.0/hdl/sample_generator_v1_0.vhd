library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sample_generator_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S_AXIS
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface M_AXIS
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M_AXIS_START_COUNT	: integer	:= 32
	);
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
		m_axis_aclk	: out std_logic;
		m_axis_aresetn	: in std_logic;
		m_axis_tvalid	: out std_logic;
		m_axis_tdata	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		m_axis_tstrb	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m_axis_tlast	: out std_logic;
		m_axis_tready	: in std_logic
	);
end sample_generator_v1_0;

architecture arch_imp of sample_generator_v1_0 is

	-- component declaration
	component sample_generator_v1_0_S_AXIS is
		generic (
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		--AXI_EN : in std_logic;
		
		S_AXIS_ACLK	: in std_logic;
		S_AXIS_ARESETN	: in std_logic;
		S_AXIS_TREADY	: out std_logic;
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		S_AXIS_TLAST	: in std_logic;
		S_AXIS_TVALID	: in std_logic
		);
	end component sample_generator_v1_0_S_AXIS;

	component sample_generator_v1_0_M_AXIS is
		generic (
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M_START_COUNT	: integer	:= 32
		);
		port (		
	    FRAMESIZE : in std_logic_vector((C_M_AXIS_TDATA_WIDTH/4)-1 downto 0);

		EN : in std_logic; 		
		
		M_AXIS_ACLK	: in std_logic;
		M_AXIS_ARESETN	: in std_logic;
		M_AXIS_TVALID	: out std_logic;
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		M_AXIS_TLAST	: out std_logic;
		M_AXIS_TREADY	: in std_logic
		);
	end component sample_generator_v1_0_M_AXIS;
	
    signal m_axis_tvalidW : std_logic := '0';
    signal m_axis_tdataW : std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0); -- need to set this to all zeros for instantiation if its not already being automatially done
	signal m_axis_tstrbW : std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0); -- need to set this to all zeros for instantiation if its not already being automatially done
	signal m_axis_tlastW : std_logic := '0';
	
begin

-- Instantiation of Axi Bus Interface S_AXIS
--sample_generator_v1_0_S_AXIS_inst : sample_generator_v1_0_S_AXIS
--	generic map (
--		C_S_AXIS_TDATA_WIDTH	=> C_S_AXIS_TDATA_WIDTH
--	)
--	port map (
--	    EN => en, -- MT    
--		S_AXIS_ACLK	=> s_axis_aclk,
--		S_AXIS_ARESETN	=> s_axis_aresetn,
--		S_AXIS_TREADY	=> s_axis_tready,
--		S_AXIS_TDATA	=> s_axis_tdata,
--		S_AXIS_TSTRB	=> s_axis_tstrb,
--		S_AXIS_TLAST	=> s_axis_tlast,
--		S_AXIS_TVALID	=> s_axis_tvalid
--	);

-- Instantiation of Axi Bus Interface M_AXIS
sample_generator_v1_0_M_AXIS_inst : sample_generator_v1_0_M_AXIS
	generic map (
		C_M_AXIS_TDATA_WIDTH	=> C_M_AXIS_TDATA_WIDTH,
		C_M_START_COUNT	=> C_M_AXIS_START_COUNT
	)
	port map (
	    FRAMESIZE => framesize, 
		--AXI_EN => axi_en,
		EN => en, 
		
		M_AXIS_ACLK	=> m_axis_aclk,
		M_AXIS_ARESETN	=> m_axis_aresetn,
		M_AXIS_TVALID	=> m_axis_tvalid,
		M_AXIS_TDATA	=> m_axis_tdata,
		M_AXIS_TSTRB	=> m_axis_tstrb,
		M_AXIS_TLAST	=> m_axis_tlast,
		M_AXIS_TREADY	=> m_axis_tready
	);

	-- Add user logic here
    -- We add the multiplexer here.
	
	m_axis_tvalid <= s_axis_tvalid when axi_en = '1' else m_axis_tvalidW;	
	m_axis_tdata <= s_axis_tdata when axi_en = '1' else m_axis_tdataW;	
	m_axis_tstrb <= s_axis_tstrb when axi_en = '1' else m_axis_tstrbW;	
	m_axis_tlast <= s_axis_tlast when axi_en = '1' else m_axis_tlastW;		
	
	s_axis_tready <= m_axis_tready;  -- master tready tells the slave it is ready

	-- clock
	m_axis_aclk <= s_axis_aclk;

end arch_imp;
