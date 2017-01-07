library ieee;
use ieee.std_logic_1164.all;

entity alu_or is
	port ( inputA:				in std_logic_vector(11 downto 0);
			 inputB:				in std_logic_vector(11 downto 0);
			 output:				out std_logic_vector(11 downto 0)
	);
end alu_or;

architecture rtl of alu_or is
component OR_gate is
	port( inputA: 				in std_logic;
			inputB:				in std_logic;
			output:				out std_logic
	);
end component;

begin
	or_0:			OR_gate port map (inputA => inputA(0), inputB => inputB(0), output => output(0));
	or_1:			OR_gate port map (inputA => inputA(1), inputB => inputB(1), output => output(1));
	or_2:			OR_gate port map (inputA => inputA(2), inputB => inputB(2), output => output(2));
	or_3:			OR_gate port map (inputA => inputA(3), inputB => inputB(3), output => output(3));
	or_4:			OR_gate port map (inputA => inputA(4), inputB => inputB(4), output => output(4));
	or_5:			OR_gate port map (inputA => inputA(5), inputB => inputB(5), output => output(5));
	or_6:			OR_gate port map (inputA => inputA(6), inputB => inputB(6), output => output(6));
	or_7:			OR_gate port map (inputA => inputA(7), inputB => inputB(7), output => output(7));
	or_8:			OR_gate port map (inputA => inputA(8), inputB => inputB(8), output => output(8));
	or_9:			OR_gate port map (inputA => inputA(9), inputB => inputB(9), output => output(9));
	or_10:		OR_gate port map (inputA => inputA(10), inputB => inputB(10), output => output(10));
	or_11:		OR_gate port map (inputA => inputA(11), inputB => inputB(11), output => output(11));
	
end rtl;
