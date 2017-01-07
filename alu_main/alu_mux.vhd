library ieee;
use ieee.std_logic_1164.all;

entity alu_mux is
	port ( alu_out_select:	in std_logic_vector(2 downto 0);
			 inputA:				in std_logic_vector(11 downto 0);
			 inputB:				in std_logic_vector(11 downto 0);
			 inputC:				in std_logic_vector(11 downto 0);
			 output:				out std_logic_vector(11 downto 0)
	);
end alu_mux;

architecture rtl of alu_mux is
begin
	process(inputA, inputB, inputC, alu_out_select)
	begin
		if alu_out_select = "001" then
			output <= inputA;
		elsif alu_out_select = "010" then
			output <= inputB;
		elsif alu_out_select = "100" then
			output <= inputC;
		else
			output <= "000000000000";
		end if;
	end process;
	
end rtl;
