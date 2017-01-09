library ieee;
use ieee.std_logic_1164.all;

entity state_generator is
	port ( irq:									in std_logic;
			 IR:									in std_logic_vector(4 downto 0);
			 step:								in std_logic;
			 FP_CMD:								in std_logic;
			 not_reset:							in std_logic;
			 start:								in std_logic;
			 clk:									in std_logic;
			 state_clk:							out std_logic;
			 HLT:									in std_logic;
			 HLT_indicator:					out std_logic;
			 s_states:							out std_logic_vector(3 downto 0);
			 t_states:							out std_logic_vector(5 downto 0)
	);
end state_generator;

architecture rtl of state_generator is
	component register_1_bit is
		port ( input:										in std_logic;
				 output:										out std_logic;
				 load:										in std_logic;
				 clk:											in std_logic;
				 not_reset:									in std_logic
		);
	end component;
	component s_state_generator is
		port ( irq:								in std_logic;
				 IR:								in std_logic_vector(4 downto 0);
				 step:							in std_logic;
				 not_reset:						in std_logic;
				 next_state:					in std_logic;
				 start:							in std_logic;
				 clk:								in std_logic;
				 HLT:								in std_logic;
				 s_states:						out std_logic_vector(3 downto 0)
		);
	end component;
	component t_state_generator is
		port ( not_reset:						in std_logic;
				 clr:								in std_logic;
				 next_state:					out std_logic;
				 clk:								in std_logic;
				 FP_CMD:							in std_logic;
				 s_states:						in std_logic_vector(3 downto 0);
				 t_states:						out std_logic_vector(5 downto 0)
		);
	end component;
	
	signal s_state_signals:					std_logic_vector(3 downto 0);
	signal next_state:						std_logic;
	signal HLT_reg_output:					std_logic;
	signal HLT_reg_clk:						std_logic;
	signal HLT_reg_load:						std_logic;
	
	begin
		
		state_clk <= next_state;
		HLT_reg_load <= (HLT and (not HLT_reg_output)) or start;
		HLT_reg_clk <= start or clk;
		
		HLT_indicator <= HLT_reg_output and (not (s_state_signals(0) or s_state_signals(1) or s_state_signals(2) or s_state_signals(3)));
		
		
		register_1_bit_0:						register_1_bit    port map (input => HLT,
																						 output => HLT_reg_output,
																						 load => HLT_reg_load,
																						 clk => HLT_reg_clk,
																						 not_reset => not_reset
													);
		
		
		s_state_generator_0:					s_state_generator port map (irq => irq, IR => IR, step => step, not_reset => not_reset, next_state => next_state, start => start, clk => clk, HLT => HLT, s_states => s_state_signals);
		t_state_generator_0:					t_state_generator port map (not_reset => not_reset, clr => '0', next_state => next_state, clk => clk, FP_CMD => FP_CMD, s_states => s_state_signals, t_states => t_states);
		
		s_states(3 downto 0) <= s_state_signals(3 downto 0);
		
end rtl;