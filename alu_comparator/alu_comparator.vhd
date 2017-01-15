-- Inverter

library ieee;
use ieee.std_logic_1164.all;

entity alu_comparator is
	port( input:			in std_logic_vector(11 downto 0);
			output:			out std_logic_vector(11 downto 0);
			IS_ZERO:			out std_logic;
			IS_ZERO_LAST:	out std_logic;
			IS_NEG:			out std_logic;
			not_reset:		in std_logic;
			clk:				in std_logic
	);
end alu_comparator;

architecture rtl of alu_comparator is
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
component register_1_bit is
	port ( input:			in std_logic;
			 output:			out std_logic;
			 load:			in std_logic;
			 clk:				in std_logic;
			 not_reset:		in std_logic
	);
end component;
signal or_outputs:					std_logic_vector(11 downto 0);
signal not_or_output_10:			std_logic;
begin
	or_0:			OR_gate port map (inputA => input(0), inputB => input(1), output => or_outputs(0));
	or_1:			OR_gate port map (inputA => or_outputs(0), inputB => input(2), output => or_outputs(1));
	or_2:			OR_gate port map (inputA => or_outputs(1), inputB => input(3), output => or_outputs(2));
	or_3:			OR_gate port map (inputA => or_outputs(2), inputB => input(4), output => or_outputs(3));
	or_4:			OR_gate port map (inputA => or_outputs(3), inputB => input(5), output => or_outputs(4));
	or_5:			OR_gate port map (inputA => or_outputs(4), inputB => input(6), output => or_outputs(5));
	or_6:			OR_gate port map (inputA => or_outputs(5), inputB => input(7), output => or_outputs(6));
	or_7:			OR_gate port map (inputA => or_outputs(6), inputB => input(8), output => or_outputs(7));
	or_8:			OR_gate port map (inputA => or_outputs(7), inputB => input(9), output => or_outputs(8));
	or_9:			OR_gate port map (inputA => or_outputs(8), inputB => input(10), output => or_outputs(9));
	or_10:		OR_gate port map (inputA => or_outputs(9), inputB => input(11), output => or_outputs(10));
	
	not_or_output_10 <= not or_outputs(10);
	
	register_0:	register_1_bit port map ( input => not_or_output_10,
													  output => IS_ZERO_LAST,
													  load => '1',
													  clk => clk,
													  not_reset => not_reset
					);
	
	IS_ZERO <= not_or_output_10;
	IS_NEG <= input(0);
	output <= input;
	
end rtl;
