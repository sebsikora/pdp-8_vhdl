library ieee;
use ieee.std_logic_1164.all;

entity alu_mux is
	port ( ALU_OUT_SEL_0:	in std_logic;
			 ALU_OUT_SEL_1:	in std_logic;
			 ALU_OUT_SEL_2:   in std_logic;
			 inputA:				in std_logic_vector(11 downto 0);
			 inputB:				in std_logic_vector(11 downto 0);
			 inputC:				in std_logic_vector(11 downto 0);
			 output:				out std_logic_vector(11 downto 0)
	);
end alu_mux;

architecture rtl of alu_mux is
begin
	process(inputA, inputB, inputC, ALU_OUT_SEL_0, ALU_OUT_SEL_1, ALU_OUT_SEL_2)
	begin
		if ALU_OUT_SEL_0 = '1' then
			output <= inputA;
		elsif ALU_OUT_SEL_1 = '1' then
			output <= inputB;
		elsif ALU_OUT_SEL_2 = '1' then
			output <= inputC;
		else
			output <= "000000000000";
		end if;
	end process;
	
end rtl;
