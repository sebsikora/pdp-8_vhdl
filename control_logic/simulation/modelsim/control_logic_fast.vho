-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/04/2017 21:39:33"

-- 
-- Device: Altera EP2C5AT144A7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	control_logic IS
    PORT (
	s_states : IN std_logic_vector(3 DOWNTO 0);
	t_states : IN std_logic_vector(5 DOWNTO 0);
	IRQ : IN std_logic;
	IR : IN std_logic_vector(4 DOWNTO 0);
	MEM_INST : IN std_logic;
	SKIP_MASTER : IN std_logic;
	JMS : IN std_logic;
	JMP : IN std_logic;
	ISZ : IN std_logic;
	IND : IN std_logic;
	CLL : IN std_logic;
	CML : IN std_logic;
	CMA : IN std_logic;
	IAC : IN std_logic;
	DCA : IN std_logic;
	ANDD : IN std_logic;
	TAD : IN std_logic;
	ADD : IN std_logic;
	OSR : IN std_logic;
	AC_MOD : IN std_logic;
	ROTATE_MASTER : IN std_logic;
	ROTATE_TWICE : IN std_logic;
	RTR : IN std_logic;
	RTL : IN std_logic;
	ADD_CARRY : IN std_logic;
	INC_CARRY : IN std_logic;
	IS_ZERO_LAST : IN std_logic;
	IS_ZERO : IN std_logic;
	IS_AUTO_INDEX : IN std_logic;
	PC_BUS_SEL : OUT std_logic;
	PC_LOAD_HI : OUT std_logic;
	PC_LOAD_LO : OUT std_logic;
	PC_CLR_HI : OUT std_logic;
	PC_CLR_LO : OUT std_logic;
	IR_LOAD : OUT std_logic;
	IR_CLR : OUT std_logic;
	MA_LOAD_HI : OUT std_logic;
	MA_LOAD_LO : OUT std_logic;
	MA_BUS_SEL : OUT std_logic;
	MA_CLR_HI : OUT std_logic;
	MA_CLR_LO : OUT std_logic;
	MD_IN_SEL : OUT std_logic;
	MD_BUS_SEL : OUT std_logic;
	MD_CLR : OUT std_logic;
	MD_LOAD : OUT std_logic;
	SR_BUS_SEL : OUT std_logic;
	AC_LOAD : OUT std_logic;
	LINK_LOAD : OUT std_logic;
	LINK_OUT_SEL : OUT std_logic;
	LINK_COMP : OUT std_logic;
	ALU_FUNC_SEL_0 : OUT std_logic;
	ALU_FUNC_SEL_1 : OUT std_logic;
	ALU_FUNC_SEL_2 : OUT std_logic;
	ALU_OUT_SEL_0 : OUT std_logic;
	ALU_OUT_SEL_1 : OUT std_logic;
	ALU_OUT_SEL_2 : OUT std_logic;
	ALU_COMP : OUT std_logic;
	ALU_INC : OUT std_logic;
	ALU_CLEAR : OUT std_logic;
	ALU_ROT_1 : OUT std_logic;
	ALU_ROT_2 : OUT std_logic;
	MEM_READ : OUT std_logic;
	MEM_WRITE : OUT std_logic
	);
END control_logic;

