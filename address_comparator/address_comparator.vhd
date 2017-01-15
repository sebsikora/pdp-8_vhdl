-- Inverter

library ieee;
use ieee.std_logic_1164.all;

entity address_comparator is
	port( input:			in std_logic_vector(11 downto 0);
			output:			out std_logic_vector(11 downto 0);
			IS_AUTO_INDEX:	out std_logic
	);
end address_comparator;

architecture rtl of address_comparator is
component AND_gate is
	port( inputA: 	in std_logic;
			inputB:	in std_logic;
			output:	out std_logic
	);
end component;
component OR_gate is
	port( inputA: 	in std_logic;
			inputB:	in std_logic;
			output:	out std_logic
	);
end component;
signal or_outputs:					std_logic_vector(6 downto 0);
signal not_or_6_output:				std_logic;
begin
	or_0:			OR_gate port map (inputA => input(4), inputB => input(5), output => or_outputs(0));
	or_1:			OR_gate port map (inputA => or_outputs(0), inputB => input(6), output => or_outputs(1));
	or_2:			OR_gate port map (inputA => or_outputs(1), inputB => input(7), output => or_outputs(2));
	or_3:			OR_gate port map (inputA => or_outputs(2), inputB => input(8), output => or_outputs(3));
	or_4:			OR_gate port map (inputA => or_outputs(3), inputB => input(9), output => or_outputs(4));
	or_5:			OR_gate port map (inputA => or_outputs(4), inputB => input(10), output => or_outputs(5));
	or_6:			OR_gate port map (inputA => or_outputs(5), inputB => input(11), output => or_outputs(6));
	not_or_6_output <= not or_outputs(6);
	and_0:		AND_gate port map (inputA => not_or_6_output, inputB => input(3), output => IS_AUTO_INDEX);
	output <= input;
	
end rtl;
