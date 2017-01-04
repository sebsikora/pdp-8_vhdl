library ieee;
use ieee.std_logic_1164.all;

entity s_state_generator is
	port ( irq:							in std_logic;
			 IR:							in std_logic_vector(4 downto 0);
			 not_reset:					in std_logic;
			 next_state:				in std_logic;
			 start:						in std_logic;
			 clk:							in std_logic;
			 s_states:					out std_logic_vector(3 downto 0)
	);
end s_state_generator;

architecture rtl of s_state_generator is
	component register_1_bit is
		port ( input:					in std_logic;
				 output:					out std_logic;
				 load:					in std_logic;
				 clk:						in std_logic;
				 not_reset:				in std_logic
		);
	end component;
	component AND_gate is
		port( inputA: 					in std_logic;
				inputB:					in std_logic;
				output:					out std_logic
		);
	end component;
	component OR_gate is
		port( inputA: 					in std_logic;
				inputB:					in std_logic;
				output:					out std_logic
		);
	end component;
	
	signal and_0_output:				std_logic;
	signal and_1_output:				std_logic;
	signal and_2_output:				std_logic;
	signal and_3_output:				std_logic;
	signal and_4_output:				std_logic;
	signal and_5_output:				std_logic;
	signal and_6_output:				std_logic;
	signal and_7_output:				std_logic;
	signal and_8_output:				std_logic;
	
	signal or_0_output:				std_logic;
	signal or_1_output:				std_logic;
	signal or_2_output:				std_logic;
	signal or_3_output:				std_logic;
	signal or_4_output:				std_logic;
	signal or_5_output:				std_logic;
	
	signal state_clk:					std_logic;
	signal s_state_signals:			std_logic_vector(3 downto 0);
	signal not_IR_0_and_IR_1:		std_logic;
	signal IR_0_and_IR_1:			std_logic;
	signal not_IR_3:					std_logic;
	signal not_irq:					std_logic;
	
	begin
		
		not_IR_0_and_IR_1 <= not (IR(0) and IR(1));
		IR_0_and_IR_1 <= (IR(0) and IR(1));
		not_IR_3 <= not IR(3);
		not_irq <= not irq;
		
		and_0:				AND_gate port map (inputA => s_state_signals(0), inputB => not_IR_0_and_IR_1, output => and_0_output);
		and_1:				AND_gate port map (inputA => and_0_output, inputB => not_IR_3, output => and_1_output);
		and_2:				AND_gate port map (inputA => and_0_output, inputB => IR(3), output => and_2_output);
		and_3:				AND_gate port map (inputA => s_state_signals(0), inputB => IR_0_and_IR_1, output => and_3_output);
		and_4:				AND_gate port map (inputA => and_3_output, inputB => not_irq, output => and_4_output);
		and_5:				AND_gate port map (inputA => and_3_output, inputB => irq, output => and_5_output);
		and_6:				AND_gate port map (inputA => s_state_signals(2), inputB => not_irq, output => and_6_output);
		and_7:				AND_gate port map (inputA => s_state_signals(2), inputB => irq, output => and_7_output);
		and_8:				AND_gate port map (inputA => clk, inputB => next_state, output => and_8_output);
		
		or_0:					OR_gate  port map (inputA => start, inputB => and_4_output, output => or_0_output);
		or_1:					OR_gate  port map (inputA => or_0_output, inputB => or_2_output, output => or_1_output);
		or_2:					OR_gate  port map (inputA => and_6_output, inputB => s_state_signals(3), output => or_2_output);
		or_3:					OR_gate  port map (inputA => s_state_signals(1), inputB => and_1_output, output => or_3_output);
		or_4:					OR_gate  port map (inputA => and_5_output, inputB => and_7_output, output => or_4_output);
		or_5:					OR_gate  port map (inputA => start, inputB => and_8_output, output => or_5_output);
		
		reg_1_bit_0:		register_1_bit port map (input => or_1_output, output => s_state_signals(0), load => '1', clk => state_clk, not_reset => not_reset);
		reg_1_bit_1:		register_1_bit port map (input => and_2_output, output => s_state_signals(1), load => '1', clk => state_clk, not_reset => not_reset);
		reg_1_bit_2:		register_1_bit port map (input => or_3_output, output => s_state_signals(2), load => '1', clk => state_clk, not_reset => not_reset);
		reg_1_bit_3:		register_1_bit port map (input => or_4_output, output => s_state_signals(3), load => '1', clk => state_clk, not_reset => not_reset);
		
		state_clk <= or_5_output;
		s_states(3 downto 0) <= s_state_signals(3 downto 0);
		
end rtl;