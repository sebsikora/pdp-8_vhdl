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

-- DATE "01/08/2017 16:25:36"

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

ENTITY 	control_subsystem IS
    PORT (
	clk : IN std_logic;
	not_reset : IN std_logic;
	start : IN std_logic;
	IRQ : IN std_logic;
	MD_BUS : IN std_logic_vector(11 DOWNTO 0);
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
END control_subsystem;

-- Design Ports Information
-- PC_BUS_SEL	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_LOAD_HI	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_LOAD_LO	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_CLR_HI	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_CLR_LO	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_LOAD	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_CLR	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_LOAD_HI	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_LOAD_LO	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_BUS_SEL	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_CLR_HI	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_CLR_LO	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_IN_SEL	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_BUS_SEL	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_CLR	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_LOAD	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SR_BUS_SEL	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AC_LOAD	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LINK_LOAD	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LINK_OUT_SEL	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LINK_COMP	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_FUNC_SEL_0	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_FUNC_SEL_1	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_FUNC_SEL_2	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_OUT_SEL_0	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_OUT_SEL_1	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_OUT_SEL_2	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_COMP	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_INC	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_CLEAR	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_ROT_1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_ROT_2	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MEM_READ	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MEM_WRITE	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IS_NEG	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IS_ZERO	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[11]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[6]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[7]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LINK_VALUE	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[8]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IS_ZERO_LAST	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRQ	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IS_AUTO_INDEX	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[9]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[10]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD_CARRY	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INC_CARRY	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[0]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[1]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[2]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[3]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[4]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF control_subsystem IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_IRQ : std_logic;
SIGNAL ww_MD_BUS : std_logic_vector(11 DOWNTO 0);
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
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control_matrix|SKIP_MASTER~0_combout\ : std_logic;
SIGNAL \control_matrix|decoder_3_to_6_0|and_3_2|output~0_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~6_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~8_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_2~0_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_0~2_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|or_3|output~combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \LINK_VALUE~combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \IRQ~combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_matrix|OPR_INS~0_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|or_4|output~0_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|or_2|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|or_2|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|and_2|output~0_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|or_5|output~0_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|or_5|output~combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|or_1|output~0_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|or_1|output~combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_matrix|PC_BUS_SEL~0_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_matrix|IR_LOAD~combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_matrix|MD_BUS_SEL~2_combout\ : std_logic;
SIGNAL \control_matrix|PC_BUS_SEL~2_combout\ : std_logic;
SIGNAL \control_matrix|GROUP_1~0_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~2_combout\ : std_logic;
SIGNAL \control_matrix|LINK_OUT_SEL~0_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~3_combout\ : std_logic;
SIGNAL \control_matrix|PC_BUS_SEL~3_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_LO~0_combout\ : std_logic;
SIGNAL \control_matrix|decoder_3_to_6_0|and_3_5|output~0_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~7_combout\ : std_logic;
SIGNAL \control_matrix|PC_BUS_SEL~1_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~9_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~5_combout\ : std_logic;
SIGNAL \IS_ZERO_LAST~combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~4_combout\ : std_logic;
SIGNAL \control_matrix|ALU_INC~0_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_LO~1_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_LO~combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_matrix|PC_CLR_HI~0_combout\ : std_logic;
SIGNAL \control_matrix|MA_LOAD_HI~2_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|and_8|output~3_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|and_8|output~combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\ : std_logic;
SIGNAL \control_matrix|MA_LOAD_HI~1_combout\ : std_logic;
SIGNAL \control_matrix|MA_LOAD_HI~0_combout\ : std_logic;
SIGNAL \control_matrix|MA_LOAD_HI~combout\ : std_logic;
SIGNAL \control_matrix|MA_LOAD_LO~7_combout\ : std_logic;
SIGNAL \control_matrix|MA_LOAD_LO~3_combout\ : std_logic;
SIGNAL \control_matrix|MA_LOAD_LO~combout\ : std_logic;
SIGNAL \control_matrix|MA_CLR_HI~0_combout\ : std_logic;
SIGNAL \control_matrix|MA_CLR_LO~4_combout\ : std_logic;
SIGNAL \control_matrix|MA_CLR_LO~combout\ : std_logic;
SIGNAL \control_matrix|MA_CLR_HI~1_combout\ : std_logic;
SIGNAL \control_matrix|MD_IN_SEL~2_combout\ : std_logic;
SIGNAL \control_matrix|MEM_READ~0_combout\ : std_logic;
SIGNAL \control_matrix|MD_IN_SEL~3_combout\ : std_logic;
SIGNAL \control_matrix|MD_BUS_SEL~6_combout\ : std_logic;
SIGNAL \IS_AUTO_INDEX~combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_0~0_combout\ : std_logic;
SIGNAL \control_matrix|MD_BUS_SEL~3_combout\ : std_logic;
SIGNAL \control_matrix|MEM_INST~0_combout\ : std_logic;
SIGNAL \control_matrix|MD_BUS_SEL~4_combout\ : std_logic;
SIGNAL \control_matrix|MD_BUS_SEL~5_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~1_combout\ : std_logic;
SIGNAL \control_matrix|MD_LOAD~0_combout\ : std_logic;
SIGNAL \control_matrix|MD_LOAD~1_combout\ : std_logic;
SIGNAL \control_matrix|MD_LOAD~2_combout\ : std_logic;
SIGNAL \control_matrix|MD_LOAD~3_combout\ : std_logic;
SIGNAL \control_matrix|MD_LOAD~4_combout\ : std_logic;
SIGNAL \control_matrix|SR_BUS_SEL~0_combout\ : std_logic;
SIGNAL \control_matrix|ALU_CLEAR~0_combout\ : std_logic;
SIGNAL \control_matrix|ALU_ROT_1~0_combout\ : std_logic;
SIGNAL \control_matrix|AC_LOAD~2_combout\ : std_logic;
SIGNAL \control_matrix|AC_LOAD~3_combout\ : std_logic;
SIGNAL \control_matrix|AC_LOAD~4_combout\ : std_logic;
SIGNAL \control_matrix|LINK_LOAD~0_combout\ : std_logic;
SIGNAL \control_matrix|LINK_LOAD~1_combout\ : std_logic;
SIGNAL \control_matrix|ALU_FUNC_SEL_1~0_combout\ : std_logic;
SIGNAL \control_matrix|LINK_LOAD~2_combout\ : std_logic;
SIGNAL \control_matrix|GROUP_1~1_combout\ : std_logic;
SIGNAL \control_matrix|LINK_OUT_SEL~1_combout\ : std_logic;
SIGNAL \INC_CARRY~combout\ : std_logic;
SIGNAL \control_matrix|LINK_COMP~0_combout\ : std_logic;
SIGNAL \ADD_CARRY~combout\ : std_logic;
SIGNAL \control_matrix|LINK_COMP~1_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_0~1_combout\ : std_logic;
SIGNAL \control_matrix|ALU_FUNC_SEL_0~0_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_0~3_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_0~4_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_0~5_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_0~6_combout\ : std_logic;
SIGNAL \control_matrix|SR_BUS_SEL~1_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_1~combout\ : std_logic;
SIGNAL \control_matrix|CLA_MASTER~0_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_2~1_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_2~2_combout\ : std_logic;
SIGNAL \control_matrix|ALU_COMP~0_combout\ : std_logic;
SIGNAL \control_matrix|ALU_INC~1_combout\ : std_logic;
SIGNAL \control_matrix|ALU_INC~2_combout\ : std_logic;
SIGNAL \control_matrix|ALU_INC~3_combout\ : std_logic;
SIGNAL \control_matrix|ALU_CLEAR~combout\ : std_logic;
SIGNAL \control_matrix|ALU_ROT_1~1_combout\ : std_logic;
SIGNAL \control_matrix|ALU_ROT_1~2_combout\ : std_logic;
SIGNAL \control_matrix|ALU_ROT_2~0_combout\ : std_logic;
SIGNAL \control_matrix|MEM_READ~1_combout\ : std_logic;
SIGNAL \control_matrix|MEM_WRITE~0_combout\ : std_logic;
SIGNAL \control_matrix|MEM_WRITE~combout\ : std_logic;
SIGNAL \MD_BUS~combout\ : std_logic_vector(11 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_not_reset <= not_reset;
ww_start <= start;
ww_IRQ <= IRQ;
ww_MD_BUS <= MD_BUS;
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

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X7_Y6_N10
\control_matrix|SKIP_MASTER~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|SKIP_MASTER~0_combout\ = (\MD_BUS~combout\(6)) # ((\MD_BUS~combout\(5)) # ((\LINK_VALUE~combout\ & \MD_BUS~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(6),
	datab => \MD_BUS~combout\(5),
	datac => \LINK_VALUE~combout\,
	datad => \MD_BUS~combout\(7),
	combout => \control_matrix|SKIP_MASTER~0_combout\);

-- Location: LCCOMB_X2_Y5_N6
\control_matrix|decoder_3_to_6_0|and_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|decoder_3_to_6_0|and_3_2|output~0_combout\ = (\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|decoder_3_to_6_0|and_3_2|output~0_combout\);

-- Location: LCCOMB_X3_Y5_N12
\control_matrix|PC_LOAD_HI~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~6_combout\ = (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_matrix|PC_LOAD_HI~6_combout\);

-- Location: LCCOMB_X6_Y6_N0
\control_matrix|PC_LOAD_HI~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~8_combout\ = (!\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\MD_BUS~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \MD_BUS~combout\(11),
	combout => \control_matrix|PC_LOAD_HI~8_combout\);

-- Location: LCCOMB_X7_Y6_N16
\control_matrix|ALU_OUT_SEL_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_2~0_combout\ = (\MD_BUS~combout\(8)) # ((\MD_BUS~combout\(11)) # ((\MD_BUS~combout\(9)) # (\MD_BUS~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(8),
	datab => \MD_BUS~combout\(11),
	datac => \MD_BUS~combout\(9),
	datad => \MD_BUS~combout\(6),
	combout => \control_matrix|ALU_OUT_SEL_2~0_combout\);

