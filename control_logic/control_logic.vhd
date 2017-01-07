library ieee;
use ieee.std_logic_1164.all;

entity control_logic is
	port ( s_states:									in std_logic_vector(3 downto 0);
			 t_states:									in std_logic_vector(5 downto 0);
			 IRQ:											in std_logic;
			 IR:											in std_logic_vector(11 downto 0);
			 ADD_CARRY:									in std_logic;
			 INC_CARRY:									in std_logic;
			 IS_ZERO_LAST:								in std_logic;
			 IS_ZERO:									in std_logic;
			 IS_NEG:										in std_logic;
			 IS_AUTO_INDEX:							in std_logic;
			 LINK_VALUE:								in std_logic;
			 PC_BUS_SEL:								out std_logic;
			 PC_LOAD_HI:								out std_logic;
			 PC_LOAD_LO:								out std_logic;
			 PC_CLR_HI:									out std_logic;
			 PC_CLR_LO:									out std_logic;
			 IR_LOAD:									out std_logic;
			 IR_CLR:										out std_logic;
			 MA_LOAD_HI:								out std_logic;
			 MA_LOAD_LO:								out std_logic;
			 MA_BUS_SEL:								out std_logic;
			 MA_CLR_HI:									out std_logic;
			 MA_CLR_LO:									out std_logic;
			 MD_IN_SEL:									out std_logic;
			 MD_BUS_SEL:								out std_logic;
			 MD_CLR:										out std_logic;
			 MD_LOAD:									out std_logic;
			 SR_BUS_SEL:								out std_logic;
			 AC_LOAD:									out std_logic;
			 LINK_LOAD:									out std_logic;
			 LINK_OUT_SEL:								out std_logic;
			 LINK_COMP:									out std_logic;
			 ALU_FUNC_SEL_0:							out std_logic;
			 ALU_FUNC_SEL_1:							out std_logic;
			 ALU_FUNC_SEL_2:							out std_logic;
			 ALU_OUT_SEL_0:							out std_logic;
			 ALU_OUT_SEL_1:							out std_logic;
			 ALU_OUT_SEL_2:							out std_logic;
			 ALU_COMP:									out std_logic;
			 ALU_INC:									out std_logic;
			 ALU_CLEAR:									out std_logic;
			 ALU_ROT_1:									out std_logic;
			 ALU_ROT_2:									out std_logic;
			 MEM_READ:									out std_logic;
			 MEM_WRITE:									out std_logic
	);
end control_logic;

architecture rtl of control_logic is
	
	component decoder_3_to_6 is
		port ( input:									in std_logic_vector(2 downto 0);
				 output:									out std_logic_vector(5 downto 0)
		);
	end component;
	
	signal not_JMP:									std_logic;
	signal not_Z_BIT:									std_logic;
	signal Z_BIT:										std_logic;
	signal not_DCA:									std_logic;
	signal decoder_outputs:							std_logic_vector(5 downto 0);
	
	signal CLA0:										std_logic;
	signal CLL:											std_logic;
	signal CML:											std_logic;
	signal CMA:											std_logic;
	signal IAC:											std_logic;
	signal RAR:											std_logic;
	signal RAL:											std_logic;
	signal RTR:											std_logic;
	signal RTL:											std_logic;
	
	signal CLA1:										std_logic;
	signal SMA:											std_logic;
	signal SZA:											std_logic;
	signal SNL:											std_logic;
	signal OSR:											std_logic;
	signal HLT:											std_logic;
	
	signal CLA2:										std_logic;
	signal SKP:											std_logic;
	signal SPA:											std_logic;
	signal SNA:											std_logic;
	signal SZL:											std_logic;
	
	signal ANDD:										std_logic;
	signal TAD:											std_logic;
	signal ISZ:											std_logic;
	signal DCA:											std_logic;
	signal JMS:											std_logic;
	signal JMP:											std_logic;
	
	signal IND:											std_logic;
	signal MEM_INST:									std_logic;
	signal SKIP_MASTER:								std_logic;
	signal CARRY_MASTER:								std_logic;
	signal CLA_MASTER:								std_logic;
	signal ROTATE_MASTER:							std_logic;
	signal ROTATE_TWICE:								std_logic;
	signal ROTATE_R:									std_logic;
	signal ROTATE_L:									std_logic;
	signal AC_MOD:										std_logic;
	signal LINK_MOD:									std_logic;
	
	signal BASIC_INS:									std_logic;
	signal IOT_INS:									std_logic;
	signal OPR_INS:									std_logic;
	
	signal GROUP_1:									std_logic;
	signal GROUP_2_OR:								std_logic;
	signal GROUP_2_AND:								std_logic;
	
