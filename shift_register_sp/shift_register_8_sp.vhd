library ieee;
use ieee.std_logic_1164.all;

entity shift_register_8_sp is
	port ( not_reset:					in std_logic;
			 clk:							in std_logic;
			 p_out:						out std_logic_vector(7 downto 0);
			 s_in:						in std_logic;
			 s_out:						out std_logic
	);
end shift_register_8_sp;

architecture rtl of shift_register_8_sp is
	component ms_jk_ff is
		port ( j:						in std_logic;
				 k:						in std_logic;
				 clk:						in std_logic;
				 not_reset: 			in std_logic;
				 q:						out std_logic;
				 not_q:					out std_logic
		);
	end component;
	
	signal ms_jk_ff_q:				std_logic_vector(7 downto 0);
	signal ms_jk_ff_not_q:			std_logic_vector(7 downto 0);
	signal not_s_in:					std_logic;
	begin
		not_s_in <= not s_in;
		
		ms_jk_ff_0:			ms_jk_ff  port map (j => s_in, k => not_s_in, clk => clk, not_reset => not_reset, q => ms_jk_ff_q(0), not_q => ms_jk_ff_not_q(0));
		ms_jk_ff_1:			ms_jk_ff  port map (j => ms_jk_ff_q(0), k => ms_jk_ff_not_q(0), clk => clk, not_reset => not_reset, q => ms_jk_ff_q(1), not_q => ms_jk_ff_not_q(1));
		ms_jk_ff_2:			ms_jk_ff  port map (j => ms_jk_ff_q(1), k => ms_jk_ff_not_q(1), clk => clk, not_reset => not_reset, q => ms_jk_ff_q(2), not_q => ms_jk_ff_not_q(2));
		ms_jk_ff_3:			ms_jk_ff  port map (j => ms_jk_ff_q(2), k => ms_jk_ff_not_q(2), clk => clk, not_reset => not_reset, q => ms_jk_ff_q(3), not_q => ms_jk_ff_not_q(3));
		ms_jk_ff_4:			ms_jk_ff  port map (j => ms_jk_ff_q(3), k => ms_jk_ff_not_q(3), clk => clk, not_reset => not_reset, q => ms_jk_ff_q(4), not_q => ms_jk_ff_not_q(4));
		ms_jk_ff_5:			ms_jk_ff  port map (j => ms_jk_ff_q(4), k => ms_jk_ff_not_q(4), clk => clk, not_reset => not_reset, q => ms_jk_ff_q(5), not_q => ms_jk_ff_not_q(5));
		ms_jk_ff_6:			ms_jk_ff  port map (j => ms_jk_ff_q(5), k => ms_jk_ff_not_q(5), clk => clk, not_reset => not_reset, q => ms_jk_ff_q(6), not_q => ms_jk_ff_not_q(6));
		ms_jk_ff_7:			ms_jk_ff  port map (j => ms_jk_ff_q(6), k => ms_jk_ff_not_q(6), clk => clk, not_reset => not_reset, q => ms_jk_ff_q(7), not_q => ms_jk_ff_not_q(7));
		
		p_out <= ms_jk_ff_q;
		s_out <= ms_jk_ff_q(7);
end rtl;
