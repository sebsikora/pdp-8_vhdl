library ieee;
use ieee.std_logic_1164.all;

entity counter_3_bit_with_load is
	port ( clr:							in std_logic;
			 inc:							in std_logic;
			 load:						in std_logic;
			 input:						in std_logic_vector(2 downto 0);
			 not_reset:					in std_logic;
			 clk:							in std_logic;
			 output:						out std_logic_vector(2 downto 0)
	);
end counter_3_bit_with_load;

architecture rtl of counter_3_bit_with_load is
	component ms_jk_ff is
		port ( j:						in std_logic;
				 k:						in std_logic;
				 clk:						in std_logic;
				 not_reset: 			in std_logic;
				 q:						out std_logic;
				 not_q:					out std_logic
		);
	end component;
	component AND_gate is
		port( inputA: 					in std_logic;
				inputB:					in std_logic;
				output:					out std_logic
		);
	end component;
	component OR_3_gate is
		port( inputA: 					in std_logic;
				inputB:					in std_logic;
				inputC:					in std_logic;				
				output:					out std_logic
		);
	end component;
	component OR_gate is
		port( inputA: 					in std_logic;
				inputB:					in std_logic;
				output:					out std_logic
		);
	end component;
	
	signal and_outputs:				std_logic_vector(7 downto 0);
	signal not_q:						std_logic_vector(2 downto 0);
	signal or_outputs:				std_logic_vector(5 downto 0);
	signal ff_outputs:				std_logic_vector(2 downto 0);
	signal not_input:					std_logic_vector(2 downto 0);
	
	begin
		
		not_input(0) <= not input(0);
		not_input(1) <= not input(1);
		not_input(2) <= not input(2);
		
		and_0:				AND_gate   	port map (inputA => input(0), inputB => load, output => and_outputs(0));
		and_1:				AND_gate   	port map (inputA => not_input(0), inputB => load, output => and_outputs(1));
		or_0:					OR_gate 		port map (inputA => inc, inputB => and_outputs(0), output => or_outputs(0));
		or_3_1:				OR_3_gate 	port map (inputA => inc, inputB => and_outputs(1), inputC => clr, output => or_outputs(1));
		ff_0:					ms_jk_ff		port map (j => or_outputs(0), k => or_outputs(1), clk => clk, not_reset => not_reset, q => ff_outputs(0), not_q => not_q(0));
		and_2:				AND_gate   	port map (inputA => inc, inputB => ff_outputs(0), output => and_outputs(2));
		
		and_3:				AND_gate   	port map (inputA => input(1), inputB => load, output => and_outputs(3));
		and_4:				AND_gate   	port map (inputA => not_input(1), inputB => load, output => and_outputs(4));
		or_2:					OR_gate 		port map (inputA => and_outputs(2), inputB => and_outputs(3), output => or_outputs(2));
		or_3_3:				OR_3_gate 	port map (inputA => and_outputs(2), inputB => and_outputs(4), inputC => clr, output => or_outputs(3));
		ff_1:					ms_jk_ff		port map (j => or_outputs(2), k => or_outputs(3), clk => clk, not_reset => not_reset, q => ff_outputs(1), not_q => not_q(1));
		and_5:				AND_gate   	port map (inputA => and_outputs(2), inputB => ff_outputs(1), output => and_outputs(5));
		
		and_6:				AND_gate   	port map (inputA => input(2), inputB => load, output => and_outputs(6));
		and_7:				AND_gate   	port map (inputA => not_input(2), inputB => load, output => and_outputs(7));
		or_4:					OR_gate 		port map (inputA => and_outputs(5), inputB => and_outputs(6), output => or_outputs(4));
		or_3_5:				OR_3_gate 	port map (inputA => and_outputs(5), inputB => and_outputs(7), inputC => clr, output => or_outputs(5));
		ff_2:					ms_jk_ff		port map (j => or_outputs(4), k => or_outputs(5), clk => clk, not_reset => not_reset, q => ff_outputs(2), not_q => not_q(2));
		
		output(0) <= ff_outputs(0);
		output(1) <= ff_outputs(1);
		output(2) <= ff_outputs(2);
		
end rtl;
