library ieee;
use ieee.std_logic_1164.all;

entity tty_output_state_gen_2 is
	port ( clk:									in std_logic;
			 SLOW_clk:							in std_logic;
			 SLOW_clk_RUN:						out std_logic;
			 not_reset:							in std_logic;
			 ser_clk:							out std_logic;
			 ser_data_out:						in std_logic;
			 SEND:								in std_logic;
			 CLR_TX_FLAG:						in std_logic;
			 TX_FLAG:							out std_logic;
			 TX:									out std_logic
	);
end tty_output_state_gen_2;

architecture rtl of tty_output_state_gen_2 is
	component NAND_gate is
		port( inputA: 							in std_logic;
				inputB:							in std_logic;
				output:							out std_logic
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
	component NOR_4_gate is
		port( inputA: 							in std_logic;
				inputB:							in std_logic;
				inputC: 							in std_logic;
				inputD:							in std_logic;
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
	
	signal or_0_output:						std_logic;
	signal or_1_output:						std_logic;
	signal or_2_output:						std_logic;
	signal or_3_output:						std_logic;
	signal or_4_output:						std_logic;
	signal or_5_output:						std_logic;
	
	signal and_0_output:						std_logic;
	signal and_1_output:						std_logic;
	signal and_2_output:						std_logic;
	signal and_3_output:						std_logic;
	signal and_4_output:						std_logic;
	signal and_5_output:						std_logic;
	signal and_6_output:						std_logic;
	signal and_7_output:						std_logic;
	signal and_8_output:						std_logic;
	
	signal ms_jk_ff_0_q:						std_logic;
	signal ms_jk_ff_0_not_q:				std_logic;
	signal ms_jk_ff_1_q:						std_logic;
	signal ms_jk_ff_1_not_q:				std_logic;
	signal ms_jk_ff_2_q:						std_logic;
	signal ms_jk_ff_2_not_q:				std_logic;
	
	signal nor_0_output:						std_logic;
	signal nand_0_output:					std_logic;
	
	signal counter_outputs:					std_logic_vector(3 downto 0);
	
	begin
		
		and_0:								AND_gate port map (inputA => clk, inputB => ms_jk_ff_0_not_q, output => and_0_output);
		and_1:								AND_gate port map (inputA => SLOW_clk, inputB => ms_jk_ff_0_q, output => and_1_output);
		or_0:									OR_gate port map (inputA => and_0_output, inputB => and_1_output, output => or_0_output);
		ms_jk_ff_0:							ms_jk_ff port map (j => SEND, k => and_6_output, clk => or_0_output, not_reset => not_reset, q => ms_jk_ff_0_q, not_q => ms_jk_ff_0_not_q);
		
		ms_jk_ff_1:							ms_jk_ff port map (j => ms_jk_ff_0_q, k => and_6_output, clk => SLOW_clk, not_reset => not_reset, q => ms_jk_ff_1_q, not_q => ms_jk_ff_1_not_q);
		
		or_1:									OR_gate port map (inputA => ms_jk_ff_0_q, inputB => or_3_output, output => or_1_output);
		and_2:								AND_gate port map (inputA => clk, inputB => CLR_TX_FLAG, output => and_2_output);
		and_3:								AND_gate port map (inputA => SLOW_clk, inputB => or_1_output, output => and_3_output);
		or_2:									OR_gate port map (inputA => and_2_output, inputB => and_3_output, output => or_2_output);
		ms_jk_ff_2:							ms_jk_ff port map (j => or_3_output, k => and_6_output, clk => or_2_output, not_reset => not_reset, q => ms_jk_ff_2_q, not_q => ms_jk_ff_2_not_q);
		or_3:									OR_gate port map (inputA => CLR_TX_FLAG, inputB => ms_jk_ff_0_q, output => or_3_output);
		
		and_4:								AND_gate port map (inputA => SLOW_clk, inputB => ms_jk_ff_1_q, output => and_4_output);
		not_0:								NOT_gate port map (input => and_6_output, output => not_0_output);
		tty_output_counter:				counter_4_bit port map (clr => not_0_output, not_reset => not_reset, clk => and_4_output, output => counter_outputs);
		nor_0:								NOR_4_gate port map (inputA => counter_outputs(0), inputB => counter_outputs(1), inputC => counter_outputs(2), inputD => counter_outputs(3), output => nor_0_output);
		and_5:								AND_gate port map (inputA => counter_outputs(3), inputB => or_4_output, output => and_5_output);
		or_4:									OR_gate port map (inputA => counter_outputs(0), inputB => counter_outputs(1), output => or_4_output);
		and_6:								AND_gate port map (inputA => counter_outputs(1), inputB => counter_outputs(3), output => and_6_output);
		
		not_1:								NOT_gate port map (input => and_5_output, output => not_1_output);
		not_2:								NOT_gate port map (input => nor_0_output, output => not_2_output);
		and_7:								AND_3_gate port map (inputA => SLOW_clk, inputB => not_1_output, inputC => not_2_output,output => and_7_output);
		not_3:								NOT_gate port map (input => ser_data_out, output => not_3_output);
		not_4:								NOT_gate port map (input => and_5_output, output => not_4_output);
		and_8:								AND_gate port map (inputA => not_3_output, inputB => not_4_output, output => and_8_output);
		or_5:									OR_gate port map (inputA => and_8_output, inputB => nor_0_output, output => or_5_output);
		nand_0:								NAND_gate port map (inputA => or_5_output, inputB => ms_jk_ff_1_q, output => nand_0_output);
		
		TX <= nand_0_output;
		TX_FLAG <= ms_jk_ff_2_not_q;
		ser_clk <= and_7_output;
		SLOW_clk_RUN <= ms_jk_ff_0_q;
		
end rtl;