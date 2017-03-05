library ieee;
use ieee.std_logic_1164.all;

entity logic_unit is
	port ( sub_counter_in:		in std_logic_vector(3 downto 0);
			 counter_in:			in std_logic_vector(3 downto 0);
			 SLOW_CLK:				in std_logic;
			 SLOW_CLK_run:			in std_logic;
			 not_go:					in std_logic;
			 clr_ctrl:				out std_logic;
			 half_tick_ctrl:		out std_logic;
			 SR_CLK:					out std_logic;
			 end_ctrl:				out std_logic;
			 tick_ctrl:				out std_logic
	);
end logic_unit;

architecture gates of logic_unit is
	component AND_4_gate is
		port( inputA: 	in std_logic;
				inputB:	in std_logic;
				inputC:	in std_logic;
				inputD:	in std_logic;
				output:	out std_logic
		);
	end component;
	component AND_gate is
		port( inputA: 	in std_logic;
				inputB:	in std_logic;
				output:	out std_logic
		);
	end component;
	component AND_3_gate is
		port( inputA: 	in std_logic;
				inputB:	in std_logic;
				inputC:	in std_logic;
				output:	out std_logic
		);
	end component;
	component OR_3_gate is
		port( inputA: 	in std_logic;
				inputB:	in std_logic;
				inputC:	in std_logic;
				output:	out std_logic
		);
	end component;
	component NOT_gate is
		port( input: 	in std_logic;
				output:	out std_logic
		);
	end component;
	
	signal and_0_output:					std_logic;
	signal and_1_output:					std_logic;
	signal and_2_output:					std_logic;
	signal and_3_output:					std_logic;
	signal and_4_output:					std_logic;
	signal and_5_output:					std_logic;
	signal or_0_output:					std_logic;
	signal not_0_output:					std_logic;
	signal not_1_output:					std_logic;
	signal not_2_output:					std_logic;
	signal not_3_output:					std_logic;
	signal not_4_output:					std_logic;
	
begin
	not_4:				NOT_gate port map (input => SLOW_CLK_run, output => not_4_output);
	or_0:					OR_3_gate port map (inputA => and_2_output, inputB => not_4_output, inputC => and_1_output, output => or_0_output);
	and_1:				AND_gate port map (inputA => and_0_output, inputB => not_go, output => and_1_output);
	
	not_0:				NOT_gate port map (input => sub_counter_in(3), output => not_0_output);
	and_0:				AND_4_gate port map (inputA => sub_counter_in(0), inputB => sub_counter_in(1), inputC => sub_counter_in(2), inputD => not_0_output, output => and_0_output);
	and_2:				AND_4_gate port map (inputA => sub_counter_in(0), inputB => sub_counter_in(1), inputC => sub_counter_in(2), inputD => sub_counter_in(3), output => and_2_output);
	
	not_1:				NOT_gate port map (input => counter_in(1), output => not_1_output);
	not_2:				NOT_gate port map (input => counter_in(2), output => not_2_output);
	and_3:				AND_4_gate port map (inputA => counter_in(0), inputB => not_1_output, inputC => not_2_output, inputD => counter_in(3), output => and_3_output);
	
	not_3:				NOT_gate port map (input => counter_in(3), output => not_3_output);
	and_4:				AND_gate port map (inputA => and_2_output, inputB => and_3_output, output => and_4_output);
	and_5:				AND_3_gate port map (inputA => and_2_output, inputB => not_3_output, inputC => SLOW_CLK, output => and_5_output);
	
	half_tick_ctrl <= and_0_output;
	SR_CLK <= and_5_output;
	end_ctrl <= and_4_output;
	clr_ctrl <= or_0_output;
	tick_ctrl <= and_2_output;
	
end gates;