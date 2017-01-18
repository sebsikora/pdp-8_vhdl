library ieee;
use ieee.std_logic_1164.all;

entity s_state_generator is
	port ( clk:									in std_logic;
			 not_reset:							in std_logic;
			 NEXT_STATE:						in std_logic;
			 END_STATE:							in std_logic;
			 LOAD:								in std_logic_vector(1 downto 0);
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
	signal not_q:								std_logic_vector(1 downto 0);
   signal and_outputs:						std_logic_vector(1 downto 0);
	signal not_END_STATE:					std_logic;
	signal counter_load_signal:			std_logic;
	signal not_counter_load_signal:		std_logic;
	signal counter_inc_signal:				std_logic;
	
	begin
		
		counter_inputs(0) <= LOAD(0);
		counter_inputs(1) <= LOAD(1);
		counter_inputs(2) <= '0';
		not_END_STATE <= not END_STATE;
		not_counter_load_signal <= not counter_load_signal;
		counter_inc_signal <= and_outputs(1);
		
		and_0:				AND_gate 	port map (inputA => clk, inputB => NEXT_STATE, output => and_outputs(0));
		and_1:				AND_3_gate 	port map (inputA => NEXT_STATE, inputB => not_END_STATE, inputC => not_counter_load_signal, output => and_outputs(1));
		or_0:					OR_gate 		port map (inputA => LOAD(0), inputB => LOAD(1), output => counter_load_signal);
		
		counter:				counter_3_bit_with_load port map ( clr => END_STATE,
																			  inc => counter_inc_signal,
																			  load => counter_load_signal,
																			  input => counter_inputs,
																			  not_reset => not_reset,
																			  clk => and_outputs(0),
																			  output => counter_outputs
								);
		
		decoder:				decoder_3_to_8				port map ( input => counter_outputs, output => s_state_signals);
		
		s_states <= s_state_signals;
		
end rtl;