library ieee;
use ieee.std_logic_1164.all;

entity alu_add is
	port ( inputA:				in std_logic_vector(11 downto 0);
			 inputB:				in std_logic_vector(11 downto 0);
			 output:				out std_logic_vector(11 downto 0);
			 carry_out:			out std_logic
	);
end alu_add;

architecture rtl of alu_add is
component nand_1_bit_full_adder is
	port ( inputA:				in std_logic;
			 inputB:				in std_logic;
			 output:				out std_logic;
			 carry_in:			in std_logic;
			 carry_out:			out std_logic
	);
end component;

signal adder_carry_outs:				std_logic_vector(11 downto 0);

begin
	adder_0:			nand_1_bit_full_adder port map (inputA => inputA(0), inputB => inputB(0), output => output(0), carry_in => '0', carry_out => adder_carry_outs(0));
	adder_1:			nand_1_bit_full_adder port map (inputA => inputA(1), inputB => inputB(1), output => output(1), carry_in => adder_carry_outs(0), carry_out => adder_carry_outs(1));
	adder_2:			nand_1_bit_full_adder port map (inputA => inputA(2), inputB => inputB(2), output => output(2), carry_in => adder_carry_outs(1), carry_out => adder_carry_outs(2));
	adder_3:			nand_1_bit_full_adder port map (inputA => inputA(3), inputB => inputB(3), output => output(3), carry_in => adder_carry_outs(2), carry_out => adder_carry_outs(3));
	adder_4:			nand_1_bit_full_adder port map (inputA => inputA(4), inputB => inputB(4), output => output(4), carry_in => adder_carry_outs(3), carry_out => adder_carry_outs(4));
	adder_5:			nand_1_bit_full_adder port map (inputA => inputA(5), inputB => inputB(5), output => output(5), carry_in => adder_carry_outs(4), carry_out => adder_carry_outs(5));
	adder_6:			nand_1_bit_full_adder port map (inputA => inputA(6), inputB => inputB(6), output => output(6), carry_in => adder_carry_outs(5), carry_out => adder_carry_outs(6));
	adder_7:			nand_1_bit_full_adder port map (inputA => inputA(7), inputB => inputB(7), output => output(7), carry_in => adder_carry_outs(6), carry_out => adder_carry_outs(7));
	adder_8:			nand_1_bit_full_adder port map (inputA => inputA(8), inputB => inputB(8), output => output(8), carry_in => adder_carry_outs(7), carry_out => adder_carry_outs(8));
	adder_9:			nand_1_bit_full_adder port map (inputA => inputA(9), inputB => inputB(9), output => output(9), carry_in => adder_carry_outs(8), carry_out => adder_carry_outs(9));
	adder_10:		nand_1_bit_full_adder port map (inputA => inputA(10), inputB => inputB(10), output => output(10), carry_in => adder_carry_outs(9), carry_out => adder_carry_outs(10));
	adder_11:		nand_1_bit_full_adder port map (inputA => inputA(11), inputB => inputB(11), output => output(11), carry_in => adder_carry_outs(10), carry_out => adder_carry_outs(11));
	
	carry_out <= adder_carry_outs(11);
end rtl;
	