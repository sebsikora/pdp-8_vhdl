library ieee;
use ieee.std_logic_1164.all;

entity alu_and is
	port ( inputA:				in std_logic_vector(11 downto 0);
			 inputB:				in std_logic_vector(11 downto 0);
			 output:				out std_logic_vector(11 downto 0)
	);
end alu_and;

architecture rtl of alu_and is
component AND_gate is
	port( inputA: 				in std_logic;
			inputB:				in std_logic;
			output:				out std_logic
	);
end component;

begin
	and_0:			AND_gate port map (inputA => inputA(0), inputB => inputB(0), output => output(0));
	and_1:			AND_gate port map (inputA => inputA(1), inputB => inputB(1), output => output(1));
	and_2:			AND_gate port map (inputA => inputA(2), inputB => inputB(2), output => output(2));
	and_3:			AND_gate port map (inputA => inputA(3), inputB => inputB(3), output => output(3));
	and_4:			AND_gate port map (inputA => inputA(4), inputB => inputB(4), output => output(4));
	and_5:			AND_gate port map (inputA => inputA(5), inputB => inputB(5), output => output(5));
	and_6:			AND_gate port map (inputA => inputA(6), inputB => inputB(6), output => output(6));
	and_7:			AND_gate port map (inputA => inputA(7), inputB => inputB(7), output => output(7));
	and_8:			AND_gate port map (inputA => inputA(8), inputB => inputB(8), output => output(8));
	and_9:			AND_gate port map (inputA => inputA(9), inputB => inputB(9), output => output(9));
	and_10:			AND_gate port map (inputA => inputA(10), inputB => inputB(10), output => output(10));
	and_11:			AND_gate port map (inputA => inputA(11), inputB => inputB(11), output => output(11));
	
end rtl;
