library ieee;
use ieee.std_logic_1164.all;

entity top_level is
	port ( mem_data_bus_in:								in std_logic_vector(11 downto 0);
			 mem_data_bus_out:							out std_logic_vector(11 downto 0);
			 mem_addr_bus_out:							out std_logic_vector(11 downto 0);
			 not_reset:										in std_logic;
			 clk_in:											in std_logic;
			 START:											in std_logic;
			 STEP:											in std_logic;
			 NEXT_STATE:									in std_logic;
			 END_STATE:										in std_logic;
			 ASSERT_CONTROL:								in std_logic;
			 FP_ADDR_LOAD:									in std_logic;
			 FP_EXAMINE:									in std_logic;
			 FP_DEPOSIT:									in std_logic;
			 HRQ:												in std_logic;
			 IRQ:												in std_logic;
			 IRQ_ON:											in std_logic;
			 HLT_indicator:								out std_logic;
			 RUN_indicator:								out std_logic
	);
end top_level;

architecture rtl of top_level is

component control_subsystem is
	port ( MD_BUS:											in std_logic_vector(11 downto 0);
			 not_reset:										in std_logic;
			 clk_in:											in std_logic;
			 clk:												out std_logic;
			 START:											in std_logic;
			 STEP:											in std_logic;
			 NEXT_STATE:									in std_logic;
			 END_STATE:										in std_logic;
			 ASSERT_CONTROL:								in std_logic;
			 FP_ADDR_LOAD:									in std_logic;
			 FP_EXAMINE:									in std_logic;
			 FP_DEPOSIT:									in std_logic;
			 HRQ:												in std_logic;
			 IRQ:												in std_logic;
			 IRQ_ON:											in std_logic;
			 ADD_CARRY:										in std_logic;
			 INC_CARRY:										in std_logic;
			 IS_ZERO_LAST:									in std_logic;
			 IS_ZERO:										in std_logic;
			 IS_NEG:											in std_logic;
			 IS_AUTO_INDEX:								in std_logic;
			 LINK_VALUE:									in std_logic;
			 HLT_indicator:								out std_logic;
			 RUN_indicator:								out std_logic;
			 PC_BUS_SEL:									out std_logic;
			 PC_LOAD_HI:									out std_logic;
			 PC_LOAD_LO:									out std_logic;
			 PC_CLR_HI:										out std_logic;
			 PC_CLR_LO:										out std_logic;
			 MA_LOAD_HI:									out std_logic;
			 MA_LOAD_LO:									out std_logic;
			 MA_BUS_SEL:									out std_logic;
			 MA_CLR_HI:										out std_logic;
			 MA_CLR_LO:										out std_logic;
			 MD_IN_SEL:										out std_logic;
			 MD_BUS_SEL:									out std_logic;
			 MD_CLR:											out std_logic;
			 MD_LOAD:										out std_logic;
			 SR_BUS_SEL:									out std_logic;
			 AC_LOAD:										out std_logic;
			 LINK_LOAD:										out std_logic;
			 LINK_OUT_SEL:									out std_logic;
			 LINK_COMP:										out std_logic;
			 ALU_FUNC_SEL_0:								out std_logic;
			 ALU_FUNC_SEL_1:								out std_logic;
			 ALU_FUNC_SEL_2:								out std_logic;
			 ALU_OUT_SEL_0:								out std_logic;
			 ALU_OUT_SEL_1:								out std_logic;
			 ALU_OUT_SEL_2:								out std_logic;
			 ALU_COMP:										out std_logic;
			 ALU_INC:										out std_logic;
			 ALU_CLEAR:										out std_logic;
			 ALU_ROT_1:										out std_logic;
			 ALU_ROT_2:										out std_logic;
			 MEM_READ:										out std_logic;
			 MEM_WRITE:										out std_logic
	);
end component;
component register_array is
	port ( top_bus:										in std_logic_vector(11 downto 0);
			 ALU_link_output:								in std_logic;
			 register_output_bus:						out std_logic_vector(11 downto 0);
			 AC_output_bus:								out std_logic_vector(11 downto 0);
			 mem_data_bus_in:								in std_logic_vector(11 downto 0);
			 mem_data_bus_out:							out std_logic_vector(11 downto 0);
			 mem_addr_bus_out:							out std_logic_vector(11 downto 0);
			 not_reset:										in std_logic;
			 clk:												in std_logic;
			 LINK_VALUE:									out std_logic;
			 PC_BUS_SEL:									in std_logic;
			 PC_LOAD_HI:									in std_logic;
			 PC_LOAD_LO:									in std_logic;
			 PC_CLR_HI:										in std_logic;
			 PC_CLR_LO:										in std_logic;
			 MA_LOAD_HI:									in std_logic;
			 MA_LOAD_LO:									in std_logic;
			 MA_BUS_SEL:									in std_logic;
			 MA_CLR_HI:										in std_logic;
			 MA_CLR_LO:										in std_logic;
			 MD_IN_SEL:										in std_logic;
			 MD_BUS_SEL:									in std_logic;
			 MD_CLR:											in std_logic;
			 MD_LOAD:										in std_logic;
			 SR_BUS_SEL:									in std_logic;
			 AC_LOAD:										in std_logic;
			 LINK_LOAD:										in std_logic
	);
