-- master-slave j-k ff --
library ieee;
use ieee.std_logic_1164.all;

entity ms_jk_ff is
	port ( j:		in std_logic;
			 k:		in std_logic;
			 clk:		in std_logic;
			 not_reset: in std_logic;
			 q:		out std_logic;
			 not_q:	out std_logic
	);
end ms_jk_ff;

architecture gates of ms_jk_ff is
	
	component NAND_3_gate is
		port( inputA: 	in std_logic;
				inputB:	in std_logic;
				inputC:	in std_logic;
				output:	out std_logic
		);
	end component;
	
	component NAND_gate is
		port( inputA: 	in std_logic;
				inputB:	in std_logic;
				output:	out std_logic
		);
	end component;
	
	signal nand_3_1_output:			std_logic;
	signal nand_3_2_output:			std_logic;
	signal nand_1_output:			std_logic;
	signal nand_3_3_output:			std_logic;
	signal nand_3_output:			std_logic;
	signal nand_4_output:			std_logic;
	signal nand_5_output:			std_logic;
	signal nand_6_output:			std_logic;
	signal not_clk:					std_logic;
	
	begin
		
		not_clk <= not clk;
		
		nand_3_1:				NAND_3_gate port map (inputA => nand_6_output, inputB => j, inputC => clk, output => nand_3_1_output);
		nand_3_2:				NAND_3_gate port map (inputA => clk, inputB => k, inputC => nand_5_output, output => nand_3_2_output);
		nand_1:					NAND_gate 	port map (inputA => nand_3_1_output, inputB => nand_3_3_output, output => nand_1_output);
		nand_3_3:				NAND_3_gate port map (inputA => nand_1_output, inputB => nand_3_2_output, inputC => not_reset, output => nand_3_3_output);
		nand_3:					NAND_gate 	port map (inputA => nand_1_output, inputB => not_clk, output => nand_3_output);
		nand_4:					NAND_gate 	port map (inputA => not_clk, inputB => nand_3_3_output, output => nand_4_output);
		nand_5:					NAND_gate 	port map (inputA => nand_3_output, inputB => nand_6_output, output => nand_5_output);
		nand_6:					NAND_gate 	port map (inputA => nand_5_output, inputB => nand_4_output, output => nand_6_output);
		
		q <= nand_5_output;
		not_q <= nand_6_output;
		
end gates;

	