-- Design Ports Information
-- IR[0]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLL	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CML	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CMA	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IAC	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RTR	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RTL	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD_CARRY	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INC_CARRY	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_BUS_SEL	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_LOAD_HI	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_LOAD_LO	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_CLR_HI	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_CLR_LO	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_LOAD	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_CLR	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_LOAD_HI	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_LOAD_LO	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_BUS_SEL	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_CLR_HI	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_CLR_LO	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_IN_SEL	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_BUS_SEL	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_CLR	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_LOAD	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SR_BUS_SEL	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AC_LOAD	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LINK_LOAD	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LINK_OUT_SEL	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LINK_COMP	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_FUNC_SEL_0	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_FUNC_SEL_1	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_FUNC_SEL_2	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_OUT_SEL_0	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_OUT_SEL_1	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_OUT_SEL_2	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_COMP	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_INC	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_CLEAR	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_ROT_1	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_ROT_2	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MEM_READ	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MEM_WRITE	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[0]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_states[2]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- t_states[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- t_states[5]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ISZ	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- JMS	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- t_states[0]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- t_states[3]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SKIP_MASTER	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- t_states[2]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_states[3]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRQ	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IS_ZERO_LAST	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IND	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- JMP	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IS_ZERO	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MEM_INST	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_states[1]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ANDD	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IS_AUTO_INDEX	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- t_states[4]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DCA	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TAD	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OSR	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_MOD	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ROTATE_MASTER	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ROTATE_TWICE	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF control_logic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s_states : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_t_states : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_IRQ : std_logic;
SIGNAL ww_IR : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_MEM_INST : std_logic;
SIGNAL ww_SKIP_MASTER : std_logic;
SIGNAL ww_JMS : std_logic;
SIGNAL ww_JMP : std_logic;
SIGNAL ww_ISZ : std_logic;
SIGNAL ww_IND : std_logic;
SIGNAL ww_CLL : std_logic;
SIGNAL ww_CML : std_logic;
SIGNAL ww_CMA : std_logic;
SIGNAL ww_IAC : std_logic;
SIGNAL ww_DCA : std_logic;
SIGNAL ww_ANDD : std_logic;
SIGNAL ww_TAD : std_logic;
SIGNAL ww_ADD : std_logic;
SIGNAL ww_OSR : std_logic;
SIGNAL ww_AC_MOD : std_logic;
SIGNAL ww_ROTATE_MASTER : std_logic;
SIGNAL ww_ROTATE_TWICE : std_logic;
SIGNAL ww_RTR : std_logic;
SIGNAL ww_RTL : std_logic;
SIGNAL ww_ADD_CARRY : std_logic;
SIGNAL ww_INC_CARRY : std_logic;
SIGNAL ww_IS_ZERO_LAST : std_logic;
SIGNAL ww_IS_ZERO : std_logic;
SIGNAL ww_IS_AUTO_INDEX : std_logic;
SIGNAL ww_PC_BUS_SEL : std_logic;
SIGNAL ww_PC_LOAD_HI : std_logic;
SIGNAL ww_PC_LOAD_LO : std_logic;
SIGNAL ww_PC_CLR_HI : std_logic;
SIGNAL ww_PC_CLR_LO : std_logic;
SIGNAL ww_IR_LOAD : std_logic;
SIGNAL ww_IR_CLR : std_logic;
SIGNAL ww_MA_LOAD_HI : std_logic;
SIGNAL ww_MA_LOAD_LO : std_logic;
SIGNAL ww_MA_BUS_SEL : std_logic;
SIGNAL ww_MA_CLR_HI : std_logic;
SIGNAL ww_MA_CLR_LO : std_logic;
SIGNAL ww_MD_IN_SEL : std_logic;
SIGNAL ww_MD_BUS_SEL : std_logic;
SIGNAL ww_MD_CLR : std_logic;
SIGNAL ww_MD_LOAD : std_logic;
SIGNAL ww_SR_BUS_SEL : std_logic;
SIGNAL ww_AC_LOAD : std_logic;
SIGNAL ww_LINK_LOAD : std_logic;
SIGNAL ww_LINK_OUT_SEL : std_logic;
SIGNAL ww_LINK_COMP : std_logic;
SIGNAL ww_ALU_FUNC_SEL_0 : std_logic;
SIGNAL ww_ALU_FUNC_SEL_1 : std_logic;
SIGNAL ww_ALU_FUNC_SEL_2 : std_logic;
SIGNAL ww_ALU_OUT_SEL_0 : std_logic;
SIGNAL ww_ALU_OUT_SEL_1 : std_logic;
SIGNAL ww_ALU_OUT_SEL_2 : std_logic;
SIGNAL ww_ALU_COMP : std_logic;
SIGNAL ww_ALU_INC : std_logic;
SIGNAL ww_ALU_CLEAR : std_logic;
SIGNAL ww_ALU_ROT_1 : std_logic;
SIGNAL ww_ALU_ROT_2 : std_logic;
SIGNAL ww_MEM_READ : std_logic;
SIGNAL ww_MEM_WRITE : std_logic;
SIGNAL \PC_LOAD_LO~2_combout\ : std_logic;
SIGNAL \MD_LOAD~1_combout\ : std_logic;
SIGNAL \IRQ~combout\ : std_logic;
SIGNAL \DCA~combout\ : std_logic;
SIGNAL \ROTATE_MASTER~combout\ : std_logic;
SIGNAL \ROTATE_TWICE~combout\ : std_logic;
SIGNAL \SKIP_MASTER~combout\ : std_logic;
SIGNAL \PC_BUS_SEL~1_combout\ : std_logic;
SIGNAL \ISZ~combout\ : std_logic;
SIGNAL \JMS~combout\ : std_logic;
SIGNAL \PC_BUS_SEL~0_combout\ : std_logic;
SIGNAL \PC_BUS_SEL~2_combout\ : std_logic;
SIGNAL \IND~combout\ : std_logic;
SIGNAL \JMP~combout\ : std_logic;
SIGNAL \PC_LOAD_HI~3_combout\ : std_logic;
SIGNAL \PC_LOAD_HI~1_combout\ : std_logic;
SIGNAL \PC_LOAD_HI~2_combout\ : std_logic;
SIGNAL \PC_LOAD_HI~0_combout\ : std_logic;
SIGNAL \PC_LOAD_HI~4_combout\ : std_logic;
SIGNAL \PC_LOAD_LO~3_combout\ : std_logic;
SIGNAL \IS_ZERO_LAST~combout\ : std_logic;
SIGNAL \PC_LOAD_LO~4_combout\ : std_logic;
SIGNAL \PC_LOAD_LO~6_combout\ : std_logic;
SIGNAL \PC_LOAD_LO~5_combout\ : std_logic;
SIGNAL \IS_ZERO~combout\ : std_logic;
SIGNAL \PC_CLR_HI~0_combout\ : std_logic;
SIGNAL \IR_LOAD~0_combout\ : std_logic;
SIGNAL \MEM_INST~combout\ : std_logic;
SIGNAL \MA_LOAD_HI~0_combout\ : std_logic;
SIGNAL \MA_LOAD_HI~1_combout\ : std_logic;
SIGNAL \MA_LOAD_HI~2_combout\ : std_logic;
SIGNAL \MA_CLR_HI~1_combout\ : std_logic;
SIGNAL \MA_CLR_HI~2_combout\ : std_logic;
SIGNAL \MA_CLR_HI~0_combout\ : std_logic;
SIGNAL \MA_CLR_HI~3_combout\ : std_logic;
SIGNAL \MD_IN_SEL~2_combout\ : std_logic;
SIGNAL \ANDD~combout\ : std_logic;
SIGNAL \ADD~combout\ : std_logic;
SIGNAL \MD_IN_SEL~3_combout\ : std_logic;
SIGNAL \MD_IN_SEL~4_combout\ : std_logic;
SIGNAL \MD_BUS_SEL~0_combout\ : std_logic;
SIGNAL \MD_BUS_SEL~2_combout\ : std_logic;
SIGNAL \MD_BUS_SEL~3_combout\ : std_logic;
SIGNAL \IS_AUTO_INDEX~combout\ : std_logic;
SIGNAL \MD_BUS_SEL~1_combout\ : std_logic;
SIGNAL \MD_BUS_SEL~4_combout\ : std_logic;
SIGNAL \MD_LOAD~0_combout\ : std_logic;
SIGNAL \MD_LOAD~2_combout\ : std_logic;
SIGNAL \MD_LOAD~3_combout\ : std_logic;
SIGNAL \MD_LOAD~4_combout\ : std_logic;
SIGNAL \MD_LOAD~5_combout\ : std_logic;
SIGNAL \OSR~combout\ : std_logic;
SIGNAL \SR_BUS_SEL~0_combout\ : std_logic;
SIGNAL \AC_MOD~combout\ : std_logic;
SIGNAL \AC_LOAD~0_combout\ : std_logic;
SIGNAL \AC_LOAD~1_combout\ : std_logic;
SIGNAL \TAD~combout\ : std_logic;
SIGNAL \AC_LOAD~2_combout\ : std_logic;
SIGNAL \AC_LOAD~3_combout\ : std_logic;
SIGNAL \t_states~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \s_states~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IR~combout\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_s_states <= s_states;
ww_t_states <= t_states;
ww_IRQ <= IRQ;
ww_IR <= IR;
ww_MEM_INST <= MEM_INST;
ww_SKIP_MASTER <= SKIP_MASTER;
ww_JMS <= JMS;
ww_JMP <= JMP;
ww_ISZ <= ISZ;
ww_IND <= IND;
ww_CLL <= CLL;
ww_CML <= CML;
ww_CMA <= CMA;
ww_IAC <= IAC;
ww_DCA <= DCA;
ww_ANDD <= ANDD;
ww_TAD <= TAD;
ww_ADD <= ADD;
ww_OSR <= OSR;
ww_AC_MOD <= AC_MOD;
ww_ROTATE_MASTER <= ROTATE_MASTER;
ww_ROTATE_TWICE <= ROTATE_TWICE;
ww_RTR <= RTR;
ww_RTL <= RTL;
ww_ADD_CARRY <= ADD_CARRY;
ww_INC_CARRY <= INC_CARRY;
ww_IS_ZERO_LAST <= IS_ZERO_LAST;
ww_IS_ZERO <= IS_ZERO;
ww_IS_AUTO_INDEX <= IS_AUTO_INDEX;
PC_BUS_SEL <= ww_PC_BUS_SEL;
PC_LOAD_HI <= ww_PC_LOAD_HI;
PC_LOAD_LO <= ww_PC_LOAD_LO;
PC_CLR_HI <= ww_PC_CLR_HI;
PC_CLR_LO <= ww_PC_CLR_LO;
IR_LOAD <= ww_IR_LOAD;
IR_CLR <= ww_IR_CLR;
MA_LOAD_HI <= ww_MA_LOAD_HI;
MA_LOAD_LO <= ww_MA_LOAD_LO;
MA_BUS_SEL <= ww_MA_BUS_SEL;
MA_CLR_HI <= ww_MA_CLR_HI;
MA_CLR_LO <= ww_MA_CLR_LO;
MD_IN_SEL <= ww_MD_IN_SEL;
MD_BUS_SEL <= ww_MD_BUS_SEL;
MD_CLR <= ww_MD_CLR;
MD_LOAD <= ww_MD_LOAD;
SR_BUS_SEL <= ww_SR_BUS_SEL;
AC_LOAD <= ww_AC_LOAD;
LINK_LOAD <= ww_LINK_LOAD;
LINK_OUT_SEL <= ww_LINK_OUT_SEL;
LINK_COMP <= ww_LINK_COMP;
ALU_FUNC_SEL_0 <= ww_ALU_FUNC_SEL_0;
ALU_FUNC_SEL_1 <= ww_ALU_FUNC_SEL_1;
ALU_FUNC_SEL_2 <= ww_ALU_FUNC_SEL_2;
ALU_OUT_SEL_0 <= ww_ALU_OUT_SEL_0;
ALU_OUT_SEL_1 <= ww_ALU_OUT_SEL_1;
ALU_OUT_SEL_2 <= ww_ALU_OUT_SEL_2;
ALU_COMP <= ww_ALU_COMP;
ALU_INC <= ww_ALU_INC;
ALU_CLEAR <= ww_ALU_CLEAR;
ALU_ROT_1 <= ww_ALU_ROT_1;
ALU_ROT_2 <= ww_ALU_ROT_2;
MEM_READ <= ww_MEM_READ;
MEM_WRITE <= ww_MEM_WRITE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X27_Y8_N10
\PC_LOAD_LO~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_LO~2_combout\ = (\ISZ~combout\ & (\IS_ZERO_LAST~combout\ & \t_states~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ISZ~combout\,
	datac => \IS_ZERO_LAST~combout\,
	datad => \t_states~combout\(5),
	combout => \PC_LOAD_LO~2_combout\);

-- Location: LCCOMB_X27_Y8_N12
\MD_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_LOAD~1_combout\ = (\s_states~combout\(2) & (\t_states~combout\(1) & ((\JMS~combout\) # (\DCA~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JMS~combout\,
	datab => \DCA~combout\,
	datac => \s_states~combout\(2),
	datad => \t_states~combout\(1),
	combout => \MD_LOAD~1_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\t_states[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_t_states(5),
	combout => \t_states~combout\(5));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IRQ~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IRQ,
	combout => \IRQ~combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DCA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DCA,
	combout => \DCA~combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ROTATE_MASTER~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ROTATE_MASTER,
	combout => \ROTATE_MASTER~combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ROTATE_TWICE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ROTATE_TWICE,
	combout => \ROTATE_TWICE~combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s_states[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s_states(2),
	combout => \s_states~combout\(2));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SKIP_MASTER~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SKIP_MASTER,
	combout => \SKIP_MASTER~combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\t_states[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_t_states(0),
	combout => \t_states~combout\(0));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\t_states[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_t_states(1),
	combout => \t_states~combout\(1));

-- Location: LCCOMB_X27_Y8_N18
\PC_BUS_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_BUS_SEL~1_combout\ = (\t_states~combout\(0)) # ((\t_states~combout\(1)) # ((\t_states~combout\(3) & \SKIP_MASTER~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(3),
	datab => \SKIP_MASTER~combout\,
	datac => \t_states~combout\(0),
	datad => \t_states~combout\(1),
	combout => \PC_BUS_SEL~1_combout\);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s_states[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s_states(0),
	combout => \s_states~combout\(0));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ISZ~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ISZ,
	combout => \ISZ~combout\);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\JMS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_JMS,
	combout => \JMS~combout\);

-- Location: LCCOMB_X27_Y8_N24
\PC_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_BUS_SEL~0_combout\ = (\t_states~combout\(5) & ((\ISZ~combout\) # ((\t_states~combout\(1) & \JMS~combout\)))) # (!\t_states~combout\(5) & (((\t_states~combout\(1) & \JMS~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(5),
	datab => \ISZ~combout\,
	datac => \t_states~combout\(1),
	datad => \JMS~combout\,
	combout => \PC_BUS_SEL~0_combout\);

-- Location: LCCOMB_X27_Y8_N28
\PC_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_BUS_SEL~2_combout\ = (\s_states~combout\(2) & ((\PC_BUS_SEL~0_combout\) # ((\PC_BUS_SEL~1_combout\ & \s_states~combout\(0))))) # (!\s_states~combout\(2) & (\PC_BUS_SEL~1_combout\ & (\s_states~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_states~combout\(2),
	datab => \PC_BUS_SEL~1_combout\,
	datac => \s_states~combout\(0),
	datad => \PC_BUS_SEL~0_combout\,
	combout => \PC_BUS_SEL~2_combout\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IND~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IND,
	combout => \IND~combout\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\JMP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_JMP,
	combout => \JMP~combout\);

-- Location: LCCOMB_X27_Y8_N20
\PC_LOAD_HI~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~3_combout\ = (\PC_LOAD_LO~2_combout\) # ((\t_states~combout\(0) & (\IND~combout\ & \JMP~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_LOAD_LO~2_combout\,
	datab => \t_states~combout\(0),
	datac => \IND~combout\,
	datad => \JMP~combout\,
	combout => \PC_LOAD_HI~3_combout\);

-- Location: LCCOMB_X27_Y8_N30
\PC_LOAD_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~1_combout\ = (\JMS~combout\ & ((\s_states~combout\(2)) # ((\s_states~combout\(0) & \SKIP_MASTER~combout\)))) # (!\JMS~combout\ & (\s_states~combout\(0) & ((\SKIP_MASTER~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JMS~combout\,
	datab => \s_states~combout\(0),
	datac => \s_states~combout\(2),
	datad => \SKIP_MASTER~combout\,
	combout => \PC_LOAD_HI~1_combout\);

-- Location: LCCOMB_X27_Y8_N0
\PC_LOAD_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~2_combout\ = (\t_states~combout\(3) & ((\PC_LOAD_HI~1_combout\) # ((\s_states~combout\(0) & \t_states~combout\(1))))) # (!\t_states~combout\(3) & (((\s_states~combout\(0) & \t_states~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(3),
	datab => \PC_LOAD_HI~1_combout\,
	datac => \s_states~combout\(0),
	datad => \t_states~combout\(1),
	combout => \PC_LOAD_HI~2_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s_states[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s_states(3),
	combout => \s_states~combout\(3));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\t_states[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_t_states(2),
	combout => \t_states~combout\(2));

-- Location: LCCOMB_X27_Y4_N8
\PC_LOAD_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~0_combout\ = (\IRQ~combout\ & (\s_states~combout\(3) & \t_states~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRQ~combout\,
	datab => \s_states~combout\(3),
	datad => \t_states~combout\(2),
	combout => \PC_LOAD_HI~0_combout\);

-- Location: LCCOMB_X27_Y8_N6
\PC_LOAD_HI~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~4_combout\ = (\PC_LOAD_HI~2_combout\) # ((\PC_LOAD_HI~0_combout\) # ((\PC_LOAD_HI~3_combout\ & \s_states~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_LOAD_HI~3_combout\,
	datab => \PC_LOAD_HI~2_combout\,
	datac => \s_states~combout\(2),
	datad => \PC_LOAD_HI~0_combout\,
	combout => \PC_LOAD_HI~4_combout\);

-- Location: LCCOMB_X27_Y8_N16
\PC_LOAD_LO~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_LO~3_combout\ = (\s_states~combout\(0) & ((\t_states~combout\(1)) # ((\t_states~combout\(3) & \SKIP_MASTER~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(3),
	datab => \SKIP_MASTER~combout\,
	datac => \s_states~combout\(0),
	datad => \t_states~combout\(1),
	combout => \PC_LOAD_LO~3_combout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IS_ZERO_LAST~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IS_ZERO_LAST,
	combout => \IS_ZERO_LAST~combout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\t_states[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_t_states(3),
	combout => \t_states~combout\(3));

-- Location: LCCOMB_X27_Y8_N2
\PC_LOAD_LO~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_LO~4_combout\ = (\JMS~combout\ & ((\t_states~combout\(3)) # ((\t_states~combout\(0) & \JMP~combout\)))) # (!\JMS~combout\ & (\t_states~combout\(0) & ((\JMP~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JMS~combout\,
	datab => \t_states~combout\(0),
	datac => \t_states~combout\(3),
	datad => \JMP~combout\,
	combout => \PC_LOAD_LO~4_combout\);

-- Location: LCCOMB_X27_Y8_N14
\PC_LOAD_LO~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_LO~6_combout\ = (\PC_LOAD_LO~4_combout\) # ((\t_states~combout\(5) & (\ISZ~combout\ & \IS_ZERO_LAST~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(5),
	datab => \ISZ~combout\,
	datac => \IS_ZERO_LAST~combout\,
	datad => \PC_LOAD_LO~4_combout\,
	combout => \PC_LOAD_LO~6_combout\);

-- Location: LCCOMB_X27_Y8_N4
\PC_LOAD_LO~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_LO~5_combout\ = (\PC_LOAD_LO~3_combout\) # ((\PC_LOAD_HI~0_combout\) # ((\PC_LOAD_LO~6_combout\ & \s_states~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_LOAD_LO~3_combout\,
	datab => \PC_LOAD_LO~6_combout\,
	datac => \s_states~combout\(2),
	datad => \PC_LOAD_HI~0_combout\,
	combout => \PC_LOAD_LO~5_combout\);

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IS_ZERO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IS_ZERO,
	combout => \IS_ZERO~combout\);

-- Location: LCCOMB_X27_Y8_N22
\PC_CLR_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_CLR_HI~0_combout\ = (\IS_ZERO~combout\ & (\t_states~combout\(0) & (\s_states~combout\(2) & \JMP~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IS_ZERO~combout\,
	datab => \t_states~combout\(0),
	datac => \s_states~combout\(2),
	datad => \JMP~combout\,
	combout => \PC_CLR_HI~0_combout\);

-- Location: LCCOMB_X27_Y4_N18
\IR_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR_LOAD~0_combout\ = (\t_states~combout\(2) & \s_states~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_states~combout\(2),
	datac => \s_states~combout\(0),
	combout => \IR_LOAD~0_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MEM_INST~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MEM_INST,
	combout => \MEM_INST~combout\);

-- Location: LCCOMB_X27_Y8_N8
\MA_LOAD_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_LOAD_HI~0_combout\ = (!\JMP~combout\ & (\IND~combout\ & (\s_states~combout\(2) & \MEM_INST~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JMP~combout\,
	datab => \IND~combout\,
	datac => \s_states~combout\(2),
	datad => \MEM_INST~combout\,
	combout => \MA_LOAD_HI~0_combout\);

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s_states[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s_states(1),
	combout => \s_states~combout\(1));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(4),
	combout => \IR~combout\(4));

-- Location: LCCOMB_X27_Y4_N28
\MA_LOAD_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_LOAD_HI~1_combout\ = (\s_states~combout\(0)) # ((\s_states~combout\(1) & \IR~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_states~combout\(0),
	datab => \s_states~combout\(1),
	datac => \IR~combout\(4),
	combout => \MA_LOAD_HI~1_combout\);

-- Location: LCCOMB_X27_Y4_N22
\MA_LOAD_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_LOAD_HI~2_combout\ = (\t_states~combout\(0) & ((\MA_LOAD_HI~0_combout\) # (\MA_LOAD_HI~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_LOAD_HI~0_combout\,
	datab => \MA_LOAD_HI~1_combout\,
	datad => \t_states~combout\(0),
	combout => \MA_LOAD_HI~2_combout\);

-- Location: LCCOMB_X27_Y8_N26
\MA_CLR_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_CLR_HI~1_combout\ = (!\JMP~combout\ & (\MEM_INST~combout\ & (\s_states~combout\(2) & \IS_ZERO~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JMP~combout\,
	datab => \MEM_INST~combout\,
	datac => \s_states~combout\(2),
	datad => \IS_ZERO~combout\,
	combout => \MA_CLR_HI~1_combout\);

-- Location: LCCOMB_X27_Y4_N2
\MA_CLR_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_CLR_HI~2_combout\ = (\s_states~combout\(1) & !\IR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_states~combout\(1),
	datac => \IR~combout\(4),
	combout => \MA_CLR_HI~2_combout\);

-- Location: LCCOMB_X27_Y4_N0
\MA_CLR_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_CLR_HI~0_combout\ = (\IRQ~combout\ & (\s_states~combout\(3) & \t_states~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRQ~combout\,
	datab => \s_states~combout\(3),
	datad => \t_states~combout\(0),
	combout => \MA_CLR_HI~0_combout\);

-- Location: LCCOMB_X27_Y4_N20
\MA_CLR_HI~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_CLR_HI~3_combout\ = (\MA_CLR_HI~0_combout\) # ((\t_states~combout\(0) & ((\MA_CLR_HI~1_combout\) # (\MA_CLR_HI~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_CLR_HI~1_combout\,
	datab => \MA_CLR_HI~2_combout\,
	datac => \MA_CLR_HI~0_combout\,
	datad => \t_states~combout\(0),
	combout => \MA_CLR_HI~3_combout\);

-- Location: LCCOMB_X27_Y7_N0
\MD_IN_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_IN_SEL~2_combout\ = (\t_states~combout\(2) & \s_states~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_states~combout\(2),
	datad => \s_states~combout\(2),
	combout => \MD_IN_SEL~2_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ANDD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ANDD,
	combout => \ANDD~combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ADD,
	combout => \ADD~combout\);

-- Location: LCCOMB_X27_Y7_N10
\MD_IN_SEL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_IN_SEL~3_combout\ = (\MD_IN_SEL~2_combout\ & ((\ISZ~combout\) # ((\ANDD~combout\) # (\ADD~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ISZ~combout\,
	datab => \MD_IN_SEL~2_combout\,
	datac => \ANDD~combout\,
	datad => \ADD~combout\,
	combout => \MD_IN_SEL~3_combout\);

-- Location: LCCOMB_X27_Y7_N6
\MD_IN_SEL~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_IN_SEL~4_combout\ = (\MD_IN_SEL~3_combout\) # ((\t_states~combout\(2) & ((\s_states~combout\(1)) # (\s_states~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_IN_SEL~3_combout\,
	datab => \t_states~combout\(2),
	datac => \s_states~combout\(1),
	datad => \s_states~combout\(0),
	combout => \MD_IN_SEL~4_combout\);

-- Location: LCCOMB_X27_Y4_N6
\MD_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_BUS_SEL~0_combout\ = (\t_states~combout\(2) & ((\s_states~combout\(0)) # ((\IRQ~combout\ & \s_states~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRQ~combout\,
	datab => \s_states~combout\(3),
	datac => \s_states~combout\(0),
	datad => \t_states~combout\(2),
	combout => \MD_BUS_SEL~0_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\t_states[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_t_states(4),
	combout => \t_states~combout\(4));

-- Location: LCCOMB_X27_Y7_N30
\MD_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_BUS_SEL~2_combout\ = (\t_states~combout\(0) & ((\MEM_INST~combout\) # ((\ISZ~combout\ & \t_states~combout\(4))))) # (!\t_states~combout\(0) & (\ISZ~combout\ & (\t_states~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(0),
	datab => \ISZ~combout\,
	datac => \t_states~combout\(4),
	datad => \MEM_INST~combout\,
	combout => \MD_BUS_SEL~2_combout\);

-- Location: LCCOMB_X27_Y7_N8
\MD_BUS_SEL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_BUS_SEL~3_combout\ = (\MD_BUS_SEL~2_combout\) # ((!\DCA~combout\ & (\t_states~combout\(3) & \MEM_INST~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCA~combout\,
	datab => \MD_BUS_SEL~2_combout\,
	datac => \t_states~combout\(3),
	datad => \MEM_INST~combout\,
	combout => \MD_BUS_SEL~3_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IS_AUTO_INDEX~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IS_AUTO_INDEX,
	combout => \IS_AUTO_INDEX~combout\);

-- Location: LCCOMB_X27_Y7_N12
\MD_BUS_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_BUS_SEL~1_combout\ = (\s_states~combout\(1) & ((\t_states~combout\(0)) # ((\t_states~combout\(3) & \IS_AUTO_INDEX~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(0),
	datab => \s_states~combout\(1),
	datac => \t_states~combout\(3),
	datad => \IS_AUTO_INDEX~combout\,
	combout => \MD_BUS_SEL~1_combout\);

-- Location: LCCOMB_X27_Y7_N2
\MD_BUS_SEL~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_BUS_SEL~4_combout\ = (\MD_BUS_SEL~0_combout\) # ((\MD_BUS_SEL~1_combout\) # ((\s_states~combout\(2) & \MD_BUS_SEL~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS_SEL~0_combout\,
	datab => \s_states~combout\(2),
	datac => \MD_BUS_SEL~3_combout\,
	datad => \MD_BUS_SEL~1_combout\,
	combout => \MD_BUS_SEL~4_combout\);

-- Location: LCCOMB_X27_Y7_N28
\MD_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_LOAD~0_combout\ = (\s_states~combout\(1) & ((\t_states~combout\(2)) # ((\IS_AUTO_INDEX~combout\ & \t_states~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IS_AUTO_INDEX~combout\,
	datab => \s_states~combout\(1),
	datac => \t_states~combout\(3),
	datad => \t_states~combout\(2),
	combout => \MD_LOAD~0_combout\);

-- Location: LCCOMB_X27_Y7_N14
\MD_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_LOAD~2_combout\ = (\TAD~combout\) # ((\ISZ~combout\) # (\ANDD~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TAD~combout\,
	datab => \ISZ~combout\,
	datac => \ANDD~combout\,
	combout => \MD_LOAD~2_combout\);

-- Location: LCCOMB_X27_Y7_N24
\MD_LOAD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_LOAD~3_combout\ = (\MD_LOAD~1_combout\) # ((\MD_LOAD~0_combout\) # ((\MD_LOAD~2_combout\ & \MD_IN_SEL~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_LOAD~1_combout\,
	datab => \MD_LOAD~0_combout\,
	datac => \MD_LOAD~2_combout\,
	datad => \MD_IN_SEL~2_combout\,
	combout => \MD_LOAD~3_combout\);

-- Location: LCCOMB_X27_Y7_N18
\MD_LOAD~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_LOAD~4_combout\ = (\ISZ~combout\ & (\t_states~combout\(3) & \s_states~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ISZ~combout\,
	datac => \t_states~combout\(3),
	datad => \s_states~combout\(2),
	combout => \MD_LOAD~4_combout\);

-- Location: LCCOMB_X27_Y7_N20
\MD_LOAD~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_LOAD~5_combout\ = (\MD_LOAD~3_combout\) # ((\MA_CLR_HI~0_combout\) # ((\IR_LOAD~0_combout\) # (\MD_LOAD~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_LOAD~3_combout\,
	datab => \MA_CLR_HI~0_combout\,
	datac => \IR_LOAD~0_combout\,
	datad => \MD_LOAD~4_combout\,
	combout => \MD_LOAD~5_combout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OSR~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OSR,
	combout => \OSR~combout\);

-- Location: LCCOMB_X27_Y4_N24
\SR_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR_BUS_SEL~0_combout\ = (\OSR~combout\ & (\s_states~combout\(0) & \t_states~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OSR~combout\,
	datac => \s_states~combout\(0),
	datad => \t_states~combout\(3),
	combout => \SR_BUS_SEL~0_combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_MOD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_AC_MOD,
	combout => \AC_MOD~combout\);

-- Location: LCCOMB_X27_Y7_N22
\AC_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~0_combout\ = (\t_states~combout\(3) & (\s_states~combout\(0) & ((\ROTATE_MASTER~combout\) # (\AC_MOD~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTATE_MASTER~combout\,
	datab => \AC_MOD~combout\,
	datac => \t_states~combout\(3),
	datad => \s_states~combout\(0),
	combout => \AC_LOAD~0_combout\);

-- Location: LCCOMB_X27_Y7_N16
\AC_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~1_combout\ = (\AC_LOAD~0_combout\) # ((\ROTATE_TWICE~combout\ & (\t_states~combout\(4) & \s_states~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTATE_TWICE~combout\,
	datab => \AC_LOAD~0_combout\,
	datac => \t_states~combout\(4),
	datad => \s_states~combout\(0),
	combout => \AC_LOAD~1_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TAD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TAD,
	combout => \TAD~combout\);

-- Location: LCCOMB_X27_Y7_N26
\AC_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~2_combout\ = (\DCA~combout\) # ((\ANDD~combout\) # (\TAD~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCA~combout\,
	datac => \ANDD~combout\,
	datad => \TAD~combout\,
	combout => \AC_LOAD~2_combout\);

-- Location: LCCOMB_X27_Y7_N4
\AC_LOAD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~3_combout\ = (\AC_LOAD~1_combout\) # ((\AC_LOAD~2_combout\ & (\t_states~combout\(3) & \s_states~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC_LOAD~1_combout\,
	datab => \AC_LOAD~2_combout\,
	datac => \t_states~combout\(3),
	datad => \s_states~combout\(2),
	combout => \AC_LOAD~3_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(0));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(1));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(2));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(3));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLL);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CML~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CML);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CMA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CMA);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IAC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IAC);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RTR~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RTR);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RTL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RTL);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADD_CARRY~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ADD_CARRY);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INC_CARRY~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INC_CARRY);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_BUS_SEL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_BUS_SEL~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_BUS_SEL);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_LOAD_HI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_LOAD_HI~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_LOAD_HI);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_LOAD_LO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_LOAD_LO~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_LOAD_LO);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_CLR_HI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_CLR_HI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_CLR_HI);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_CLR_LO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_CLR_LO);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_LOAD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR_LOAD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_LOAD);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_CLR~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_CLR);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MA_LOAD_HI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MA_LOAD_HI~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_LOAD_HI);

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MA_LOAD_LO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_LOAD_LO);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MA_BUS_SEL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_BUS_SEL);

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MA_CLR_HI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MA_CLR_HI~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_CLR_HI);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MA_CLR_LO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MA_CLR_HI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_CLR_LO);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MD_IN_SEL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MD_IN_SEL~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MD_IN_SEL);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MD_BUS_SEL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MD_BUS_SEL~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MD_BUS_SEL);

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MD_CLR~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MD_CLR);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MD_LOAD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MD_LOAD~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MD_LOAD);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SR_BUS_SEL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SR_BUS_SEL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SR_BUS_SEL);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AC_LOAD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \AC_LOAD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AC_LOAD);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LINK_LOAD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LINK_LOAD);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LINK_OUT_SEL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LINK_OUT_SEL);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LINK_COMP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LINK_COMP);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALU_FUNC_SEL_0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_FUNC_SEL_0);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALU_FUNC_SEL_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_FUNC_SEL_1);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALU_FUNC_SEL_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_FUNC_SEL_2);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALU_OUT_SEL_0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_OUT_SEL_0);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALU_OUT_SEL_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_OUT_SEL_1);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALU_OUT_SEL_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_OUT_SEL_2);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALU_COMP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_COMP);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALU_INC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_INC);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALU_CLEAR~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_CLEAR);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALU_ROT_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_ROT_1);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALU_ROT_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_ROT_2);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MEM_READ~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MEM_READ);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MEM_WRITE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MEM_WRITE);
END structure;


