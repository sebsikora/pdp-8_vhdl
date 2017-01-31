library ieee;
use ieee.std_logic_1164.all;

entity tty_state_gen is
	port ( clk:									in std_logic;
			 not_reset:							in std_logic;
			 ser_clk:							out std_logic;
			 SEND:								in std_logic;
			 CLR_TX_FLAG:						in std_logic;
			 TX_FLAG:							out std_logic;
			 TX:									out std_logic
	);
end tty_state_gen;

architecture rtl of tty_state_gen is
	component NAND_gate is
		port( inputA: 							in std_logic;
				inputB:							in std_logic;
				output:							out std_logic
		);
	end component;
	component AND_gate is
		port( inputA: 							in std_logic;
				inputB:							in std_logic;
				output:							out std_logic
		);
	end component;
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
	component NOR_4_gate is
		port( inputA: 							in std_logic;
				inputB:							in std_logic;
				inputC: 							in std_logic;
				inputD:							in std_logic;
				output:							out std_logic
		);
	end component;
	component AND_3_gate is
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
	
	begin
		
		-- Stuff happens...
		
end rtl;