library ieee;
use ieee.std_logic_1164.all;

entity tty_input_state_gen_2 is
	port ( clk:									in std_logic;
			 SLOW_clk:							out std_logic;
			 SLOW_clk_RUN:						out std_logic;
			 not_reset:							in std_logic;
			 ser_clk:							out std_logic;
			 CLR_RX_FLAG:						in std_logic;
			 RX_FLAG:							out std_logic;
			 RX:									in std_logic;
			 GO:									out std_logic;
			 ser_data_in:						out std_logic
	);
end tty_input_state_gen_2;

architecture rtl of tty_input_state_gen_2 is
	component divide_by_n is
		port ( clk:								in std_logic;
				 not_clear:						in std_logic;
				 SLOW_clk:						out std_logic;
				 not_reset:						in std_logic
		);
	end component;
	component AND_gate is
		port( inputA: 							in std_logic;
				inputB:							in std_logic;
				output:							out std_logic
		);
	end component;
	component OR_gate is
		port( inputA: 							in std_logic;
				inputB:							in std_logic;
				output:							out std_logic
		);
	end component;
	component AND_3_gate is
		port( inputA: 							in std_logic;
				inputB:							in std_logic;
				inputC:							in std_logic;
				output:							out std_logic
		);
	end component;
	component OR_3_gate is
		port( inputA: 							in std_logic;
				inputB:							in std_logic;
				inputC:							in std_logic;
				output:							out std_logic
		);
	end component;
	component ms_jk_ff is
		port ( j:								in std_logic;
				 k:								in std_logic;
				 clk:								in std_logic;
				 not_reset: 					in std_logic;
				 q:								out std_logic;
				 not_q:							out std_logic
		);
	end component;
	component counter_4_bit is
		port ( clr:								in std_logic;
				 not_reset:						in std_logic;
				 clk:								in std_logic;
				 output:							out std_logic_vector(3 downto 0)
		);
	end component;	
	component NOT_gate is
		port( input:							in std_logic;
				output:							out std_logic
		);
	end component;
	
	signal not_0_output:						std_logic;
	signal not_1_output:						std_logic;
	signal not_2_output:						std_logic;
	signal not_3_output:						std_logic;
	signal not_4_output:						std_logic;
	signal not_5_output:						std_logic;
	signal not_6_output:						std_logic;
	
	signal or_0_output:						std_logic;
	signal or_1_output:						std_logic;
	signal or_2_output:						std_logic;
	signal or_3_output:						std_logic;
	
	signal and_0_output:						std_logic;
	signal and_1_output:						std_logic;
	signal and_2_output:						std_logic;
	signal and_3_output:						std_logic;
	signal and_4_output:						std_logic;
	signal and_5_output:						std_logic;
	signal and_6_output:						std_logic;
	signal and_7_output:						std_logic;
	signal and_8_output:						std_logic;
	signal and_9_output:						std_logic;
	signal and_10_output:					std_logic;
	signal and_11_output:					std_logic;
	signal and_12_output:					std_logic;
	signal and_13_output:					std_logic;
	signal and_14_output:					std_logic;
	signal and_15_output:					std_logic;
	signal and_16_output:					std_logic;
	
	signal ms_jk_ff_0_q:						std_logic;
	signal ms_jk_ff_0_not_q:				std_logic;
	signal ms_jk_ff_1_q:						std_logic;
	signal ms_jk_ff_1_not_q:				std_logic;
	signal ms_jk_ff_2_q:						std_logic;
	signal ms_jk_ff_2_not_q:				std_logic;
	signal ms_jk_ff_3_q:						std_logic;
	signal ms_jk_ff_3_not_q:				std_logic;
	signal ms_jk_ff_4_q:						std_logic;
	signal ms_jk_ff_4_not_q:				std_logic;
	
	signal counter_0_outputs:				std_logic_vector(3 downto 0);
	signal counter_1_outputs:				std_logic_vector(3 downto 0);
	
	signal SLOW_clk_RUN_signal:			std_logic;
	signal SLOW_clk_signal:					std_logic;
	signal FAST_clk_signal:					std_logic;
	
	begin
		
		and_14:								AND_gate port map (inputA => clk, inputB => not_reset, output => and_14_output);
		FAST_clk_signal <= and_14_output;
		
		input_clock_divider:				divide_by_n port map (clk => FAST_clk_signal, not_clear => SLOW_clk_RUN_signal, SLOW_clk => SLOW_clk_signal, not_reset => not_reset);
		
		not_0:								NOT_gate port map (input => RX, output => not_0_output);
		and_0:								AND_gate port map (inputA => not_0_output, inputB => ms_jk_ff_0_not_q, output => and_0_output);
		and_12:								AND_gate port map (inputA => and_11_output, inputB => ms_jk_ff_0_q, output => and_12_output);
		and_13:								AND_gate port map (inputA => FAST_clk_signal, inputB => ms_jk_ff_0_not_q, output => and_13_output);
		or_2:									OR_gate port map (inputA => and_12_output, inputB => and_13_output, output => or_2_output);
		ms_jk_ff_0:							ms_jk_ff port map (j => and_0_output, k => and_10_output, clk => or_2_output, not_reset => not_reset, q => ms_jk_ff_0_q, not_q => ms_jk_ff_0_not_q);
		
		tty_input_counter_0:				counter_4_bit port map ( clr => or_0_output, not_reset => not_reset, clk => SLOW_clk_signal, output => counter_0_outputs);	
		and_1:								AND_3_gate port map (inputA => counter_0_outputs(0), inputB => counter_0_outputs(1), inputC => counter_0_outputs(2), output => and_1_output);
		not_1:								NOT_gate port map (input => counter_0_outputs(3), output => not_1_output);
		and_2:								AND_gate port map (inputA => and_1_output, inputB => not_1_output, output => and_2_output);
		and_3:								AND_gate port map (inputA => and_1_output, inputB => counter_0_outputs(3), output => and_3_output);
		or_0:									OR_3_gate port map (inputA => ms_jk_ff_0_not_q, inputB => and_3_output, inputC => and_6_output, output => or_0_output);
		
		not_2:								NOT_gate port map (input => or_1_output, output => not_2_output);
		and_4:								AND_3_gate port map (inputA => not_2_output, inputB => and_3_output, inputC => SLOW_clk_signal, output => and_4_output);
		--and_4:								AND_gate port map (inputA => not_2_output, inputB => and_11_output, output => and_4_output);
		not_3:								NOT_gate port map (input => RX, output => not_3_output);
		and_5:								AND_gate port map (inputA => not_3_output, inputB => and_2_output, output => and_5_output);
		ms_jk_ff_1:							ms_jk_ff port map (j => and_5_output, k => and_10_output, clk => SLOW_clk_signal, not_reset => not_reset, q => ms_jk_ff_1_q, not_q => ms_jk_ff_1_not_q);
		and_6:								AND_gate port map (inputA => and_2_output, inputB => ms_jk_ff_1_not_q, output => and_6_output);
		
		and_11:								AND_gate port map (inputA => SLOW_clk_signal, inputB => and_3_output, output => and_11_output);
		tty_input_counter_1:				counter_4_bit port map ( clr => and_10_output, not_reset => not_reset, clk => and_11_output, output => counter_1_outputs);	
		not_4:								NOT_gate port map (input => counter_1_outputs(1), output => not_4_output);
		not_5:								NOT_gate port map (input => counter_1_outputs(2), output => not_5_output);
		and_7:								AND_3_gate port map (inputA => not_4_output, inputB => not_5_output, inputC => counter_1_outputs(3), output => and_7_output);
		and_8:								AND_gate port map (inputA => not_6_output, inputB => and_7_output, output => and_8_output);
		and_9:								AND_gate port map (inputA => counter_1_outputs(0), inputB => and_7_output, output => and_9_output);
		not_6:								NOT_gate port map (input => counter_1_outputs(0), output => not_6_output);
		or_1:									OR_gate port map (inputA => and_8_output, inputB => and_9_output, output => or_1_output);
		and_10:								AND_gate port map (inputA => and_9_output, inputB => and_3_output, output => and_10_output);
		
		and_15:								AND_gate port map (inputA => SLOW_clk_signal, inputB => ms_jk_ff_2_not_q, output => and_15_output);
		and_16:								AND_gate port map (inputA => FAST_clk_signal, inputB => ms_jk_ff_2_q, output => and_16_output);
		or_3:									OR_gate port map (inputA => and_15_output, inputB => and_16_output, output => or_3_output);
		ms_jk_ff_2:							ms_jk_ff port map (j => and_10_output, k => CLR_RX_FLAG, clk => or_3_output, not_reset => not_reset, q => ms_jk_ff_2_q, not_q => ms_jk_ff_2_not_q);
		
		--ms_jk_ff_3:							ms_jk_ff port map (j => CLR_RX_FLAG, k => ms_jk_ff_4_q, clk => FAST_clk_signal, not_reset => not_reset, q => ms_jk_ff_3_q, not_q => ms_jk_ff_3_not_q);
		--ms_jk_ff_4:							ms_jk_ff port map (j => ms_jk_ff_2_q, k => ms_jk_ff_3_q, clk => FAST_clk_signal, not_reset => not_reset, q => ms_jk_ff_4_q, not_q => ms_jk_ff_4_not_q);
		
		SLOW_clk_RUN_signal <= ms_jk_ff_0_q;
		SLOW_clk_RUN <= SLOW_clk_RUN_signal;
		SLOW_clk <= SLOW_clk_signal;
		ser_clk <= and_4_output;
		RX_FLAG <= ms_jk_ff_2_q;
		ser_data_in <= RX;
		GO <= ms_jk_ff_1_q;
		
end rtl;