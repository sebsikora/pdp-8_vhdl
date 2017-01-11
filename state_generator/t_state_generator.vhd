library ieee;
use ieee.std_logic_1164.all;

entity t_state_generator is
	port ( not_reset:						in std_logic;
			 clk:								in std_logic;
			 NEXT_STATE:					in std_logic;
			 END_STATE:						in std_logic;
			 t_states:						out std_logic_vector(7 downto 0)
	);
end t_state_generator;

architecture rtl of t_state_generator is
	component counter_3_bit is
		port ( clr:							in std_logic;
				 not_reset:					in std_logic;
				 clk:							in std_logic;
				 output:						out std_logic_vector(2 downto 0)
		);
	end component;
	component decoder_3_to_8 is
		port ( input:						in std_logic_vector(2 downto 0);
				 output:						out std_logic_vector(7 downto 0)
		);
	end component;
	component OR_gate is
		port( inputA: 						in std_logic;
				inputB:						in std_logic;
				output:						out std_logic
		);
	end component;
	
	signal counter_outputs:				std_logic_vector(2 downto 0);
	signal decoder_outputs:				std_logic_vector(7 downto 0);
	signal change_state:					std_logic;
	
	begin
		
		or_0:					OR_gate	 		port map (inputA => NEXT_STATE, inputB => END_STATE, output => change_state);
		
		counter_3_0:		counter_3_bit	port map (clr => change_state, not_reset => not_reset, clk => clk, output => counter_outputs);
		
		decoder_3_to_8_0:	decoder_3_to_8 port map (input => counter_outputs, output => decoder_outputs);
		
		t_states(7 downto 0) <= decoder_outputs(7 downto 0);
		
end rtl;