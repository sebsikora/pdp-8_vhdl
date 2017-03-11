library ieee;
use ieee.std_logic_1164.all;

entity counter_4_bit is
	port ( clr:							in std_logic;
			 not_reset:					in std_logic;
			 clk:							in std_logic;
			 output:						out std_logic_vector(3 downto 0)
	);
end counter_4_bit;

architecture rtl of counter_4_bit is
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
	component AND_3_gate is
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
	
	signal not_clr:					std_logic;
	signal not_ff_outputs:			std_logic_vector(3 downto 0);
	signal ff_outputs:				std_logic_vector(3 downto 0);
	signal reset_signal:				std_logic;
	
	signal and_0_0_output:			std_logic;
	signal or_0_0_output:			std_logic;
	signal and_1_0_output:			std_logic;
	signal and_1_1_output:			std_logic;
	signal or_1_0_output:			std_logic;
	signal and_2_0_output:			std_logic;
	signal and_2_1_output:			std_logic;
	signal or_2_0_output:			std_logic;
	
	signal clear:						std_logic;
	
	begin
		
		clear <= '1';
		not_clr <= not clr after 1 ns;
		reset_signal <= not_reset;
		
		and_0_0:				AND_gate  port map (inputA => not_clr, inputB => ff_outputs(0), output => and_0_0_output);
		or_0_0:				OR_gate	 port map (inputA => and_0_0_output, inputB => clr, output => or_0_0_output);
		and_1_0:				AND_gate  port map (inputA => ff_outputs(1), inputB => ff_outputs(0), output => and_1_0_output);
		and_1_1:				AND_gate  port map (inputA => not_clr, inputB => and_1_0_output, output => and_1_1_output);
		or_1_0:				OR_gate   port map (inputA => and_1_0_output, inputB => clr, output => or_1_0_output);
		and_2_0:				AND_3_gate  port map (inputA => ff_outputs(2), inputB => ff_outputs(1), inputC => ff_outputs(0), output => and_2_0_output);
		and_2_1:				AND_gate  port map (inputA => not_clr, inputB => and_2_0_output, output => and_2_1_output);
		or_2_0:				OR_gate   port map (inputA => and_2_0_output, inputB => clr, output => or_2_0_output);
		
		ms_jk_ff_0:			ms_jk_ff  port map (j => not_clr, k => clear, clk => clk, not_reset => reset_signal, q => ff_outputs(0), not_q => not_ff_outputs(0));
		ms_jk_ff_1:			ms_jk_ff  port map (j => and_0_0_output, k => or_0_0_output, clk => clk, not_reset => reset_signal, q => ff_outputs(1), not_q => not_ff_outputs(1));
		ms_jk_ff_2:			ms_jk_ff  port map (j => and_1_1_output, k => or_1_0_output, clk => clk, not_reset => reset_signal, q => ff_outputs(2), not_q => not_ff_outputs(2));
		ms_jk_ff_3:			ms_jk_ff  port map (j => and_2_1_output, k => or_2_0_output, clk => clk, not_reset => reset_signal, q => ff_outputs(3), not_q => not_ff_outputs(3));
		
		output(0) <= ff_outputs(0);
		output(1) <= ff_outputs(1);
		output(2) <= ff_outputs(2);
		output(3) <= ff_outputs(3);
		
end rtl;
