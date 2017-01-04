library ieee;
use ieee.std_logic_1164.all;

entity t_state_generator is
	port ( not_reset:						in std_logic;
			 clr:								in std_logic;
			 next_state:					out std_logic;
			 clk:								in std_logic;
			 s_states:						in std_logic_vector(3 downto 0);
			 t_states:						out std_logic_vector(5 downto 0)
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
	component decoder_3_to_6 is
		port ( input:						in std_logic_vector(2 downto 0);
				 output:						out std_logic_vector(5 downto 0)
		);
	end component;
	component AND_gate is
		port( inputA:	 					in std_logic;
				inputB:						in std_logic;
				output:						out std_logic
		);
	end component;
	component OR_gate is
		port( inputA: 						in std_logic;
				inputB:						in std_logic;
				output:						out std_logic
		);
	end component;
	
	signal counter_outputs:				std_logic_vector(2 downto 0);
	signal decoder_outputs:				std_logic_vector(5 downto 0);
	signal and_outputs:					std_logic_vector(3 downto 0);
	signal or_outputs:					std_logic_vector(3 downto 0);
	
	begin
		
		and_0:				AND_gate  		port map (inputA => decoder_outputs(4), inputB => s_states(0), output => and_outputs(0));
		and_1:				AND_gate  		port map (inputA => decoder_outputs(3), inputB => s_states(1), output => and_outputs(1));
		and_2:				AND_gate  		port map (inputA => decoder_outputs(5), inputB => s_states(2), output => and_outputs(2));
		and_3:				AND_gate  		port map (inputA => decoder_outputs(2), inputB => s_states(3), output => and_outputs(3));
		
		or_0:					OR_gate	 		port map (inputA => and_outputs(0), inputB => and_outputs(1), output => or_outputs(0));
		or_1:					OR_gate 		 	port map (inputA => or_outputs(0), inputB => and_outputs(2), output => or_outputs(1));
		or_2:					OR_gate	 		port map (inputA => or_outputs(1), inputB => and_outputs(3), output => or_outputs(2));
		or_3:					OR_gate	 		port map (inputA => or_outputs(2), inputB => clr, output => or_outputs(3));
		
		counter_3_0:		counter_3_bit	port map (clr => or_outputs(3), not_reset => not_reset, clk => clk, output => counter_outputs);
		
		decoder_3_to_6_0:	decoder_3_to_6 port map (input => counter_outputs, output => decoder_outputs);
		
		t_states(5 downto 0) <= decoder_outputs(5 downto 0);
		
		next_state <= or_outputs(2);
		
end rtl;