begin
	IOT_INS <= IR(0) and IR(1) and (not IR(2));
	OPR_INS <= IR(0) and IR(1) and IR(2);
	BASIC_INS <= not (IOT_INS or OPR_INS);
	
	Z_BIT <= BASIC_INS and IR(4);
	IND <= BASIC_INS and IR(3);
	
	not_Z_BIT <= not Z_BIT;
	not_DCA <= not DCA;
	not_JMP <= not JMP;
	
	MEM_INST <= BASIC_INS and (JMP or ANDD or TAD or DCA or JMS or ISZ);
	
	GROUP_1 <= OPR_INS and (not IR(3));
	GROUP_2_AND <= OPR_INS and (IR(3) and (not IR(8)) and (not IR(11)));
	GROUP_2_OR <= OPR_INS and (IR(3) and IR(8) and (not IR(11)));
	
	CLA0 <= GROUP_1 and IR(4);
	CLL <= GROUP_1 and IR(5);
	CMA <= GROUP_1 and IR(6);
	CML <= GROUP_1 and IR(7);
	IAC <= GROUP_1 and IR(11);
	RAR <= GROUP_1 and IR(8);
	RAL <= GROUP_1 and IR(9);
	RTR <= GROUP_1 and IR(8) and IR(10);
	RTL <= GROUP_1 and IR(9) and IR(10);
	
	CLA1 <= GROUP_2_OR and IR(4);
	SMA <= GROUP_2_OR and IR(5);
	SZA <= GROUP_2_OR and IR(6);
	SNL <= GROUP_2_OR and IR(7) and LINK_VALUE;
	OSR <= GROUP_2_OR and IR(9);
	HLT <= GROUP_2_OR and IR(10);
	
	CLA2 <= GROUP_2_AND and IR(4);
	SKP <= GROUP_2_AND and (not(SPA and SNA and SZL));
	SPA <= GROUP_2_AND and IR(5) and (not IS_NEG);
	SNA <= GROUP_2_AND and IR(6) and (not IS_ZERO);
	SZL <= GROUP_2_AND and IR(7) and (not LINK_VALUE);
	
	SKIP_MASTER <= SMA or SZA or SNL or SKP or SPA or SNA or SZL;
	CLA_MASTER <= CLA0 or CLA1 or CLA2;
	CARRY_MASTER <= ADD_CARRY xor INC_CARRY;
	
	ROTATE_R <= RAR or RTR;
	ROTATE_L <= RAL or RTL;
	ROTATE_MASTER <= ROTATE_R or ROTATE_L;
	ROTATE_TWICE <= RTR or RTL;
	AC_MOD <= CLA_MASTER or CMA or IAC or OSR;
	LINK_MOD <= CLL or CML;
	
	-- I think the use of 'ZERO', 'IS_ZERO' and 'Z_BIT' has got a bit confused below (and above, perhaps...).
	-- 'IS_ZERO' should turn up in the OPR instructions that skip dependent on a zero value in ac or link bit, etc.
	-- 'Z_BIT' should turn up in memory accessing instructions as it refers to whether or not the current operand address points
	-- to the zero page or the current page.
	-- In my paper notes in the section 'Bringing together the E state micro-ops', I use the label 'ZERO' to signal the zero page, ie,
	-- the 'Z_BIT' here.
	--
	-- NEW NOTE --
	-- I think I have fixed this issue below now, but need to check it over above again, and also pay EXTRA ATTENTION
	-- to this bit as I finish off summing the control states below...!
	PC_BUS_SEL <= (s_states(0) and (t_states(0) or t_states(1))) or (s_states(0) and t_states(3) and SKIP_MASTER) or (s_states(2) and ((t_states(1) and JMS) or (t_states(5) and ISZ)));
	PC_LOAD_HI <= (s_states(0) and (t_states(1) or (t_states(3) and SKIP_MASTER))) or (s_states(2) and ((t_states(0) and JMP and IND) or (t_states(3) and JMS) or (t_states(5) and ISZ and IS_ZERO_LAST))) or (s_states(3) and t_states(2) and IRQ);
	PC_LOAD_LO <= (s_states(0) and (t_states(1) or (t_states(3) and SKIP_MASTER))) or (s_states(2) and ((t_states(0) and JMP) or (t_states(3) and JMS) or (t_states(5) and ISZ and IS_ZERO_LAST))) or (s_states(3) and t_states(2) and IRQ);
	PC_CLR_HI <= s_states(2) and t_states(0) and JMP and Z_BIT;
	PC_CLR_LO <= '0';
	IR_LOAD <= s_states(0) and t_states(2);
	IR_CLR <= '0';
	MA_LOAD_HI <= (s_states(0) and t_states(0)) or (s_states(1) and t_states(0) and Z_BIT) or (s_states(2) and t_states(0) and IND and MEM_INST and not_JMP);
	MA_LOAD_LO <= (s_states(0) and t_states(0)) or (s_states(1) and t_states(0)) or (s_states(2) and t_states(0) and MEM_INST and not_JMP);
	MA_BUS_SEL <= '0';
	MA_CLR_HI <= (s_states(1) and t_states(0) and not_Z_BIT) or (s_states(2) and t_states(0) and Z_BIT and MEM_INST and not_JMP) or (s_states(3) and t_states(0) and IRQ);
	MA_CLR_LO <= s_states(3) and t_states(0) and IRQ;
	MD_LOAD <= (s_states(0) and t_states(2)) or (s_states(1) and (t_states(2) or (t_states(3) and IS_AUTO_INDEX))) or (s_states(2) and ((t_states(1) and (DCA or JMS)) or (t_states(2) and (ANDD or TAD or ISZ)) or (t_states(3) and ISZ))) or (s_states(3) and t_states(0) and IRQ);
	MD_CLR <= '0';
	MD_IN_SEL <= (s_states(0) and t_states(2)) or (s_states(1) and t_states(2)) or (s_states(2) and t_states(2) and (ANDD or TAD or ISZ));
	MD_BUS_SEL <= (s_states(0) and t_states(2)) or (s_states(1) and (t_states(0) or (t_states(3) and IS_AUTO_INDEX))) or (s_states(2) and t_states(0) and MEM_INST) or (s_states(2) and t_states(3) and MEM_INST and not_DCA) or (s_states(2) and t_states(4) and ISZ) or (s_states(3) and t_states(2) and IRQ);
	SR_BUS_SEL <= s_states(0) and t_states(3) and OSR;
	AC_LOAD <= (s_states(0) and ((t_states(3) and (AC_MOD or ROTATE_MASTER)) or (t_states(4) and ROTATE_TWICE))) or (s_states(2) and t_states(3) and (ANDD or TAD or DCA));
	LINK_LOAD <= (s_states(0) and ((t_states(3) and (LINK_MOD or IAC or ROTATE_MASTER)) or (t_states(4) and ROTATE_TWICE))) or (s_states(2) and t_states(3) and TAD);
	LINK_OUT_SEL <= s_states(0) and t_states(3) and CLL;
	LINK_COMP <= (s_states(0) and t_states(3) and (CML or (IAC and INC_CARRY))) or (s_states(2) and t_states(3) and TAD and ADD_CARRY);
	ALU_FUNC_SEL_0 <= s_states(2) and t_states(3) and ANDD;
	ALU_FUNC_SEL_1 <= s_states(2) and t_states(3) and TAD;
	ALU_FUNC_SEL_2 <= s_states(0) and t_states(3) and OSR;
	ALU_OUT_SEL_0 <= (s_states(0) and (t_states(0) or t_states(1) or t_states(2))) or (s_states(1) and (t_states(0) or (t_states(3) and IS_AUTO_INDEX))) or (s_states(2) and ((t_states(1) and JMS) or (t_states(3) and (ANDD or TAD)) or (t_states(4) and ISZ) or (t_states(5) and ISZ and IS_ZERO_LAST))) or (s_states(3) and ((t_states(0) and IRQ) or (t_states(2) and IRQ)));
	ALU_OUT_SEL_1 <= (s_states(0) and t_states(3) and OSR) or (s_states(2) and t_states(3) and (ANDD or TAD));
	ALU_OUT_SEL_2 <= (s_states(0) and ((t_states(3) and (AC_MOD or ROTATE_MASTER)) or (t_states(4) and ROTATE_TWICE)));
	ALU_COMP <= (s_states(0) and t_states(3) and CMA);
	ALU_INC <= (s_states(0) and (t_states(1) or (t_states(3) and IAC))) or (s_states(1) and t_states(3) and IS_AUTO_INDEX) or (s_states(2) and ((t_states(3) and JMS) or (t_states(5) and ISZ and IS_ZERO_LAST))) or (s_states(3) and t_states(2) and IRQ);
	ALU_ROT_1 <= (s_states(0) and ((t_states(3) and ROTATE_R) or (t_states(4) and RTR)));
	ALU_ROT_2 <= (s_states(0) and ((t_states(3) and ROTATE_L) or (t_states(4) and RTL)));
	MEM_READ <= (s_states(0) and (t_states(1) or t_states(2))) or (s_states(1) and (t_states(1) or t_states(2))) or (s_states(2) and ((t_states(1) and (ANDD or TAD or ISZ)) or (t_states(2) and (ANDD or TAD or ISZ))));
	MEM_WRITE <= (s_states(2) and ((t_states(2) and (DCA or JMS)) or (t_states(4) and ISZ))) or (s_states(3) and t_states(1) and IRQ);
	ALU_CLEAR <= (s_states(0) and t_states(3) and CLA_MASTER) or (s_states(2) and t_states(3) and DCA);
	
	decoder_3_to_6_0:				decoder_3_to_6 port map (input => IR(2 downto 0), output => decoder_outputs);
	ANDD <= decoder_outputs(0);
	TAD <= decoder_outputs(1);
	ISZ <= decoder_outputs(2);
	DCA <= decoder_outputs(3);
	JMS <= decoder_outputs(4);
	JMP <= decoder_outputs(5);
	
end rtl;