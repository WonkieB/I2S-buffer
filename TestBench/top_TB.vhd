library ieee;
use ieee.STD_LOGIC_SIGNED.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.VITAL_Timing.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

-- Add your library and packages declaration here ...

entity top_tb is
end top_tb;

architecture TB_ARCHITECTURE of top_tb is
	-- Component declaration of the tested unit
	component top
		port(
			CLK : in STD_LOGIC;
			CLR : in STD_LOGIC;
			--LOW_ENABLE : in STD_LOGIC;
			MID_ENABLE : in STD_LOGIC;
			--HIGH_ENABLE : in STD_LOGIC;
			DataIn : in STD_LOGIC;
			DataOut : out STD_LOGIC;
			LRCK_o : out STD_LOGIC;
			MCLK : out STD_LOGIC;
			SCLK_o : out STD_LOGIC;
			LOAD_o : out STD_LOGIC );
	end component;
	
	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal CLK : STD_LOGIC;
	signal CLR : STD_LOGIC;
	signal DataIn : STD_LOGIC;
	--signal LOW_ENABLE : STD_LOGIC;
	signal MID_ENABLE : STD_LOGIC;
	--signal HIGH_ENABLE : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal DataOut : STD_LOGIC;
	signal LRCK_o : STD_LOGIC;
	signal MCLK : STD_LOGIC;
	signal SCLK_o : STD_LOGIC;
	signal LOAD_o : STD_LOGIC;
	--Signal is used to stop clock signal generators
	signal END_SIM: BOOLEAN:=FALSE;
	-- Add your code here ...
	
begin
	
	-- Unit Under Test port map
	UUT : top
	port map (
		CLK => CLK,
		CLR => CLR,
		--LOW_ENABLE => LOW_ENABLE, 
		MID_ENABLE => MID_ENABLE,
		--HIGH_ENABLE => HIGH_ENABLE,
		DataIn => DataIn,
		DataOut => DataOut,
		LRCK_o => LRCK_o,
		MCLK => MCLK,
		SCLK_o => SCLK_o,
		LOAD_o => LOAD_o
		);	
	
	STIMULUS: process
	begin  -- of stimulus process
		--wait for <time to next event>; -- <current time>
		CLR<= '0';
		DataIn <= '0';
		--LOW_ENABLE <= '1';
		MID_ENABLE <= '1'; 
		--HIGH_ENABLE <= '1';
		wait for 10 ns;
		CLR <= '1';
		DataIn <= '1';
		wait for 325 ns;
		CLR <= '0';
		wait for 8 us;
		DataIn <= '1';
		wait for 325 ns;
		DataIn <= '0';
		wait for 325 ns;
		DataIn <= '1';
		wait for 325 ns;
		DataIn <= '1';
		wait for 325 ns;
		DataIn <= '0';
		wait for 325 ns;
		DataIn <= '0';
		wait for 325 ns;
		DataIn <= '1';
		wait for 325 ns;
		DataIn <= '0';
		wait for 325 ns;
		wait for 1 ms; --200 ns
		END_SIM <= TRUE;
		--	end of stimulus events
		wait;
	end process; -- end of stimulus process	 
	
	CLOCK_STIMULUS : process
	begin  -- of CLOCK_STIMULUS process
		--this process was generated based on formula: 0 0 ns, 1 5 ns -r 10 ns
		--wait for <time to next event>; -- <current time>
		if END_SIM = FALSE then
			CLK <= '0';
			wait for 5 ns; --0 fs
		else
			wait;
		end if;
		if END_SIM = FALSE then
			CLK <= '1';
			wait for 5 ns; --5 ns
		else
			wait;
		end if;
	end process; -- end of CLOCK_STIMULUS process
	-- Add your stimulus here ...
	
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_top of top_tb is
	for TB_ARCHITECTURE
		for UUT : top
			use entity work.top(structure);
		end for;
	end for;
end TESTBENCH_FOR_top;

