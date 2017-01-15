library ieee;
use ieee.std_logic_1164.all;

entity md_input_mux is
	port ( mem_data_bus_input:				in std_logic_vector(11 downto 0);
			 top_bus_input:					in std_logic_vector(11 downto 0);
			 output:								out std_logic_vector(11 downto 0);
			 MD_IN_SEL:							in std_logic
	);
end md_input_mux;

architecture behavior of md_input_mux is

begin
	process(mem_data_bus_input, top_bus_input, MD_IN_SEL)
	begin
		if MD_IN_SEL = '1' then
			output <= mem_data_bus_input;
		else
			output <= top_bus_input;
		end if;
	end process;
	
end behavior;