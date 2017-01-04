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
	begin
		
end rtl;