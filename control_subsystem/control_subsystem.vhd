library ieee;
use ieee.std_logic_1164.all;

entity control_subsystem is
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
end control_subsystem;

architecture rtl of control_subsystem is
	component register_5_bit is
		port ( input:										in std_logic_vector(4 downto 0);
				 output:										out std_logic_vector(4 downto 0);
				 load:										in std_logic;
				 clear:										in std_logic;
				 clk:											in std_logic;
				 not_reset:									in std_logic
		);
	end component; 
	component state_generator is
		port ( clk:											in std_logic;
				 not_reset:									in std_logic;
				 HLT_flag:									in std_logic;
				 NEXT_STATE:								in std_logic;
				 END_STATE:									in std_logic;
				 LOAD:										in std_logic_vector(1 downto 0);
				 HLT_indicator:							out std_logic;
				 s_states:									out std_logic_vector(7 downto 0);
				 t_states:									out std_logic_vector(7 downto 0)
		);
	end component;
	component control_logic is
		port ( s_states:									in std_logic_vector(7 downto 0);
				 t_states:									in std_logic_vector(7 downto 0);
				 NEXT_STATE_in:							in std_logic;
				 END_STATE_in:								in std_logic;
				 ASSERT_CONTROL:							in std_logic;
				 FP_ADDR_LOAD:								in std_logic;
				 FP_EXAMINE:								in std_logic;
				 FP_DEPOSIT:								in std_logic;
				 HRQ:											in std_logic;
				 IRQ:											in std_logic;
				 IR:											in std_logic_vector(11 downto 0);
				 ADD_CARRY:									in std_logic;
				 INC_CARRY:									in std_logic;
				 IS_ZERO_LAST:								in std_logic;
				 IS_ZERO:									in std_logic;
				 IS_NEG:										in std_logic;
				 IS_AUTO_INDEX:							in std_logic;
				 LINK_VALUE:								in std_logic;
				 LOAD:										out std_logic_vector(1 downto 0);
				 NEXT_STATE_out:							out std_logic;
				 END_STATE_out:							out std_logic;
				 HLT_flag:									out std_logic;
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
	end component;
	component clock_generator is
		port ( START:										in std_logic;
				 STEP:										in std_logic;
				 clk_in:										in std_logic;
				 END_STATE:									in std_logic;
				 clk:											out std_logic;
				 not_reset:									in std_logic;
				 RUN_INDICATOR:							out std_logic
		);
	end component;
	
	signal s_state_signals:					std_logic_vector(7 downto 0);
	signal load_s_state:						std_logic_vector(1 downto 0);
	signal t_state_signals:					std_logic_vector(7 downto 0);
	signal NEXT_STATE_flag:					std_logic;
	signal END_STATE_flag:					std_logic;
	signal HLT_flag:							std_logic;
	signal IR_reg_output:					std_logic_vector(4 downto 0);
	signal IR_clr_input:						std_logic;
	signal IR_load_input:					std_logic;
	signal control_matrix_IR_input:		std_logic_vector(11 downto 0);
	signal IRQ_signal:						std_logic;
	signal clk_signal:						std_logic;
	signal RUN_INDICATOR_signal:			std_logic;
	begin
		
		IRQ_signal <= IRQ and IRQ_ON;
		control_matrix_IR_input(4 downto 0) <= IR_reg_output;
		control_matrix_IR_input(11 downto 5) <= MD_BUS(11 downto 5);
		RUN_INDICATOR <= RUN_INDICATOR_signal;
		clk <= clk_signal;
		
		register_5_bit_0:			register_5_bit  port map ( input => MD_BUS(4 downto 0),
																			output => IR_reg_output,
																			load => IR_load_input,
																			clear => IR_clr_input,
																			clk => clk_signal,
																			not_reset => not_reset
										);
		clock_generator_0:		clock_generator port map ( START => START,
																			STEP => STEP,
																			clk_in => clk_in,
																			END_STATE => END_STATE_flag,
																			clk => clk_signal,
																			not_reset => not_reset,
																			RUN_INDICATOR => RUN_INDICATOR_signal
										);
										
		state_generator_0:		state_generator port map ( clk => clk_signal,
																			not_reset => not_reset,
																			HLT_flag => HLT_flag,
																			NEXT_STATE => NEXT_STATE_flag,
																			END_STATE => END_STATE_flag,
																			LOAD => load_s_state,
																			HLT_indicator => HLT_indicator,
																			s_states => s_state_signals,
																			t_states => t_state_signals
										);
		
		control_matrix:			control_logic   port map ( s_states => s_state_signals,
																		   t_states => t_state_signals,
																		   NEXT_STATE_in => NEXT_STATE,
																			END_STATE_in => END_STATE,
																			ASSERT_CONTROL => ASSERT_CONTROL,
																			FP_ADDR_LOAD => FP_ADDR_LOAD,
																			FP_EXAMINE => FP_EXAMINE,
																			FP_DEPOSIT => FP_DEPOSIT,
																			HRQ => HRQ,
																			IRQ => IRQ_signal,
																		   IR => control_matrix_IR_input,
																		   ADD_CARRY => ADD_CARRY,
																		   INC_CARRY => INC_CARRY,
																		   IS_ZERO_LAST => IS_ZERO_LAST,
																		   IS_ZERO => IS_ZERO,
																		   IS_NEG => IS_NEG,
																		   IS_AUTO_INDEX => IS_AUTO_INDEX,
																		   LINK_VALUE => LINK_VALUE,
																			LOAD => load_s_state,
																			NEXT_STATE_out => NEXT_STATE_flag,
																			END_STATE_out => END_STATE_flag,
																			HLT_flag => HLT_flag,
																		   PC_BUS_SEL => PC_BUS_SEL,
																		   PC_LOAD_HI => PC_LOAD_HI,
																		   PC_LOAD_LO => PC_LOAD_LO,
																		   PC_CLR_HI => PC_CLR_HI,
																		   PC_CLR_LO => PC_CLR_LO,
																		   IR_LOAD => IR_load_input,
																		   IR_CLR => IR_clr_input,
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
															 
end rtl;