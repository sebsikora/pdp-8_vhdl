library ieee;
use ieee.std_logic_1164.all;

entity tty_subsystem_test is
	port ( clk:										in std_logic;
			 not_reset:								in std_logic;
			 RX:										in std_logic;
			 RX_FLAG:								out std_logic;
			 TX:										out std_logic;
			 TX_FLAG:								out std_logic
	);
end tty_subsystem_test;

architecture rtl of tty_subsystem_test is
	component tty_subsystem_test_logic is
		port ( TX_FLAG:							in std_logic;
				 clk:									in std_logic;
				 not_reset:							in std_logic;
				 RX_FLAG:							in std_logic;
				 s_not_p:							out std_logic;
				 CLR_TX_FLAG:						out std_logic;
				 CLR_RX_FLAG:						out std_logic;
				 SEND:								out std_logic
		);
	end component;
	component tty_subsystem is
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
	end component;
	
	signal parallel_link:						std_logic_vector(7 downto 0);
	signal SEND:									std_logic;
	signal CLR_TX_FLAG:							std_logic;
	signal CLR_RX_FLAG:							std_logic;
	signal s_not_p:								std_logic;
	signal RX_FLAG_i:								std_logic;
	signal TX_FLAG_i:								std_logic;
	
	begin
		
		TX_FLAG <= TX_FLAG_i;
		RX_FLAG <= RX_FLAG_i;
		
		tty_subsystem_0:				tty_subsystem port map (clk => clk,
																			not_reset => not_reset,
																			AC_DATA_IN => parallel_link,
																			AC_DATA_OUT => parallel_link,
																			SEND => SEND,
																			CLR_RX_FLAG => CLR_RX_FLAG,
																			RX_FLAG => RX_FLAG_i,
																			RX => RX,
																			CLR_TX_FLAG => CLR_TX_FLAG,
																			TX_FLAG => TX_FLAG_i,
																			TX_s_not_p => s_not_p,
																			TX => TX
											);
		
		test_logic:						tty_subsystem_test_logic port map (TX_FLAG => TX_FLAG_i,
																						  clk => clk,
																						  not_reset => not_reset,
																						  RX_FLAG => RX_FLAG_i,
																						  s_not_p => s_not_p,
																						  CLR_TX_FLAG => CLR_TX_FLAG,
																						  CLR_RX_FLAG => CLR_RX_FLAG,
																						  SEND => SEND
											);
		
end rtl;