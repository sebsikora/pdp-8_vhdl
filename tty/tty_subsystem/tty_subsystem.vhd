library ieee;
use ieee.std_logic_1164.all;

entity tty_subsystem is
	port ( clk:									in std_logic;
			 not_reset:							in std_logic;
			 AC_DATA_IN:						in std_logic_vector(7 downto 0);
			 AC_DATA_OUT:						out std_logic_vector(7 downto 0);
			 SEND:								in std_logic;
			 CLR_RX_FLAG:						in std_logic;
			 RX_FLAG:							out std_logic;
			 RX:									in std_logic;
			 CLR_TX_FLAG:						in std_logic;
			 TX_FLAG:							out std_logic;
			 TX_s_not_p:						in std_logic;
			 TX:									out std_logic
	);
end tty_subsystem;

architecture rtl of tty_subsystem is
	
	component tty_input_state_gen is
		port ( clk:									in std_logic;
				 SLOW_clk:							in std_logic;
				 SLOW_clk_RUN:						out std_logic;
				 not_reset:							in std_logic;
				 ser_clk:							out std_logic;
				 CLR_RX_FLAG:						in std_logic;
				 RX_FLAG:							out std_logic;
				 RX:									in std_logic;
				 ser_data_in:						out std_logic
		);
	end component;
	component tty_output_state_gen is
		port ( clk:									in std_logic;
				 SLOW_clk:							in std_logic;
				 SLOW_clk_RUN:						out std_logic;
				 not_reset:							in std_logic;
				 ser_clk:							out std_logic;
				 ser_data_out:						in std_logic;
				 SEND:								in std_logic;
				 CLR_TX_FLAG:						in std_logic;
				 TX_FLAG:							out std_logic;
				 TX:									out std_logic
		);
	end component;
	component shift_register_8_ps is
		port ( not_reset:							in std_logic;
				 clk:									in std_logic;
				 p_in:								in std_logic_vector(7 downto 0);
				 s_in:								in std_logic;
				 s_out:								out std_logic;
				 s_not_p:							in std_logic
		);
	end component;
	component shift_register_8_sp is
		port ( not_reset:							in std_logic;
				 clk:									in std_logic;
				 p_out:								out std_logic_vector(7 downto 0);
				 s_in:								in std_logic;
				 s_out:								out std_logic
		);
	end component;
	component divide_by_n is
		generic (ratio:							integer := 4);
		port ( clk:									in std_logic;
				 not_clear:							in std_logic;
				 SLOW_clk:							out std_logic;
				 not_reset:							in std_logic
		);
	end component;
	
	signal tti_ser_clk:							std_logic;
	signal tti_SLOW_clk:							std_logic;
	signal tti_SLOW_clk_run:					std_logic;
	signal tti_ser_data:							std_logic;
	signal tti_ser_data_overflow:				std_logic;
	
	signal tto_ser_clk:							std_logic;
	signal tto_SLOW_clk:							std_logic;
	signal tto_SLOW_clk_run:					std_logic;
	signal tto_ser_data:							std_logic;
	signal tto_ser_data_overflow:				std_logic;
	
	begin
		
		tti_register:			shift_register_8_sp port map (not_reset => not_reset,
																			clk => tti_ser_clk,
																			p_out => AC_DATA_OUT,
																			s_in => tti_ser_data,
																			s_out => tti_ser_data_overflow
									);
		
		input_clock_divider:	divide_by_n port map (clk => clk, not_clear => tti_SLOW_clk_run, SLOW_clk => tti_SLOW_clk, not_reset => not_reset);
		
		tti_state_gen:			tty_input_state_gen port map (clk => clk,
																			SLOW_clk => tti_SLOW_clk,
																			SLOW_clk_RUN => tti_SLOW_clk_run,
																			not_reset => not_reset,
																			ser_clk => tti_ser_clk,
																			CLR_RX_FLAG => CLR_RX_FLAG,
																			RX_FLAG => RX_FLAG,
																			RX => RX,
																			ser_data_in => tti_ser_data
									);
		
		tto_register:			shift_register_8_ps port map (not_reset => not_reset,
																			clk => tto_ser_clk,
																			p_in => AC_DATA_IN,
																			s_in => '0',
																			s_out => tto_ser_data,
																			s_not_p => TX_s_not_p
									);
		
		output_clock_divider:	divide_by_n port map (clk => clk, not_clear => tto_SLOW_clk_run, SLOW_clk => tto_SLOW_clk, not_reset => not_reset);
		
		tto_state_gen:			tty_output_state_gen port map (clk => clk,
																			 SLOW_clk => tto_SLOW_clk,
																			 SLOW_clk_RUN => tto_SLOW_clk_run,
																			 not_reset => not_reset,
																			 ser_clk => tto_ser_clk,
																			 ser_data_out => tto_ser_data,
																			 SEND => SEND,
																			 CLR_TX_FLAG => CLR_TX_FLAG,
																			 TX_FLAG => TX_FLAG,
																			 TX => TX
									);
		
end rtl;