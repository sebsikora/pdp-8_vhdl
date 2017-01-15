library ieee;
use ieee.std_logic_1164.all;

entity alu_subsystem is
	port ( clk:												in std_logic;
			 not_reset:										in std_logic;
			 ALU_input_A:									in std_logic_vector(11 downto 0);
			 ALU_input_B:									in std_logic_vector(11 downto 0);
			 register_bus_input:							in std_logic_vector(11 downto 0);
			 AC_input:										in std_logic_vector(11 downto 0);
			 LINK_input:									in std_logic;
			 LINK_OUT_SEL:									in std_logic;
			 LINK_COMP:										in std_logic;
			 ALU_FUNC_SEL_0:								in std_logic;
			 ALU_FUNC_SEL_1:								in std_logic;
			 ALU_FUNC_SEL_2:								in std_logic;
			 ALU_OUT_SEL_0:								in std_logic;
			 ALU_OUT_SEL_1:								in std_logic;
			 ALU_OUT_SEL_2:								in std_logic;
			 ALU_COMP:										in std_logic;
			 ALU_INC:										in std_logic;
			 ALU_CLEAR:										in std_logic;
			 ALU_ROT_1:										in std_logic;
			 ALU_ROT_2:										in std_logic;
			 ADD_CARRY:										out std_logic;
			 INC_CARRY:										out std_logic;
			 IS_ZERO_LAST:									out std_logic;
			 IS_ZERO:										out std_logic;
			 IS_NEG:											out std_logic;
			 top_bus_output:									out std_logic_vector(11 downto 0);
			 LINK_output:										out std_logic
	);
end alu_subsystem;


architecture rtl of alu_subsystem is
component alu_main is
	port ( ALU_FUNC_SEL_0:			in std_logic;
			 ALU_FUNC_SEL_1:			in std_logic;
			 ALU_FUNC_SEL_2:			in std_logic;
			 inputA:											in std_logic_vector(11 downto 0);
			 inputB:											in std_logic_vector(11 downto 0);
			 output:											out std_logic_vector(11 downto 0);
			 add_carry:										out std_logic
	);
end component;
component alu_mux is
	port ( ALU_OUT_SEL_0:			in std_logic;
			 ALU_OUT_SEL_1:			in std_logic;
			 ALU_OUT_SEL_2:			in std_logic;
			 inputA:											in std_logic_vector(11 downto 0);
			 inputB:											in std_logic_vector(11 downto 0);
			 inputC:											in std_logic_vector(11 downto 0);
			 output:											out std_logic_vector(11 downto 0)
	);
end component;
component alu_clr is
	port ( input:											in std_logic_vector(11 downto 0);
			 output:											out std_logic_vector(11 downto 0);
			 alu_clr:										in std_logic
	);
end component;
component alu_xor is
	port ( input:											in std_logic_vector(11 downto 0);
			 output:											out std_logic_vector(11 downto 0);
			 alu_xor:										in std_logic
	);
end component;
component alu_incrementer is
	port ( input:											in std_logic_vector(11 downto 0);
			 output:											out std_logic_vector(11 downto 0);
			 alu_inc:										in std_logic;
			 carry_out:										out std_logic
	);
end component;
component alu_shifter is
	port ( input:											in std_logic_vector(11 downto 0);
			 link_input:									in std_logic;
			 output:											out std_logic_vector(11 downto 0);
			 link_output:									out std_logic;
			 alu_rot_1:										in std_logic;
			 alu_rot_2:										in std_logic
	);
end component;
component alu_comparator is
	port( input:											in std_logic_vector(11 downto 0);
			output:											out std_logic_vector(11 downto 0);
			IS_ZERO:											out std_logic;
			IS_ZERO_LAST:									out std_logic;
			IS_NEG:											out std_logic;
			not_reset:										in std_logic;
			clk:												in std_logic
	);
end component;

signal alu_main_output:									std_logic_vector(11 downto 0);
signal alu_mux_output:									std_logic_vector(11 downto 0);
signal alu_clr_output:									std_logic_vector(11 downto 0);
signal alu_xor_output:									std_logic_vector(11 downto 0);
signal alu_inc_output:									std_logic_vector(11 downto 0);
signal alu_rot_output:									std_logic_vector(11 downto 0);
signal alu_comp_output:									std_logic_vector(11 downto 0);

	begin
		
		alu_main_0:			alu_main  port map ( ALU_FUNC_SEL_0 => ALU_FUNC_SEL_0,
															ALU_FUNC_SEL_1 => ALU_FUNC_SEL_1,
															ALU_FUNC_SEL_2 => ALU_FUNC_SEL_2,
															inputA => register_bus_input,
															inputB => ac_input,
															output => alu_main_output,
															ADD_CARRY => ADD_CARRY
								);
		
		alu_out_mux:		alu_mux   port map ( ALU_OUT_SEL_0 => ALU_OUT_SEL_0,
															ALU_OUT_SEL_1 => ALU_OUT_SEL_1,
															ALU_OUT_SEL_2 => ALU_OUT_SEL_2,
														   inputA => register_bus_input,
														   inputB => alu_main_output,
														   inputC => ac_input,
														   output => alu_mux_output
								);
		
		alu_clr_0:			alu_clr port map   ( input => alu_mux_output,
															output => alu_clr_output,
															alu_clr => ALU_CLEAR
								);
		
		alu_xor_0:			alu_xor   port map ( input => alu_clr_output,
															output => alu_xor_output,
															alu_xor => ALU_COMP
								);
		
		alu_inc_0:			alu_incrementer   port map ( input => alu_xor_output,
															output => alu_inc_output,
															alu_inc => ALU_INC,
															carry_out => INC_CARRY
								);
		
		alu_rot_0:			alu_shifter port map ( input => alu_inc_output,
															  output => alu_rot_output,
															  link_input => LINK_input,
															  link_output => LINK_output,
															  alu_rot_1 => ALU_ROT_1,
															  alu_rot_2 => ALU_ROT_2
								);
		
		alu_comp_0:			alu_comparator port map ( input => alu_rot_output,
																  output => alu_comp_output,
																  IS_ZERO => IS_ZERO,
																  IS_ZERO_LAST => IS_ZERO_LAST,
																  IS_NEG => IS_NEG,
																  not_reset => not_reset,
																  clk => clk
								);
		
		top_bus_output <= alu_comp_output;
		
end rtl;