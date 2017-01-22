library ieee;
use ieee.std_logic_1164.all;

entity register_12_bit_split is
	port ( input_hi:			in std_logic_vector(4 downto 0);
			 input_lo:			in std_logic_vector(6 downto 0);
			 output_hi:			out std_logic_vector(4 downto 0);
			 output_lo:			out std_logic_vector(6 downto 0);
			 load_hi:			in std_logic;
			 load_lo:			in std_logic;
			 clear_hi:			in std_logic;
			 clear_lo:			in std_logic;
			 clk:				in std_logic;
			 not_reset:		in std_logic
	);
end register_12_bit_split;

architecture rtl of register_12_bit_split is
	
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
	signal not_q:	std_logic_vector(11 downto 0);
	signal reset_signal:	std_logic;
	
	begin
		reset_signal <= not_reset;
		
		j(0) <= input_hi(0) and load_hi;
		j(1) <= input_hi(1) and load_hi;
		j(2) <= input_hi(2) and load_hi;
		j(3) <= input_hi(3) and load_hi;
		j(4) <= input_hi(4) and load_hi;
		j(5) <= input_lo(0) and load_lo;
		j(6) <= input_lo(1) and load_lo;
		j(7) <= input_lo(2) and load_lo;
		j(8) <= input_lo(3) and load_lo;
		j(9) <= input_lo(4) and load_lo;
		j(10) <= input_lo(5) and load_lo;
		j(11) <= input_lo(6) and load_lo;
		
		k(0) <= ((not input_hi(0)) and load_hi) or clear_hi;
		k(1) <= ((not input_hi(1)) and load_hi) or clear_hi;
		k(2) <= ((not input_hi(2)) and load_hi) or clear_hi;
		k(3) <= ((not input_hi(3)) and load_hi) or clear_hi;
		k(4) <= ((not input_hi(4)) and load_hi) or clear_hi;
		k(5) <= ((not input_lo(0)) and load_lo) or clear_lo;
		k(6) <= ((not input_lo(1)) and load_lo) or clear_lo;
		k(7) <= ((not input_lo(2)) and load_lo) or clear_lo;
		k(8) <= ((not input_lo(3)) and load_lo) or clear_lo;
		k(9) <= ((not input_lo(4)) and load_lo) or clear_lo;
		k(10) <= ((not input_lo(5)) and load_lo) or clear_lo;
		k(11) <= ((not input_lo(6)) and load_lo) or clear_lo;
		
		ms_jk_ff_0:			ms_jk_ff port map (j => j(0), k => k(0), q => output_hi(0), not_q => not_q(0), clk => clk, not_reset => reset_signal);
		ms_jk_ff_1:			ms_jk_ff port map (j => j(1), k => k(1), q => output_hi(1), not_q => not_q(1), clk => clk, not_reset => reset_signal);
		ms_jk_ff_2:			ms_jk_ff port map (j => j(2), k => k(2), q => output_hi(2), not_q => not_q(2), clk => clk, not_reset => reset_signal);
		ms_jk_ff_3:			ms_jk_ff port map (j => j(3), k => k(3), q => output_hi(3), not_q => not_q(3), clk => clk, not_reset => reset_signal);
		ms_jk_ff_4:			ms_jk_ff port map (j => j(4), k => k(4), q => output_hi(4), not_q => not_q(4), clk => clk, not_reset => reset_signal);
		ms_jk_ff_5:			ms_jk_ff port map (j => j(5), k => k(5), q => output_lo(0), not_q => not_q(5), clk => clk, not_reset => reset_signal);
		ms_jk_ff_6:			ms_jk_ff port map (j => j(6), k => k(6), q => output_lo(1), not_q => not_q(6), clk => clk, not_reset => reset_signal);
		ms_jk_ff_7:			ms_jk_ff port map (j => j(7), k => k(7), q => output_lo(2), not_q => not_q(7), clk => clk, not_reset => reset_signal);
		ms_jk_ff_8:			ms_jk_ff port map (j => j(8), k => k(8), q => output_lo(3), not_q => not_q(8), clk => clk, not_reset => reset_signal);
		ms_jk_ff_9:			ms_jk_ff port map (j => j(9), k => k(9), q => output_lo(4), not_q => not_q(9), clk => clk, not_reset => reset_signal);
		ms_jk_ff_10:			ms_jk_ff port map (j => j(10), k => k(10), q => output_lo(5), not_q => not_q(10), clk => clk, not_reset => reset_signal);
		ms_jk_ff_11:			ms_jk_ff port map (j => j(11), k => k(11), q => output_lo(6), not_q => not_q(11), clk => clk, not_reset => reset_signal);
		
end rtl;
