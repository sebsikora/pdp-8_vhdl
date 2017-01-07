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

-- DATE "01/07/2017 17:18:24"

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
	IR : IN std_logic_vector(11 DOWNTO 0);
	ADD_CARRY : IN std_logic;
	INC_CARRY : IN std_logic;
	IS_ZERO_LAST : IN std_logic;
	IS_ZERO : IN std_logic;
	IS_NEG : IN std_logic;
	IS_AUTO_INDEX : IN std_logic;
	LINK_VALUE : IN std_logic;
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
-- PC_BUS_SEL	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_LOAD_HI	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_LOAD_LO	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_CLR_HI	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_CLR_LO	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_LOAD	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_CLR	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_LOAD_HI	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_LOAD_LO	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_BUS_SEL	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_CLR_HI	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_CLR_LO	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_IN_SEL	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_BUS_SEL	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_CLR	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_LOAD	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SR_BUS_SEL	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AC_LOAD	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LINK_LOAD	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LINK_OUT_SEL	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LINK_COMP	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_FUNC_SEL_0	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_FUNC_SEL_1	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_FUNC_SEL_2	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_OUT_SEL_0	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_OUT_SEL_1	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_OUT_SEL_2	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_COMP	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_INC	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_CLEAR	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_ROT_1	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_ROT_2	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MEM_READ	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MEM_WRITE	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IS_NEG	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IS_ZERO	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- t_states[5]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_states[2]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LINK_VALUE	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[8]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- t_states[3]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_states[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[11]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- t_states[0]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- t_states[1]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- t_states[2]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_states[3]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRQ	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IS_ZERO_LAST	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_states[1]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IS_AUTO_INDEX	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- t_states[4]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[9]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[10]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD_CARRY	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INC_CARRY	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_IR : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_ADD_CARRY : std_logic;
SIGNAL ww_INC_CARRY : std_logic;
SIGNAL ww_IS_ZERO_LAST : std_logic;
SIGNAL ww_IS_ZERO : std_logic;
SIGNAL ww_IS_NEG : std_logic;
SIGNAL ww_IS_AUTO_INDEX : std_logic;
SIGNAL ww_LINK_VALUE : std_logic;
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
SIGNAL \MD_BUS_SEL~1_combout\ : std_logic;
SIGNAL \ALU_OUT_SEL_0~2_combout\ : std_logic;
SIGNAL \IS_AUTO_INDEX~combout\ : std_logic;
SIGNAL \PC_BUS_SEL~1_combout\ : std_logic;
SIGNAL \MD_BUS_SEL~0_combout\ : std_logic;
SIGNAL \LINK_VALUE~combout\ : std_logic;
SIGNAL \SKIP_MASTER~0_combout\ : std_logic;
SIGNAL \PC_LOAD_HI~0_combout\ : std_logic;
SIGNAL \PC_LOAD_HI~1_combout\ : std_logic;
SIGNAL \PC_BUS_SEL~0_combout\ : std_logic;
SIGNAL \PC_BUS_SEL~2_combout\ : std_logic;
SIGNAL \PC_LOAD_HI~3_combout\ : std_logic;
SIGNAL \IS_ZERO_LAST~combout\ : std_logic;
SIGNAL \PC_LOAD_HI~7_combout\ : std_logic;
SIGNAL \IRQ~combout\ : std_logic;
SIGNAL \MA_CLR_HI~0_combout\ : std_logic;
SIGNAL \PC_LOAD_HI~6_combout\ : std_logic;
SIGNAL \ALU_INC~0_combout\ : std_logic;
SIGNAL \PC_LOAD_HI~2_combout\ : std_logic;
SIGNAL \PC_LOAD_HI~5_combout\ : std_logic;
SIGNAL \PC_CLR_HI~0_combout\ : std_logic;
SIGNAL \PC_LOAD_HI~4_combout\ : std_logic;
SIGNAL \PC_LOAD_HI~8_combout\ : std_logic;
SIGNAL \PC_LOAD_HI~9_combout\ : std_logic;
SIGNAL \PC_LOAD_LO~0_combout\ : std_logic;
SIGNAL \PC_CLR_HI~1_combout\ : std_logic;
SIGNAL \PC_CLR_HI~2_combout\ : std_logic;
SIGNAL \IR_LOAD~0_combout\ : std_logic;
SIGNAL \MA_LOAD_HI~0_combout\ : std_logic;
SIGNAL \MA_LOAD_HI~1_combout\ : std_logic;
SIGNAL \MA_LOAD_HI~2_combout\ : std_logic;
SIGNAL \MA_LOAD_LO~0_combout\ : std_logic;
SIGNAL \MA_CLR_HI~3_combout\ : std_logic;
SIGNAL \MA_CLR_HI~1_combout\ : std_logic;
SIGNAL \MA_CLR_HI~2_combout\ : std_logic;
SIGNAL \MA_CLR_HI~4_combout\ : std_logic;
SIGNAL \MD_LOAD~0_combout\ : std_logic;
SIGNAL \MD_IN_SEL~2_combout\ : std_logic;
SIGNAL \MD_BUS_SEL~2_combout\ : std_logic;
SIGNAL \MD_BUS_SEL~3_combout\ : std_logic;
SIGNAL \MD_BUS_SEL~4_combout\ : std_logic;
SIGNAL \MD_BUS_SEL~5_combout\ : std_logic;
SIGNAL \MD_LOAD~1_combout\ : std_logic;
SIGNAL \MD_LOAD~2_combout\ : std_logic;
SIGNAL \MD_LOAD~3_combout\ : std_logic;
SIGNAL \MD_LOAD~4_combout\ : std_logic;
SIGNAL \MD_LOAD~5_combout\ : std_logic;
SIGNAL \AC_LOAD~0_combout\ : std_logic;
SIGNAL \AC_LOAD~1_combout\ : std_logic;
SIGNAL \ALU_ROT_1~0_combout\ : std_logic;
SIGNAL \AC_LOAD~7_combout\ : std_logic;
SIGNAL \ALU_INC~1_combout\ : std_logic;
SIGNAL \AC_LOAD~8_combout\ : std_logic;
SIGNAL \ALU_FUNC_SEL_0~0_combout\ : std_logic;
SIGNAL \AC_LOAD~2_combout\ : std_logic;
SIGNAL \AC_LOAD~3_combout\ : std_logic;
SIGNAL \AC_LOAD~4_combout\ : std_logic;
SIGNAL \AC_LOAD~9_combout\ : std_logic;
SIGNAL \LINK_LOAD~2_combout\ : std_logic;
SIGNAL \LINK_LOAD~3_combout\ : std_logic;
SIGNAL \LINK_LOAD~1_combout\ : std_logic;
SIGNAL \LINK_LOAD~4_combout\ : std_logic;
SIGNAL \LINK_OUT_SEL~0_combout\ : std_logic;
SIGNAL \ADD_CARRY~combout\ : std_logic;
SIGNAL \LINK_LOAD~0_combout\ : std_logic;
SIGNAL \INC_CARRY~combout\ : std_logic;
SIGNAL \LINK_COMP~0_combout\ : std_logic;
SIGNAL \LINK_COMP~1_combout\ : std_logic;
SIGNAL \ALU_FUNC_SEL_0~1_combout\ : std_logic;
SIGNAL \ALU_OUT_SEL_0~1_combout\ : std_logic;
SIGNAL \ALU_OUT_SEL_0~0_combout\ : std_logic;
SIGNAL \ALU_OUT_SEL_0~3_combout\ : std_logic;
SIGNAL \ALU_OUT_SEL_0~4_combout\ : std_logic;
SIGNAL \ALU_OUT_SEL_1~0_combout\ : std_logic;
SIGNAL \AC_LOAD~10_combout\ : std_logic;
SIGNAL \ALU_COMP~0_combout\ : std_logic;
SIGNAL \ALU_INC~2_combout\ : std_logic;
SIGNAL \ALU_INC~3_combout\ : std_logic;
SIGNAL \ALU_INC~4_combout\ : std_logic;
SIGNAL \AC_LOAD~5_combout\ : std_logic;
SIGNAL \AC_LOAD~6_combout\ : std_logic;
SIGNAL \ALU_CLEAR~0_combout\ : std_logic;
SIGNAL \ALU_ROT_1~1_combout\ : std_logic;
SIGNAL \ALU_ROT_2~0_combout\ : std_logic;
SIGNAL \MEM_READ~0_combout\ : std_logic;
SIGNAL \MEM_READ~1_combout\ : std_logic;
SIGNAL \MEM_WRITE~2_combout\ : std_logic;
SIGNAL \MEM_WRITE~3_combout\ : std_logic;
SIGNAL \s_states~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t_states~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \IR~combout\ : std_logic_vector(11 DOWNTO 0);

BEGIN

ww_s_states <= s_states;
ww_t_states <= t_states;
ww_IRQ <= IRQ;
ww_IR <= IR;
ww_ADD_CARRY <= ADD_CARRY;
ww_INC_CARRY <= INC_CARRY;
ww_IS_ZERO_LAST <= IS_ZERO_LAST;
ww_IS_ZERO <= IS_ZERO;
ww_IS_NEG <= IS_NEG;
ww_IS_AUTO_INDEX <= IS_AUTO_INDEX;
ww_LINK_VALUE <= LINK_VALUE;
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

-- Location: LCCOMB_X3_Y4_N24
\MD_BUS_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_BUS_SEL~1_combout\ = (\s_states~combout\(2) & (((!\IR~combout\(2) & !\IR~combout\(0))) # (!\IR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(2),
	datab => \IR~combout\(1),
	datac => \s_states~combout\(2),
	datad => \IR~combout\(0),
	combout => \MD_BUS_SEL~1_combout\);

-- Location: LCCOMB_X3_Y4_N28
\ALU_OUT_SEL_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_OUT_SEL_0~2_combout\ = (\IR~combout\(2) & (\t_states~combout\(1) & ((!\IR~combout\(0))))) # (!\IR~combout\(2) & (((\t_states~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(2),
	datab => \t_states~combout\(1),
	datac => \t_states~combout\(3),
	datad => \IR~combout\(0),
	combout => \ALU_OUT_SEL_0~2_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y4_N24
\PC_BUS_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_BUS_SEL~1_combout\ = (\s_states~combout\(0) & (((\t_states~combout\(0)) # (\t_states~combout\(1))))) # (!\s_states~combout\(0) & (\PC_LOAD_HI~2_combout\ & ((\t_states~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_LOAD_HI~2_combout\,
	datab => \t_states~combout\(0),
	datac => \s_states~combout\(0),
	datad => \t_states~combout\(1),
	combout => \PC_BUS_SEL~1_combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_IR(1),
	combout => \IR~combout\(1));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_IR(0),
	combout => \IR~combout\(0));

-- Location: LCCOMB_X3_Y4_N8
\MD_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_BUS_SEL~0_combout\ = (!\IR~combout\(2) & (\IR~combout\(1) & (\s_states~combout\(2) & !\IR~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(2),
	datab => \IR~combout\(1),
	datac => \s_states~combout\(2),
	datad => \IR~combout\(0),
	combout => \MD_BUS_SEL~0_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LINK_VALUE~I\ : cycloneii_io
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
	padio => ww_LINK_VALUE,
	combout => \LINK_VALUE~combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[6]~I\ : cycloneii_io
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
	padio => ww_IR(6),
	combout => \IR~combout\(6));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[5]~I\ : cycloneii_io
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
	padio => ww_IR(5),
	combout => \IR~combout\(5));

-- Location: LCCOMB_X15_Y4_N0
\SKIP_MASTER~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SKIP_MASTER~0_combout\ = (\IR~combout\(6)) # ((\IR~combout\(5)) # ((\IR~combout\(7) & \LINK_VALUE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(7),
	datab => \LINK_VALUE~combout\,
	datac => \IR~combout\(6),
	datad => \IR~combout\(5),
	combout => \SKIP_MASTER~0_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_IR(2),
	combout => \IR~combout\(2));

-- Location: LCCOMB_X3_Y4_N26
\PC_LOAD_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~0_combout\ = (\s_states~combout\(0) & (\IR~combout\(1) & (\IR~combout\(2) & \IR~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_states~combout\(0),
	datab => \IR~combout\(1),
	datac => \IR~combout\(2),
	datad => \IR~combout\(0),
	combout => \PC_LOAD_HI~0_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[11]~I\ : cycloneii_io
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
	padio => ww_IR(11),
	combout => \IR~combout\(11));

-- Location: LCCOMB_X4_Y4_N16
\PC_LOAD_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~1_combout\ = (\IR~combout\(3) & (\t_states~combout\(3) & (\PC_LOAD_HI~0_combout\ & !\IR~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(3),
	datab => \t_states~combout\(3),
	datac => \PC_LOAD_HI~0_combout\,
	datad => \IR~combout\(11),
	combout => \PC_LOAD_HI~1_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[8]~I\ : cycloneii_io
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
	padio => ww_IR(8),
	combout => \IR~combout\(8));

-- Location: LCCOMB_X4_Y4_N2
\PC_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_BUS_SEL~0_combout\ = (\PC_LOAD_HI~1_combout\ & ((\SKIP_MASTER~0_combout\) # (!\IR~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SKIP_MASTER~0_combout\,
	datac => \PC_LOAD_HI~1_combout\,
	datad => \IR~combout\(8),
	combout => \PC_BUS_SEL~0_combout\);

-- Location: LCCOMB_X2_Y4_N10
\PC_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_BUS_SEL~2_combout\ = (\PC_BUS_SEL~1_combout\) # ((\PC_BUS_SEL~0_combout\) # ((\MD_BUS_SEL~0_combout\ & \t_states~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_BUS_SEL~1_combout\,
	datab => \MD_BUS_SEL~0_combout\,
	datac => \t_states~combout\(5),
	datad => \PC_BUS_SEL~0_combout\,
	combout => \PC_BUS_SEL~2_combout\);

-- Location: LCCOMB_X4_Y4_N12
\PC_LOAD_HI~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~3_combout\ = (\PC_LOAD_HI~1_combout\ & ((\SKIP_MASTER~0_combout\) # (!\IR~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SKIP_MASTER~0_combout\,
	datac => \PC_LOAD_HI~1_combout\,
	datad => \IR~combout\(8),
	combout => \PC_LOAD_HI~3_combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y4_N8
\PC_LOAD_HI~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~7_combout\ = (\t_states~combout\(5) & (\MD_BUS_SEL~0_combout\ & \IS_ZERO_LAST~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_states~combout\(5),
	datac => \MD_BUS_SEL~0_combout\,
	datad => \IS_ZERO_LAST~combout\,
	combout => \PC_LOAD_HI~7_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y4_N4
\MA_CLR_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_CLR_HI~0_combout\ = (\IRQ~combout\ & \s_states~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IRQ~combout\,
	datad => \s_states~combout\(3),
	combout => \MA_CLR_HI~0_combout\);

-- Location: LCCOMB_X2_Y4_N14
\PC_LOAD_HI~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~6_combout\ = (\t_states~combout\(1) & \s_states~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_states~combout\(1),
	datac => \s_states~combout\(0),
	combout => \PC_LOAD_HI~6_combout\);

-- Location: LCCOMB_X2_Y4_N18
\ALU_INC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_INC~0_combout\ = (!\PC_LOAD_HI~7_combout\ & (!\PC_LOAD_HI~6_combout\ & ((!\MA_CLR_HI~0_combout\) # (!\t_states~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(2),
	datab => \PC_LOAD_HI~7_combout\,
	datac => \MA_CLR_HI~0_combout\,
	datad => \PC_LOAD_HI~6_combout\,
	combout => \ALU_INC~0_combout\);

-- Location: LCCOMB_X3_Y4_N4
\PC_LOAD_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~2_combout\ = (\IR~combout\(2) & (!\IR~combout\(1) & (\s_states~combout\(2) & !\IR~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(2),
	datab => \IR~combout\(1),
	datac => \s_states~combout\(2),
	datad => \IR~combout\(0),
	combout => \PC_LOAD_HI~2_combout\);

-- Location: LCCOMB_X4_Y4_N24
\PC_LOAD_HI~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~5_combout\ = (\PC_LOAD_HI~2_combout\ & \t_states~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_LOAD_HI~2_combout\,
	datad => \t_states~combout\(3),
	combout => \PC_LOAD_HI~5_combout\);

-- Location: LCCOMB_X3_Y4_N22
\PC_CLR_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_CLR_HI~0_combout\ = (\IR~combout\(2) & (!\IR~combout\(1) & (\s_states~combout\(2) & \IR~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(2),
	datab => \IR~combout\(1),
	datac => \s_states~combout\(2),
	datad => \IR~combout\(0),
	combout => \PC_CLR_HI~0_combout\);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_IR(3),
	combout => \IR~combout\(3));

-- Location: LCCOMB_X4_Y4_N30
\PC_LOAD_HI~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~4_combout\ = (\PC_CLR_HI~0_combout\ & (\t_states~combout\(0) & \IR~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_CLR_HI~0_combout\,
	datac => \t_states~combout\(0),
	datad => \IR~combout\(3),
	combout => \PC_LOAD_HI~4_combout\);

-- Location: LCCOMB_X4_Y4_N10
\PC_LOAD_HI~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~8_combout\ = (\PC_LOAD_HI~3_combout\) # (((\PC_LOAD_HI~5_combout\) # (\PC_LOAD_HI~4_combout\)) # (!\ALU_INC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_LOAD_HI~3_combout\,
	datab => \ALU_INC~0_combout\,
	datac => \PC_LOAD_HI~5_combout\,
	datad => \PC_LOAD_HI~4_combout\,
	combout => \PC_LOAD_HI~8_combout\);

-- Location: LCCOMB_X4_Y4_N20
\PC_LOAD_HI~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_HI~9_combout\ = (\t_states~combout\(0) & \PC_CLR_HI~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_states~combout\(0),
	datad => \PC_CLR_HI~0_combout\,
	combout => \PC_LOAD_HI~9_combout\);

-- Location: LCCOMB_X4_Y4_N22
\PC_LOAD_LO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_LOAD_LO~0_combout\ = (\PC_LOAD_HI~9_combout\) # (((\PC_LOAD_HI~5_combout\) # (\PC_LOAD_HI~3_combout\)) # (!\ALU_INC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_LOAD_HI~9_combout\,
	datab => \ALU_INC~0_combout\,
	datac => \PC_LOAD_HI~5_combout\,
	datad => \PC_LOAD_HI~3_combout\,
	combout => \PC_LOAD_LO~0_combout\);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y4_N16
\PC_CLR_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_CLR_HI~1_combout\ = (\t_states~combout\(0) & (\IR~combout\(4) & ((!\IR~combout\(1)) # (!\IR~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(0),
	datab => \IR~combout\(1),
	datac => \t_states~combout\(0),
	datad => \IR~combout\(4),
	combout => \PC_CLR_HI~1_combout\);

-- Location: LCCOMB_X3_Y6_N24
\PC_CLR_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_CLR_HI~2_combout\ = (\PC_CLR_HI~1_combout\ & \PC_CLR_HI~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_CLR_HI~1_combout\,
	datad => \PC_CLR_HI~0_combout\,
	combout => \PC_CLR_HI~2_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y6_N18
\IR_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR_LOAD~0_combout\ = (\s_states~combout\(0) & \t_states~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_states~combout\(0),
	datad => \t_states~combout\(2),
	combout => \IR_LOAD~0_combout\);

-- Location: LCCOMB_X3_Y4_N2
\MA_LOAD_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_LOAD_HI~0_combout\ = (\s_states~combout\(2) & ((\IR~combout\(2) & (!\IR~combout\(1) & !\IR~combout\(0))) # (!\IR~combout\(2) & ((!\IR~combout\(0)) # (!\IR~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(2),
	datab => \IR~combout\(1),
	datac => \s_states~combout\(2),
	datad => \IR~combout\(0),
	combout => \MA_LOAD_HI~0_combout\);

-- Location: LCCOMB_X3_Y6_N4
\MA_LOAD_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_LOAD_HI~1_combout\ = (\t_states~combout\(0) & ((\s_states~combout\(0)) # ((\IR~combout\(3) & \MA_LOAD_HI~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(0),
	datab => \IR~combout\(3),
	datac => \MA_LOAD_HI~0_combout\,
	datad => \s_states~combout\(0),
	combout => \MA_LOAD_HI~1_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y6_N6
\MA_LOAD_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_LOAD_HI~2_combout\ = (\MA_LOAD_HI~1_combout\) # ((\PC_CLR_HI~1_combout\ & \s_states~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_CLR_HI~1_combout\,
	datac => \MA_LOAD_HI~1_combout\,
	datad => \s_states~combout\(1),
	combout => \MA_LOAD_HI~2_combout\);

-- Location: LCCOMB_X3_Y6_N0
\MA_LOAD_LO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_LOAD_LO~0_combout\ = (\t_states~combout\(0) & ((\s_states~combout\(1)) # ((\MA_LOAD_HI~0_combout\) # (\s_states~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(0),
	datab => \s_states~combout\(1),
	datac => \MA_LOAD_HI~0_combout\,
	datad => \s_states~combout\(0),
	combout => \MA_LOAD_LO~0_combout\);

-- Location: LCCOMB_X3_Y4_N12
\MA_CLR_HI~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_CLR_HI~3_combout\ = (\IR~combout\(4) & ((!\IR~combout\(1)) # (!\IR~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(0),
	datab => \IR~combout\(1),
	datad => \IR~combout\(4),
	combout => \MA_CLR_HI~3_combout\);

-- Location: LCCOMB_X2_Y4_N28
\MA_CLR_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_CLR_HI~1_combout\ = (\t_states~combout\(0) & (\IRQ~combout\ & \s_states~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_states~combout\(0),
	datac => \IRQ~combout\,
	datad => \s_states~combout\(3),
	combout => \MA_CLR_HI~1_combout\);

-- Location: LCCOMB_X3_Y6_N10
\MA_CLR_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_CLR_HI~2_combout\ = (\MA_CLR_HI~1_combout\) # ((\t_states~combout\(0) & (\IR~combout\(4) & \MA_LOAD_HI~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(0),
	datab => \IR~combout\(4),
	datac => \MA_LOAD_HI~0_combout\,
	datad => \MA_CLR_HI~1_combout\,
	combout => \MA_CLR_HI~2_combout\);

-- Location: LCCOMB_X3_Y6_N12
\MA_CLR_HI~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_CLR_HI~4_combout\ = (\MA_CLR_HI~2_combout\) # ((!\MA_CLR_HI~3_combout\ & (\s_states~combout\(1) & \t_states~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_CLR_HI~3_combout\,
	datab => \s_states~combout\(1),
	datac => \t_states~combout\(0),
	datad => \MA_CLR_HI~2_combout\,
	combout => \MA_CLR_HI~4_combout\);

-- Location: LCCOMB_X3_Y4_N30
\MD_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_LOAD~0_combout\ = (!\IR~combout\(2) & (\s_states~combout\(2) & ((!\IR~combout\(0)) # (!\IR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(2),
	datab => \IR~combout\(1),
	datac => \s_states~combout\(2),
	datad => \IR~combout\(0),
	combout => \MD_LOAD~0_combout\);

-- Location: LCCOMB_X3_Y6_N22
\MD_IN_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_IN_SEL~2_combout\ = (\t_states~combout\(2) & ((\s_states~combout\(0)) # ((\MD_LOAD~0_combout\) # (\s_states~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_states~combout\(0),
	datab => \t_states~combout\(2),
	datac => \MD_LOAD~0_combout\,
	datad => \s_states~combout\(1),
	combout => \MD_IN_SEL~2_combout\);

-- Location: LCCOMB_X2_Y4_N6
\MD_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_BUS_SEL~2_combout\ = (\MD_BUS_SEL~1_combout\ & ((\t_states~combout\(0)) # (\t_states~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS_SEL~1_combout\,
	datab => \t_states~combout\(0),
	datac => \t_states~combout\(3),
	combout => \MD_BUS_SEL~2_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y6_N8
\MD_BUS_SEL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_BUS_SEL~3_combout\ = (\s_states~combout\(1) & ((\t_states~combout\(0)) # ((\IS_AUTO_INDEX~combout\ & \t_states~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IS_AUTO_INDEX~combout\,
	datab => \s_states~combout\(1),
	datac => \t_states~combout\(0),
	datad => \t_states~combout\(3),
	combout => \MD_BUS_SEL~3_combout\);

-- Location: LCCOMB_X2_Y4_N0
\MD_BUS_SEL~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_BUS_SEL~4_combout\ = (\MD_BUS_SEL~3_combout\) # ((\t_states~combout\(2) & ((\s_states~combout\(0)) # (\MA_CLR_HI~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(2),
	datab => \s_states~combout\(0),
	datac => \MA_CLR_HI~0_combout\,
	datad => \MD_BUS_SEL~3_combout\,
	combout => \MD_BUS_SEL~4_combout\);

-- Location: LCCOMB_X2_Y4_N2
\MD_BUS_SEL~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_BUS_SEL~5_combout\ = (\MD_BUS_SEL~2_combout\) # ((\MD_BUS_SEL~4_combout\) # ((\MD_BUS_SEL~0_combout\ & \t_states~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS_SEL~2_combout\,
	datab => \MD_BUS_SEL~0_combout\,
	datac => \t_states~combout\(4),
	datad => \MD_BUS_SEL~4_combout\,
	combout => \MD_BUS_SEL~5_combout\);

-- Location: LCCOMB_X3_Y4_N18
\MD_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_LOAD~1_combout\ = (\s_states~combout\(2) & ((\IR~combout\(2) & (!\IR~combout\(1) & !\IR~combout\(0))) # (!\IR~combout\(2) & (\IR~combout\(1) & \IR~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(2),
	datab => \IR~combout\(1),
	datac => \s_states~combout\(2),
	datad => \IR~combout\(0),
	combout => \MD_LOAD~1_combout\);

-- Location: LCCOMB_X2_Y4_N20
\MD_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_LOAD~2_combout\ = (\t_states~combout\(3) & ((\MD_BUS_SEL~0_combout\) # ((\t_states~combout\(1) & \MD_LOAD~1_combout\)))) # (!\t_states~combout\(3) & (\t_states~combout\(1) & ((\MD_LOAD~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(3),
	datab => \t_states~combout\(1),
	datac => \MD_BUS_SEL~0_combout\,
	datad => \MD_LOAD~1_combout\,
	combout => \MD_LOAD~2_combout\);

-- Location: LCCOMB_X3_Y6_N2
\MD_LOAD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_LOAD~3_combout\ = (\s_states~combout\(1) & ((\t_states~combout\(2)) # ((\IS_AUTO_INDEX~combout\ & \t_states~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IS_AUTO_INDEX~combout\,
	datab => \t_states~combout\(2),
	datac => \s_states~combout\(1),
	datad => \t_states~combout\(3),
	combout => \MD_LOAD~3_combout\);

-- Location: LCCOMB_X3_Y6_N28
\MD_LOAD~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_LOAD~4_combout\ = (\MA_CLR_HI~1_combout\) # ((\MD_LOAD~3_combout\) # ((\t_states~combout\(2) & \MD_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_CLR_HI~1_combout\,
	datab => \t_states~combout\(2),
	datac => \MD_LOAD~0_combout\,
	datad => \MD_LOAD~3_combout\,
	combout => \MD_LOAD~4_combout\);

-- Location: LCCOMB_X3_Y6_N14
\MD_LOAD~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_LOAD~5_combout\ = (\MD_LOAD~2_combout\) # ((\MD_LOAD~4_combout\) # ((\s_states~combout\(0) & \t_states~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_states~combout\(0),
	datab => \t_states~combout\(2),
	datac => \MD_LOAD~2_combout\,
	datad => \MD_LOAD~4_combout\,
	combout => \MD_LOAD~5_combout\);

-- Location: LCCOMB_X4_Y4_N0
\AC_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~0_combout\ = (!\IR~combout\(11) & (\t_states~combout\(3) & \IR~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(11),
	datab => \t_states~combout\(3),
	datad => \IR~combout\(3),
	combout => \AC_LOAD~0_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[9]~I\ : cycloneii_io
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
	padio => ww_IR(9),
	combout => \IR~combout\(9));

-- Location: LCCOMB_X4_Y4_N26
\AC_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~1_combout\ = (\PC_LOAD_HI~0_combout\ & (\AC_LOAD~0_combout\ & (\IR~combout\(9) & \IR~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_LOAD_HI~0_combout\,
	datab => \AC_LOAD~0_combout\,
	datac => \IR~combout\(9),
	datad => \IR~combout\(8),
	combout => \AC_LOAD~1_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[10]~I\ : cycloneii_io
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
	padio => ww_IR(10),
	combout => \IR~combout\(10));

-- Location: LCCOMB_X14_Y4_N24
\ALU_ROT_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_ROT_1~0_combout\ = (\t_states~combout\(4) & \IR~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_states~combout\(4),
	datac => \IR~combout\(10),
	combout => \ALU_ROT_1~0_combout\);

-- Location: LCCOMB_X15_Y4_N8
\AC_LOAD~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~7_combout\ = (!\IR~combout\(9) & !\IR~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR~combout\(9),
	datad => \IR~combout\(8),
	combout => \AC_LOAD~7_combout\);

-- Location: LCCOMB_X15_Y4_N30
\ALU_INC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_INC~1_combout\ = (!\IR~combout\(3) & \PC_LOAD_HI~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(3),
	datad => \PC_LOAD_HI~0_combout\,
	combout => \ALU_INC~1_combout\);

-- Location: LCCOMB_X15_Y4_N10
\AC_LOAD~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~8_combout\ = (\AC_LOAD~6_combout\) # ((\ALU_ROT_1~0_combout\ & (!\AC_LOAD~7_combout\ & \ALU_INC~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC_LOAD~6_combout\,
	datab => \ALU_ROT_1~0_combout\,
	datac => \AC_LOAD~7_combout\,
	datad => \ALU_INC~1_combout\,
	combout => \AC_LOAD~8_combout\);

-- Location: LCCOMB_X3_Y4_N20
\ALU_FUNC_SEL_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_FUNC_SEL_0~0_combout\ = (!\IR~combout\(2) & (\s_states~combout\(2) & \t_states~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(2),
	datab => \s_states~combout\(2),
	datac => \t_states~combout\(3),
	combout => \ALU_FUNC_SEL_0~0_combout\);

-- Location: LCCOMB_X3_Y4_N6
\AC_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~2_combout\ = (\ALU_FUNC_SEL_0~0_combout\ & ((\IR~combout\(0)) # (!\IR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR~combout\(1),
	datac => \ALU_FUNC_SEL_0~0_combout\,
	datad => \IR~combout\(0),
	combout => \AC_LOAD~2_combout\);

-- Location: LCCOMB_X15_Y4_N26
\AC_LOAD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~3_combout\ = (\IR~combout\(9)) # ((\IR~combout\(11)) # ((\IR~combout\(6)) # (\IR~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(9),
	datab => \IR~combout\(11),
	datac => \IR~combout\(6),
	datad => \IR~combout\(8),
	combout => \AC_LOAD~3_combout\);

-- Location: LCCOMB_X15_Y4_N4
\AC_LOAD~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~4_combout\ = (!\IR~combout\(3) & (\AC_LOAD~3_combout\ & (\PC_LOAD_HI~0_combout\ & \t_states~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(3),
	datab => \AC_LOAD~3_combout\,
	datac => \PC_LOAD_HI~0_combout\,
	datad => \t_states~combout\(3),
	combout => \AC_LOAD~4_combout\);

-- Location: LCCOMB_X10_Y4_N16
\AC_LOAD~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~9_combout\ = (\AC_LOAD~8_combout\) # ((\AC_LOAD~1_combout\) # ((\AC_LOAD~2_combout\) # (\AC_LOAD~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC_LOAD~8_combout\,
	datab => \AC_LOAD~1_combout\,
	datac => \AC_LOAD~2_combout\,
	datad => \AC_LOAD~4_combout\,
	combout => \AC_LOAD~9_combout\);

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[7]~I\ : cycloneii_io
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
	padio => ww_IR(7),
	combout => \IR~combout\(7));

-- Location: LCCOMB_X15_Y4_N22
\LINK_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LINK_LOAD~2_combout\ = (\PC_LOAD_HI~0_combout\ & (\t_states~combout\(3) & !\IR~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_LOAD_HI~0_combout\,
	datab => \t_states~combout\(3),
	datad => \IR~combout\(3),
	combout => \LINK_LOAD~2_combout\);

-- Location: LCCOMB_X15_Y4_N24
\LINK_LOAD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LINK_LOAD~3_combout\ = (\IR~combout\(11)) # ((\IR~combout\(5)) # ((\IR~combout\(9)) # (\IR~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(11),
	datab => \IR~combout\(5),
	datac => \IR~combout\(9),
	datad => \IR~combout\(8),
	combout => \LINK_LOAD~3_combout\);

-- Location: LCCOMB_X15_Y4_N28
\LINK_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LINK_LOAD~1_combout\ = (\LINK_LOAD~0_combout\) # ((\ALU_ROT_1~0_combout\ & (!\AC_LOAD~7_combout\ & \ALU_INC~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINK_LOAD~0_combout\,
	datab => \ALU_ROT_1~0_combout\,
	datac => \AC_LOAD~7_combout\,
	datad => \ALU_INC~1_combout\,
	combout => \LINK_LOAD~1_combout\);

-- Location: LCCOMB_X15_Y4_N2
\LINK_LOAD~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LINK_LOAD~4_combout\ = (\LINK_LOAD~1_combout\) # ((\LINK_LOAD~2_combout\ & ((\IR~combout\(7)) # (\LINK_LOAD~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(7),
	datab => \LINK_LOAD~2_combout\,
	datac => \LINK_LOAD~3_combout\,
	datad => \LINK_LOAD~1_combout\,
	combout => \LINK_LOAD~4_combout\);

-- Location: LCCOMB_X15_Y4_N20
\LINK_OUT_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LINK_OUT_SEL~0_combout\ = (!\IR~combout\(3) & (\IR~combout\(5) & (\PC_LOAD_HI~0_combout\ & \t_states~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(3),
	datab => \IR~combout\(5),
	datac => \PC_LOAD_HI~0_combout\,
	datad => \t_states~combout\(3),
	combout => \LINK_OUT_SEL~0_combout\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ADD_CARRY,
	combout => \ADD_CARRY~combout\);

-- Location: LCCOMB_X3_Y4_N0
\LINK_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LINK_LOAD~0_combout\ = (!\IR~combout\(1) & (\ALU_FUNC_SEL_0~0_combout\ & \IR~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR~combout\(1),
	datac => \ALU_FUNC_SEL_0~0_combout\,
	datad => \IR~combout\(0),
	combout => \LINK_LOAD~0_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_INC_CARRY,
	combout => \INC_CARRY~combout\);

-- Location: LCCOMB_X15_Y4_N14
\LINK_COMP~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LINK_COMP~0_combout\ = (\IR~combout\(7)) # ((\IR~combout\(11) & \INC_CARRY~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(11),
	datab => \INC_CARRY~combout\,
	datad => \IR~combout\(7),
	combout => \LINK_COMP~0_combout\);

-- Location: LCCOMB_X15_Y4_N16
\LINK_COMP~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LINK_COMP~1_combout\ = (\ADD_CARRY~combout\ & ((\LINK_LOAD~0_combout\) # ((\LINK_COMP~0_combout\ & \LINK_LOAD~2_combout\)))) # (!\ADD_CARRY~combout\ & (((\LINK_COMP~0_combout\ & \LINK_LOAD~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_CARRY~combout\,
	datab => \LINK_LOAD~0_combout\,
	datac => \LINK_COMP~0_combout\,
	datad => \LINK_LOAD~2_combout\,
	combout => \LINK_COMP~1_combout\);

-- Location: LCCOMB_X3_Y4_N10
\ALU_FUNC_SEL_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_FUNC_SEL_0~1_combout\ = (!\IR~combout\(1) & (\ALU_FUNC_SEL_0~0_combout\ & !\IR~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR~combout\(1),
	datac => \ALU_FUNC_SEL_0~0_combout\,
	datad => \IR~combout\(0),
	combout => \ALU_FUNC_SEL_0~1_combout\);

-- Location: LCCOMB_X2_Y4_N16
\ALU_OUT_SEL_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_OUT_SEL_0~1_combout\ = (\MD_BUS_SEL~0_combout\ & ((\t_states~combout\(4)) # ((\t_states~combout\(5) & \IS_ZERO_LAST~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(4),
	datab => \t_states~combout\(5),
	datac => \MD_BUS_SEL~0_combout\,
	datad => \IS_ZERO_LAST~combout\,
	combout => \ALU_OUT_SEL_0~1_combout\);

-- Location: LCCOMB_X2_Y4_N30
\ALU_OUT_SEL_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_OUT_SEL_0~0_combout\ = (\t_states~combout\(2) & ((\s_states~combout\(0)) # ((\MA_CLR_HI~0_combout\)))) # (!\t_states~combout\(2) & (\t_states~combout\(0) & ((\s_states~combout\(0)) # (\MA_CLR_HI~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(2),
	datab => \s_states~combout\(0),
	datac => \MA_CLR_HI~0_combout\,
	datad => \t_states~combout\(0),
	combout => \ALU_OUT_SEL_0~0_combout\);

-- Location: LCCOMB_X3_Y4_N14
\ALU_OUT_SEL_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_OUT_SEL_0~3_combout\ = (\MD_BUS_SEL~3_combout\) # ((\ALU_OUT_SEL_0~2_combout\ & (\s_states~combout\(2) & !\IR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_OUT_SEL_0~2_combout\,
	datab => \s_states~combout\(2),
	datac => \MD_BUS_SEL~3_combout\,
	datad => \IR~combout\(1),
	combout => \ALU_OUT_SEL_0~3_combout\);

-- Location: LCCOMB_X2_Y4_N26
\ALU_OUT_SEL_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_OUT_SEL_0~4_combout\ = (\ALU_OUT_SEL_0~1_combout\) # ((\ALU_OUT_SEL_0~0_combout\) # ((\ALU_OUT_SEL_0~3_combout\) # (\PC_LOAD_HI~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_OUT_SEL_0~1_combout\,
	datab => \ALU_OUT_SEL_0~0_combout\,
	datac => \ALU_OUT_SEL_0~3_combout\,
	datad => \PC_LOAD_HI~6_combout\,
	combout => \ALU_OUT_SEL_0~4_combout\);

-- Location: LCCOMB_X4_Y4_N8
\ALU_OUT_SEL_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_OUT_SEL_1~0_combout\ = (\AC_LOAD~1_combout\) # ((\ALU_FUNC_SEL_0~0_combout\ & !\IR~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FUNC_SEL_0~0_combout\,
	datac => \IR~combout\(1),
	datad => \AC_LOAD~1_combout\,
	combout => \ALU_OUT_SEL_1~0_combout\);

-- Location: LCCOMB_X10_Y4_N10
\AC_LOAD~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~10_combout\ = (\AC_LOAD~8_combout\) # ((\AC_LOAD~1_combout\) # (\AC_LOAD~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC_LOAD~8_combout\,
	datab => \AC_LOAD~1_combout\,
	datad => \AC_LOAD~4_combout\,
	combout => \AC_LOAD~10_combout\);

-- Location: LCCOMB_X15_Y4_N18
\ALU_COMP~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_COMP~0_combout\ = (\PC_LOAD_HI~0_combout\ & (\t_states~combout\(3) & (\IR~combout\(6) & !\IR~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_LOAD_HI~0_combout\,
	datab => \t_states~combout\(3),
	datac => \IR~combout\(6),
	datad => \IR~combout\(3),
	combout => \ALU_COMP~0_combout\);

-- Location: LCCOMB_X3_Y6_N16
\ALU_INC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_INC~2_combout\ = (\IS_AUTO_INDEX~combout\ & \s_states~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IS_AUTO_INDEX~combout\,
	datad => \s_states~combout\(1),
	combout => \ALU_INC~2_combout\);

-- Location: LCCOMB_X4_Y4_N18
\ALU_INC~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_INC~3_combout\ = (\PC_LOAD_HI~2_combout\) # ((\IR~combout\(11) & (\PC_LOAD_HI~0_combout\ & !\IR~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(11),
	datab => \PC_LOAD_HI~0_combout\,
	datac => \PC_LOAD_HI~2_combout\,
	datad => \IR~combout\(3),
	combout => \ALU_INC~3_combout\);

-- Location: LCCOMB_X3_Y6_N26
\ALU_INC~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_INC~4_combout\ = ((\t_states~combout\(3) & ((\ALU_INC~2_combout\) # (\ALU_INC~3_combout\)))) # (!\ALU_INC~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_INC~2_combout\,
	datab => \t_states~combout\(3),
	datac => \ALU_INC~0_combout\,
	datad => \ALU_INC~3_combout\,
	combout => \ALU_INC~4_combout\);

-- Location: LCCOMB_X4_Y4_N28
\AC_LOAD~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~5_combout\ = (\IR~combout\(4) & ((!\IR~combout\(3)) # (!\IR~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(11),
	datac => \IR~combout\(4),
	datad => \IR~combout\(3),
	combout => \AC_LOAD~5_combout\);

-- Location: LCCOMB_X4_Y4_N6
\AC_LOAD~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \AC_LOAD~6_combout\ = (\AC_LOAD~5_combout\ & (\PC_LOAD_HI~0_combout\ & \t_states~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AC_LOAD~5_combout\,
	datac => \PC_LOAD_HI~0_combout\,
	datad => \t_states~combout\(3),
	combout => \AC_LOAD~6_combout\);

-- Location: LCCOMB_X4_Y4_N4
\ALU_CLEAR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_CLEAR~0_combout\ = (\AC_LOAD~6_combout\) # ((\IR~combout\(1) & (\ALU_FUNC_SEL_0~0_combout\ & \IR~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC_LOAD~6_combout\,
	datab => \IR~combout\(1),
	datac => \ALU_FUNC_SEL_0~0_combout\,
	datad => \IR~combout\(0),
	combout => \ALU_CLEAR~0_combout\);

-- Location: LCCOMB_X15_Y4_N12
\ALU_ROT_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_ROT_1~1_combout\ = (\IR~combout\(8) & (\ALU_INC~1_combout\ & ((\ALU_ROT_1~0_combout\) # (\t_states~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(8),
	datab => \ALU_ROT_1~0_combout\,
	datac => \ALU_INC~1_combout\,
	datad => \t_states~combout\(3),
	combout => \ALU_ROT_1~1_combout\);

-- Location: LCCOMB_X15_Y4_N6
\ALU_ROT_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_ROT_2~0_combout\ = (\ALU_INC~1_combout\ & (\IR~combout\(9) & ((\ALU_ROT_1~0_combout\) # (\t_states~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_INC~1_combout\,
	datab => \ALU_ROT_1~0_combout\,
	datac => \IR~combout\(9),
	datad => \t_states~combout\(3),
	combout => \ALU_ROT_2~0_combout\);

-- Location: LCCOMB_X3_Y6_N30
\MEM_READ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_READ~0_combout\ = (\s_states~combout\(0)) # (\s_states~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_states~combout\(0),
	datad => \s_states~combout\(1),
	combout => \MEM_READ~0_combout\);

-- Location: LCCOMB_X3_Y6_N20
\MEM_READ~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_READ~1_combout\ = (\t_states~combout\(2) & (((\MD_LOAD~0_combout\) # (\MEM_READ~0_combout\)))) # (!\t_states~combout\(2) & (\t_states~combout\(1) & ((\MD_LOAD~0_combout\) # (\MEM_READ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(2),
	datab => \t_states~combout\(1),
	datac => \MD_LOAD~0_combout\,
	datad => \MEM_READ~0_combout\,
	combout => \MEM_READ~1_combout\);

-- Location: LCCOMB_X2_Y4_N12
\MEM_WRITE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_WRITE~2_combout\ = (\t_states~combout\(4) & ((\MD_BUS_SEL~0_combout\) # ((\t_states~combout\(2) & \MD_LOAD~1_combout\)))) # (!\t_states~combout\(4) & (((\t_states~combout\(2) & \MD_LOAD~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_states~combout\(4),
	datab => \MD_BUS_SEL~0_combout\,
	datac => \t_states~combout\(2),
	datad => \MD_LOAD~1_combout\,
	combout => \MEM_WRITE~2_combout\);

-- Location: LCCOMB_X2_Y4_N22
\MEM_WRITE~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_WRITE~3_combout\ = (\MEM_WRITE~2_combout\) # ((\t_states~combout\(1) & (\IRQ~combout\ & \s_states~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WRITE~2_combout\,
	datab => \t_states~combout\(1),
	datac => \IRQ~combout\,
	datad => \s_states~combout\(3),
	combout => \MEM_WRITE~3_combout\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC_LOAD_HI~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_LOAD_HI);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC_LOAD_LO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_LOAD_LO);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC_CLR_HI~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_CLR_HI);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MA_LOAD_LO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_LOAD_LO);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MA_CLR_HI~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_CLR_HI);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MA_CLR_HI~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_CLR_LO);

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MD_IN_SEL~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MD_IN_SEL);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MD_BUS_SEL~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MD_BUS_SEL);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \AC_LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SR_BUS_SEL);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \AC_LOAD~9_combout\,
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
	datain => \LINK_LOAD~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LINK_LOAD);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \LINK_OUT_SEL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LINK_OUT_SEL);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \LINK_COMP~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LINK_COMP);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALU_FUNC_SEL_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_FUNC_SEL_0);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \LINK_LOAD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_FUNC_SEL_1);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \AC_LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_FUNC_SEL_2);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALU_OUT_SEL_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_OUT_SEL_0);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALU_OUT_SEL_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_OUT_SEL_1);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \AC_LOAD~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_OUT_SEL_2);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALU_COMP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_COMP);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALU_INC~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_INC);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALU_CLEAR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_CLEAR);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALU_ROT_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_ROT_1);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALU_ROT_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_ROT_2);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MEM_READ~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MEM_READ);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MEM_WRITE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MEM_WRITE);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IS_NEG~I\ : cycloneii_io
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
	padio => ww_IS_NEG);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_IS_ZERO);
END structure;


