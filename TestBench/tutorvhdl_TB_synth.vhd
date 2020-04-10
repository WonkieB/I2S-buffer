library ieee;
use ieee.std_logic_1164.all;
library unisim;
use unisim.VCOMPONENTS.all;

	-- Add your library and packages declaration here ...

entity tutorvhdl_tb_synth is
end tutorvhdl_tb_synth;

architecture TB_ARCHITECTURE of tutorvhdl_tb_synth is
	-- Component declaration of the tested unit
	component tutorvhdl
	port(
		CLR : in STD_LOGIC;
		CLK : in STD_LOGIC;
		Q : out STD_LOGIC_VECTOR(3 downto 0);
		CE : in STD_LOGIC;
		LOAD : in STD_LOGIC;
		DATA : in STD_LOGIC_VECTOR(3 downto 0);
		SEL : in STD_LOGIC;
		OE : in STD_LOGIC;
		LE : in STD_LOGIC;
		DIR : in STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal CLR : STD_LOGIC;
	signal CLK : STD_LOGIC;
	signal CE : STD_LOGIC;
	signal LOAD : STD_LOGIC;
	signal DATA : STD_LOGIC_VECTOR(3 downto 0);
	signal SEL : STD_LOGIC;
	signal OE : STD_LOGIC;
	signal LE : STD_LOGIC;
	signal DIR : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Q : STD_LOGIC_VECTOR(3 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : tutorvhdl
		port map (
			CLR => CLR,
			CLK => CLK,
			Q => Q,
			CE => CE,
			LOAD => LOAD,
			DATA => DATA,
			SEL => SEL,
			OE => OE,
			LE => LE,
			DIR => DIR
		);

	--Below VHDL code is an inserted .\compile\wave.vhs
	--User can modify it ....

STIMULUS: process
begin  -- of stimulus process
--wait for <time to next event>; -- <current time>

	CE <= '1';
	CLK <= '0';
	CLR <= '0';
	DIR <= '1';
	DATA <= "0000";
	LOAD <= '0';
	SEL <= '0';
	LE <= '0';
	OE <= '1';
    wait for 50 ns; --0 fs
	CLK <= '1';
    wait for 50 ns; --50 ns
	CLK <= '0';
    wait for 25 ns; --100 ns
	CLR <= '1';
    wait for 25 ns; --125 ns
	CLK <= '1';
    wait for 50 ns; --150 ns
	CLK <= '0';
    wait for 25 ns; --200 ns
	CLR <= '0';
    wait for 25 ns; --225 ns
	CLK <= '1';
    wait for 50 ns; --250 ns
	CLK <= '0';
	DATA <= "0001";
	LOAD <= '1';
    wait for 50 ns; --300 ns
	CLK <= '1';
    wait for 50 ns; --350 ns
	CLK <= '0';
	SEL <= '1';
    wait for 50 ns; --400 ns
	CLK <= '1';
    wait for 50 ns; --450 ns
	CLK <= '0';
	LE <= '1';
    wait for 50 ns; --500 ns
	CLK <= '1';
    wait for 50 ns; --550 ns
	CLK <= '0';
	DATA <= "0011";
    wait for 50 ns; --600 ns
	CLK <= '1';
    wait for 50 ns; --650 ns
	CLK <= '0';
	LOAD <= '0';
    wait for 50 ns; --700 ns
	CLK <= '1';
    wait for 50 ns; --750 ns
	CLK <= '0';
	DIR <= '0';
    wait for 50 ns; --800 ns
	CLK <= '1';
    wait for 50 ns; --850 ns
	CLK <= '0';
	LE <= '0';
    wait for 50 ns; --900 ns
	CLK <= '1';
    wait for 50 ns; --950 ns
	CLK <= '0';
	DATA <= "0010";
	LOAD <= '1';
    wait for 50 ns; --1 us
	CLK <= '1';
    wait for 50 ns; --1050 ns
	CLK <= '0';
    wait for 50 ns; --1100 ns
	CLK <= '1';
    wait for 50 ns; --1150 ns
	CLK <= '0';
	SEL <= '0';
    wait for 50 ns; --1200 ns
	CLK <= '1';
    wait for 50 ns; --1250 ns
	CLK <= '0';
    wait for 50 ns; --1300 ns
	CLK <= '1';
    wait for 50 ns; --1350 ns
	CLK <= '0';
    wait for 50 ns; --1400 ns
	CLK <= '1';
    wait for 50 ns; --1450 ns
	CLK <= '0';
	LOAD <= '0';
	OE <= '0';
    wait for 50 ns; --1500 ns
	CLK <= '1';
    wait for 50 ns; --1550 ns
	CLK <= '0';
	DIR <= '1';
	OE <= '1';
    wait for 50 ns; --1600 ns
	CLK <= '1';
    wait for 50 ns; --1650 ns
	CLK <= '0';
    wait for 50 ns; --1700 ns
	CLK <= '1';
    wait for 50 ns; --1750 ns
	CLK <= '0';
    wait for 50 ns; --1800 ns
	CLK <= '1';
    wait for 50 ns; --1850 ns
	CLK <= '0';
    wait for 50 ns; --1900 ns
	CLK <= '1';
    wait for 50 ns; --1950 ns
	CLK <= '0';
    wait for 50 ns; --2 us
	CLK <= '1';
    wait for 50 ns; --2050 ns
	CLK <= '0';
    wait for 50 ns; --2100 ns
	CLK <= '1';
    wait for 50 ns; --2150 ns
	CLK <= '0';
    wait for 50 ns; --2200 ns
	CLK <= '1';
    wait for 50 ns; --2250 ns
	CLK <= '0';
    wait for 50 ns; --2300 ns
	CLK <= '1';
    wait for 50 ns; --2350 ns
	CLK <= '0';
    wait for 50 ns; --2400 ns
	CLK <= '1';
    wait for 50 ns; --2450 ns
	CLK <= '0';
    wait for 50 ns; --2500 ns
	CLK <= '1';
    wait for 50 ns; --2550 ns
	CLK <= '0';
    wait for 50 ns; --2600 ns
	CLK <= '1';
    wait for 50 ns; --2650 ns
	CLK <= '0';
--	end of stimulus events
	wait;
end process; -- end of stimulus process
	



	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_tutorvhdl of tutorvhdl_tb_synth is
	for TB_ARCHITECTURE
		for UUT : tutorvhdl
			use entity work.tutorvhdl(structure);
		end for;
	end for;
end TESTBENCH_FOR_tutorvhdl;

