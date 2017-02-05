library ieee;
use ieee.std_logic_1164.all;

entity tty_input_state_gen is
	port ( clk:									in std_logic;
			 SLOW_clk:							in std_logic;
			 SLOW_clk_RUN:						out std_logic;
			 not_reset:							in std_logic;
			 ser_clk:							out std_logic;
			 CLR_RX_FLAG:						in std_logic;
			 RX_FLAG:							out std_logic;
			 RX:									in std_logic
	);
end tty_input_state_gen;

architecture rtl of tty_input_state_gen is
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
	
	signal or_0_output:						std_logic;
	
	signal and_0_output:						std_logic;
	signal and_1_output:						std_logic;
	signal and_2_output:						std_logic;
	signal and_3_output:						std_logic;
	signal and_4_output:						std_logic;
	
	signal ms_jk_ff_0_q:						std_logic;
	signal ms_jk_ff_0_not_q:				std_logic;
	signal ms_jk_ff_1_q:						std_logic;
	signal ms_jk_ff_1_not_q:				std_logic;
	
	signal nor_0_output:						std_logic;
	
	signal counter_outputs:					std_logic_vector(3 downto 0);
	
	begin
		
		not_0:								NOT_gate port map (input => and_4_output, output => not_0_output);
		not_2:								NOT_gate port map (input => nor_0_output, output => not_2_output);
		and_0:								AND_3_gate port map (inputA => SLOW_clk, inputB => not_2_output, inputC => not_0_output, output => and_0_output);
		and_1:								AND_gate port map (inputA => SLOW_clk, inputB => and_4_output, output => and_1_output);
		
		and_2:								AND_gate port map (inputA => clk, inputB => ms_jk_ff_0_not_q, output => and_2_output);
		and_3:								AND_gate port map (inputA => and_1_output, inputB => ms_jk_ff_0_q, output => and_3_output);
		or_0:									OR_gate port map (inputA => and_2_output, inputB => and_3_output, output => or_0_output);
		not_1:								NOT_gate port map (input => RX, output => not_1_output);
		ms_jk_ff_0:							ms_jk_ff port map ( j => not_1_output, k => ms_jk_ff_0_q, q => ms_jk_ff_0_q, not_q => ms_jk_ff_0_not_q, clk => or_0_output, not_reset => not_reset);
		
		tty_output_counter:				counter_4_bit port map ( clr => and_4_output, not_reset => not_reset, clk => SLOW_clk, output => counter_outputs);
		nor_0:								NOR_4_gate port map (inputA => counter_outputs(0), inputB => counter_outputs(1), inputC => counter_outputs(2), inputD => counter_outputs(3), output => nor_0_output);
		and_4:								AND_gate port map (inputA => counter_outputs(3), inputB => counter_outputs(1), output => and_4_output);
		
		ms_jk_ff_1:							ms_jk_ff port map ( j => and_4_output, k => CLR_RX_FLAG, q => ms_jk_ff_1_q, not_q => ms_jk_ff_1_not_q, clk => clk, not_reset => not_reset);
		
		SLOW_clk_RUN <= ms_jk_ff_0_q;
		ser_clk <= and_0_output;
		RX_FLAG <= ms_jk_ff_1_q;
		
end rtl;