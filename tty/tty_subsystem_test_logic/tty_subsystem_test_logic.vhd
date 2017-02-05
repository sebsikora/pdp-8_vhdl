library ieee;
use ieee.std_logic_1164.all;

entity tty_subsystem_test_logic is
	port ( TX_FLAG:					in std_logic;
			 clk:							in std_logic;
			 not_reset:					in std_logic;
			 RX_FLAG:					in std_logic;
			 s_not_p:					out std_logic;
			 CLR_TX_FLAG:				out std_logic;
			 CLR_RX_FLAG:				out std_logic;
			 SEND:						out std_logic
	);
end tty_subsystem_test_logic;

architecture rtl of tty_subsystem_test_logic is
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
	component NAND_gate is
		port( inputA: 					in std_logic;
				inputB:					in std_logic;
				output:					out std_logic
			);
	end component;
	component ms_jk_ff is
		port ( j:						in std_logic;
				 k:						in std_logic;
				 clk:						in std_logic;
				 not_reset: 			in std_logic;
				 q:						out std_logic;
				 not_q:					out std_logic
		);
	end component;
	component counter_3_bit is
		port ( clr:						in std_logic;
				 not_reset:				in std_logic;
				 clk:						in std_logic;
				 output:					out std_logic_vector(2 downto 0)
		);
	end component;
	component decoder_3_to_6 is
		port ( input:					in std_logic_vector(2 downto 0);
				 output:					out std_logic_vector(5 downto 0)
		);
	end component;
	
	signal and_output_0:				std_logic;
	signal and_output_1:				std_logic;
	signal and_output_2:				std_logic;
	
	signal ms_jk_ff_q:				std_logic;
	signal ms_jk_ff_not_q:			std_logic;
	
	signal counter_outputs:			std_logic_vector(2 downto 0);
	signal decoder_outputs:			std_logic_vector(5 downto 0);
	
	begin
		
		and_0:			AND_3_gate port map (inputA => TX_FLAG, inputB => ms_jk_ff_q, inputC => clk, output => and_output_0);
		and_1:			AND_gate port map (inputA => RX_FLAG, inputB => ms_jk_ff_not_q, output => and_output_1);
		and_2:			NAND_gate port map (inputA => ms_jk_ff_q, inputB => decoder_outputs(0), output => and_output_2);
		
		ms_jk_ff_0:		ms_jk_ff port map (j => and_output_1, k => decoder_outputs(3), q => ms_jk_ff_q, not_q => ms_jk_ff_not_q, not_reset => not_reset, clk => clk);
		
		counter_0:		counter_3_bit port map (clr => ms_jk_ff_not_q, not_reset => not_reset, clk => and_output_0, output => counter_outputs);
		
		decoder_0:		decoder_3_to_6 port map (input => counter_outputs, output => decoder_outputs);
		
		s_not_p <= and_output_2;
		CLR_TX_FLAG <= decoder_outputs(1);
		SEND <= decoder_outputs(2);
		CLR_RX_FLAG <= decoder_outputs(3);
		
end rtl;