library ieee;
use ieee.std_logic_1164.all;

entity clock_generator is
	port ( START:				in std_logic;
			 STEP:				in std_logic;
			 clk_in:				in std_logic;
			 END_STATE:			in std_logic;
			 clk:					out std_logic;
			 not_reset:			in std_logic;
			 RUN_INDICATOR:	out std_logic
	);
end clock_generator;

architecture rtl of clock_generator is
	component ms_jk_ff is
	port ( j:		in std_logic;
			 k:		in std_logic;
			 clk:		in std_logic;
			 not_reset: in std_logic;
			 q:		out std_logic;
			 not_q:	out std_logic
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
	component OR_gate is
	port( inputA: 	in std_logic;
			inputB:	in std_logic;
			output:	out std_logic
	);
	end component;
	signal step_and_output:		std_logic;
	signal clk_and_output:		std_logic;
	signal or_output:				std_logic;
	signal jk_ff_output:			std_logic;
	signal not_q:					std_logic;
	
	begin
	
	and_0:				AND_3_gate port map (inputA => STEP, inputB => clk_and_output, inputC => END_STATE, output => step_and_output);
	and_1:				AND_gate port map (inputA => jk_ff_output, inputB => clk_in, output => clk_and_output);
	or_0:					OR_gate  port map (inputA => START, inputB => step_and_output, output => or_output);
	ms_jk_ff_0:			ms_jk_ff port map ( j => '1', k => '1', clk => or_output, not_reset => not_reset, q => jk_ff_output, not_q => not_q);
	
	clk <= clk_and_output;
	RUN_INDICATOR <= jk_ff_output;
	
end rtl;
