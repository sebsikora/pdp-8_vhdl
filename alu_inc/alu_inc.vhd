library ieee;
use ieee.std_logic_1164.all;

entity alu_inc is
	port ( input:				in std_logic_vector(11 downto 0);
			 output:				out std_logic_vector(11 downto 0);
			 alu_inc:			in std_logic;
			 carry_out:			out std_logic
	);
end alu_inc;

architecture rtl of alu_inc is
component XOR_gate is
	port ( inputA:			in std_logic;
			 inputB:			in std_logic;
			 output:			out std_logic
	);
end component;
component AND_gate is
	port ( inputA:			in std_logic;
			 inputB:			in std_logic;
			 output:			out std_logic
	);
end component;

signal and_outputs:				std_logic_vector(11 downto 0);
signal xor_outputs:				std_logic_vector(11 downto 0);

begin
	and_0:			AND_gate port map (inputA => input(0), inputB => and_outputs(1), output => carry_out);
	and_1:			AND_gate port map (inputA => input(1), inputB => and_outputs(2), output => and_outputs(1));
	and_2:			AND_gate port map (inputA => input(2), inputB => and_outputs(3), output => and_outputs(2));
	and_3:			AND_gate port map (inputA => input(3), inputB => and_outputs(4), output => and_outputs(3));
	and_4:			AND_gate port map (inputA => input(4), inputB => and_outputs(5), output => and_outputs(4));
	and_5:			AND_gate port map (inputA => input(5), inputB => and_outputs(6), output => and_outputs(5));
	and_6:			AND_gate port map (inputA => input(6), inputB => and_outputs(7), output => and_outputs(6));
	and_7:			AND_gate port map (inputA => input(7), inputB => and_outputs(8), output => and_outputs(7));
	and_8:			AND_gate port map (inputA => input(8), inputB => and_outputs(9), output => and_outputs(8));
	and_9:			AND_gate port map (inputA => input(9), inputB => and_outputs(10), output => and_outputs(9));
	and_10:			AND_gate port map (inputA => input(10), inputB => and_outputs(11), output => and_outputs(10));
	and_11:			AND_gate port map (inputA => input(11), inputB => alu_inc, output => and_outputs(11));
	
	xor_0:			XOR_gate port map (inputA => input(0), inputB => and_outputs(1), output => xor_outputs(0));
	xor_1:			XOR_gate port map (inputA => input(1), inputB => and_outputs(2), output => xor_outputs(1));
	xor_2:			XOR_gate port map (inputA => input(2), inputB => and_outputs(3), output => xor_outputs(2));
	xor_3:			XOR_gate port map (inputA => input(3), inputB => and_outputs(4), output => xor_outputs(3));
	xor_4:			XOR_gate port map (inputA => input(4), inputB => and_outputs(5), output => xor_outputs(4));
	xor_5:			XOR_gate port map (inputA => input(5), inputB => and_outputs(6), output => xor_outputs(5));
	xor_6:			XOR_gate port map (inputA => input(6), inputB => and_outputs(7), output => xor_outputs(6));
	xor_7:			XOR_gate port map (inputA => input(7), inputB => and_outputs(8), output => xor_outputs(7));
	xor_8:			XOR_gate port map (inputA => input(8), inputB => and_outputs(9), output => xor_outputs(8));
	xor_9:			XOR_gate port map (inputA => input(9), inputB => and_outputs(10), output => xor_outputs(9));
	xor_10:			XOR_gate port map (inputA => input(10), inputB => and_outputs(11), output => xor_outputs(10));
	xor_11:			XOR_gate port map (inputA => input(11), inputB => alu_inc, output => xor_outputs(11));
	
	output(0) <= xor_outputs(0);
	output(1) <= xor_outputs(1);
	output(2) <= xor_outputs(2);
	output(3) <= xor_outputs(3);
	output(4) <= xor_outputs(4);
	output(5) <= xor_outputs(5);
	output(6) <= xor_outputs(6);
	output(7) <= xor_outputs(7);
	output(8) <= xor_outputs(8);
	output(9) <= xor_outputs(9);
	output(10) <= xor_outputs(10);
	output(11) <= xor_outputs(11);
	
end rtl;
	