library ieee;
use ieee.std_logic_1164.all;

entity top_level is
	port ( mem_data_bus_in:								in std_logic_vector(11 downto 0);
			 mem_data_bus_out:							out std_logic_vector(11 downto 0);
			 mem_addr_bus_in:								in std_logic;
			 not_reset:										in std_logic;
			 clk_in:											in std_logic;
			 START:											in std_logic;
			 STEP:											in std_logic
	);
end top_level;

architecture rtl of top_level is

component alu_main is
	port ( alu_out_select:								in std_logic_vector(2 downto 0);
			 inputA:											in std_logic_vector(11 downto 0);
			 inputB:											in std_logic_vector(11 downto 0);
			 output:											out std_logic_vector(11 downto 0);
			 add_carry:										out std_logic
	);
end component;
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
		
		
		signal NEXT_STATE:								std_logic;
		signal END_STATE:									std_logic;
		signal ASSERT_CONTROL:							std_logic;
		signal FP_ADDR_LOAD:								std_logic;
		signal FP_EXAMINE:								std_logic;
		signal FP_DEPOSIT:								std_logic;
		signal HRQ:											std_logic;
		signal IRQ:											std_logic;
		signal IRQ_ON:										std_logic;
		signal ADD_CARRY:									std_logic;
		signal INC_CARRY:									std_logic;
		signal IS_ZERO_LAST:								std_logic;
		signal IS_ZERO:									std_logic;
		signal IS_NEG:										std_logic;
		signal IS_AUTO_INDEX:							std_logic;
		signal LINK_VALUE:								std_logic;
		signal HLT_indicator:							std_logic;
		signal RUN_indicator:							std_logic;
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
		
		
		
		
end rtl;