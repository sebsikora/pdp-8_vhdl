library ieee;
use ieee.std_logic_1164.all;

entity fp_output_mux is
	port ( AC_FP_OUTPUT:					in std_logic_vector(11 downto 0);
			 MD_FP_OUTPUT:					in std_logic_vector(11 downto 0);
			 BUS_FP_OUTPUT:				in std_logic_vector(11 downto 0);
			 FP_OUTPUT_SELECT:			in std_logic_vector(2 downto 0);
			 FP_OUTPUT:						out std_logic_vector(11 downto 0)
	);
end fp_output_mux;


architecture rtl of fp_output_mux is
	
	begin
			process (AC_FP_OUTPUT, MD_FP_OUTPUT, BUS_FP_OUTPUT, FP_OUTPUT_SELECT)
			begin
				if FP_OUTPUT_SELECT = "001" then
					FP_OUTPUT <= AC_FP_OUTPUT;
				elsif FP_OUTPUT_SELECT = "010" then
					FP_OUTPUT <= MD_FP_OUTPUT;
				elsif FP_OUTPUT_SELECT = "100" then
					FP_OUTPUT <= BUS_FP_OUTPUT;
				else
					FP_OUTPUT <= "000000000000";
				end if;
			end process;
end rtl;