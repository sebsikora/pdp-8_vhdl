library ieee;
use ieee.std_logic_1164.all;

entity latch_unit is
	port ( SLOW_CLK:			in std_logic;
			 RX:					in std_logic;
			 clk:					in std_logic;
			 CLR_RX_FLAG:		in std_logic;
			 half_tick_ctrl:	in std_logic;
			 end_ctrl:			in std_logic;
			 not_reset:			in std_logic;
			 SLOW_CLK_run: 	out std_logic;
			 RX_FLAG:			out std_logic;
			 not_go:				out std_logic
	);
end latch_unit;

architecture gates of latch_unit is
	
	component ms_jk_ff is
		port ( j:				in std_logic;
				 k:				in std_logic;
				 clk:				in std_logic;
				 not_reset: 	in std_logic;
				 q:				out std_logic;
				 not_q:			out std_logic
		);
	end component;
	component AND_gate is
		port( inputA: 	in std_logic;
				inputB:	in std_logic;
				output:	out std_logic
		);
	end component;
	component AND_3_gate is
		port( inputA: 	in std_logic;
				inputB:	in std_logic;
				inputC:	in std_logic;
				output:	out std_logic
		);
	end component;
	component OR_gate is
		port( inputA: 	in std_logic;
				inputB:	in std_logic;
				output:	out std_logic
		);
	end component;
	component NOT_gate is
		port( input: 	in std_logic;
				output:	out std_logic
		);
	end component;
	
	signal and_0_output:				std_logic;
	signal and_1_output:				std_logic;
	signal and_2_output:				std_logic;
	signal and_3_output:				std_logic;
	signal and_4_output:				std_logic;
	signal and_5_output:				std_logic;
	signal and_6_output:				std_logic;
	signal or_0_output:				std_logic;
	signal or_1_output:				std_logic;
	signal or_2_output:				std_logic;
	signal jk_ff_0_q:					std_logic;
	signal jk_ff_0_not_q:			std_logic;
	signal jk_ff_1_q:					std_logic;
	signal jk_ff_1_not_q:			std_logic;
	signal jk_ff_2_q:					std_logic;
	signal jk_ff_2_not_q:			std_logic;
	signal not_0_output:				std_logic;
	signal not_1_output:				std_logic;
	
begin
	
	not_0:			NOT_gate port map (input => RX, output => not_0_output);
	and_0:			AND_gate port map (inputA => not_0_output, inputB => jk_ff_0_not_q, output => and_0_output);
	and_1:			AND_gate port map (inputA => clk, inputB => jk_ff_0_not_q, output => and_1_output);
	and_2:			AND_gate port map (inputA => SLOW_CLK, inputB => jk_ff_0_q, output => and_2_output);
	or_0:				OR_gate port map (inputA => and_1_output, inputB => and_2_output, output => or_0_output);
	ms_jk_0:			ms_jk_ff port map (j => and_0_output, k => or_1_output, clk => or_0_output, not_reset => not_reset, q => jk_ff_0_q, not_q => jk_ff_0_not_q);
	
	or_1:				OR_gate port map (inputA => and_3_output, inputB => end_ctrl, output => or_1_output);
	and_3:			AND_gate port map (inputA => RX, inputB => jk_ff_1_not_q, output => and_3_output);
	
	not_1:			NOT_gate port map (input => RX, output => not_1_output);
	and_4:			AND_3_gate port map (inputA => half_tick_ctrl, inputB => not_1_output, inputC => jk_ff_1_not_q, output => and_4_output);
	ms_jk_1:			ms_jk_ff port map (j => and_4_output, k => end_ctrl, clk => SLOW_CLK, not_reset => not_reset, q => jk_ff_1_q, not_q => jk_ff_1_not_q);
	
	--and_5:			AND_gate port map (inputA => clk, inputB => jk_ff_2_q, output => and_5_output);
	--and_6:			AND_gate port map (inputA => SLOW_CLK, inputB => jk_ff_2_not_q, output => and_6_output);
	--or_2:				OR_gate port map (inputA => and_5_output, inputB => and_6_output, output => or_2_output);
	--ms_jk_2:			ms_jk_ff port map (j => end_ctrl, k => CLR_RX_FLAG, clk => or_2_output, not_reset => not_reset, q => jk_ff_2_q, not_q => jk_ff_2_not_q);
	ms_jk_2:			ms_jk_ff port map (j => end_ctrl, k => CLR_RX_FLAG, clk => clk, not_reset => not_reset, q => jk_ff_2_q, not_q => jk_ff_2_not_q);
	
	RX_FLAG <= jk_ff_2_q;
	not_go <= jk_ff_1_not_q;
	SLOW_CLK_run <= jk_ff_0_q;
	
end gates;