library ieee;
use ieee.std_logic_1164.all;

entity clock_generator is
	port ( START:									in std_logic;
			 STEP:									in std_logic;
			 clk_in:									in std_logic;
			 END_STATE:								in std_logic;
			 clk:										out std_logic;
			 not_reset:								in std_logic;
			 HLT_flag:								in std_logic;
			 HLT_INDICATOR:						out std_logic;
			 RUN_INDICATOR:						out std_logic;
			 FP_ADDR_LOAD_in: 					in std_logic;
			 FP_ADDR_LOAD_out: 					out std_logic;
			 FP_EXAMINE_in: 						in std_logic;
			 FP_EXAMINE_out: 						out std_logic;
			 FP_DEPOSIT_in: 						in std_logic;
			 FP_DEPOSIT_out: 						out std_logic
	);
end clock_generator;

architecture rtl of clock_generator is
	component ms_jk_ff is
		port ( j:									in std_logic;
				 k:									in std_logic;
				 clk:									in std_logic;
				 not_reset: 						in std_logic;
				 q:									out std_logic;
				 not_q:								out std_logic
		);
	end component;
	component AND_gate is
		port( inputA: 								in std_logic;
				inputB:								in std_logic;
				output:								out std_logic
		);
	end component;
	component AND_3_gate is
		port( inputA: 								in std_logic;
				inputB:								in std_logic;
				inputC:								in std_logic;
				output:								out std_logic
		);
	end component;
	component OR_gate is
		port( inputA: 								in std_logic;
				inputB:								in std_logic;
				output:								out std_logic
		);
	end component;
	component front_panel_latches is
		port ( clk:									in std_logic;
				 not_reset:							in std_logic;
				 END_STATE:							in std_logic;
				 FP_CMD:								out std_logic;
				 FP_ADDR_LOAD_momentary:		in std_logic;
				 FP_EXAMINE_momentary:			in std_logic;
				 FP_DEPOST_momentary:			in std_logic;
				 FP_ADDR_LOAD_latched:			out std_logic;
				 FP_EXAMINE_latched:				out std_logic;
				 FP_DEPOSIT_latched:				out std_logic
		);
	end component;
	
	signal and_outputs:							std_logic_vector(2 downto 0);
	signal not_or_output_1:						std_logic;
	signal or_outputs:							std_logic_vector(2 downto 0);
	signal ff_output_0:							std_logic;
	signal ff_not_output_0:						std_logic;
	signal ff_output_1:							std_logic;
	signal ff_not_output_1:						std_logic;
	signal ff_output_2:							std_logic;
	signal ff_not_output_2:						std_logic;
	signal ff_output_3:							std_logic;
	signal ff_not_output_3:						std_logic;
	signal FP_CMD_flag:							std_logic;
	signal clk_signal:							std_logic;
	
	begin
	
	clk <= clk_signal;
	not_or_output_1 <= not or_outputs(1);
	
	and_0:				AND_3_gate port map (inputA => or_outputs(2), inputB => END_STATE, inputC => clk_signal, output => and_outputs(0));
	and_1:				AND_gate port map (inputA => END_STATE, inputB => ff_output_1, output => and_outputs(1));
	and_2:				AND_3_gate port map (inputA => or_outputs(1), inputB => ff_output_3, inputC => clk_in, output => clk_signal);
	
	or_0:					OR_gate  port map (inputA => START, inputB => and_outputs(0), output => or_outputs(0));
	or_1:					OR_gate  port map (inputA => ff_output_0, inputB => FP_CMD_flag, output => or_outputs(1));
	or_2:					OR_gate  port map (inputA => ff_output_1, inputB => STEP, output => or_outputs(2));
	
	ms_jk_ff_0:			ms_jk_ff port map ( j => '1', k => '1', clk => or_outputs(0), not_reset => not_reset, q => ff_output_0, not_q => ff_not_output_0);
	ms_jk_ff_1:			ms_jk_ff port map ( j => HLT_flag, k => ff_output_2, clk => clk_signal, not_reset => not_reset, q => ff_output_1, not_q => ff_not_output_1);
	ms_jk_ff_2:			ms_jk_ff port map ( j => and_outputs(1), k => ff_output_2, clk => clk_signal, not_reset => not_reset, q => ff_output_2, not_q => ff_not_output_2);
	ms_jk_ff_3:			ms_jk_ff port map ( j => or_outputs(1), k => not_or_output_1, clk => clk_in, not_reset => not_reset, q => ff_output_3, not_q => ff_not_output_3);
	
	fp_latch_bank:		front_panel_latches port map ( clk => clk_signal,
																	 not_reset => not_reset,
																	 END_STATE => END_STATE,
																	 FP_CMD => FP_CMD_flag,
																	 FP_ADDR_LOAD_momentary => FP_ADDR_LOAD_in,
																	 FP_ADDR_LOAD_latched => FP_ADDR_LOAD_out,
																	 FP_EXAMINE_momentary => FP_EXAMINE_in,
																	 FP_EXAMINE_latched => FP_EXAMINE_out,
																	 FP_DEPOST_momentary => FP_DEPOSIT_in,
																	 FP_DEPOSIT_latched => FP_DEPOSIT_out
							);
	
	HLT_INDICATOR <= ff_output_2;
	RUN_INDICATOR <= ff_output_0;
	
end rtl;
