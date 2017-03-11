library ieee;
use ieee.std_logic_1164.all;

entity tty_input_state_gen_3 is
	port ( RX:						in std_logic;
			 clk:						in std_logic;
			 CLR_RX_FLAG:			in std_logic;
			 not_reset:				in std_logic;
			 SLOW_CLK:				out std_logic;
			 SLOW_CLK_run:			out std_logic;
			 RX_FLAG:				out std_logic;
			 SR_CLK:					out std_logic;
			 clr_ctrl:				out std_logic;
			 tick_ctrl:				out std_logic;
			 half_tick_ctrl:		out std_logic;
			 end_ctrl:				out std_logic
			 --sub_count_out:		out std_logic_vector(3 downto 0);
			 --count_out:				out std_logic_vector(3 downto 0);
			 --end_cont_out:			out std_logic
	);
end tty_input_state_gen_3;

architecture rtl of tty_input_state_gen_3 is
	component counter_unit is
		port ( SLOW_CLK:				in std_logic;
				 clr_ctrl:				in std_logic;
				 tick_ctrl:				in std_logic;
				 end_ctrl: 				in std_logic;
				 not_reset:				in std_logic;
				 sub_counter_out:		out std_logic_vector(3 downto 0);
				 counter_out:			out std_logic_vector(3 downto 0)
				 --end_cont_out:			out std_logic
		);
	end component;
	component logic_unit is
		port ( sub_counter_in:		in std_logic_vector(3 downto 0);
				 counter_in:			in std_logic_vector(3 downto 0);
				 SLOW_CLK:				in std_logic;
				 SLOW_CLK_run:			in std_logic;
				 not_go:					in std_logic;
				 clr_ctrl:				out std_logic;
				 half_tick_ctrl:		out std_logic;
				 SR_CLK:					out std_logic;
				 end_ctrl:				out std_logic;
				 tick_ctrl:				out std_logic
		);
	end component;
	component  latch_unit is
		port ( SLOW_CLK:				in std_logic;
				 RX:						in std_logic;
				 clk:						in std_logic;
				 CLR_RX_FLAG:			in std_logic;
				 half_tick_ctrl:		in std_logic;
				 end_ctrl:				in std_logic;
				 not_reset:				in std_logic;
				 SLOW_CLK_run: 		out std_logic;
				 RX_FLAG:				out std_logic;
				 not_go:					out std_logic
		);
	end component;
	component divide_by_n is
		port ( clk:						in std_logic;
				 not_clear:				in std_logic;
				 SLOW_clk:				out std_logic;
				 not_reset:				in std_logic
		);
	end component;
	signal clr_ctrl_signal:				std_logic;
	signal tick_ctrl_signal:			std_logic;
	signal half_tick_ctrl_signal:		std_logic;
	signal end_ctrl_signal:				std_logic;
	signal SLOW_CLK_run_signal:		std_logic;
	signal SLOW_CLK_signal:				std_logic;
	signal not_go_signal:				std_logic;
	signal sub_counter_signal:			std_logic_vector(3 downto 0);
	signal counter_signal:				std_logic_vector(3 downto 0);
	signal SR_CLK_signal:				std_logic;
	signal clk_signal:					std_logic;
begin
	
	clk_signal <= clk and not_reset after 10 ns;
	
	clock_divider:			divide_by_n port map (clk => clk_signal,
															 not_clear => SLOW_CLK_run_signal,
															 SLOW_CLK => SLOW_CLK_signal,
															 not_reset => not_reset
								);
	counter_unit_0:		counter_unit port map (SLOW_CLK => SLOW_CLK_signal,
															  clr_ctrl => clr_ctrl_signal,
															  tick_ctrl => tick_ctrl_signal,
															  end_ctrl => end_ctrl_signal,
															  not_reset => not_reset,
															  sub_counter_out => sub_counter_signal,
															  counter_out => counter_signal
															  --end_cont_out => end_cont_out
								);
	
	logic_unit_0:			logic_unit port map (sub_counter_in => sub_counter_signal,
															counter_in => counter_signal,
															SLOW_CLK => SLOW_CLK_signal,
															SLOW_CLK_run => SLOW_CLK_run_signal,
															not_go => not_go_signal,
															clr_ctrl => clr_ctrl_signal,
															half_tick_ctrl => half_tick_ctrl_signal,
															SR_CLK => SR_CLK_signal,
															end_ctrl => end_ctrl_signal,
															tick_ctrl => tick_ctrl_signal
								);
	
	latch_unit_0:			latch_unit port map (SLOW_CLK => SLOW_CLK_signal,
															RX => RX,
															clk => clk_signal,
															CLR_RX_FLAG => CLR_RX_FLAG,
															half_tick_ctrl => half_tick_ctrl_signal,
															end_ctrl => end_ctrl_signal,
															not_reset => not_reset,
															SLOW_CLK_run => SLOW_CLK_run_signal,
															RX_FLAG => RX_FLAG,
															not_go => not_go_signal
								);
	
	clr_ctrl <= clr_ctrl_signal;
	tick_ctrl <= tick_ctrl_signal;
	half_tick_ctrl <= half_tick_ctrl_signal;
	end_ctrl <= end_ctrl_signal;
	SLOW_CLK_run <= SLOW_CLK_run_signal;
	SR_CLK <= SR_CLK_signal;
	SLOW_CLK <= SLOW_CLK_signal;
	--sub_count_out <= sub_counter_signal;
	--count_out <= counter_signal;
end rtl;