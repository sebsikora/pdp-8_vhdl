library ieee;
use ieee.std_logic_1164.all;

entity alu_shifter is
	port ( input:				in std_logic_vector(11 downto 0);
			 link_input:		in std_logic;
			 output:				out std_logic_vector(11 downto 0);
			 link_output:		out std_logic;
			 alu_rot_1:			in std_logic;
			 alu_rot_2:			in std_logic
	);
end alu_shifter;

architecture rtl of alu_shifter is
component OR_3_gate is
	port ( inputA:			in std_logic;
			 inputB:			in std_logic;
			 inputC:			in std_logic;
			 output:			out std_logic
	);
end component;
component AND_gate is
	port ( inputA:			in std_logic;
			 inputB:			in std_logic;
			 output:			out std_logic
	);
end component;

signal alu_rot_0:				std_logic;
signal and_outputs:			std_logic_vector(35 downto 0);
signal and_link_outputs:	std_logic_vector(2 downto 0);

begin

	alu_rot_0 <= not (alu_rot_1 or alu_rot_2);
	
	and_0_0:			AND_gate port map (inputA => alu_rot_0, inputB => input(0), output => and_outputs(0));
	and_0_1:			AND_gate port map (inputA => alu_rot_1, inputB => input(0), output => and_outputs(1));
	and_0_2:			AND_gate port map (inputA => alu_rot_2, inputB => input(0), output => and_outputs(2));
	and_1_0:			AND_gate port map (inputA => alu_rot_0, inputB => input(1), output => and_outputs(3));
	and_1_1:			AND_gate port map (inputA => alu_rot_1, inputB => input(1), output => and_outputs(4));
	and_1_2:			AND_gate port map (inputA => alu_rot_2, inputB => input(1), output => and_outputs(5));
	and_2_0:			AND_gate port map (inputA => alu_rot_0, inputB => input(2), output => and_outputs(6));
	and_2_1:			AND_gate port map (inputA => alu_rot_1, inputB => input(2), output => and_outputs(7));
	and_2_2:			AND_gate port map (inputA => alu_rot_2, inputB => input(2), output => and_outputs(8));
	and_3_0:			AND_gate port map (inputA => alu_rot_0, inputB => input(3), output => and_outputs(9));
	and_3_1:			AND_gate port map (inputA => alu_rot_1, inputB => input(3), output => and_outputs(10));
	and_3_2:			AND_gate port map (inputA => alu_rot_2, inputB => input(3), output => and_outputs(11));
	and_4_0:			AND_gate port map (inputA => alu_rot_0, inputB => input(4), output => and_outputs(12));
	and_4_1:			AND_gate port map (inputA => alu_rot_1, inputB => input(4), output => and_outputs(13));
	and_4_2:			AND_gate port map (inputA => alu_rot_2, inputB => input(4), output => and_outputs(14));
	and_5_0:			AND_gate port map (inputA => alu_rot_0, inputB => input(5), output => and_outputs(15));
	and_5_1:			AND_gate port map (inputA => alu_rot_1, inputB => input(5), output => and_outputs(16));
	and_5_2:			AND_gate port map (inputA => alu_rot_2, inputB => input(5), output => and_outputs(17));
	and_6_0:			AND_gate port map (inputA => alu_rot_0, inputB => input(6), output => and_outputs(18));
	and_6_1:			AND_gate port map (inputA => alu_rot_1, inputB => input(6), output => and_outputs(19));
	and_6_2:			AND_gate port map (inputA => alu_rot_2, inputB => input(6), output => and_outputs(20));
	and_7_0:			AND_gate port map (inputA => alu_rot_0, inputB => input(7), output => and_outputs(21));
	and_7_1:			AND_gate port map (inputA => alu_rot_1, inputB => input(7), output => and_outputs(22));
	and_7_2:			AND_gate port map (inputA => alu_rot_2, inputB => input(7), output => and_outputs(23));
	and_8_0:			AND_gate port map (inputA => alu_rot_0, inputB => input(8), output => and_outputs(24));
	and_8_1:			AND_gate port map (inputA => alu_rot_1, inputB => input(8), output => and_outputs(25));
	and_8_2:			AND_gate port map (inputA => alu_rot_2, inputB => input(8), output => and_outputs(26));
	and_9_0:			AND_gate port map (inputA => alu_rot_0, inputB => input(9), output => and_outputs(27));
	and_9_1:			AND_gate port map (inputA => alu_rot_1, inputB => input(9), output => and_outputs(28));
	and_9_2:			AND_gate port map (inputA => alu_rot_2, inputB => input(9), output => and_outputs(29));
	and_10_0:		AND_gate port map (inputA => alu_rot_0, inputB => input(10), output => and_outputs(30));
	and_10_1:		AND_gate port map (inputA => alu_rot_1, inputB => input(10), output => and_outputs(31));
	and_10_2:		AND_gate port map (inputA => alu_rot_2, inputB => input(10), output => and_outputs(32));
	and_11_0:		AND_gate port map (inputA => alu_rot_0, inputB => input(11), output => and_outputs(33));
	and_11_1:		AND_gate port map (inputA => alu_rot_1, inputB => input(11), output => and_outputs(34));
	and_11_2:		AND_gate port map (inputA => alu_rot_2, inputB => input(11), output => and_outputs(35));
	
	and_link_0:		AND_gate port map (inputA => alu_rot_0, inputB => link_input, output => and_link_outputs(0));
	and_link_1:		AND_gate port map (inputA => alu_rot_1, inputB => link_input, output => and_link_outputs(1));
	and_link_2:		AND_gate port map (inputA => alu_rot_2, inputB => link_input, output => and_link_outputs(2));
	
	or_3_0:			OR_3_gate port map (inputA => and_outputs(0), inputB => and_link_outputs(1), inputC =>  and_outputs(5), output => output(0));
	or_3_1:			OR_3_gate port map (inputA => and_outputs(3), inputB => and_outputs(1), inputC =>  and_outputs(8), output => output(1));
	or_3_2:			OR_3_gate port map (inputA => and_outputs(6), inputB => and_outputs(4), inputC =>  and_outputs(11), output => output(2));
	or_3_3:			OR_3_gate port map (inputA => and_outputs(9), inputB => and_outputs(7), inputC =>  and_outputs(14), output => output(3));
	or_3_4:			OR_3_gate port map (inputA => and_outputs(12), inputB => and_outputs(10), inputC =>  and_outputs(17), output => output(4));
	or_3_5:			OR_3_gate port map (inputA => and_outputs(15), inputB => and_outputs(13), inputC =>  and_outputs(20), output => output(5));
	or_3_6:			OR_3_gate port map (inputA => and_outputs(18), inputB => and_outputs(16), inputC =>  and_outputs(23), output => output(6));
	or_3_7:			OR_3_gate port map (inputA => and_outputs(21), inputB => and_outputs(19), inputC =>  and_outputs(26), output => output(7));
	or_3_8:			OR_3_gate port map (inputA => and_outputs(24), inputB => and_outputs(22), inputC =>  and_outputs(29), output => output(8));
	or_3_9:			OR_3_gate port map (inputA => and_outputs(27), inputB => and_outputs(25), inputC =>  and_outputs(32), output => output(9));
	or_3_10:			OR_3_gate port map (inputA => and_outputs(30), inputB => and_outputs(28), inputC =>  and_outputs(35), output => output(10));
	or_3_11:			OR_3_gate port map (inputA => and_outputs(33), inputB => and_outputs(31), inputC =>  and_link_outputs(2), output => output(11));
	
	or_3_link:		OR_3_gate port map (inputA => and_link_outputs(0), inputB => and_outputs(34), inputC => and_outputs(2), output => link_output);
	
	
end rtl;
	