library ieee;
use ieee.std_logic_1164.all;

entity divide_by_n is
	generic (ratio:		integer := 4);
	port ( clk:				in std_logic;
			 not_clear:		in std_logic;
			 SLOW_clk:		out std_logic;
			 not_reset:		in std_logic
	);
end divide_by_n;

architecture rtl of divide_by_n is
signal clk_out_int:		std_logic;

	begin
	
	process(clk, not_clear, not_reset)
		variable count:			integer range 0 to (ratio - 1);
		begin
			if not_reset = '0' then
				clk_out_int <= '1';
				count := 0;
			elsif rising_edge(clk) then
				if not_clear = '0' then
					clk_out_int <= '1';
					count := 0;
				else
					if count = (ratio / 2) - 1 then
						clk_out_int <= not clk_out_int;
						count := count + 1;
					elsif count = (ratio - 1) then
						clk_out_int <= not clk_out_int;
						count := 0;
					end if;
				end if;
			end if;
	end process;

SLOW_clk <= clk_out_int;	
end rtl;
	