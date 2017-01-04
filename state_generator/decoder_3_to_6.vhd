library ieee;
use ieee.std_logic_1164.all;

entity decoder_3_to_6 is
	port ( input:						in std_logic_vector(2 downto 0);
			 output:						out std_logic_vector(5 downto 0)
	);
end decoder_3_to_6;

architecture rtl of decoder_3_to_6 is
	component AND_3_gate is
		port( inputA: 					in std_logic;
				inputB:					in std_logic;
				inputC:					in std_logic;
				output:					out std_logic
		);
	end component;
	signal not_input:			std_logic_vector(2 downto 0);
	begin
		not_input(0) <= not input(0);
		not_input(1) <= not input(1);
		not_input(2) <= not input(2);
		
		and_3_0:					AND_3_gate port map (inputA => not_input(0), inputB => not_input(1), inputC => not_input(2), output => output(0));
		and_3_1:					AND_3_gate port map (inputA => input(0), inputB => not_input(1), inputC => not_input(2), output => output(1));
		and_3_2:					AND_3_gate port map (inputA => not_input(0), inputB => input(1), inputC => not_input(2), output => output(2));
		and_3_3:					AND_3_gate port map (inputA => input(0), inputB => input(1), inputC => not_input(2), output => output(3));
		and_3_4:					AND_3_gate port map (inputA => not_input(0), inputB => not_input(1), inputC => input(2), output => output(4));
		and_3_5:					AND_3_gate port map (inputA => input(0), inputB => not_input(1), inputC => input(2), output => output(5));
end rtl;