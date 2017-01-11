library ieee;
use ieee.std_logic_1164.all;

entity s_state_generator is
	port ( clk:									in std_logic;
			 not_reset:							in std_logic;
			 next_state:						in std_logic;
			 end_state:							in std_logic;
			 load:								in std_logic_vector(1 downto 0);
			 HLT_flag:							in std_logic;
			 HLT_indicator:					out std_logic;
			 s_states:							out std_logic_vector(7 downto 0)
	);
end s_state_generator;

architecture rtl of s_state_generator is
	component AND_gate is
		port( inputA: 							in std_logic;
				inputB:							in std_logic;
				output:							out std_logic
		);
	end component;
	component counter_3_bit_with_load is
		port ( clr:								in std_logic;
				 inc:								in std_logic;
				 load:							in std_logic;
				 input:							in std_logic_vector(2 downto 0);
				 not_reset:						in std_logic;
				 clk:								in std_logic;
				 output:							out std_logic_vector(2 downto 0)
		);
	end component;
	component decoder_3_to_8 is
		port ( input:							in std_logic_vector(2 downto 0);
				 output:							out std_logic_vector(7 downto 0)
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
	
	signal s_state_signals:					std_logic_vector(7 downto 0);
	signal counter_inputs:					std_logic_vector(2 downto 0);
	signal counter_outputs:					std_logic_vector(2 downto 0);
	signal ff_outputs:						std_logic_vector(1 downto 0);
	signal not_q:								std_logic_vector(1 downto 0);
   signal and_outputs:						std_logic_vector(3 downto 0);
	signal not_end_state:					std_logic;
	
	begin
		
		not_end_state <= not end_state;
		counter_inputs(0) <= load(0);
		counter_inputs(1) <= load(1);
		counter_inputs(2) <= '0';
		HLT_indicator <= ff_outputs(1);
		
		and_0:				AND_gate port map (inputA => end_state, inputB => ff_outputs(0), output => and_outputs(0));
		and_1:				AND_gate port map (inputA => ff_outputs(0), inputB => end_state, output => and_outputs(1));
		and_2:				AND_gate port map (inputA => clk, inputB => next_state, output => and_outputs(2));
		and_3:				AND_gate port map (inputA => next_state, inputB => not_end_state, output => and_outputs(3));
		
		ms_jk_ff_0:			ms_jk_ff port map (j => HLT_flag, k => and_outputs(0), clk => clk, not_reset => not_reset, q => ff_outputs(0), not_q => not_q(0));
		ms_jk_ff_1:			ms_jk_ff port map (j => and_outputs(1), k => s_state_signals(0), clk => clk, not_reset => not_reset, q => ff_outputs(1), not_q => not_q(1));
		
		counter:				counter_3_bit_with_load port map ( clr => end_state,
																			  inc => and_outputs(3),
																			  load => load(1),
																			  input => counter_inputs,
																			  not_reset => not_reset,
																			  clk => and_outputs(2),
																			  output => counter_outputs
								);
		
		decoder:				decoder_3_to_8				port map ( input => counter_outputs, output => s_state_signals);
		
		s_states <= s_state_signals;
		
end rtl;