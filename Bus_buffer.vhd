-------------------------------------------------------------------------------
--
-- Title       : Bus_buffer
-- Design      : EQ
-- Author      : LB
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- Description : Serial Input Parallel Output
--
-------------------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;


entity BUS_BUFFER is			  
	generic(
		INPUT_BUS_WIDTH : natural := 30;
		OUTPUT_BUS_WIDTH : natural := 24
		);
	port(					 
		LOAD : in STD_LOGIC;
		
		DATA_IN: in STD_logic_vector(INPUT_BUS_WIDTH-1 downto 0);
		DATA_OUT : out STD_logic_vector(OUTPUT_BUS_WIDTH-1 downto 0)
		);	   
end BUS_BUFFER;
									


architecture BUS_BUFFER of BUS_BUFFER is
begin
	process( LOAD)
	
	begin 
		if LOAD = '1' then				 					  					   
			DATA_OUT <= DATA_IN(INPUT_BUS_WIDTH-1 downto (INPUT_BUS_WIDTH-OUTPUT_BUS_WIDTH));
		end if;
	end process;			
end BUS_BUFFER;


