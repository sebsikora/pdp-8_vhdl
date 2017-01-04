library ieee;
use ieee.std_logic_1164.all;

entity control_logic is
	port ( s_states:									in std_logic_vector(3 downto 0);
			 t_states:									in std_logic_vector(5 downto 0);
			 IRQ:											in std_logic;
			 IR:											in std_logic_vector(4 downto 0);
			 MEM_INST:									in std_logic;
			 SKIP_MASTER:								in std_logic;
			 JMS:											in std_logic;
			 JMP:											in std_logic;
			 ISZ:											in std_logic;
			 IND:											in std_logic;
			 CLL:											in std_logic;
			 CML:											in std_logic;
			 CMA:											in std_logic;
			 IAC:											in std_logic;
			 DCA:											in std_logic;			 
			 ANDD:										in std_logic;
			 TAD:											in std_logic;
			 ADD:											in std_logic;
			 OSR:											in std_logic;
			 AC_MOD:										in std_logic;
			 ROTATE_MASTER:							in std_logic;
			 ROTATE_TWICE:								in std_logic;
			 RTR:											in std_logic;
			 RTL:											in std_logic;
			 ADD_CARRY:									in std_logic;
			 INC_CARRY:									in std_logic;
			 IS_ZERO_LAST:								in std_logic;
			 IS_ZERO:									in std_logic;
			 IS_AUTO_INDEX:							in std_logic;
			 
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
	signal not_JMP:									std_logic;
	signal not_IR_4:									std_logic;
	signal not_DCA:									std_logic;
	
begin
	not_JMP <= not JMP;
	not_IR_4 <= not IR(4);
	not_DCA <= not DCA;
	
	PC_BUS_SEL <= (s_states(0) and (t_states(0) or t_states(1))) or (s_states(0) and t_states(3) and SKIP_MASTER) or (s_states(2) and ((t_states(1) and JMS) or (t_states(5) and ISZ)));
	PC_LOAD_HI <= (s_states(0) and (t_states(1) or (t_states(3) and SKIP_MASTER))) or (s_states(2) and ((t_states(0) and JMP and IND) or (t_states(3) and JMS) or (t_states(5) and ISZ and IS_ZERO_LAST))) or (s_states(3) and t_states(2) and IRQ);
	PC_LOAD_LO <= (s_states(0) and (t_states(1) or (t_states(3) and SKIP_MASTER))) or (s_states(2) and ((t_states(0) and JMP) or (t_states(3) and JMS) or (t_states(5) and ISZ and IS_ZERO_LAST))) or (s_states(3) and t_states(2) and IRQ);
	PC_CLR_HI <= s_states(2) and t_states(0) and JMP and IS_ZERO;
	PC_CLR_LO <= '0';
	IR_LOAD <= s_states(0) and t_states(2);
	IR_CLR <= '0';
	MA_LOAD_HI <= (s_states(0) and t_states(0)) or (s_states(1) and t_states(0) and IR(4)) or (s_states(2) and t_states(0) and IND and MEM_INST and not_JMP);
	MA_BUS_SEL <= '0';
	MA_CLR_HI <= (s_states(1) and t_states(0) and not_IR_4) or (s_states(2) and t_states(0) and IS_ZERO and MEM_INST and not_JMP) or (s_states(3) and t_states(0) and IRQ);
	MA_CLR_LO <= s_states(3) and t_states(0) and IRQ;
	MD_LOAD <= (s_states(0) and t_states(2)) or (s_states(1) and (t_states(2) or (t_states(3) and IS_AUTO_INDEX))) or (s_states(2) and ((t_states(1) and (DCA or JMS)) or (t_states(2) and (ANDD or TAD or ISZ)) or (t_states(3) and ISZ))) or (s_states(3) and t_states(0) and IRQ);
	MD_CLR <= '0';
	MD_IN_SEL <= (s_states(0) and t_states(2)) or (s_states(1) and t_states(2)) or (s_states(2) and t_states(2) and (ANDD or ADD or ISZ));
	MD_BUS_SEL <= (s_states(0) and t_states(2)) or (s_states(1) and (t_states(0) or (t_states(3) and IS_AUTO_INDEX))) or (s_states(2) and t_states(0) and MEM_INST) or (s_states(2) and t_states(3) and MEM_INST and not_DCA) or (s_states(2) and t_states(4) and ISZ) or (s_states(3) and t_states(2) and IRQ);
	SR_BUS_SEL <= s_states(0) and t_states(3) and OSR;
	AC_LOAD <= (s_states(0) and ((t_states(3) and (AC_MOD or ROTATE_MASTER)) or (t_states(4) and ROTATE_TWICE))) or (s_states(2) and t_states(3) and (ANDD or TAD or DCA));
	
	
	
	
	
	
end rtl;