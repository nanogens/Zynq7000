library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sample_generator_v1_0_M_AXIS is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		-- Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.
		C_M_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here
		FRAMESIZE	: in std_logic_vector(7 downto 0);
		EN 				: in std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global ports
		M_AXIS_ACLK	: in std_logic;
		-- 
		M_AXIS_ARESETN	: in std_logic;
		-- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		M_AXIS_TVALID	: out std_logic;
		-- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		-- TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- TLAST indicates the boundary of a packet.
		M_AXIS_TLAST	: out std_logic;
		-- TREADY indicates that the slave can accept a transfer in the current cycle.
		M_AXIS_TREADY	: in std_logic
	);
end sample_generator_v1_0_M_AXIS;

architecture implementation of sample_generator_v1_0_M_AXIS is
	MT_STUFF : process(M_AXIS_ACLK)
	
	-- to run a counter (main program)
    signal counterR : std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
	
	-- to count the number of clock cycles after reset
    signal sampleGeneratorEnR : std_logic := 0;
	signal afterResetCycleCounterR : std_logic_vector(7 downto 0);
	
	-- to set tvalid
	signal tValidR : std_logic := 0;
		
	
	-- to set tlast
	signal packetCounter : std_logic_vector(7 downto 0);

	begin
		-- counterR circuit
		if rising_edge(M_AXIS_ACLK) then
		  if M_AXIS_ARESETN == 0 then
			counterR <= 0;
		  end if;
		else
		  if M_AXIS_TVALID == 1 AND M_AXIS_TREADY == 1 then
		    counterR <= counterR + 1;
		  end if;
		end if;
		----------------------------------------------
		
		-- circuit for initializing module after X number of clock cycles
		if rising_edge(M_AXIS_ACLK) then
		  if M_AXIS_ARESETN == 0 then
		    sampleGeneratorEnR <= 0;
			afterResetCycleCounterR <= 0;
		  end if;
		elif sampleGeneratorEnR == 0 then
		    afterResetCycleCounterR = afterResetCycleCounterR + 1;
			if afterResetCycleCounterR == C_M_START_COUNT then
				sampleGeneratorEnR <= 1;
            end if;
		end if;		
		----------------------------------------------
		
		-- circuit for tValidR
		if rising_edge(M_AXIS_ACLK) then
		  if M_AXIS_ARESETN == 0 then
		    tValidR <= 0;
		  end if;
		else
            if EN == 0 then
			    tValidR <= 0;
			elif sampleGeneratorEnR == 1 then
				tValidR <= 1;
			end if;
		end if;		
		----------------------------------------------

		-- circuit for tlast 
		if rising_edge(M_AXIS_ACLK) then
		  if M_AXIS_ARESETN == 0 then
		    packetCounter <= 0;
		  end if;
		else
		  if M_AXIS_TVALID == 1 AND M_AXIS_TREADY == 1 then

			if packetCounter == FRAMESIZE - 1 then
			  packetCounter <= 0;
			else
			  packetCounter <= packetCounter + 1;
			end if;
		  end if;
		end if;		
		----------------------------------------------		
		
	end process MT_STUFF;
	
	
	M_AXIS_TDATA <= counterR; -- connected, indicating the end of the frame/packet of data
	M_AXIS_TSTRB <= ((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0) => '1';  -- (others => '1');  -- he set only C_M_AXIS_TDATA_WIDTH/8 bits to '1'
	if packetCounter == FRAMESIZE - 1 then
	  M_AXIS_TLAST <= 1;
	else
	  M_AXIS_TLAST <= 0;
	end if
	
end implementation;
