library ieee;
use ieee.std_logic_1164.all;

entity alu_xor is
	port ( input:				in std_logic_vector(11 downto 0);
			 output:				out std_logic_vector(11 downto 0);
			 alu_xor:			in std_logic
	);
end alu_xor;

architecture rtl of alu_xor is
component XOR_gate is
	port ( inputA:			in std_logic;
			 inputB:			in std_logic;
			 output:			out std_logic
	);
end component;
begin
	xor_0:			XOR_gate port map (inputA => input(0), inputB => alu_xor, output => output(0));
	xor_1:			XOR_gate port map (inputA => input(1), inputB => alu_xor, output => output(1));
	xor_2:			XOR_gate port map (inputA => input(2), inputB => alu_xor, output => output(2));
	xor_3:			XOR_gate port map (inputA => input(3), inputB => alu_xor, output => output(3));
	xor_4:			XOR_gate port map (inputA => input(4), inputB => alu_xor, output => output(4));
	xor_5:			XOR_gate port map (inputA => input(5), inputB => alu_xor, output => output(5));
	xor_6:			XOR_gate port map (inputA => input(6), inputB => alu_xor, output => output(6));
	xor_7:			XOR_gate port map (inputA => input(7), inputB => alu_xor, output => output(7));
	xor_8:			XOR_gate port map (inputA => input(8), inputB => alu_xor, output => output(8));
	xor_9:			XOR_gate port map (inputA => input(9), inputB => alu_xor, output => output(9));
	xor_10:			XOR_gate port map (inputA => input(10), inputB => alu_xor, output => output(10));
	xor_11:			XOR_gate port map (inputA => input(11), inputB => alu_xor, output => output(11));
end rtl;
	