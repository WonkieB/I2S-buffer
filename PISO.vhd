-------------------------------------------------------------------------------
--
-- Title       : PISO
-- Design      : EQ
-- Author      : LB
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- Description : Parallel Input Serial Output
--
-------------------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;

entity PISO is	   
	generic(
		BUS_WIDTH : natural := 24
		);
	port(
		CLK : in STD_LOGIC;
		LOAD : in STD_LOGIC;
		CLR : in STD_LOGIC;
		
		ParallelIn : in STD_logic_vector(BUS_WIDTH-1 downto 0);
		SerialOut : out STD_LOGIC
		);	   
end PISO;



architecture PISO of PISO is
begin
	process( CLK, CLR, LOAD)
		variable temp: STD_logic_vector(BUS_WIDTH-1 downto 0);	   
	begin 
		if (CLR='1') then
			temp := (others => '0');
			SerialOut <= '0';
		elsif (LOAD='1') then
			temp := ParallelIn;
			SerialOut <= temp(BUS_WIDTH-1);	
		elsif (clk'EVENT AND clk = '0') then				-- write data on falling edge	   
			SerialOut <= temp(BUS_WIDTH-1);
			temp := temp (BUS_WIDTH-2 downto 0) & '0';
		end if;
	end process;								  
	
end PISO;


