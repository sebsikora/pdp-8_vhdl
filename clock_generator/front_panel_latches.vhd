library ieee;
use ieee.std_logic_1164.all;

entity front_panel_latches is
	port ( clk:									in std_logic;
			 not_reset:							in std_logic;
			 END_STATE:							in std_logic;
			 FP_CMD:								out std_logic;
			 FP_ADDR_LOAD_momentary:		in std_logic;
			 FP_EXAMINE_momentary:			in std_logic;
			 FP_DEPOST_momentary:			in std_logic;
			 FP_ADDR_LOAD_latched:			out std_logic;
			 FP_EXAMINE_latched:				out std_logic;
			 FP_DEPOSIT_latched:				out std_logic
	);
end front_panel_latches;

architecture rtl of front_panel_latches is
	component AND_3_gate is
		port( inputA: 							in std_logic;
				inputB:							in std_logic;
				inputC:							in std_logic;
				output:							out std_logic
		);
	end component;
	component OR_gate is
		port( inputA: 							in std_logic;
				inputB:							in std_logic;
				output:							out std_logic
		);
	end component;
	component OR_3_gate is
		port( inputA: 							in std_logic;
				inputB:							in std_logic;
				inputC:							in std_logic;
				output:							out std_logic
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
	
	signal FP_ADDR_LOAD_toggle:			std_logic;
	signal FP_EXAMINE_toggle:				std_logic;
	signal FP_DEPOSIT_toggle:				std_logic;
	signal FP_ADDR_LOAD_clr:				std_logic;
	signal FP_EXAMINE_clr:					std_logic;
	signal FP_DEPOSIT_clr:					std_logic;
	signal FP_ADDR_LOAD_latch_out:		std_logic;
	signal FP_EXAMINE_latch_out:			std_logic;
	signal FP_DEPOSIT_latch_out:			std_logic;
	signal FP_LATCH_OUT:						std_logic;
	
	signal not_q: 								std_logic_vector(2 downto 0);
	
	begin
		
		
		or_0:					OR_gate 		port map (inputA => FP_ADDR_LOAD_momentary, inputB => FP_ADDR_LOAD_clr, output => FP_ADDR_LOAD_toggle);
		or_1:					OR_gate 		port map (inputA => FP_EXAMINE_momentary, inputB => FP_EXAMINE_clr, output => FP_EXAMINE_toggle);
		or_2:					OR_gate 		port map (inputA => FP_DEPOST_momentary, inputB => FP_DEPOSIT_clr, output => FP_DEPOSIT_toggle);
		or_3_0:				OR_3_gate 	port map (inputA => FP_ADDR_LOAD_latch_out, inputB => FP_EXAMINE_latch_out, inputC => FP_DEPOSIT_latch_out, output => FP_LATCH_OUT);
		and_3_0:				AND_3_gate 	port map (inputA => END_STATE, inputB => clk, inputC => FP_ADDR_LOAD_latch_out, output => FP_ADDR_LOAD_clr);
		and_3_1:				AND_3_gate 	port map (inputA => END_STATE, inputB => clk, inputC => FP_EXAMINE_latch_out, output => FP_EXAMINE_clr);
		and_3_2:				AND_3_gate 	port map (inputA => END_STATE, inputB => clk, inputC => FP_DEPOSIT_latch_out, output => FP_DEPOSIT_clr);
		
		ms_jk_ff_0:			ms_jk_ff 	port map (j => '1', k => '1', clk => FP_ADDR_LOAD_toggle, not_reset => not_reset, q => FP_ADDR_LOAD_latch_out, not_q => not_q(0));
		ms_jk_ff_1:			ms_jk_ff 	port map (j => '1', k => '1', clk => FP_EXAMINE_toggle, not_reset => not_reset, q => FP_EXAMINE_latch_out, not_q => not_q(1));
		ms_jk_ff_2:			ms_jk_ff 	port map (j => '1', k => '1', clk => FP_DEPOSIT_toggle, not_reset => not_reset, q => FP_DEPOSIT_latch_out, not_q => not_q(2));
		
		FP_CMD <= FP_LATCH_OUT;
		FP_ADDR_LOAD_latched <= FP_ADDR_LOAD_latch_out;
		FP_EXAMINE_latched <= FP_EXAMINE_latch_out;
		FP_DEPOSIT_latched <= FP_DEPOSIT_latch_out;
		
end rtl;