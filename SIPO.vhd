-------------------------------------------------------------------------------
--
-- Title       : SIPO
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


entity SIPO is			  
	generic(
		BUS_WIDTH : natural := 30
		);
	port(
		CLK : in STD_LOGIC;		
		CLR : in STD_LOGIC;
		
		SerialIn : in STD_LOGIC;
		ParallelOut : out STD_logic_vector(BUS_WIDTH-1 downto 0)
		);	   
end SIPO;



architecture SIPO of SIPO is
	signal temp: STD_logic_vector( BUS_WIDTH-1 downto 0);
begin
	process( CLK, CLR)
	variable bit_number: integer;
	begin 

		if(CLR='1') then
			temp <= (others => '0');
		elsif (CLK'event and CLK ='1') then

			temp <= temp(BUS_WIDTH-2 downto 0) & SerialIn;	 
		end if;			 
	end process;				  				  
	ParallelOut <= temp;
end SIPO;


