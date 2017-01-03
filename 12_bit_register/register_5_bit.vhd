library ieee;
use ieee.std_logic_1164.all;

entity register_5_bit is
	port ( input:			in std_logic_vector(4 downto 0);
			 output:			out std_logic_vector(4 downto 0);
			 load:			in std_logic;
			 clear:			in std_logic;
			 clk:				in std_logic;
			 not_reset:		in std_logic
	);
end register_5_bit;

architecture rtl of register_5_bit is
	
	component ms_jk_ff is
		port ( j:		in std_logic;
				 k:		in std_logic;
				 q:		out std_logic;
				 not_q:	out std_logic;
				 not_reset:	in std_logic;
				 clk:		in std_logic
		);
	end component;

	signal j:		std_logic_vector(4 downto 0);
	signal k:		std_logic_vector(4 downto 0);
	signal q:		std_logic_vector(4 downto 0);
	signal not_q:	std_logic_vector(4 downto 0);
	signal reset_signal:	std_logic;
	
	begin
		reset_signal <= not_reset;
		
		j(0) <= input(0) and load;
		j(1) <= input(1) and load;
		j(2) <= input(2) and load;
		j(3) <= input(3) and load;
		j(4) <= input(4) and load;
		
		k(0) <= ((not input(0)) and load) or clear;
		k(1) <= ((not input(1)) and load) or clear;
		k(2) <= ((not input(2)) and load) or clear;
		k(3) <= ((not input(3)) and load) or clear;
		k(4) <= ((not input(4)) and load) or clear;
		
		ms_jk_ff_0:			ms_jk_ff port map (j => j(0), k => k(0), q => output(0), not_q => not_q(0), clk => clk, not_reset => reset_signal);
		ms_jk_ff_1:			ms_jk_ff port map (j => j(1), k => k(1), q => output(1), not_q => not_q(1), clk => clk, not_reset => reset_signal);
		ms_jk_ff_2:			ms_jk_ff port map (j => j(2), k => k(2), q => output(2), not_q => not_q(2), clk => clk, not_reset => reset_signal);
		ms_jk_ff_3:			ms_jk_ff port map (j => j(3), k => k(3), q => output(3), not_q => not_q(3), clk => clk, not_reset => reset_signal);
		ms_jk_ff_4:			ms_jk_ff port map (j => j(4), k => k(4), q => output(4), not_q => not_q(4), clk => clk, not_reset => reset_signal);
		
end rtl;
