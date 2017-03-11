library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divide_by_n is
	port ( clk:				in std_logic;
			 not_clear:		in std_logic;
			 SLOW_clk:		out std_logic;
			 not_reset:		in std_logic
	);
end divide_by_n;

architecture rtl of divide_by_n is
signal prescaler:			unsigned(13 downto 0);
signal clk_out_int:		std_logic;

	begin
	
	process(clk, not_clear, not_reset)
		begin
			if not_reset = '0' then
				clk_out_int <= '0' after 1 ns;
				prescaler <= "00000000000000" after 1 ns;
			elsif not_reset = '1' then
				if falling_edge(clk) then
					if not_clear = '0' then
						clk_out_int <= '0' after 1 ns;
						prescaler <= "00000000000000" after 1 ns;
					elsif not_clear = '1' then
						if prescaler = "1101110111101" then
							clk_out_int <= not clk_out_int after 1 ns;
							prescaler <= (others => '0') after 1 ns;
						else
							prescaler <= prescaler + "1" after 1 ns;
						end if;
					end if;
				end if;
			end if;
	end process;

SLOW_clk <= clk_out_int after 1 ns;	
end rtl;
	