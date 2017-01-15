library ieee;
use ieee.std_logic_1164.all;

entity register_output_mux is
	port ( input_0:				in std_logic_vector(11 downto 0);
			 input_1:				in std_logic_vector(11 downto 0);
			 input_2:				in std_logic_vector(11 downto 0);
			 input_3:				in std_logic_vector(11 downto 0);
			 output:					out std_logic_vector(11 downto 0);
			 MA_BUS_SEL:			in std_logic;
			 MD_BUS_SEL:			in std_logic;
			 PC_BUS_SEL:			in std_logic;
			 SR_BUS_SEL:			in std_logic
	);
end register_output_mux;

architecture behavior of register_output_mux is

begin
	process(input_0, input_1, input_2, input_3, MA_BUS_SEL, MD_BUS_SEL, PC_BUS_SEL, SR_BUS_SEL)
	begin
		if MA_BUS_SEL = '1' then
			output <= input_0;
		elsif MD_BUS_SEL = '1' then
			output <= input_1;
		elsif PC_BUS_SEL = '1' then
			output <= input_2;
		elsif SR_BUS_SEL = '1' then
			output <= input_3;
		else
			output <= "000000000000";
		end if;
	end process;
	
end behavior;