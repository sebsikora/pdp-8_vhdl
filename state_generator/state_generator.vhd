library ieee;
use ieee.std_logic_1164.all;

entity state_generator is
	port ( clk:										in std_logic;
			 not_reset:								in std_logic;
			 HLT_flag:								in std_logic;
			 NEXT_STATE:							in std_logic;
			 END_STATE:								in std_logic;
			 LOAD:									in std_logic_vector(1 downto 0);
			 HLT_indicator:						out std_logic;
			 s_states:								out std_logic_vector(7 downto 0);
			 t_states:								out std_logic_vector(7 downto 0)
	);
end state_generator;

architecture rtl of state_generator is
	component s_state_generator is
		port ( clk:									in std_logic;
				 not_reset:							in std_logic;
				 NEXT_STATE:						in std_logic;
				 END_STATE:							in std_logic;
				 LOAD:								in std_logic_vector(1 downto 0);
				 HLT_flag:							in std_logic;
				 HLT_indicator:					out std_logic;
				 s_states:							out std_logic_vector(7 downto 0)
		);
	end component;
	component t_state_generator is
		port ( not_reset:							in std_logic;
				 clk:									in std_logic;
				 NEXT_STATE:						in std_logic;
				 END_STATE:							in std_logic;
				 t_states:							out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal s_state_signals:						std_logic_vector(7 downto 0);
	signal t_state_signals:						std_logic_vector(7 downto 0);
	signal NEXT_STATE_signal:					std_logic;
	signal END_STATE_signal:					std_logic;
	
	begin
		
		NEXT_STATE_signal <= NEXT_STATE;
		END_STATE_signal <= END_STATE;
		
		
		s_state_generator_0:		s_state_generator port map ( clk => clk,
																			  not_reset => not_reset,
																			  NEXT_STATE => NEXT_STATE_signal,
																			  END_STATE => END_STATE_signal,
																			  LOAD => LOAD,
																			  HLT_flag => HLT_flag,
																			  HLT_indicator => HLT_indicator,
																			  s_states => s_state_signals
										);
		
		t_state_generator_0:		t_state_generator port map ( not_reset => not_reset,
																			  clk => clk,
																			  NEXT_STATE => NEXT_STATE_signal,
																			  END_STATE => END_STATE_signal,
																			  t_states => t_state_signals
										);
		
		s_states(7 downto 0) <= s_state_signals(7 downto 0);
		t_states(7 downto 0) <= t_state_signals(7 downto 0);
		
end rtl;