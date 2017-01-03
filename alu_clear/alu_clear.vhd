library ieee;
use ieee.std_logic_1164.all;

entity alu_clear is
	port ( input:			in std_logic_vector(11 downto 0);
			 output:			out std_logic_vector(11 downto 0);
			 alu_clear:		in std_logic
	);
end alu_clear;

architecture rtl of alu_clear is
	component AND_gate is
		port ( inputA:			in std_logic;
				 inputB:			in std_logic;
				 output:			out std_logic
		);
	end component;
	
	signal clear:			std_logic_vector(11 downto 0);
	
	begin
		
		clear(0) <= not alu_clear;
		clear(1) <= not alu_clear;
		clear(2) <= not alu_clear;
		clear(3) <= not alu_clear;
		clear(4) <= not alu_clear;
		clear(5) <= not alu_clear;
		clear(6) <= not alu_clear;
		clear(7) <= not alu_clear;
		clear(8) <= not alu_clear;
		clear(9) <= not alu_clear;
		clear(10) <= not alu_clear;
		clear(11) <= not alu_clear;
		
		and_0:			AND_gate port map (inputA => clear(0), inputB => input(0), output => output(0));
		and_1:			AND_gate port map (inputA => clear(1), inputB => input(1), output => output(1));
		and_2:			AND_gate port map (inputA => clear(2), inputB => input(2), output => output(2));
		and_3:			AND_gate port map (inputA => clear(3), inputB => input(3), output => output(3));
		and_4:			AND_gate port map (inputA => clear(4), inputB => input(4), output => output(4));
		and_5:			AND_gate port map (inputA => clear(5), inputB => input(5), output => output(5));
		and_6:			AND_gate port map (inputA => clear(6), inputB => input(6), output => output(6));
		and_7:			AND_gate port map (inputA => clear(7), inputB => input(7), output => output(7));
		and_8:			AND_gate port map (inputA => clear(8), inputB => input(8), output => output(8));
		and_9:			AND_gate port map (inputA => clear(9), inputB => input(9), output => output(9));
		and_10:			AND_gate port map (inputA => clear(10), inputB => input(10), output => output(10));
		and_11:			AND_gate port map (inputA => clear(11), inputB => input(11), output => output(11));

end rtl;
		