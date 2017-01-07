library ieee;
use ieee.std_logic_1164.all;

entity nand_1_bit_full_adder is
	port ( inputA:				in std_logic;
			 inputB:				in std_logic;
			 output:				out std_logic;
			 carry_in:			in std_logic;
			 carry_out:			out std_logic
	);
end nand_1_bit_full_adder;

architecture rtl of nand_1_bit_full_adder is
component NAND_gate is
	port ( inputA:			in std_logic;
			 inputB:			in std_logic;
			 output:			out std_logic
	);
end component;

signal nand_outputs:				std_logic_vector(8 downto 0);

begin
	nand_0:			NAND_gate port map (inputA => inputA, inputB => inputB, output => nand_outputs(0));
	nand_1:			NAND_gate port map (inputA => inputA, inputB => nand_outputs(0), output => nand_outputs(1));
	nand_2:			NAND_gate port map (inputA => nand_outputs(0), inputB => inputB, output => nand_outputs(2));
	nand_3:			NAND_gate port map (inputA => nand_outputs(1), inputB => nand_outputs(2), output => nand_outputs(3));
	nand_4:			NAND_gate port map (inputA => nand_outputs(3), inputB => carry_in, output => nand_outputs(4));
	nand_5:			NAND_gate port map (inputA => nand_outputs(3), inputB => nand_outputs(4), output => nand_outputs(5));
	nand_6:			NAND_gate port map (inputA => nand_outputs(4), inputB => carry_in, output => nand_outputs(6));
	nand_7:			NAND_gate port map (inputA => nand_outputs(5), inputB => nand_outputs(6), output => nand_outputs(7));
	nand_8:			NAND_gate port map (inputA => nand_outputs(0), inputB => nand_outputs(4), output => nand_outputs(8));
	
	output <= nand_outputs(7);
	carry_out <= nand_outputs(8);
end rtl;
	