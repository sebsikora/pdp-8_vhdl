library ieee;
use ieee.std_logic_1164.all;

entity register_12_bit is
	port ( input:			in std_logic_vector(11 downto 0);
			 output:			out std_logic_vector(11 downto 0);
			 load:			in std_logic;
			 clear:			in std_logic;
			 clk:				in std_logic;
			 not_reset:		in std_logic
	);
end register_12_bit;

architecture rtl of register_12_bit is
	
	component ms_jk_ff is
		port ( j:		in std_logic;
				 k:		in std_logic;
				 q:		out std_logic;
				 not_q:	out std_logic;
				 not_reset:	in std_logic;
				 clk:		in std_logic
		);
	end component;

	signal j:		std_logic_vector(11 downto 0);
	signal k:		std_logic_vector(11 downto 0);
	signal q:		std_logic_vector(11 downto 0);
	signal not_q:	std_logic_vector(11 downto 0);
	signal reset_signal:	std_logic;
	
	begin
		reset_signal <= not_reset;
		
		j(0) <= input(0) and load;
		j(1) <= input(1) and load;
		j(2) <= input(2) and load;
		j(3) <= input(3) and load;
		j(4) <= input(4) and load;
		j(5) <= input(5) and load;
		j(6) <= input(6) and load;
		j(7) <= input(7) and load;
		j(8) <= input(8) and load;
		j(9) <= input(9) and load;
		j(10) <= input(10) and load;
		j(11) <= input(11) and load;
		
		k(0) <= ((not input(0)) and load) or clear;
		k(1) <= ((not input(1)) and load) or clear;
		k(2) <= ((not input(2)) and load) or clear;
		k(3) <= ((not input(3)) and load) or clear;
		k(4) <= ((not input(4)) and load) or clear;
		k(5) <= ((not input(5)) and load) or clear;
		k(6) <= ((not input(6)) and load) or clear;
		k(7) <= ((not input(7)) and load) or clear;
		k(8) <= ((not input(8)) and load) or clear;
		k(9) <= ((not input(9)) and load) or clear;
		k(10) <= ((not input(10)) and load) or clear;
		k(11) <= ((not input(11)) and load) or clear;
		
		ms_jk_ff_0:			ms_jk_ff port map (j => j(0), k => k(0), q => output(0), not_q => not_q(0), clk => clk, not_reset => reset_signal);
		ms_jk_ff_1:			ms_jk_ff port map (j => j(1), k => k(1), q => output(1), not_q => not_q(1), clk => clk, not_reset => reset_signal);
		ms_jk_ff_2:			ms_jk_ff port map (j => j(2), k => k(2), q => output(2), not_q => not_q(2), clk => clk, not_reset => reset_signal);
		ms_jk_ff_3:			ms_jk_ff port map (j => j(3), k => k(3), q => output(3), not_q => not_q(3), clk => clk, not_reset => reset_signal);
		ms_jk_ff_4:			ms_jk_ff port map (j => j(4), k => k(4), q => output(4), not_q => not_q(4), clk => clk, not_reset => reset_signal);
		ms_jk_ff_5:			ms_jk_ff port map (j => j(5), k => k(5), q => output(5), not_q => not_q(5), clk => clk, not_reset => reset_signal);
		ms_jk_ff_6:			ms_jk_ff port map (j => j(6), k => k(6), q => output(6), not_q => not_q(6), clk => clk, not_reset => reset_signal);
		ms_jk_ff_7:			ms_jk_ff port map (j => j(7), k => k(7), q => output(7), not_q => not_q(7), clk => clk, not_reset => reset_signal);
		ms_jk_ff_8:			ms_jk_ff port map (j => j(8), k => k(8), q => output(8), not_q => not_q(8), clk => clk, not_reset => reset_signal);
		ms_jk_ff_9:			ms_jk_ff port map (j => j(9), k => k(9), q => output(9), not_q => not_q(9), clk => clk, not_reset => reset_signal);
		ms_jk_ff_10:			ms_jk_ff port map (j => j(10), k => k(10), q => output(10), not_q => not_q(10), clk => clk, not_reset => reset_signal);
		ms_jk_ff_11:			ms_jk_ff port map (j => j(11), k => k(11), q => output(11), not_q => not_q(11), clk => clk, not_reset => reset_signal);
		
end rtl;
