library ieee;
use ieee.std_logic_1164.all;

entity alu_main is
	port ( alu_out_select:			in std_logic_vector(2 downto 0);
			 inputA:						in std_logic_vector(11 downto 0);
			 inputB:						in std_logic_vector(11 downto 0);
			 output:						out std_logic_vector(11 downto 0);
			 add_carry:					out std_logic
	);
end alu_main;

architecture rtl of alu_main is
	component alu_mux is
		port ( alu_out_select:		in std_logic_vector(2 downto 0);
				 inputA:					in std_logic_vector(11 downto 0);
				 inputB:					in std_logic_vector(11 downto 0);
				 inputC:					in std_logic_vector(11 downto 0);
				 output:					out std_logic_vector(11 downto 0)
		);
	end component;
	component alu_and is
		port ( inputA:					in std_logic_vector(11 downto 0);
				 inputB:					in std_logic_vector(11 downto 0);
				 output:					out std_logic_vector(11 downto 0)
		);
	end component;
	component alu_add is
		port ( inputA:					in std_logic_vector(11 downto 0);
				 inputB:					in std_logic_vector(11 downto 0);
				 output:					out std_logic_vector(11 downto 0);
				 carry_out:				out std_logic
		);
	end component;
	component alu_or is
		port ( inputA:					in std_logic_vector(11 downto 0);
				 inputB:					in std_logic_vector(11 downto 0);
				 output:					out std_logic_vector(11 downto 0)
		);
	end component;
	
	signal alu_and_output:			std_logic_vector(11 downto 0);
	signal alu_add_output:			std_logic_vector(11 downto 0);
	signal alu_or_output:			std_logic_vector(11 downto 0);
	
begin
	
	alu_mux_0:			alu_mux port map (alu_out_select => alu_out_select, inputA => alu_and_output, inputB => alu_add_output, inputC => alu_or_output, output => output);
	alu_and_0:			alu_and port map (inputA => inputA, inputB => inputB, output => alu_and_output);
	alu_add_0:			alu_add port map (inputA => inputA, inputB => inputB, output => alu_add_output, carry_out => add_carry);
	alu_or_0:			alu_or  port map (inputA => inputA, inputB => inputB, output => alu_or_output);
	
end rtl;
