library ieee;
use ieee.std_logic_1164.all;

entity counter_unit is
	port ( SLOW_CLK:				in std_logic;
			 clr_ctrl:				in std_logic;
			 tick_ctrl:				in std_logic;
			 end_ctrl: 				in std_logic;
			 not_reset:				in std_logic;
			 sub_counter_out:		out std_logic_vector(3 downto 0);
			 counter_out:			out std_logic_vector(3 downto 0)
			 --end_cont_out:			out std_logic
	);
end counter_unit;

architecture rtl of counter_unit is
	component counter_4_bit is
		port ( clr:							in std_logic;
				 not_reset:					in std_logic;
				 clk:							in std_logic;
				 output:						out std_logic_vector(3 downto 0)
		);
	end component;
	component AND_gate is
		port( inputA: 						in std_logic;
				inputB:						in std_logic;
				output:						out std_logic
		);
	end component;
	signal tick:							std_logic;
begin
	and_0:				AND_gate port map (inputA => SLOW_CLK, inputB => tick_ctrl, output => tick);
	sub_counter:		counter_4_bit port map (clr => clr_ctrl, not_reset => not_reset, clk => SLOW_CLK, output => sub_counter_out);
	counter:				counter_4_bit port map (clr => end_ctrl, not_reset => not_reset, clk => tick, output => counter_out);
	--end_cont_out <= end_ctrl;
end rtl;