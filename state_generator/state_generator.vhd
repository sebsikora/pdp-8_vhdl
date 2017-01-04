library ieee;
use ieee.std_logic_1164.all;

entity state_generator is
	port ( irq:									in std_logic;
			 IR:									in std_logic_vector(4 downto 0);
			 not_reset:							in std_logic;
			 start:								in std_logic;
			 clk:									in std_logic;
			 s_states:							out std_logic_vector(3 downto 0);
			 t_states:							out std_logic_vector(5 downto 0)
	);
end state_generator;

architecture rtl of state_generator is
	component s_state_generator is
		port ( irq:								in std_logic;
				 IR:								in std_logic_vector(4 downto 0);
				 not_reset:						in std_logic;
				 next_state:					in std_logic;
				 start:							in std_logic;
				 clk:								in std_logic;
				 s_states:						out std_logic_vector(3 downto 0)
		);
	end component;
	component t_state_generator is
		port ( not_reset:						in std_logic;
				 clr:								in std_logic;
				 next_state:					out std_logic;
				 clk:								in std_logic;
				 s_states:						in std_logic_vector(3 downto 0);
				 t_states:						out std_logic_vector(5 downto 0)
		);
	end component;
	
	signal s_state_signals:					std_logic_vector(3 downto 0);
	signal next_state:						std_logic;
	
	begin
		
		s_state_generator_0:					s_state_generator port map (irq => irq, IR => IR, not_reset => not_reset, next_state => next_state, start => start, clk => clk, s_states => s_state_signals);
		t_state_generator_0:					t_state_generator port map (not_reset => not_reset, clr => '0', next_state => next_state, clk => clk, s_states => s_state_signals, t_states => t_states);
		
		s_states(3 downto 0) <= s_state_signals(3 downto 0);
		
end rtl;