end component;
component  alu_subsystem is
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
			 top_bus_output:								out std_logic_vector(11 downto 0);
			 LINK_output:									out std_logic
	);
end component;
		
		signal mem_data_bus:								std_logic_vector(11 downto 0);
		signal ALU_link_output:							std_logic;
		signal register_output_bus:					std_logic_vector(11 downto 0);
		signal AC_output_bus:							std_logic_vector(11 downto 0);
		signal top_bus:									std_logic_vector(11 downto 0);
		signal clk:											std_logic;
		
		signal ADD_CARRY:									std_logic;
		signal INC_CARRY:									std_logic;
		signal IS_ZERO_LAST:								std_logic;
		signal IS_ZERO:									std_logic;
		signal IS_NEG:										std_logic;
		signal IS_AUTO_INDEX:							std_logic;
		signal LINK_VALUE:								std_logic;
		signal PC_BUS_SEL:								std_logic;
		signal PC_LOAD_HI:								std_logic;
		signal PC_LOAD_LO:								std_logic;
		signal PC_CLR_HI:									std_logic;
		signal PC_CLR_LO:									std_logic;
		signal MA_LOAD_HI:								std_logic;
		signal MA_LOAD_LO:								std_logic;
		signal MA_BUS_SEL:								std_logic;
		signal MA_CLR_HI:									std_logic;
		signal MA_CLR_LO:									std_logic;
		signal MD_IN_SEL:									std_logic;
		signal MD_BUS_SEL:								std_logic;
		signal MD_CLR:										std_logic;
		signal MD_LOAD:									std_logic;
		signal SR_BUS_SEL:								std_logic;
		signal AC_LOAD:									std_logic;
		signal LINK_LOAD:									std_logic;
		signal LINK_OUT_SEL:								std_logic;
		signal LINK_COMP:									std_logic;
		signal ALU_FUNC_SEL_0:							std_logic;
		signal ALU_FUNC_SEL_1:							std_logic;
		signal ALU_FUNC_SEL_2:							std_logic;
		signal ALU_OUT_SEL_0:							std_logic;
		signal ALU_OUT_SEL_1:							std_logic;
		signal ALU_OUT_SEL_2:							std_logic;
		signal ALU_COMP:									std_logic;
		signal ALU_INC:									std_logic;
		signal ALU_CLEAR:									std_logic;
		signal ALU_ROT_1:									std_logic;
		signal ALU_ROT_2:									std_logic;
		signal MEM_READ:									std_logic;
		signal MEM_WRITE:									std_logic;
		
	begin
		
		register_array_0:		register_array port map ( top_bus => top_bus,
																	  ALU_link_output => ALU_link_output,
																	  register_output_bus => register_output_bus,
																	  AC_output_bus => AC_output_bus,
																	  mem_data_bus_in => mem_data_bus_in,
																	  mem_data_bus_out => mem_data_bus,
																	  mem_addr_bus_out => mem_addr_bus_out,
																	  not_reset => not_reset,
																	  clk => clk,
																 	  LINK_VALUE => LINK_VALUE,
															 		  PC_BUS_SEL => PC_BUS_SEL,
																	  PC_LOAD_HI => PC_LOAD_HI,
																	  PC_LOAD_LO => PC_LOAD_LO,
																	  PC_CLR_HI => PC_CLR_HI,
																	  PC_CLR_LO => PC_CLR_LO,
																	  MA_LOAD_HI => MA_LOAD_HI,
																	  MA_LOAD_LO => MA_LOAD_LO,
																	  MA_BUS_SEL => MA_BUS_SEL,
																	  MA_CLR_HI => MA_CLR_HI,
																	  MA_CLR_LO => MA_CLR_LO,
																	  MD_IN_SEL => MD_IN_SEL,
																	  MD_BUS_SEL => MD_BUS_SEL,
																	  MD_CLR => MD_CLR,
																	  MD_LOAD => MD_LOAD,
																	  SR_BUS_SEL => SR_BUS_SEL,
																	  AC_LOAD => AC_LOAD,
																	  LINK_LOAD => LINK_LOAD 
									);
		
		control_subsystem_0:	control_subsystem port map (MD_BUS => mem_data_bus,
																		 not_reset => not_reset,
																		 clk_in => clk_in,
																		 clk => clk,
																		 START => START,
																		 STEP => STEP,
																		 NEXT_STATE => NEXT_STATE,
																		 END_STATE => END_STATE,
																		 ASSERT_CONTROL => ASSERT_CONTROL,
																		 FP_ADDR_LOAD => FP_ADDR_LOAD,
																		 FP_EXAMINE => FP_EXAMINE,
																		 FP_DEPOSIT => FP_DEPOSIT,
																		 HRQ => HRQ,
																		 IRQ => IRQ,
																		 IRQ_ON => IRQ_ON,
																		 ADD_CARRY => ADD_CARRY,
																		 INC_CARRY => INC_CARRY,
																		 IS_ZERO_LAST => IS_ZERO_LAST,
																		 IS_ZERO => IS_ZERO,
																		 IS_NEG => IS_NEG,
																		 IS_AUTO_INDEX => IS_AUTO_INDEX,
																		 LINK_VALUE => LINK_VALUE,
																		 HLT_indicator => HLT_indicator,
																		 RUN_indicator => RUN_indicator,
																		 PC_BUS_SEL => PC_BUS_SEL,
																		 PC_LOAD_HI => PC_LOAD_HI,
																		 PC_LOAD_LO => PC_LOAD_LO,
																		 PC_CLR_HI => PC_CLR_HI,
																		 PC_CLR_LO => PC_CLR_LO,
																		 MA_LOAD_HI => MA_LOAD_HI,
																		 MA_LOAD_LO => MA_LOAD_LO,
																		 MA_BUS_SEL => MA_BUS_SEL,
																		 MA_CLR_HI => MA_CLR_HI,
																		 MA_CLR_LO => MA_CLR_LO,
																		 MD_IN_SEL => MD_IN_SEL,
																		 MD_BUS_SEL => MD_BUS_SEL,
																		 MD_CLR => MD_CLR,
																		 MD_LOAD => MD_LOAD,
																		 SR_BUS_SEL => SR_BUS_SEL,
																		 AC_LOAD => AC_LOAD,
																		 LINK_LOAD => LINK_LOAD,
																		 LINK_OUT_SEL => LINK_OUT_SEL,
																		 LINK_COMP => LINK_COMP,
																		 ALU_FUNC_SEL_0 => ALU_FUNC_SEL_0,
																		 ALU_FUNC_SEL_1 => ALU_FUNC_SEL_1,
																		 ALU_FUNC_SEL_2 => ALU_FUNC_SEL_2,
																		 ALU_OUT_SEL_0 => ALU_OUT_SEL_0,
																		 ALU_OUT_SEL_1 => ALU_OUT_SEL_1,
																		 ALU_OUT_SEL_2 => ALU_OUT_SEL_2,
																		 ALU_COMP => ALU_COMP,
																		 ALU_INC => ALU_INC,
																		 ALU_CLEAR => ALU_CLEAR,
																		 ALU_ROT_1 => ALU_ROT_1,
																		 ALU_ROT_2 => ALU_ROT_2,
																		 MEM_READ => MEM_READ,
																		 MEM_WRITE => MEM_WRITE
									);
		
		alu_subsystem_0:		alu_subsystem port map    ( clk => clk,
																		 not_reset => not_reset,
																		 ALU_input_A => register_output_bus,
																		 ALU_input_B => AC_output_bus,
																		 register_bus_input => register_output_bus,
																		 AC_input => AC_output_bus,
																		 LINK_input => LINK_VALUE,
																		 LINK_OUT_SEL => LINK_OUT_SEL,
																		 LINK_COMP => LINK_COMP,
																		 ALU_FUNC_SEL_0 => ALU_FUNC_SEL_0,
																		 ALU_FUNC_SEL_1 => ALU_FUNC_SEL_1,
																		 ALU_FUNC_SEL_2 => ALU_FUNC_SEL_2,
																		 ALU_OUT_SEL_0 => ALU_OUT_SEL_0,
																		 ALU_OUT_SEL_1 => ALU_OUT_SEL_1,
																		 ALU_OUT_SEL_2 => ALU_OUT_SEL_2,
																		 ALU_COMP => ALU_COMP,
																		 ALU_INC => ALU_INC,
																		 ALU_CLEAR => ALU_CLEAR,
																		 ALU_ROT_1 => ALU_ROT_1,
																		 ALU_ROT_2 => ALU_ROT_2,
																		 ADD_CARRY => ADD_CARRY,
																		 INC_CARRY => INC_CARRY,
																		 IS_ZERO_LAST => IS_ZERO_LAST,
																		 IS_ZERO => IS_ZERO,
																		 IS_NEG => IS_NEG,
																		 top_bus_output => top_bus,
																		 LINK_output => ALU_link_output
									);
		
		mem_data_bus_out <= mem_data_bus;
		
end rtl;