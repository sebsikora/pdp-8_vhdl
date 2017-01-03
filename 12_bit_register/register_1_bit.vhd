library ieee;
use ieee.std_logic_1164.all;

entity register_1_bit is
	port ( input:			in std_logic;
			 output:			out std_logic;
			 load:			in std_logic;
			 clk:				in std_logic;
			 not_reset:		in std_logic
	);
end register_1_bit;

architecture rtl of register_1_bit is
	
	component ms_jk_ff is
		port ( j:		in std_logic;
				 k:		in std_logic;
				 q:		out std_logic;
				 not_q:	out std_logic;
				 not_reset:	in std_logic;
				 clk:		in std_logic
		);
	end component;

	signal j:		std_logic;
	signal k:		std_logic;
	signal q:		std_logic;
	signal not_q:	std_logic;
	signal reset_signal:	std_logic;
	
	begin
		reset_signal <= not_reset;
		
		j <= input and load;
		k <= (not input) and load;
		
		ms_jk_ff_0:			ms_jk_ff port map (j => j, k => k, q => output, not_q => not_q, clk => clk, not_reset => reset_signal);
		
end rtl;