-- Location: LCCOMB_X2_Y5_N12
\control_matrix|ALU_OUT_SEL_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_0~2_combout\ = (\control_matrix|decoder_3_to_6_0|and_3_2|output~0_combout\ & ((\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\) # ((\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \control_matrix|ALU_OUT_SEL_0~1_combout\)))) # (!\control_matrix|decoder_3_to_6_0|and_3_2|output~0_combout\ & (((\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & \control_matrix|ALU_OUT_SEL_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|decoder_3_to_6_0|and_3_2|output~0_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\,
	datac => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_matrix|ALU_OUT_SEL_0~1_combout\,
	combout => \control_matrix|ALU_OUT_SEL_0~2_combout\);

-- Location: LCCOMB_X3_Y6_N4
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ & 
-- ((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N2
\register_5_bit_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N28
\register_5_bit_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\MD_BUS~combout\(0) & (!\register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & ((!\register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\) # 
-- (!\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\MD_BUS~combout\(0) & (((!\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)) # 
-- (!\register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(0),
	datab => \register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N10
\register_5_bit_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N6
\register_5_bit_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ & (!\MD_BUS~combout\(1) & (!\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\))) # 
-- (!\register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ & (((!\register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\) # (!\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\MD_BUS~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \MD_BUS~combout\(1),
	datac => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N28
\register_5_bit_0|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N26
\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & !\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N12
\state_generator_0|s_state_generator_0|or_3|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|or_3|output~combout\ = ((\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & (\control_matrix|OPR_INS~0_combout\ & !\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))) # 
-- (!\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \control_matrix|OPR_INS~0_combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|or_3|output~combout\);

-- Location: LCCOMB_X1_Y5_N20
\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\ = (\state_generator_0|s_state_generator_0|and_8|output~combout\ & ((\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\state_generator_0|s_state_generator_0|or_3|output~combout\ & !\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\)) # (!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- ((!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\) # (!\state_generator_0|s_state_generator_0|or_3|output~combout\))))) # (!\state_generator_0|s_state_generator_0|and_8|output~combout\ & 
-- (((!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|and_8|output~combout\,
	datab => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|or_3|output~combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_BUS[0]~I\ : cycloneii_io
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
	padio => ww_MD_BUS(0),
	combout => \MD_BUS~combout\(0));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_BUS[1]~I\ : cycloneii_io
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
	padio => ww_MD_BUS(1),
	combout => \MD_BUS~combout\(1));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_BUS[2]~I\ : cycloneii_io
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
	padio => ww_MD_BUS(2),
	combout => \MD_BUS~combout\(2));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_BUS[4]~I\ : cycloneii_io
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
	padio => ww_MD_BUS(4),
	combout => \MD_BUS~combout\(4));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
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
	padio => ww_start,
	combout => \start~combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y6_N20
\register_5_bit_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk~combout\ & ((\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\clk~combout\ & (\register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \clk~combout\,
	datad => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N12
\register_5_bit_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\clk~combout\ & ((\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\clk~combout\ & (\register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \clk~combout\,
	datad => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N0
\control_matrix|OPR_INS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|OPR_INS~0_combout\ = (\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\) # (\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_matrix|OPR_INS~0_combout\);

-- Location: LCCOMB_X1_Y6_N0
\state_generator_0|s_state_generator_0|or_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|or_4|output~0_combout\ = (\IRQ~combout\ & (((!\control_matrix|OPR_INS~0_combout\ & !\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \IRQ~combout\,
	datac => \control_matrix|OPR_INS~0_combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|or_4|output~0_combout\);

-- Location: LCCOMB_X1_Y5_N14
\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & !\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N0
\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\ = (\state_generator_0|s_state_generator_0|and_8|output~combout\ & ((\state_generator_0|s_state_generator_0|or_4|output~0_combout\ & 
-- (!\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\ & !\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\state_generator_0|s_state_generator_0|or_4|output~0_combout\ & 
-- ((!\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\) # (!\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\))))) # (!\state_generator_0|s_state_generator_0|and_8|output~combout\ & 
-- (((!\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|and_8|output~combout\,
	datab => \state_generator_0|s_state_generator_0|or_4|output~0_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N28
\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ = (\state_generator_0|t_state_generator_0|or_2|output~2_combout\ & ((\clk~combout\ & 
-- (\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk~combout\ & ((\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\))))) # 
-- (!\state_generator_0|t_state_generator_0|or_2|output~2_combout\ & (((\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \state_generator_0|t_state_generator_0|or_2|output~2_combout\,
	datad => \clk~combout\,
	combout => \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N28
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\clk~combout\ & ((\state_generator_0|t_state_generator_0|or_2|output~2_combout\ & 
-- (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\state_generator_0|t_state_generator_0|or_2|output~2_combout\ & ((!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \clk~combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|or_2|output~2_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N2
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (((!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N10
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\clk~combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\clk~combout\ & 
-- ((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N14
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N22
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ = (\clk~combout\ & ((\state_generator_0|t_state_generator_0|or_2|output~2_combout\ & 
-- (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\state_generator_0|t_state_generator_0|or_2|output~2_combout\ & ((!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \clk~combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|or_2|output~2_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N18
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ & 
-- (((!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ & 
-- (((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X2_Y6_N16
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\clk~combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\clk~combout\ & 
-- ((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N14
\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N30
\state_generator_0|t_state_generator_0|or_2|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|or_2|output~2_combout\ = (\state_generator_0|t_state_generator_0|and_2|output~0_combout\) # ((\state_generator_0|t_state_generator_0|or_2|output~1_combout\) # 
-- ((!\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ & \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|and_2|output~0_combout\,
	datab => \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\,
	datad => \state_generator_0|t_state_generator_0|or_2|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|or_2|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N6
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ = (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ & (((\state_generator_0|t_state_generator_0|or_2|output~2_combout\) # 
-- (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \clk~combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|or_2|output~2_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N4
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk~combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk~combout\ & 
-- ((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N8
\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N26
\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\ = (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N14
\state_generator_0|t_state_generator_0|or_2|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|or_2|output~1_combout\ = (\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\ & 
-- ((!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- ((\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\) # ((\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\ & 
-- !\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|or_2|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N8
\state_generator_0|t_state_generator_0|and_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|and_2|output~0_combout\ = (!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|and_2|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N22
\state_generator_0|s_state_generator_0|or_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|or_5|output~0_combout\ = (\state_generator_0|t_state_generator_0|and_2|output~0_combout\) # ((\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\ & 
-- !\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\,
	datac => \state_generator_0|t_state_generator_0|and_2|output~0_combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|or_5|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N16
\state_generator_0|s_state_generator_0|or_5|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|or_5|output~combout\ = (\start~combout\) # ((\clk~combout\ & ((\state_generator_0|t_state_generator_0|or_2|output~1_combout\) # (\state_generator_0|s_state_generator_0|or_5|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \start~combout\,
	datac => \state_generator_0|t_state_generator_0|or_2|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|or_5|output~0_combout\,
	combout => \state_generator_0|s_state_generator_0|or_5|output~combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\not_reset~I\ : cycloneii_io
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
	padio => ww_not_reset,
	combout => \not_reset~combout\);

-- Location: LCCOMB_X4_Y6_N20
\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & !\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N20
\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ = (\state_generator_0|t_state_generator_0|or_2|output~2_combout\ & ((\clk~combout\ & 
-- ((\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\clk~combout\ & (\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\)))) # 
-- (!\state_generator_0|t_state_generator_0|or_2|output~2_combout\ & (\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \state_generator_0|t_state_generator_0|or_2|output~2_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N6
\state_generator_0|s_state_generator_0|or_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|or_1|output~0_combout\ = (\start~combout\) # (((!\IRQ~combout\ & !\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \IRQ~combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|or_1|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N10
\state_generator_0|s_state_generator_0|or_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|or_1|output~combout\ = (\state_generator_0|s_state_generator_0|or_1|output~0_combout\) # ((!\IRQ~combout\ & (!\control_matrix|OPR_INS~0_combout\ & 
-- !\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRQ~combout\,
	datab => \control_matrix|OPR_INS~0_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|or_1|output~0_combout\,
	combout => \state_generator_0|s_state_generator_0|or_1|output~combout\);

-- Location: LCCOMB_X1_Y6_N26
\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & ((!\state_generator_0|s_state_generator_0|or_1|output~combout\) # (!\state_generator_0|s_state_generator_0|or_5|output~combout\)))) # 
-- (!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\state_generator_0|s_state_generator_0|or_5|output~combout\ & !\state_generator_0|s_state_generator_0|or_1|output~combout\)) # 
-- (!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|or_5|output~combout\,
	datad => \state_generator_0|s_state_generator_0|or_1|output~combout\,
	combout => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N30
\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\state_generator_0|s_state_generator_0|or_5|output~combout\ & (\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\state_generator_0|s_state_generator_0|or_5|output~combout\ & ((\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|or_5|output~combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N12
\control_matrix|PC_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_BUS_SEL~0_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_matrix|PC_BUS_SEL~0_combout\);

-- Location: LCCOMB_X2_Y5_N0
\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\ = (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\);

-- Location: LCCOMB_X4_Y6_N22
\register_5_bit_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ = (!\register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N12
\control_matrix|IR_LOAD\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|IR_LOAD~combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|IR_LOAD~combout\);

-- Location: LCCOMB_X4_Y6_N30
\register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ = (\clk~combout\ & \control_matrix|IR_LOAD~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datad => \control_matrix|IR_LOAD~combout\,
	combout => \register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X4_Y6_N8
\register_5_bit_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ = (\MD_BUS~combout\(2) & (!\register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ & ((!\register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\) # 
-- (!\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\MD_BUS~combout\(2) & (((!\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)) # 
-- (!\register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(2),
	datab => \register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X4_Y6_N16
\register_5_bit_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N18
\control_matrix|MD_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_BUS_SEL~2_combout\ = (!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & (!\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|MD_BUS_SEL~2_combout\);

-- Location: LCCOMB_X3_Y6_N30
\control_matrix|PC_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_BUS_SEL~2_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\ & ((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\control_matrix|PC_BUS_SEL~1_combout\)) # (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & ((\control_matrix|MD_BUS_SEL~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|PC_BUS_SEL~1_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_matrix|MD_BUS_SEL~2_combout\,
	combout => \control_matrix|PC_BUS_SEL~2_combout\);

-- Location: LCCOMB_X6_Y6_N28
\control_matrix|GROUP_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|GROUP_1~0_combout\ = (!\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & !\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|GROUP_1~0_combout\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_BUS[3]~I\ : cycloneii_io
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
	padio => ww_MD_BUS(3),
	combout => \MD_BUS~combout\(3));

-- Location: LCCOMB_X4_Y6_N18
\register_5_bit_0|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\ = (\register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ & (!\MD_BUS~combout\(3) & (!\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\))) # 
-- (!\register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ & (((!\register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\) # (!\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\MD_BUS~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \MD_BUS~combout\(3),
	datac => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N24
\register_5_bit_0|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ = (\clk~combout\ & (\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\clk~combout\ & ((\register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \clk~combout\,
	combout => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_BUS[11]~I\ : cycloneii_io
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
	padio => ww_MD_BUS(11),
	combout => \MD_BUS~combout\(11));

-- Location: LCCOMB_X7_Y6_N28
\control_matrix|PC_LOAD_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~2_combout\ = (\control_matrix|GROUP_1~0_combout\ & (!\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & !\MD_BUS~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_matrix|GROUP_1~0_combout\,
	datac => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \MD_BUS~combout\(11),
	combout => \control_matrix|PC_LOAD_HI~2_combout\);

-- Location: LCCOMB_X4_Y6_N4
\control_matrix|LINK_OUT_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LINK_OUT_SEL~0_combout\ = (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|LINK_OUT_SEL~0_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_BUS[8]~I\ : cycloneii_io
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
	padio => ww_MD_BUS(8),
	combout => \MD_BUS~combout\(8));

-- Location: LCCOMB_X7_Y6_N20
\control_matrix|PC_LOAD_HI~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~3_combout\ = (\control_matrix|PC_LOAD_HI~2_combout\ & (\control_matrix|LINK_OUT_SEL~0_combout\ & ((\control_matrix|SKIP_MASTER~0_combout\) # (!\MD_BUS~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|SKIP_MASTER~0_combout\,
	datab => \control_matrix|PC_LOAD_HI~2_combout\,
	datac => \control_matrix|LINK_OUT_SEL~0_combout\,
	datad => \MD_BUS~combout\(8),
	combout => \control_matrix|PC_LOAD_HI~3_combout\);

-- Location: LCCOMB_X3_Y6_N20
\control_matrix|PC_BUS_SEL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_BUS_SEL~3_combout\ = (\control_matrix|PC_BUS_SEL~0_combout\) # ((\control_matrix|PC_BUS_SEL~2_combout\) # (\control_matrix|PC_LOAD_HI~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|PC_BUS_SEL~0_combout\,
	datab => \control_matrix|PC_BUS_SEL~2_combout\,
	datad => \control_matrix|PC_LOAD_HI~3_combout\,
	combout => \control_matrix|PC_BUS_SEL~3_combout\);

-- Location: LCCOMB_X3_Y6_N18
\control_matrix|PC_LOAD_LO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_LO~0_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_matrix|PC_LOAD_LO~0_combout\);

-- Location: LCCOMB_X6_Y6_N22
\control_matrix|decoder_3_to_6_0|and_3_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|decoder_3_to_6_0|and_3_5|output~0_combout\ = (!\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & !\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|decoder_3_to_6_0|and_3_5|output~0_combout\);

-- Location: LCCOMB_X3_Y6_N16
\control_matrix|PC_LOAD_HI~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~7_combout\ = (\control_matrix|OPR_INS~0_combout\ & (\control_matrix|PC_LOAD_LO~0_combout\ & (!\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & \control_matrix|decoder_3_to_6_0|and_3_5|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|OPR_INS~0_combout\,
	datab => \control_matrix|PC_LOAD_LO~0_combout\,
	datac => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \control_matrix|decoder_3_to_6_0|and_3_5|output~0_combout\,
	combout => \control_matrix|PC_LOAD_HI~7_combout\);

-- Location: LCCOMB_X5_Y6_N20
\control_matrix|PC_BUS_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_BUS_SEL~1_combout\ = (!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- !\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|PC_BUS_SEL~1_combout\);

-- Location: LCCOMB_X3_Y6_N8
\control_matrix|PC_LOAD_HI~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~9_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\control_matrix|PC_BUS_SEL~1_combout\ & 
-- (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_matrix|PC_BUS_SEL~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_matrix|PC_LOAD_HI~9_combout\);

-- Location: LCCOMB_X2_Y5_N18
\control_matrix|PC_LOAD_HI~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~5_combout\ = (!\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\ & \IRQ~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\,
	datad => \IRQ~combout\,
	combout => \control_matrix|PC_LOAD_HI~5_combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y5_N28
\control_matrix|PC_LOAD_HI~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~4_combout\ = (\control_matrix|decoder_3_to_6_0|and_3_2|output~0_combout\ & (\IS_ZERO_LAST~combout\ & (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|decoder_3_to_6_0|and_3_2|output~0_combout\,
	datab => \IS_ZERO_LAST~combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\,
	combout => \control_matrix|PC_LOAD_HI~4_combout\);

-- Location: LCCOMB_X3_Y5_N10
\control_matrix|ALU_INC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_INC~0_combout\ = (!\control_matrix|PC_LOAD_HI~6_combout\ & (!\control_matrix|PC_LOAD_HI~5_combout\ & ((\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\control_matrix|PC_LOAD_HI~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|PC_LOAD_HI~6_combout\,
	datab => \control_matrix|PC_LOAD_HI~5_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_matrix|PC_LOAD_HI~4_combout\,
	combout => \control_matrix|ALU_INC~0_combout\);

-- Location: LCCOMB_X3_Y6_N26
\control_matrix|PC_LOAD_HI\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~combout\ = (\control_matrix|PC_LOAD_HI~7_combout\) # ((\control_matrix|PC_LOAD_HI~9_combout\) # ((\control_matrix|PC_LOAD_HI~3_combout\) # (!\control_matrix|ALU_INC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|PC_LOAD_HI~7_combout\,
	datab => \control_matrix|PC_LOAD_HI~9_combout\,
	datac => \control_matrix|ALU_INC~0_combout\,
	datad => \control_matrix|PC_LOAD_HI~3_combout\,
	combout => \control_matrix|PC_LOAD_HI~combout\);

-- Location: LCCOMB_X3_Y6_N0
\control_matrix|PC_LOAD_LO~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_LO~1_combout\ = (\control_matrix|PC_BUS_SEL~1_combout\ & ((\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\) # ((\control_matrix|PC_LOAD_LO~0_combout\ & 
-- \control_matrix|decoder_3_to_6_0|and_3_5|output~0_combout\)))) # (!\control_matrix|PC_BUS_SEL~1_combout\ & (\control_matrix|PC_LOAD_LO~0_combout\ & ((\control_matrix|decoder_3_to_6_0|and_3_5|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|PC_BUS_SEL~1_combout\,
	datab => \control_matrix|PC_LOAD_LO~0_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\,
	datad => \control_matrix|decoder_3_to_6_0|and_3_5|output~0_combout\,
	combout => \control_matrix|PC_LOAD_LO~1_combout\);

-- Location: LCCOMB_X3_Y6_N10
\control_matrix|PC_LOAD_LO\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_LO~combout\ = (\control_matrix|PC_LOAD_LO~1_combout\) # ((\control_matrix|PC_LOAD_HI~3_combout\) # (!\control_matrix|ALU_INC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_matrix|PC_LOAD_LO~1_combout\,
	datac => \control_matrix|ALU_INC~0_combout\,
	datad => \control_matrix|PC_LOAD_HI~3_combout\,
	combout => \control_matrix|PC_LOAD_LO~combout\);

-- Location: LCCOMB_X4_Y6_N0
\register_5_bit_0|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ = (!\register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N14
\register_5_bit_0|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ = (\MD_BUS~combout\(4) & (!\register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ & ((!\register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\) # 
-- (!\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\)))) # (!\MD_BUS~combout\(4) & (((!\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)) # 
-- (!\register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(4),
	datab => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N2
\register_5_bit_0|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N24
\control_matrix|PC_CLR_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_CLR_HI~0_combout\ = (!\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & (\control_matrix|PC_LOAD_LO~0_combout\ & (\control_matrix|decoder_3_to_6_0|and_3_5|output~0_combout\ & \control_matrix|OPR_INS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \control_matrix|PC_LOAD_LO~0_combout\,
	datac => \control_matrix|decoder_3_to_6_0|and_3_5|output~0_combout\,
	datad => \control_matrix|OPR_INS~0_combout\,
	combout => \control_matrix|PC_CLR_HI~0_combout\);

-- Location: LCCOMB_X6_Y6_N4
\control_matrix|MA_LOAD_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_LOAD_HI~2_combout\ = (\control_matrix|MEM_INST~0_combout\ & (\control_matrix|PC_LOAD_LO~0_combout\ & (!\control_matrix|decoder_3_to_6_0|and_3_5|output~0_combout\ & \control_matrix|OPR_INS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MEM_INST~0_combout\,
	datab => \control_matrix|PC_LOAD_LO~0_combout\,
	datac => \control_matrix|decoder_3_to_6_0|and_3_5|output~0_combout\,
	datad => \control_matrix|OPR_INS~0_combout\,
	combout => \control_matrix|MA_LOAD_HI~2_combout\);

-- Location: LCCOMB_X3_Y6_N6
\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0_combout\ = (\not_reset~combout\ & !\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N24
\state_generator_0|s_state_generator_0|and_8|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|and_8|output~3_combout\ = (!\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|and_8|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N24
\state_generator_0|s_state_generator_0|and_8|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|and_8|output~combout\ = (\clk~combout\ & ((\state_generator_0|t_state_generator_0|or_2|output~1_combout\) # ((\state_generator_0|t_state_generator_0|and_2|output~0_combout\) # 
-- (\state_generator_0|s_state_generator_0|and_8|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|or_2|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|and_2|output~0_combout\,
	datac => \state_generator_0|s_state_generator_0|and_8|output~3_combout\,
	datad => \clk~combout\,
	combout => \state_generator_0|s_state_generator_0|and_8|output~combout\);

-- Location: LCCOMB_X1_Y6_N18
\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_1|output~0_combout\ = (!\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & (!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- ((\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\) # (\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N4
\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\ = (\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0_combout\ & ((!\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_1|output~0_combout\) # (!\state_generator_0|s_state_generator_0|and_8|output~combout\)))) 
-- # (!\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & (((\state_generator_0|s_state_generator_0|and_8|output~combout\ & !\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_1|output~0_combout\)) # 
-- (!\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datac => \state_generator_0|s_state_generator_0|and_8|output~combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_1|output~0_combout\,
	combout => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N2
\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ = (\state_generator_0|t_state_generator_0|or_2|output~2_combout\ & ((\clk~combout\ & 
-- (\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk~combout\ & ((\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\))))) # 
-- (!\state_generator_0|t_state_generator_0|or_2|output~2_combout\ & (((\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|or_2|output~2_combout\,
	datad => \clk~combout\,
	combout => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N0
\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\);

-- Location: LCCOMB_X6_Y6_N30
\control_matrix|MA_LOAD_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_LOAD_HI~1_combout\ = (!\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & (!\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\ & \control_matrix|OPR_INS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\,
	datad => \control_matrix|OPR_INS~0_combout\,
	combout => \control_matrix|MA_LOAD_HI~1_combout\);

-- Location: LCCOMB_X4_Y6_N26
\control_matrix|MA_LOAD_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_LOAD_HI~0_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|MA_LOAD_HI~0_combout\);

-- Location: LCCOMB_X5_Y6_N28
\control_matrix|MA_LOAD_HI\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_LOAD_HI~combout\ = (\control_matrix|MA_LOAD_HI~1_combout\) # ((\control_matrix|MA_LOAD_HI~0_combout\) # ((\control_matrix|MA_LOAD_HI~2_combout\ & !\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MA_LOAD_HI~2_combout\,
	datab => \control_matrix|MA_LOAD_HI~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \control_matrix|MA_LOAD_HI~0_combout\,
	combout => \control_matrix|MA_LOAD_HI~combout\);

-- Location: LCCOMB_X4_Y5_N4
\control_matrix|MA_LOAD_LO~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_LOAD_LO~7_combout\ = (\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & ((\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\) # (\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))) # 
-- (!\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_matrix|MA_LOAD_LO~7_combout\);

-- Location: LCCOMB_X3_Y5_N30
\control_matrix|MA_LOAD_LO~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_LOAD_LO~3_combout\ = (((!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & \control_matrix|MA_LOAD_LO~7_combout\)) # 
-- (!\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_matrix|MA_LOAD_LO~7_combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_matrix|MA_LOAD_LO~3_combout\);

-- Location: LCCOMB_X2_Y5_N20
\control_matrix|MA_LOAD_LO\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_LOAD_LO~combout\ = (\control_matrix|MA_LOAD_LO~3_combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MA_LOAD_LO~3_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_matrix|MA_LOAD_LO~combout\);

-- Location: LCCOMB_X6_Y6_N26
\control_matrix|MA_CLR_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_CLR_HI~0_combout\ = (!\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\ & 
-- ((\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\) # (!\control_matrix|OPR_INS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\,
	datad => \control_matrix|OPR_INS~0_combout\,
	combout => \control_matrix|MA_CLR_HI~0_combout\);

-- Location: LCCOMB_X2_Y5_N16
\control_matrix|MA_CLR_LO~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_CLR_LO~4_combout\ = (!\state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ & \IRQ~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \IRQ~combout\,
	combout => \control_matrix|MA_CLR_LO~4_combout\);

-- Location: LCCOMB_X3_Y5_N6
\control_matrix|MA_CLR_LO\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_CLR_LO~combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \control_matrix|MA_CLR_LO~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_matrix|MA_CLR_LO~4_combout\,
	combout => \control_matrix|MA_CLR_LO~combout\);

-- Location: LCCOMB_X6_Y6_N8
\control_matrix|MA_CLR_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_CLR_HI~1_combout\ = (\control_matrix|MA_CLR_HI~0_combout\) # ((\control_matrix|MA_CLR_LO~combout\) # ((!\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & \control_matrix|MA_LOAD_HI~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \control_matrix|MA_CLR_HI~0_combout\,
	datac => \control_matrix|MA_LOAD_HI~2_combout\,
	datad => \control_matrix|MA_CLR_LO~combout\,
	combout => \control_matrix|MA_CLR_HI~1_combout\);

-- Location: LCCOMB_X4_Y5_N30
\control_matrix|MD_IN_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_IN_SEL~2_combout\ = (\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & ((\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\) # (\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_matrix|MD_IN_SEL~2_combout\);

-- Location: LCCOMB_X3_Y5_N2
\control_matrix|MEM_READ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MEM_READ~0_combout\ = (((!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & \control_matrix|MD_IN_SEL~2_combout\)) # 
-- (!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_matrix|MD_IN_SEL~2_combout\,
	combout => \control_matrix|MEM_READ~0_combout\);

-- Location: LCCOMB_X3_Y5_N16
\control_matrix|MD_IN_SEL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_IN_SEL~3_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \control_matrix|MEM_READ~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_matrix|MEM_READ~0_combout\,
	combout => \control_matrix|MD_IN_SEL~3_combout\);

-- Location: LCCOMB_X3_Y6_N22
\control_matrix|MD_BUS_SEL~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_BUS_SEL~6_combout\ = (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\control_matrix|MD_BUS_SEL~2_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_matrix|MD_BUS_SEL~2_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_matrix|MD_BUS_SEL~6_combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y5_N24
\control_matrix|ALU_OUT_SEL_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_0~0_combout\ = (!\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & ((\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\) # ((\IS_AUTO_INDEX~combout\ & 
-- \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \IS_AUTO_INDEX~combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\,
	datad => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\,
	combout => \control_matrix|ALU_OUT_SEL_0~0_combout\);

-- Location: LCCOMB_X3_Y5_N14
\control_matrix|MD_BUS_SEL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_BUS_SEL~3_combout\ = (!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ $ (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_matrix|MD_BUS_SEL~3_combout\);

-- Location: LCCOMB_X4_Y5_N24
\control_matrix|MEM_INST~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MEM_INST~0_combout\ = (\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\) # ((\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_matrix|MEM_INST~0_combout\);

-- Location: LCCOMB_X3_Y5_N8
\control_matrix|MD_BUS_SEL~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_BUS_SEL~4_combout\ = (\control_matrix|IR_LOAD~combout\) # ((\control_matrix|MD_BUS_SEL~3_combout\ & \control_matrix|MEM_INST~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|IR_LOAD~combout\,
	datac => \control_matrix|MD_BUS_SEL~3_combout\,
	datad => \control_matrix|MEM_INST~0_combout\,
	combout => \control_matrix|MD_BUS_SEL~4_combout\);

-- Location: LCCOMB_X2_Y5_N30
\control_matrix|MD_BUS_SEL~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_BUS_SEL~5_combout\ = (\control_matrix|MD_BUS_SEL~6_combout\) # ((\control_matrix|ALU_OUT_SEL_0~0_combout\) # ((\control_matrix|MD_BUS_SEL~4_combout\) # (\control_matrix|PC_LOAD_HI~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MD_BUS_SEL~6_combout\,
	datab => \control_matrix|ALU_OUT_SEL_0~0_combout\,
	datac => \control_matrix|MD_BUS_SEL~4_combout\,
	datad => \control_matrix|PC_LOAD_HI~5_combout\,
	combout => \control_matrix|MD_BUS_SEL~5_combout\);

-- Location: LCCOMB_X2_Y5_N4
\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~1_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~1_combout\);

-- Location: LCCOMB_X4_Y5_N16
\control_matrix|MD_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_LOAD~0_combout\ = (\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & ((\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\) # (!\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))) # 
-- (!\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & ((\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_matrix|MD_LOAD~0_combout\);

-- Location: LCCOMB_X2_Y5_N26
\control_matrix|MD_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_LOAD~1_combout\ = (\control_matrix|decoder_3_to_6_0|and_3_2|output~0_combout\ & ((\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\) # 
-- ((\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~1_combout\ & !\control_matrix|MD_LOAD~0_combout\)))) # (!\control_matrix|decoder_3_to_6_0|and_3_2|output~0_combout\ & 
-- (\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~1_combout\ & (!\control_matrix|MD_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|decoder_3_to_6_0|and_3_2|output~0_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~1_combout\,
	datac => \control_matrix|MD_LOAD~0_combout\,
	datad => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\,
	combout => \control_matrix|MD_LOAD~1_combout\);

-- Location: LCCOMB_X3_Y5_N22
\control_matrix|MD_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_LOAD~2_combout\ = (!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_matrix|MD_LOAD~1_combout\) # ((\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\ & 
-- \control_matrix|MD_IN_SEL~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\,
	datab => \control_matrix|MD_LOAD~1_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_matrix|MD_IN_SEL~2_combout\,
	combout => \control_matrix|MD_LOAD~2_combout\);

-- Location: LCCOMB_X3_Y5_N28
\control_matrix|MD_LOAD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_LOAD~3_combout\ = (!\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & ((\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\) # ((\IS_AUTO_INDEX~combout\ & 
-- \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\,
	datab => \IS_AUTO_INDEX~combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_matrix|MD_LOAD~3_combout\);

-- Location: LCCOMB_X3_Y5_N26
\control_matrix|MD_LOAD~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_LOAD~4_combout\ = (\control_matrix|MA_CLR_LO~combout\) # ((\control_matrix|MD_LOAD~2_combout\) # ((\control_matrix|IR_LOAD~combout\) # (\control_matrix|MD_LOAD~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MA_CLR_LO~combout\,
	datab => \control_matrix|MD_LOAD~2_combout\,
	datac => \control_matrix|IR_LOAD~combout\,
	datad => \control_matrix|MD_LOAD~3_combout\,
	combout => \control_matrix|MD_LOAD~4_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_BUS[9]~I\ : cycloneii_io
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
	padio => ww_MD_BUS(9),
	combout => \MD_BUS~combout\(9));

-- Location: LCCOMB_X7_Y6_N18
\control_matrix|SR_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|SR_BUS_SEL~0_combout\ = (\MD_BUS~combout\(8) & (\control_matrix|LINK_OUT_SEL~0_combout\ & (\MD_BUS~combout\(9) & \control_matrix|PC_LOAD_HI~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(8),
	datab => \control_matrix|LINK_OUT_SEL~0_combout\,
	datac => \MD_BUS~combout\(9),
	datad => \control_matrix|PC_LOAD_HI~2_combout\,
	combout => \control_matrix|SR_BUS_SEL~0_combout\);

-- Location: LCCOMB_X5_Y6_N14
\control_matrix|ALU_CLEAR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_CLEAR~0_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\ & (!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|ALU_CLEAR~0_combout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_BUS[10]~I\ : cycloneii_io
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
	padio => ww_MD_BUS(10),
	combout => \MD_BUS~combout\(10));

-- Location: LCCOMB_X3_Y6_N24
\control_matrix|ALU_ROT_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_ROT_1~0_combout\ = (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\MD_BUS~combout\(10) & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \MD_BUS~combout\(10),
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_matrix|ALU_ROT_1~0_combout\);

-- Location: LCCOMB_X7_Y6_N24
\control_matrix|AC_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|AC_LOAD~2_combout\ = (\control_matrix|GROUP_1~1_combout\ & (\control_matrix|ALU_ROT_1~0_combout\ & ((\MD_BUS~combout\(9)) # (\MD_BUS~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|GROUP_1~1_combout\,
	datab => \control_matrix|ALU_ROT_1~0_combout\,
	datac => \MD_BUS~combout\(9),
	datad => \MD_BUS~combout\(8),
	combout => \control_matrix|AC_LOAD~2_combout\);

-- Location: LCCOMB_X6_Y6_N6
\control_matrix|AC_LOAD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|AC_LOAD~3_combout\ = (\control_matrix|ALU_OUT_SEL_2~1_combout\ & ((\control_matrix|LINK_OUT_SEL~0_combout\) # ((!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \control_matrix|AC_LOAD~2_combout\)))) # (!\control_matrix|ALU_OUT_SEL_2~1_combout\ & (((!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_matrix|AC_LOAD~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|ALU_OUT_SEL_2~1_combout\,
	datab => \control_matrix|LINK_OUT_SEL~0_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_matrix|AC_LOAD~2_combout\,
	combout => \control_matrix|AC_LOAD~3_combout\);

-- Location: LCCOMB_X5_Y6_N12
\control_matrix|AC_LOAD~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|AC_LOAD~4_combout\ = (\control_matrix|AC_LOAD~3_combout\) # ((\control_matrix|ALU_CLEAR~0_combout\ & ((\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\) # (!\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_matrix|ALU_CLEAR~0_combout\,
	datac => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_matrix|AC_LOAD~3_combout\,
	combout => \control_matrix|AC_LOAD~4_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_BUS[5]~I\ : cycloneii_io
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
	padio => ww_MD_BUS(5),
	combout => \MD_BUS~combout\(5));

-- Location: LCCOMB_X7_Y6_N22
\control_matrix|LINK_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LINK_LOAD~0_combout\ = (\MD_BUS~combout\(8)) # ((\MD_BUS~combout\(5)) # ((\MD_BUS~combout\(9)) # (\MD_BUS~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(8),
	datab => \MD_BUS~combout\(5),
	datac => \MD_BUS~combout\(9),
	datad => \MD_BUS~combout\(11),
	combout => \control_matrix|LINK_LOAD~0_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_BUS[7]~I\ : cycloneii_io
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
	padio => ww_MD_BUS(7),
	combout => \MD_BUS~combout\(7));

-- Location: LCCOMB_X7_Y6_N4
\control_matrix|LINK_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LINK_LOAD~1_combout\ = (\control_matrix|GROUP_1~1_combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\ & ((\control_matrix|LINK_LOAD~0_combout\) # (\MD_BUS~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|GROUP_1~1_combout\,
	datab => \control_matrix|LINK_LOAD~0_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\,
	datad => \MD_BUS~combout\(7),
	combout => \control_matrix|LINK_LOAD~1_combout\);

-- Location: LCCOMB_X4_Y5_N0
\control_matrix|ALU_FUNC_SEL_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_FUNC_SEL_1~0_combout\ = (\control_matrix|ALU_OUT_SEL_0~1_combout\ & (!\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|ALU_OUT_SEL_0~1_combout\,
	datab => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_matrix|ALU_FUNC_SEL_1~0_combout\);

-- Location: LCCOMB_X7_Y6_N26
\control_matrix|LINK_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LINK_LOAD~2_combout\ = (\control_matrix|ALU_FUNC_SEL_1~0_combout\) # ((!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_matrix|AC_LOAD~2_combout\) # 
-- (\control_matrix|LINK_LOAD~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|AC_LOAD~2_combout\,
	datab => \control_matrix|LINK_LOAD~1_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_matrix|ALU_FUNC_SEL_1~0_combout\,
	combout => \control_matrix|LINK_LOAD~2_combout\);

-- Location: LCCOMB_X6_Y6_N14
\control_matrix|GROUP_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|GROUP_1~1_combout\ = (\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & (!\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- !\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|GROUP_1~1_combout\);

-- Location: LCCOMB_X7_Y6_N0
\control_matrix|LINK_OUT_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LINK_OUT_SEL~1_combout\ = (\control_matrix|GROUP_1~1_combout\ & (\control_matrix|LINK_OUT_SEL~0_combout\ & \MD_BUS~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|GROUP_1~1_combout\,
	datac => \control_matrix|LINK_OUT_SEL~0_combout\,
	datad => \MD_BUS~combout\(5),
	combout => \control_matrix|LINK_OUT_SEL~1_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X7_Y6_N14
\control_matrix|LINK_COMP~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LINK_COMP~0_combout\ = (\control_matrix|LINK_OUT_SEL~0_combout\ & ((\MD_BUS~combout\(7)) # ((\INC_CARRY~combout\ & \MD_BUS~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(7),
	datab => \INC_CARRY~combout\,
	datac => \control_matrix|LINK_OUT_SEL~0_combout\,
	datad => \MD_BUS~combout\(11),
	combout => \control_matrix|LINK_COMP~0_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X7_Y6_N8
\control_matrix|LINK_COMP~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LINK_COMP~1_combout\ = (\control_matrix|GROUP_1~1_combout\ & ((\control_matrix|LINK_COMP~0_combout\) # ((\control_matrix|ALU_FUNC_SEL_1~0_combout\ & \ADD_CARRY~combout\)))) # (!\control_matrix|GROUP_1~1_combout\ & 
-- (\control_matrix|ALU_FUNC_SEL_1~0_combout\ & ((\ADD_CARRY~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|GROUP_1~1_combout\,
	datab => \control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datac => \control_matrix|LINK_COMP~0_combout\,
	datad => \ADD_CARRY~combout\,
	combout => \control_matrix|LINK_COMP~1_combout\);

-- Location: LCCOMB_X4_Y5_N10
\control_matrix|ALU_OUT_SEL_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_0~1_combout\ = (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_matrix|ALU_OUT_SEL_0~1_combout\);

-- Location: LCCOMB_X4_Y5_N6
\control_matrix|ALU_FUNC_SEL_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_FUNC_SEL_0~0_combout\ = (\control_matrix|ALU_OUT_SEL_0~1_combout\ & (\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|ALU_OUT_SEL_0~1_combout\,
	datab => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_matrix|ALU_FUNC_SEL_0~0_combout\);

-- Location: LCCOMB_X2_Y5_N14
\control_matrix|ALU_OUT_SEL_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_0~3_combout\ = (\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~1_combout\ & (\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- !\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|ALU_OUT_SEL_0~3_combout\);

-- Location: LCCOMB_X2_Y5_N24
\control_matrix|ALU_OUT_SEL_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_0~4_combout\ = (!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_matrix|ALU_OUT_SEL_0~2_combout\) # ((\control_matrix|PC_LOAD_HI~4_combout\) # 
-- (\control_matrix|ALU_OUT_SEL_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|ALU_OUT_SEL_0~2_combout\,
	datab => \control_matrix|PC_LOAD_HI~4_combout\,
	datac => \control_matrix|ALU_OUT_SEL_0~3_combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_matrix|ALU_OUT_SEL_0~4_combout\);

-- Location: LCCOMB_X2_Y5_N2
\control_matrix|ALU_OUT_SEL_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_0~5_combout\ = (\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\control_matrix|MA_CLR_LO~4_combout\ & 
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- ((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\) # ((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_matrix|MA_CLR_LO~4_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_matrix|ALU_OUT_SEL_0~5_combout\);

-- Location: LCCOMB_X2_Y5_N8
\control_matrix|ALU_OUT_SEL_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_0~6_combout\ = (\control_matrix|ALU_OUT_SEL_0~4_combout\) # ((\control_matrix|ALU_OUT_SEL_0~0_combout\) # ((\control_matrix|ALU_OUT_SEL_0~5_combout\ & 
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|ALU_OUT_SEL_0~4_combout\,
	datab => \control_matrix|ALU_OUT_SEL_0~5_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_matrix|ALU_OUT_SEL_0~0_combout\,
	combout => \control_matrix|ALU_OUT_SEL_0~6_combout\);

-- Location: LCCOMB_X7_Y6_N30
\control_matrix|SR_BUS_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|SR_BUS_SEL~1_combout\ = (\control_matrix|PC_LOAD_HI~8_combout\ & (\MD_BUS~combout\(9) & (!\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & \MD_BUS~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|PC_LOAD_HI~8_combout\,
	datab => \MD_BUS~combout\(9),
	datac => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \MD_BUS~combout\(8),
	combout => \control_matrix|SR_BUS_SEL~1_combout\);

-- Location: LCCOMB_X6_Y6_N20
\control_matrix|ALU_OUT_SEL_1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_1~combout\ = (\control_matrix|ALU_CLEAR~0_combout\ & ((\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\) # ((\control_matrix|LINK_OUT_SEL~0_combout\ & \control_matrix|SR_BUS_SEL~1_combout\)))) # 
-- (!\control_matrix|ALU_CLEAR~0_combout\ & (\control_matrix|LINK_OUT_SEL~0_combout\ & ((\control_matrix|SR_BUS_SEL~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|ALU_CLEAR~0_combout\,
	datab => \control_matrix|LINK_OUT_SEL~0_combout\,
	datac => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_matrix|SR_BUS_SEL~1_combout\,
	combout => \control_matrix|ALU_OUT_SEL_1~combout\);

-- Location: LCCOMB_X6_Y6_N2
\control_matrix|CLA_MASTER~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|CLA_MASTER~0_combout\ = (!\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & (\control_matrix|GROUP_1~0_combout\ & ((\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\) # (!\MD_BUS~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \control_matrix|GROUP_1~0_combout\,
	datac => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \MD_BUS~combout\(11),
	combout => \control_matrix|CLA_MASTER~0_combout\);

-- Location: LCCOMB_X6_Y6_N12
\control_matrix|ALU_OUT_SEL_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_2~1_combout\ = (\control_matrix|CLA_MASTER~0_combout\) # ((\control_matrix|SR_BUS_SEL~1_combout\) # ((\control_matrix|ALU_OUT_SEL_2~0_combout\ & \control_matrix|GROUP_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|ALU_OUT_SEL_2~0_combout\,
	datab => \control_matrix|CLA_MASTER~0_combout\,
	datac => \control_matrix|GROUP_1~1_combout\,
	datad => \control_matrix|SR_BUS_SEL~1_combout\,
	combout => \control_matrix|ALU_OUT_SEL_2~1_combout\);

-- Location: LCCOMB_X6_Y6_N18
\control_matrix|ALU_OUT_SEL_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_2~2_combout\ = (\control_matrix|ALU_OUT_SEL_2~1_combout\ & ((\control_matrix|LINK_OUT_SEL~0_combout\) # ((!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \control_matrix|AC_LOAD~2_combout\)))) # (!\control_matrix|ALU_OUT_SEL_2~1_combout\ & (((!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_matrix|AC_LOAD~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|ALU_OUT_SEL_2~1_combout\,
	datab => \control_matrix|LINK_OUT_SEL~0_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_matrix|AC_LOAD~2_combout\,
	combout => \control_matrix|ALU_OUT_SEL_2~2_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_BUS[6]~I\ : cycloneii_io
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
	padio => ww_MD_BUS(6),
	combout => \MD_BUS~combout\(6));

-- Location: LCCOMB_X7_Y6_N2
\control_matrix|ALU_COMP~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_COMP~0_combout\ = (\control_matrix|GROUP_1~1_combout\ & (\control_matrix|LINK_OUT_SEL~0_combout\ & \MD_BUS~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|GROUP_1~1_combout\,
	datac => \control_matrix|LINK_OUT_SEL~0_combout\,
	datad => \MD_BUS~combout\(6),
	combout => \control_matrix|ALU_COMP~0_combout\);

-- Location: LCCOMB_X3_Y5_N4
\control_matrix|ALU_INC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_INC~1_combout\ = (\IS_AUTO_INDEX~combout\ & !\state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IS_AUTO_INDEX~combout\,
	datad => \state_generator_0|s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_matrix|ALU_INC~1_combout\);

-- Location: LCCOMB_X6_Y6_N16
\control_matrix|ALU_INC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_INC~2_combout\ = (\control_matrix|PC_BUS_SEL~1_combout\) # ((\control_matrix|GROUP_1~1_combout\ & (!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & \MD_BUS~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|PC_BUS_SEL~1_combout\,
	datab => \control_matrix|GROUP_1~1_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \MD_BUS~combout\(11),
	combout => \control_matrix|ALU_INC~2_combout\);

-- Location: LCCOMB_X3_Y5_N18
\control_matrix|ALU_INC~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_INC~3_combout\ = ((\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\ & ((\control_matrix|ALU_INC~1_combout\) # (\control_matrix|ALU_INC~2_combout\)))) # (!\control_matrix|ALU_INC~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|ALU_INC~0_combout\,
	datab => \control_matrix|ALU_INC~1_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\,
	datad => \control_matrix|ALU_INC~2_combout\,
	combout => \control_matrix|ALU_INC~3_combout\);

-- Location: LCCOMB_X6_Y6_N10
\control_matrix|ALU_CLEAR\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_CLEAR~combout\ = (\control_matrix|ALU_CLEAR~0_combout\ & (((\control_matrix|LINK_OUT_SEL~0_combout\ & \control_matrix|CLA_MASTER~0_combout\)) # (!\control_matrix|OPR_INS~0_combout\))) # (!\control_matrix|ALU_CLEAR~0_combout\ & 
-- (((\control_matrix|LINK_OUT_SEL~0_combout\ & \control_matrix|CLA_MASTER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|ALU_CLEAR~0_combout\,
	datab => \control_matrix|OPR_INS~0_combout\,
	datac => \control_matrix|LINK_OUT_SEL~0_combout\,
	datad => \control_matrix|CLA_MASTER~0_combout\,
	combout => \control_matrix|ALU_CLEAR~combout\);

-- Location: LCCOMB_X7_Y6_N12
\control_matrix|ALU_ROT_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_ROT_1~1_combout\ = (!\state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\control_matrix|GROUP_1~1_combout\ & ((\control_matrix|ALU_ROT_1~0_combout\) # 
-- (\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_matrix|ALU_ROT_1~0_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\,
	datad => \control_matrix|GROUP_1~1_combout\,
	combout => \control_matrix|ALU_ROT_1~1_combout\);

-- Location: LCCOMB_X18_Y10_N0
\control_matrix|ALU_ROT_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_ROT_1~2_combout\ = (\control_matrix|ALU_ROT_1~1_combout\ & \MD_BUS~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_matrix|ALU_ROT_1~1_combout\,
	datad => \MD_BUS~combout\(8),
	combout => \control_matrix|ALU_ROT_1~2_combout\);

-- Location: LCCOMB_X18_Y10_N18
\control_matrix|ALU_ROT_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_ROT_2~0_combout\ = (\control_matrix|ALU_ROT_1~1_combout\ & \MD_BUS~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_matrix|ALU_ROT_1~1_combout\,
	datad => \MD_BUS~combout\(9),
	combout => \control_matrix|ALU_ROT_2~0_combout\);

-- Location: LCCOMB_X3_Y5_N20
\control_matrix|MEM_READ~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MEM_READ~1_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\control_matrix|MEM_READ~0_combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ 
-- $ (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_matrix|MEM_READ~0_combout\,
	combout => \control_matrix|MEM_READ~1_combout\);

-- Location: LCCOMB_X1_Y5_N16
\control_matrix|MEM_WRITE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MEM_WRITE~0_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\ & (!\state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & !\control_matrix|MD_LOAD~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\,
	datac => \state_generator_0|s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_matrix|MD_LOAD~0_combout\,
	combout => \control_matrix|MEM_WRITE~0_combout\);

-- Location: LCCOMB_X2_Y5_N22
\control_matrix|MEM_WRITE\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MEM_WRITE~combout\ = (\control_matrix|MD_BUS_SEL~6_combout\) # ((\control_matrix|MEM_WRITE~0_combout\) # ((\state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~1_combout\ & \control_matrix|MA_CLR_LO~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MD_BUS_SEL~6_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_6_0|and_3_1|output~1_combout\,
	datac => \control_matrix|MA_CLR_LO~4_combout\,
	datad => \control_matrix|MEM_WRITE~0_combout\,
	combout => \control_matrix|MEM_WRITE~combout\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|PC_BUS_SEL~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_BUS_SEL);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|PC_LOAD_HI~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_LOAD_HI);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|PC_LOAD_LO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_LOAD_LO);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|PC_CLR_HI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_CLR_HI);

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|IR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_LOAD);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MA_LOAD_HI~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_LOAD_HI);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MA_LOAD_LO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_LOAD_LO);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MA_CLR_HI~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_CLR_HI);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MA_CLR_LO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_CLR_LO);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MD_IN_SEL~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MD_IN_SEL);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MD_BUS_SEL~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MD_BUS_SEL);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MD_LOAD~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MD_LOAD);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|SR_BUS_SEL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SR_BUS_SEL);

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|AC_LOAD~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AC_LOAD);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|LINK_LOAD~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LINK_LOAD);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|LINK_OUT_SEL~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LINK_OUT_SEL);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|LINK_COMP~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LINK_COMP);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_FUNC_SEL_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_FUNC_SEL_0);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_FUNC_SEL_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_FUNC_SEL_1);

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|SR_BUS_SEL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_FUNC_SEL_2);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_OUT_SEL_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_OUT_SEL_0);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_OUT_SEL_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_OUT_SEL_1);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_OUT_SEL_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_OUT_SEL_2);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_COMP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_COMP);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_INC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_INC);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_CLEAR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_CLEAR);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_ROT_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_ROT_1);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_ROT_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_ROT_2);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MEM_READ~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MEM_READ);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MEM_WRITE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MEM_WRITE);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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


