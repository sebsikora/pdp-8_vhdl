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

-- DATE "01/13/2017 21:06:24"

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
	MD_BUS : IN std_logic_vector(11 DOWNTO 0);
	not_reset : IN std_logic;
	clk : IN std_logic;
	START : IN std_logic;
	STEP : IN std_logic;
	NEXT_STATE : IN std_logic;
	END_STATE : IN std_logic;
	ASSERT_CONTROL : IN std_logic;
	FP_ADDR_LOAD : IN std_logic;
	FP_EXAMINE : IN std_logic;
	FP_DEPOSIT : IN std_logic;
	HRQ : IN std_logic;
	IRQ : IN std_logic;
	IRQ_ON : IN std_logic;
	ADD_CARRY : IN std_logic;
	INC_CARRY : IN std_logic;
	IS_ZERO_LAST : IN std_logic;
	IS_ZERO : IN std_logic;
	IS_NEG : IN std_logic;
	IS_AUTO_INDEX : IN std_logic;
	LINK_VALUE : IN std_logic;
	HLT_indicator : OUT std_logic;
	RUN_indicator : OUT std_logic;
	PC_BUS_SEL : OUT std_logic;
	PC_LOAD_HI : OUT std_logic;
	PC_LOAD_LO : OUT std_logic;
	PC_CLR_HI : OUT std_logic;
	PC_CLR_LO : OUT std_logic;
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
-- START	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- STEP	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_ADDR_LOAD	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_EXAMINE	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_DEPOSIT	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HLT_indicator	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RUN_indicator	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_BUS_SEL	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_LOAD_HI	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_LOAD_LO	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_CLR_HI	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_CLR_LO	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_LOAD_HI	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_LOAD_LO	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_BUS_SEL	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_CLR_HI	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MA_CLR_LO	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_IN_SEL	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_BUS_SEL	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_CLR	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MD_LOAD	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SR_BUS_SEL	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AC_LOAD	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LINK_LOAD	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LINK_OUT_SEL	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LINK_COMP	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_FUNC_SEL_0	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_FUNC_SEL_1	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_FUNC_SEL_2	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_OUT_SEL_0	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_OUT_SEL_1	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_OUT_SEL_2	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_COMP	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_INC	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_CLEAR	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_ROT_1	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALU_ROT_2	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MEM_READ	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MEM_WRITE	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IS_NEG	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IS_ZERO	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[3]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[0]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[1]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[2]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[5]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[6]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LINK_VALUE	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IS_ZERO_LAST	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRQ	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRQ_ON	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[4]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IS_AUTO_INDEX	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INC_CARRY	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD_CARRY	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NEXT_STATE	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ASSERT_CONTROL	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- END_STATE	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[11]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[8]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[7]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[9]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS[10]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HRQ	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_MD_BUS : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_STEP : std_logic;
SIGNAL ww_NEXT_STATE : std_logic;
SIGNAL ww_END_STATE : std_logic;
SIGNAL ww_ASSERT_CONTROL : std_logic;
SIGNAL ww_FP_ADDR_LOAD : std_logic;
SIGNAL ww_FP_EXAMINE : std_logic;
SIGNAL ww_FP_DEPOSIT : std_logic;
SIGNAL ww_HRQ : std_logic;
SIGNAL ww_IRQ : std_logic;
SIGNAL ww_IRQ_ON : std_logic;
SIGNAL ww_ADD_CARRY : std_logic;
SIGNAL ww_INC_CARRY : std_logic;
SIGNAL ww_IS_ZERO_LAST : std_logic;
SIGNAL ww_IS_ZERO : std_logic;
SIGNAL ww_IS_NEG : std_logic;
SIGNAL ww_IS_AUTO_INDEX : std_logic;
SIGNAL ww_LINK_VALUE : std_logic;
SIGNAL ww_HLT_indicator : std_logic;
SIGNAL ww_RUN_indicator : std_logic;
SIGNAL ww_PC_BUS_SEL : std_logic;
SIGNAL ww_PC_LOAD_HI : std_logic;
SIGNAL ww_PC_LOAD_LO : std_logic;
SIGNAL ww_PC_CLR_HI : std_logic;
SIGNAL ww_PC_CLR_LO : std_logic;
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
SIGNAL \state_generator_0|s_state_generator_0|and_2|output~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control_matrix|MD_BUS_SEL~3_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_matrix|END_STATE~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~4_combout\ : std_logic;
SIGNAL \control_matrix|MD_LOAD~10_combout\ : std_logic;
SIGNAL \control_matrix|MD_LOAD~3_combout\ : std_logic;
SIGNAL \HRQ~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \ASSERT_CONTROL~combout\ : std_logic;
SIGNAL \control_matrix|decoder_3_to_8_0|and_3_2|output~0_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_matrix|NEXT_STATE~6_combout\ : std_logic;
SIGNAL \END_STATE~combout\ : std_logic;
SIGNAL \IRQ~combout\ : std_logic;
SIGNAL \IRQ_ON~combout\ : std_logic;
SIGNAL \IRQ_signal~combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ : std_logic;
SIGNAL \NEXT_STATE~combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~3_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~6_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_matrix|LOAD[1]~0_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~4_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~5_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_matrix|NEXT_STATE~10_combout\ : std_logic;
SIGNAL \control_matrix|END_STATE~2_combout\ : std_logic;
SIGNAL \control_matrix|END_STATE_out~1_combout\ : std_logic;
SIGNAL \control_matrix|LOAD[1]~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~8_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~6_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~7_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~4_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~5_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~9_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ : std_logic;
SIGNAL \control_matrix|NEXT_STATE~11_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ : std_logic;
SIGNAL \control_matrix|NEXT_STATE~8_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|or_0|output~0_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|or_0|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ : std_logic;
SIGNAL \control_matrix|NEXT_STATE~7_combout\ : std_logic;
SIGNAL \control_matrix|NEXT_STATE~9_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|and_2|output~combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|and_2|output~clkctrl_outclk\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~4_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~5_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_matrix|decoder_3_to_8_0|and_3_2|output~1_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~3_combout\ : std_logic;
SIGNAL \control_matrix|PC_BUS_SEL~1_combout\ : std_logic;
SIGNAL \LINK_VALUE~combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_matrix|SKIP_MASTER~0_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_matrix|SR_BUS_SEL~0_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~2_combout\ : std_logic;
SIGNAL \control_matrix|PC_BUS_SEL~0_combout\ : std_logic;
SIGNAL \control_matrix|PC_BUS_SEL~2_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_LO~0_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~5_combout\ : std_logic;
SIGNAL \control_matrix|PC_CLR_HI~0_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~7_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~6_combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_LO~1_combout\ : std_logic;
SIGNAL \control_matrix|PC_CLR_HI~1_combout\ : std_logic;
SIGNAL \control_matrix|PC_CLR_HI~2_combout\ : std_logic;
SIGNAL \control_matrix|MA_LOAD_LO~2_combout\ : std_logic;
SIGNAL \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ : std_logic;
SIGNAL \control_matrix|MA_LOAD_HI~0_combout\ : std_logic;
SIGNAL \control_matrix|MA_LOAD_HI~1_combout\ : std_logic;
SIGNAL \control_matrix|MA_LOAD_LO~3_combout\ : std_logic;
SIGNAL \control_matrix|MEM_WRITE~10_combout\ : std_logic;
SIGNAL \control_matrix|MA_CLR_HI~0_combout\ : std_logic;
SIGNAL \control_matrix|MA_CLR_HI~1_combout\ : std_logic;
SIGNAL \control_matrix|MA_CLR_LO~2_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\ : std_logic;
SIGNAL \control_matrix|MEM_READ~0_combout\ : std_logic;
SIGNAL \control_matrix|MD_IN_SEL~2_combout\ : std_logic;
SIGNAL \control_matrix|MEM_WRITE~11_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_0~0_combout\ : std_logic;
SIGNAL \control_matrix|MD_BUS_SEL~2_combout\ : std_logic;
SIGNAL \control_matrix|MD_BUS_SEL~5_combout\ : std_logic;
SIGNAL \control_matrix|MD_BUS_SEL~4_combout\ : std_logic;
SIGNAL \control_matrix|MD_LOAD~7_combout\ : std_logic;
SIGNAL \control_matrix|MD_LOAD~8_combout\ : std_logic;
SIGNAL \control_matrix|MD_LOAD~4_combout\ : std_logic;
SIGNAL \control_matrix|MD_LOAD~11_combout\ : std_logic;
SIGNAL \control_matrix|MD_LOAD~9_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_matrix|GROUP_1~0_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_matrix|SR_BUS_SEL~1_combout\ : std_logic;
SIGNAL \control_matrix|AC_LOAD~2_combout\ : std_logic;
SIGNAL \control_matrix|GROUP_1~1_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_2~0_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_2~1_combout\ : std_logic;
SIGNAL \control_matrix|AC_LOAD~0_combout\ : std_logic;
SIGNAL \control_matrix|AC_LOAD~1_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_2~2_combout\ : std_logic;
SIGNAL \control_matrix|AC_LOAD~3_combout\ : std_logic;
SIGNAL \control_matrix|ALU_FUNC_SEL_0~0_combout\ : std_logic;
SIGNAL \control_matrix|ALU_FUNC_SEL_1~0_combout\ : std_logic;
SIGNAL \control_matrix|LINK_LOAD~0_combout\ : std_logic;
SIGNAL \control_matrix|LINK_LOAD~1_combout\ : std_logic;
SIGNAL \control_matrix|LINK_LOAD~2_combout\ : std_logic;
SIGNAL \control_matrix|LINK_OUT_SEL~0_combout\ : std_logic;
SIGNAL \ADD_CARRY~combout\ : std_logic;
SIGNAL \INC_CARRY~combout\ : std_logic;
SIGNAL \control_matrix|LINK_COMP~0_combout\ : std_logic;
SIGNAL \control_matrix|LINK_OUT_SEL~1_combout\ : std_logic;
SIGNAL \control_matrix|LINK_COMP~1_combout\ : std_logic;
SIGNAL \control_matrix|ALU_FUNC_SEL_0~1_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_0~1_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_0~2_combout\ : std_logic;
SIGNAL \IS_ZERO_LAST~combout\ : std_logic;
SIGNAL \control_matrix|PC_LOAD_HI~4_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_0~3_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_0~4_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_0~5_combout\ : std_logic;
SIGNAL \control_matrix|ALU_OUT_SEL_1~combout\ : std_logic;
SIGNAL \control_matrix|ALU_COMP~0_combout\ : std_logic;
SIGNAL \control_matrix|ALU_INC~2_combout\ : std_logic;
SIGNAL \IS_AUTO_INDEX~combout\ : std_logic;
SIGNAL \control_matrix|ALU_ROT_2~0_combout\ : std_logic;
SIGNAL \control_matrix|ALU_INC~0_combout\ : std_logic;
SIGNAL \control_matrix|ALU_INC~1_combout\ : std_logic;
SIGNAL \control_matrix|ALU_INC~3_combout\ : std_logic;
SIGNAL \control_matrix|CLA_MASTER~0_combout\ : std_logic;
SIGNAL \control_matrix|ALU_CLEAR~3_combout\ : std_logic;
SIGNAL \control_matrix|ALU_CLEAR~2_combout\ : std_logic;
SIGNAL \control_matrix|ALU_ROT_2~1_combout\ : std_logic;
SIGNAL \control_matrix|ALU_ROT_1~combout\ : std_logic;
SIGNAL \control_matrix|ALU_ROT_2~combout\ : std_logic;
SIGNAL \control_matrix|MEM_READ~1_combout\ : std_logic;
SIGNAL \control_matrix|MEM_WRITE~8_combout\ : std_logic;
SIGNAL \control_matrix|MEM_WRITE~9_combout\ : std_logic;
SIGNAL \MD_BUS~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;

BEGIN

ww_MD_BUS <= MD_BUS;
ww_not_reset <= not_reset;
ww_clk <= clk;
ww_START <= START;
ww_STEP <= STEP;
ww_NEXT_STATE <= NEXT_STATE;
ww_END_STATE <= END_STATE;
ww_ASSERT_CONTROL <= ASSERT_CONTROL;
ww_FP_ADDR_LOAD <= FP_ADDR_LOAD;
ww_FP_EXAMINE <= FP_EXAMINE;
ww_FP_DEPOSIT <= FP_DEPOSIT;
ww_HRQ <= HRQ;
ww_IRQ <= IRQ;
ww_IRQ_ON <= IRQ_ON;
ww_ADD_CARRY <= ADD_CARRY;
ww_INC_CARRY <= INC_CARRY;
ww_IS_ZERO_LAST <= IS_ZERO_LAST;
ww_IS_ZERO <= IS_ZERO;
ww_IS_NEG <= IS_NEG;
ww_IS_AUTO_INDEX <= IS_AUTO_INDEX;
ww_LINK_VALUE <= LINK_VALUE;
HLT_indicator <= ww_HLT_indicator;
RUN_indicator <= ww_RUN_indicator;
PC_BUS_SEL <= ww_PC_BUS_SEL;
PC_LOAD_HI <= ww_PC_LOAD_HI;
PC_LOAD_LO <= ww_PC_LOAD_LO;
PC_CLR_HI <= ww_PC_CLR_HI;
PC_CLR_LO <= ww_PC_CLR_LO;
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

\state_generator_0|s_state_generator_0|and_2|output~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \state_generator_0|s_state_generator_0|and_2|output~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\;

-- Location: LCCOMB_X2_Y13_N12
\control_matrix|MD_BUS_SEL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_BUS_SEL~3_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ $ 
-- (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_matrix|MD_BUS_SEL~3_combout\);

-- Location: LCCOMB_X1_Y11_N6
\register_5_bit_0|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y12_N24
\control_matrix|END_STATE~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|END_STATE~1_combout\ = (\control_matrix|GROUP_1~0_combout\ & (!\IRQ_signal~combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ & 
-- \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|GROUP_1~0_combout\,
	datab => \IRQ_signal~combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	combout => \control_matrix|END_STATE~1_combout\);

-- Location: LCCOMB_X2_Y12_N0
\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\ = (!\ASSERT_CONTROL~combout\ & (\clk~combout\ & ((\NEXT_STATE~combout\) # (\control_matrix|NEXT_STATE~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ASSERT_CONTROL~combout\,
	datab => \NEXT_STATE~combout\,
	datac => \clk~combout\,
	datad => \control_matrix|NEXT_STATE~9_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y12_N10
\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\ = (\not_reset~combout\ & (!\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~9_combout\ & 
-- ((\state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\) # (!\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~9_combout\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X4_Y12_N20
\state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~1_combout\ = (!\state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~5_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~5_combout\,
	datad => \not_reset~combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X4_Y12_N12
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

-- Location: LCCOMB_X2_Y11_N4
\register_5_bit_0|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ = (!\register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N30
\register_5_bit_0|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\ = (\register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ & (!\MD_BUS~combout\(10) & (!\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\))) 
-- # (!\register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ & (((!\register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\) # (!\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\MD_BUS~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \MD_BUS~combout\(10),
	datac => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y11_N18
\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & 
-- ((\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~4_combout\,
	combout => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N6
\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\HRQ~combout\) # ((!\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HRQ~combout\,
	datac => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y12_N12
\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~3_combout\ = (\clk~combout\ & ((\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~2_combout\)) # 
-- (!\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_matrix|END_STATE_out~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \clk~combout\,
	datad => \control_matrix|END_STATE_out~1_combout\,
	combout => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X2_Y11_N12
\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~4_combout\ = (\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~3_combout\ & (((!\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # 
-- (!\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~3_combout\ & ((\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~4_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~4_combout\,
	datab => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~3_combout\,
	combout => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~4_combout\);

-- Location: LCCOMB_X2_Y13_N16
\control_matrix|MD_LOAD~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_LOAD~10_combout\ = (\MD_BUS~combout\(0) & ((\MD_BUS~combout\(2)) # (!\MD_BUS~combout\(1)))) # (!\MD_BUS~combout\(0) & ((\MD_BUS~combout\(1)) # (!\MD_BUS~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MD_BUS~combout\(0),
	datac => \MD_BUS~combout\(2),
	datad => \MD_BUS~combout\(1),
	combout => \control_matrix|MD_LOAD~10_combout\);

-- Location: LCCOMB_X2_Y13_N6
\control_matrix|MD_LOAD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_LOAD~3_combout\ = (!\MD_BUS~combout\(2) & ((\MD_BUS~combout\(1) & ((!\MD_BUS~combout\(0)))) # (!\MD_BUS~combout\(1) & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \MD_BUS~combout\(0),
	datac => \MD_BUS~combout\(2),
	datad => \MD_BUS~combout\(1),
	combout => \control_matrix|MD_LOAD~3_combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\HRQ~I\ : cycloneii_io
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
	padio => ww_HRQ,
	combout => \HRQ~combout\);

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

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ASSERT_CONTROL~I\ : cycloneii_io
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
	padio => ww_ASSERT_CONTROL,
	combout => \ASSERT_CONTROL~combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X5_Y12_N8
\control_matrix|decoder_3_to_8_0|and_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|decoder_3_to_8_0|and_3_2|output~0_combout\ = (!\MD_BUS~combout\(1)) # (!\MD_BUS~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(0),
	datad => \MD_BUS~combout\(1),
	combout => \control_matrix|decoder_3_to_8_0|and_3_2|output~0_combout\);

-- Location: LCCOMB_X1_Y12_N8
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ & 
-- ((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \clk~combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y12_N18
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ = (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ & (((\state_generator_0|t_state_generator_0|or_0|output~1_combout\) # 
-- (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|or_0|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y12_N22
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

-- Location: LCCOMB_X1_Y12_N6
\control_matrix|NEXT_STATE~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|NEXT_STATE~6_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_matrix|NEXT_STATE~6_combout\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\END_STATE~I\ : cycloneii_io
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
	padio => ww_END_STATE,
	combout => \END_STATE~combout\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IRQ_ON~I\ : cycloneii_io
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
	padio => ww_IRQ_ON,
	combout => \IRQ_ON~combout\);

-- Location: LCCOMB_X4_Y12_N10
IRQ_signal : cycloneii_lcell_comb
-- Equation(s):
-- \IRQ_signal~combout\ = (\IRQ~combout\ & \IRQ_ON~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IRQ~combout\,
	datad => \IRQ_ON~combout\,
	combout => \IRQ_signal~combout\);

-- Location: LCCOMB_X1_Y12_N30
\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ = (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NEXT_STATE~I\ : cycloneii_io
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
	padio => ww_NEXT_STATE,
	combout => \NEXT_STATE~combout\);

-- Location: LCCOMB_X4_Y12_N4
\state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~2_combout\ = (!\ASSERT_CONTROL~combout\ & \clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ASSERT_CONTROL~combout\,
	datad => \clk~combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~2_combout\);

-- Location: LCCOMB_X4_Y12_N30
\state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~3_combout\ = (\state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & (\state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~2_combout\ & 
-- ((\NEXT_STATE~combout\) # (\control_matrix|NEXT_STATE~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datab => \NEXT_STATE~combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~2_combout\,
	datad => \control_matrix|NEXT_STATE~9_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~3_combout\);

-- Location: LCCOMB_X4_Y12_N24
\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~6_combout\ = (!\state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & (!\ASSERT_CONTROL~combout\ & ((\NEXT_STATE~combout\) # 
-- (\control_matrix|NEXT_STATE~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datab => \NEXT_STATE~combout\,
	datac => \ASSERT_CONTROL~combout\,
	datad => \control_matrix|NEXT_STATE~9_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~6_combout\);

-- Location: LCCOMB_X4_Y12_N16
\state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~0_combout\ = (\state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\) # (((!\control_matrix|END_STATE_out~1_combout\ & 
-- !\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~6_combout\)) # (!\state_generator_0|s_state_generator_0|and_2|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datab => \control_matrix|END_STATE_out~1_combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~6_combout\,
	datad => \state_generator_0|s_state_generator_0|and_2|output~combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X4_Y12_N26
\state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~3_combout\ = (\NEXT_STATE~combout\ & (!\END_STATE~combout\ & (!\ASSERT_CONTROL~combout\ & !\state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEXT_STATE~combout\,
	datab => \END_STATE~combout\,
	datac => \ASSERT_CONTROL~combout\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~3_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X5_Y12_N30
\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\ = (!\MD_BUS~combout\(3) & ((!\MD_BUS~combout\(1)) # (!\MD_BUS~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(0),
	datab => \MD_BUS~combout\(3),
	datad => \MD_BUS~combout\(1),
	combout => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y12_N14
\state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ = (!\END_STATE~combout\ & (!\ASSERT_CONTROL~combout\ & !\state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \END_STATE~combout\,
	datac => \ASSERT_CONTROL~combout\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y12_N2
\control_matrix|LOAD[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LOAD[1]~0_combout\ = (\control_matrix|GROUP_1~0_combout\ & (\IRQ_ON~combout\ & (\IRQ~combout\ & !\ASSERT_CONTROL~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|GROUP_1~0_combout\,
	datab => \IRQ_ON~combout\,
	datac => \IRQ~combout\,
	datad => \ASSERT_CONTROL~combout\,
	combout => \control_matrix|LOAD[1]~0_combout\);

-- Location: LCCOMB_X4_Y12_N8
\state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\ = (\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\) # ((\state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\) # 
-- (\control_matrix|LOAD[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\,
	datad => \control_matrix|LOAD[1]~0_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y12_N28
\state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~4_combout\ = (!\control_matrix|END_STATE~2_combout\ & ((\control_matrix|NEXT_STATE~9_combout\ & ((\state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\))) # 
-- (!\control_matrix|NEXT_STATE~9_combout\ & (\state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|END_STATE~2_combout\,
	datab => \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~3_combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\,
	datad => \control_matrix|NEXT_STATE~9_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~4_combout\);

-- Location: LCCOMB_X4_Y12_N18
\state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~5_combout\ = (\state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~1_combout\ & (!\state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~0_combout\ & 
-- ((!\state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~4_combout\) # (!\state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~3_combout\)))) # (!\state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~1_combout\ & 
-- (((!\state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~4_combout\)) # (!\state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~3_combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~0_combout\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~4_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~5_combout\);

-- Location: LCCOMB_X3_Y12_N10
\state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ = (GLOBAL(\state_generator_0|s_state_generator_0|and_2|output~clkctrl_outclk\) & (\state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\state_generator_0|s_state_generator_0|and_2|output~clkctrl_outclk\) & ((\state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~5_combout\,
	datad => \state_generator_0|s_state_generator_0|and_2|output~clkctrl_outclk\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y12_N28
\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\ = (!\state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & (!\state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & 
-- \state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y12_N30
\control_matrix|NEXT_STATE~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|NEXT_STATE~10_combout\ = (\IRQ_ON~combout\ & (\IRQ~combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRQ_ON~combout\,
	datab => \IRQ~combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\,
	combout => \control_matrix|NEXT_STATE~10_combout\);

-- Location: LCCOMB_X3_Y12_N20
\control_matrix|END_STATE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|END_STATE~2_combout\ = (\control_matrix|END_STATE~1_combout\) # ((\control_matrix|NEXT_STATE~10_combout\) # ((!\IRQ_signal~combout\ & \control_matrix|NEXT_STATE~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|END_STATE~1_combout\,
	datab => \IRQ_signal~combout\,
	datac => \control_matrix|NEXT_STATE~10_combout\,
	datad => \control_matrix|NEXT_STATE~11_combout\,
	combout => \control_matrix|END_STATE~2_combout\);

-- Location: LCCOMB_X3_Y12_N22
\control_matrix|END_STATE_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|END_STATE_out~1_combout\ = (!\ASSERT_CONTROL~combout\ & ((\END_STATE~combout\) # (\control_matrix|END_STATE~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \END_STATE~combout\,
	datac => \control_matrix|END_STATE~2_combout\,
	datad => \ASSERT_CONTROL~combout\,
	combout => \control_matrix|END_STATE_out~1_combout\);

-- Location: LCCOMB_X4_Y12_N0
\control_matrix|LOAD[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LOAD[1]~1_combout\ = (\control_matrix|NEXT_STATE~9_combout\ & (!\control_matrix|END_STATE~2_combout\ & ((\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\) # (\control_matrix|LOAD[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|NEXT_STATE~9_combout\,
	datab => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\,
	datac => \control_matrix|END_STATE~2_combout\,
	datad => \control_matrix|LOAD[1]~0_combout\,
	combout => \control_matrix|LOAD[1]~1_combout\);

-- Location: LCCOMB_X4_Y12_N22
\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~8_combout\ = (\not_reset~combout\ & (!\control_matrix|END_STATE_out~1_combout\ & (!\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~9_combout\ & 
-- !\control_matrix|LOAD[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \control_matrix|END_STATE_out~1_combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~9_combout\,
	datad => \control_matrix|LOAD[1]~1_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~8_combout\);

-- Location: LCCOMB_X2_Y12_N6
\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~6_combout\ = (\state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\) # (\ASSERT_CONTROL~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \ASSERT_CONTROL~combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~6_combout\);

-- Location: LCCOMB_X3_Y12_N8
\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~7_combout\ = (\state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\) # ((\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~6_combout\) # 
-- ((!\NEXT_STATE~combout\ & !\control_matrix|NEXT_STATE~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datab => \NEXT_STATE~combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~6_combout\,
	datad => \control_matrix|NEXT_STATE~9_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~7_combout\);

-- Location: LCCOMB_X1_Y12_N4
\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~4_combout\ = (\clk~combout\ & (!\END_STATE~combout\ & (\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\ & !\ASSERT_CONTROL~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \END_STATE~combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\,
	datad => \ASSERT_CONTROL~combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~4_combout\);

-- Location: LCCOMB_X2_Y12_N12
\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~5_combout\ = (!\control_matrix|END_STATE~2_combout\ & (\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~4_combout\ & ((\NEXT_STATE~combout\) # 
-- (\control_matrix|NEXT_STATE~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEXT_STATE~combout\,
	datab => \control_matrix|END_STATE~2_combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~4_combout\,
	datad => \control_matrix|NEXT_STATE~9_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~5_combout\);

-- Location: LCCOMB_X3_Y12_N0
\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~9_combout\ = (!\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\ & (!\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~5_combout\ & 
-- ((!\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~7_combout\) # (!\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\,
	datab => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~8_combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~7_combout\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~5_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~9_combout\);

-- Location: LCCOMB_X3_Y12_N4
\state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ = (GLOBAL(\state_generator_0|s_state_generator_0|and_2|output~clkctrl_outclk\) & (\state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\state_generator_0|s_state_generator_0|and_2|output~clkctrl_outclk\) & ((\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|and_2|output~clkctrl_outclk\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~9_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y12_N28
\state_generator_0|s_state_generator_0|decoder|and_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ = (\state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & (\state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & 
-- !\state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\);

-- Location: LCCOMB_X2_Y12_N18
\control_matrix|NEXT_STATE~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|NEXT_STATE~11_combout\ = (\control_matrix|NEXT_STATE~6_combout\ & (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((!\MD_BUS~combout\(1)) # (!\MD_BUS~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(0),
	datab => \MD_BUS~combout\(1),
	datac => \control_matrix|NEXT_STATE~6_combout\,
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_matrix|NEXT_STATE~11_combout\);

-- Location: LCCOMB_X1_Y12_N0
\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ = (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\);

-- Location: LCCOMB_X3_Y12_N30
\state_generator_0|s_state_generator_0|decoder|and_3_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ = (!\state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & (\state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & 
-- \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\);

-- Location: LCCOMB_X2_Y12_N14
\control_matrix|NEXT_STATE~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|NEXT_STATE~8_combout\ = (\MD_BUS~combout\(3) & (\control_matrix|decoder_3_to_8_0|and_3_2|output~0_combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & 
-- \state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(3),
	datab => \control_matrix|decoder_3_to_8_0|and_3_2|output~0_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	combout => \control_matrix|NEXT_STATE~8_combout\);

-- Location: LCCOMB_X2_Y12_N2
\state_generator_0|t_state_generator_0|or_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|or_0|output~0_combout\ = (\NEXT_STATE~combout\) # ((\control_matrix|NEXT_STATE~10_combout\) # ((\control_matrix|NEXT_STATE~8_combout\) # (\control_matrix|NEXT_STATE~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEXT_STATE~combout\,
	datab => \control_matrix|NEXT_STATE~10_combout\,
	datac => \control_matrix|NEXT_STATE~8_combout\,
	datad => \control_matrix|NEXT_STATE~7_combout\,
	combout => \state_generator_0|t_state_generator_0|or_0|output~0_combout\);

-- Location: LCCOMB_X2_Y12_N24
\state_generator_0|t_state_generator_0|or_0|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|or_0|output~1_combout\ = (!\ASSERT_CONTROL~combout\ & ((\END_STATE~combout\) # ((\control_matrix|NEXT_STATE~11_combout\) # (\state_generator_0|t_state_generator_0|or_0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \END_STATE~combout\,
	datab => \control_matrix|NEXT_STATE~11_combout\,
	datac => \ASSERT_CONTROL~combout\,
	datad => \state_generator_0|t_state_generator_0|or_0|output~0_combout\,
	combout => \state_generator_0|t_state_generator_0|or_0|output~1_combout\);

-- Location: LCCOMB_X1_Y12_N12
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ = (\clk~combout\ & ((\state_generator_0|t_state_generator_0|or_0|output~1_combout\ & 
-- ((!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\state_generator_0|t_state_generator_0|or_0|output~1_combout\ & (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \state_generator_0|t_state_generator_0|or_0|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y12_N2
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

-- Location: LCCOMB_X1_Y12_N14
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\clk~combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\clk~combout\ & 
-- ((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y12_N24
\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\);

-- Location: LCCOMB_X3_Y12_N18
\control_matrix|NEXT_STATE~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|NEXT_STATE~7_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ & (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & ((\MD_BUS~combout\(2)) # 
-- (\control_matrix|decoder_3_to_8_0|and_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(2),
	datab => \control_matrix|decoder_3_to_8_0|and_3_2|output~0_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	combout => \control_matrix|NEXT_STATE~7_combout\);

-- Location: LCCOMB_X3_Y12_N2
\control_matrix|NEXT_STATE~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|NEXT_STATE~9_combout\ = (\control_matrix|NEXT_STATE~11_combout\) # ((\control_matrix|NEXT_STATE~7_combout\) # ((\control_matrix|NEXT_STATE~10_combout\) # (\control_matrix|NEXT_STATE~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|NEXT_STATE~11_combout\,
	datab => \control_matrix|NEXT_STATE~7_combout\,
	datac => \control_matrix|NEXT_STATE~10_combout\,
	datad => \control_matrix|NEXT_STATE~8_combout\,
	combout => \control_matrix|NEXT_STATE~9_combout\);

-- Location: LCCOMB_X4_Y12_N6
\state_generator_0|s_state_generator_0|and_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|and_2|output~combout\ = (!\ASSERT_CONTROL~combout\ & (\clk~combout\ & ((\NEXT_STATE~combout\) # (\control_matrix|NEXT_STATE~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEXT_STATE~combout\,
	datab => \ASSERT_CONTROL~combout\,
	datac => \clk~combout\,
	datad => \control_matrix|NEXT_STATE~9_combout\,
	combout => \state_generator_0|s_state_generator_0|and_2|output~combout\);

-- Location: CLKCTRL_G0
\state_generator_0|s_state_generator_0|and_2|output~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state_generator_0|s_state_generator_0|and_2|output~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state_generator_0|s_state_generator_0|and_2|output~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y12_N16
\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\ = (!\ASSERT_CONTROL~combout\ & ((\NEXT_STATE~combout\) # (\control_matrix|NEXT_STATE~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEXT_STATE~combout\,
	datac => \ASSERT_CONTROL~combout\,
	datad => \control_matrix|NEXT_STATE~9_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X3_Y12_N6
\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\ = (\control_matrix|END_STATE~2_combout\) # ((\END_STATE~combout\ & ((!\control_matrix|NEXT_STATE~9_combout\) # 
-- (!\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\,
	datab => \END_STATE~combout\,
	datac => \control_matrix|END_STATE~2_combout\,
	datad => \control_matrix|NEXT_STATE~9_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y12_N4
\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~4_combout\ = (\clk~combout\ & (\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\ & 
-- ((!\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\) # (!\state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~4_combout\);

-- Location: LCCOMB_X2_Y12_N8
\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~5_combout\ = (\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~4_combout\ & (((!\state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\)))) # 
-- (!\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~4_combout\ & ((\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~5_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~5_combout\,
	datab => \not_reset~combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~4_combout\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~5_combout\);

-- Location: LCCOMB_X3_Y12_N14
\state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ = (GLOBAL(\state_generator_0|s_state_generator_0|and_2|output~clkctrl_outclk\) & (\state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\state_generator_0|s_state_generator_0|and_2|output~clkctrl_outclk\) & ((\state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|and_2|output~clkctrl_outclk\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~5_combout\,
	combout => \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y12_N26
\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ = (\state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & (\state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & 
-- \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\);

-- Location: LCCOMB_X3_Y12_N16
\state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~1_combout\ = (!\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\ASSERT_CONTROL~combout\ & ((\END_STATE~combout\) # (\control_matrix|END_STATE~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \END_STATE~combout\,
	datac => \control_matrix|END_STATE~2_combout\,
	datad => \ASSERT_CONTROL~combout\,
	combout => \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N12
\state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\clk~combout\ & ((\state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\ & ((\state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~1_combout\))) # 
-- (!\state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datac => \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \clk~combout\,
	combout => \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y11_N26
\state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~3_combout\ = (\state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~2_combout\ & (((!\state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # 
-- (!\state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~2_combout\ & ((\state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~3_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~3_combout\,
	datab => \not_reset~combout\,
	datac => \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y11_N20
\state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & 
-- ((\state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y13_N30
\control_matrix|decoder_3_to_8_0|and_3_2|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|decoder_3_to_8_0|and_3_2|output~1_combout\ = (!\MD_BUS~combout\(0) & (!\MD_BUS~combout\(2) & \MD_BUS~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(0),
	datac => \MD_BUS~combout\(2),
	datad => \MD_BUS~combout\(1),
	combout => \control_matrix|decoder_3_to_8_0|and_3_2|output~1_combout\);

-- Location: LCCOMB_X3_Y13_N10
\control_matrix|PC_LOAD_HI~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~3_combout\ = (!\MD_BUS~combout\(0) & (\MD_BUS~combout\(2) & !\MD_BUS~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(0),
	datac => \MD_BUS~combout\(2),
	datad => \MD_BUS~combout\(1),
	combout => \control_matrix|PC_LOAD_HI~3_combout\);

-- Location: LCCOMB_X3_Y13_N4
\control_matrix|PC_BUS_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_BUS_SEL~1_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\ & ((\control_matrix|PC_LOAD_HI~3_combout\) # ((\control_matrix|decoder_3_to_8_0|and_3_2|output~1_combout\ & 
-- \control_matrix|NEXT_STATE~6_combout\)))) # (!\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\ & (\control_matrix|decoder_3_to_8_0|and_3_2|output~1_combout\ & (\control_matrix|NEXT_STATE~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\,
	datab => \control_matrix|decoder_3_to_8_0|and_3_2|output~1_combout\,
	datac => \control_matrix|NEXT_STATE~6_combout\,
	datad => \control_matrix|PC_LOAD_HI~3_combout\,
	combout => \control_matrix|PC_BUS_SEL~1_combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y11_N8
\register_5_bit_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N10
\register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & \clk~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datac => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datad => \clk~combout\,
	combout => \register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X1_Y11_N18
\register_5_bit_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\MD_BUS~combout\(7) & (!\register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & ((!\register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\) # 
-- (!\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\MD_BUS~combout\(7) & (((!\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\)) # 
-- (!\register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(7),
	datab => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y11_N22
\register_5_bit_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y11_N24
\control_matrix|SKIP_MASTER~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|SKIP_MASTER~0_combout\ = (\MD_BUS~combout\(6)) # ((\MD_BUS~combout\(5)) # ((\LINK_VALUE~combout\ & !\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(6),
	datab => \LINK_VALUE~combout\,
	datac => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \MD_BUS~combout\(5),
	combout => \control_matrix|SKIP_MASTER~0_combout\);

-- Location: LCCOMB_X1_Y11_N0
\register_5_bit_0|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ = (!\register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N24
\register_5_bit_0|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ = (\MD_BUS~combout\(11) & (!\register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ & ((!\register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\) # 
-- (!\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\)))) # (!\MD_BUS~combout\(11) & (((!\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\)) # 
-- (!\register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(11),
	datab => \register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y11_N14
\register_5_bit_0|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y11_N24
\control_matrix|SR_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|SR_BUS_SEL~0_combout\ = (\control_matrix|GROUP_1~0_combout\ & (\MD_BUS~combout\(3) & \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|GROUP_1~0_combout\,
	datac => \MD_BUS~combout\(3),
	datad => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \control_matrix|SR_BUS_SEL~0_combout\);

-- Location: LCCOMB_X3_Y11_N14
\control_matrix|PC_LOAD_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~2_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & (\control_matrix|SR_BUS_SEL~0_combout\ & ((\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (\control_matrix|SKIP_MASTER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \control_matrix|SKIP_MASTER~0_combout\,
	datad => \control_matrix|SR_BUS_SEL~0_combout\,
	combout => \control_matrix|PC_LOAD_HI~2_combout\);

-- Location: LCCOMB_X3_Y13_N8
\control_matrix|PC_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_BUS_SEL~0_combout\ = (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & ((\control_matrix|PC_LOAD_HI~2_combout\) # ((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_matrix|PC_LOAD_HI~2_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	combout => \control_matrix|PC_BUS_SEL~0_combout\);

-- Location: LCCOMB_X2_Y13_N4
\control_matrix|PC_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_BUS_SEL~2_combout\ = (\control_matrix|PC_BUS_SEL~0_combout\) # ((\control_matrix|PC_BUS_SEL~1_combout\ & \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|PC_BUS_SEL~1_combout\,
	datab => \control_matrix|PC_BUS_SEL~0_combout\,
	datac => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_matrix|PC_BUS_SEL~2_combout\);

-- Location: LCCOMB_X1_Y12_N26
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\clk~combout\ & ((\state_generator_0|t_state_generator_0|or_0|output~1_combout\ & 
-- (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\state_generator_0|t_state_generator_0|or_0|output~1_combout\ & ((!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \state_generator_0|t_state_generator_0|or_0|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y12_N28
\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y12_N10
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

-- Location: LCCOMB_X1_Y13_N12
\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
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
	combout => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\);

-- Location: LCCOMB_X3_Y13_N14
\control_matrix|PC_LOAD_LO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_LO~0_combout\ = (!\control_matrix|NEXT_STATE~10_combout\ & (((!\control_matrix|PC_LOAD_HI~2_combout\ & !\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\)) # 
-- (!\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \control_matrix|PC_LOAD_HI~2_combout\,
	datac => \control_matrix|NEXT_STATE~10_combout\,
	datad => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\,
	combout => \control_matrix|PC_LOAD_LO~0_combout\);

-- Location: LCCOMB_X3_Y13_N24
\control_matrix|PC_LOAD_HI~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~5_combout\ = (!\control_matrix|PC_LOAD_HI~4_combout\ & ((!\control_matrix|PC_LOAD_HI~3_combout\) # (!\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|PC_LOAD_HI~4_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datad => \control_matrix|PC_LOAD_HI~3_combout\,
	combout => \control_matrix|PC_LOAD_HI~5_combout\);

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X4_Y13_N18
\control_matrix|PC_CLR_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_CLR_HI~0_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & (\MD_BUS~combout\(2) & (\MD_BUS~combout\(0) & !\MD_BUS~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datab => \MD_BUS~combout\(2),
	datac => \MD_BUS~combout\(0),
	datad => \MD_BUS~combout\(1),
	combout => \control_matrix|PC_CLR_HI~0_combout\);

-- Location: LCCOMB_X4_Y13_N8
\control_matrix|PC_LOAD_HI~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~7_combout\ = (\MD_BUS~combout\(3) & (\control_matrix|PC_CLR_HI~0_combout\ & ((!\MD_BUS~combout\(1)) # (!\MD_BUS~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(3),
	datab => \control_matrix|PC_CLR_HI~0_combout\,
	datac => \MD_BUS~combout\(0),
	datad => \MD_BUS~combout\(1),
	combout => \control_matrix|PC_LOAD_HI~7_combout\);

-- Location: LCCOMB_X4_Y13_N20
\control_matrix|PC_LOAD_HI~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~6_combout\ = ((\state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((\control_matrix|PC_LOAD_HI~7_combout\) # (!\control_matrix|PC_LOAD_HI~5_combout\)))) # (!\control_matrix|PC_LOAD_LO~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|PC_LOAD_LO~0_combout\,
	datab => \control_matrix|PC_LOAD_HI~5_combout\,
	datac => \control_matrix|PC_LOAD_HI~7_combout\,
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_matrix|PC_LOAD_HI~6_combout\);

-- Location: LCCOMB_X4_Y13_N10
\control_matrix|PC_LOAD_LO~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_LO~1_combout\ = ((\state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((\control_matrix|PC_CLR_HI~0_combout\) # (!\control_matrix|PC_LOAD_HI~5_combout\)))) # (!\control_matrix|PC_LOAD_LO~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|PC_LOAD_LO~0_combout\,
	datab => \control_matrix|PC_CLR_HI~0_combout\,
	datac => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datad => \control_matrix|PC_LOAD_HI~5_combout\,
	combout => \control_matrix|PC_LOAD_LO~1_combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X4_Y13_N4
\control_matrix|PC_CLR_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_CLR_HI~1_combout\ = (\MD_BUS~combout\(4) & ((!\MD_BUS~combout\(0)) # (!\MD_BUS~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MD_BUS~combout\(1),
	datac => \MD_BUS~combout\(0),
	datad => \MD_BUS~combout\(4),
	combout => \control_matrix|PC_CLR_HI~1_combout\);

-- Location: LCCOMB_X4_Y13_N30
\control_matrix|PC_CLR_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_CLR_HI~2_combout\ = (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & (\control_matrix|PC_CLR_HI~1_combout\ & \control_matrix|PC_CLR_HI~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datab => \control_matrix|PC_CLR_HI~1_combout\,
	datad => \control_matrix|PC_CLR_HI~0_combout\,
	combout => \control_matrix|PC_CLR_HI~2_combout\);

-- Location: LCCOMB_X3_Y13_N0
\control_matrix|MA_LOAD_LO~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_LOAD_LO~2_combout\ = (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((\MD_BUS~combout\(2) & (!\MD_BUS~combout\(1) & !\MD_BUS~combout\(0))) # (!\MD_BUS~combout\(2) & ((!\MD_BUS~combout\(0)) # 
-- (!\MD_BUS~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(2),
	datab => \MD_BUS~combout\(1),
	datac => \MD_BUS~combout\(0),
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_matrix|MA_LOAD_LO~2_combout\);

-- Location: LCCOMB_X1_Y13_N30
\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\);

-- Location: LCCOMB_X4_Y13_N24
\control_matrix|MA_LOAD_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_LOAD_HI~0_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & ((\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\) # 
-- ((\state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & \control_matrix|PC_CLR_HI~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datab => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datac => \control_matrix|PC_CLR_HI~1_combout\,
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	combout => \control_matrix|MA_LOAD_HI~0_combout\);

-- Location: LCCOMB_X4_Y13_N6
\control_matrix|MA_LOAD_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_LOAD_HI~1_combout\ = (\control_matrix|MA_LOAD_HI~0_combout\) # ((\control_matrix|MA_LOAD_LO~2_combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & \MD_BUS~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MA_LOAD_LO~2_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datac => \MD_BUS~combout\(3),
	datad => \control_matrix|MA_LOAD_HI~0_combout\,
	combout => \control_matrix|MA_LOAD_HI~1_combout\);

-- Location: LCCOMB_X3_Y13_N2
\control_matrix|MA_LOAD_LO~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_LOAD_LO~3_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & ((\control_matrix|MA_LOAD_LO~2_combout\) # ((\state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & 
-- \state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datab => \state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datad => \control_matrix|MA_LOAD_LO~2_combout\,
	combout => \control_matrix|MA_LOAD_LO~3_combout\);

-- Location: LCCOMB_X1_Y13_N20
\control_matrix|MEM_WRITE~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MEM_WRITE~10_combout\ = (\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\ & (\IRQ~combout\ & \IRQ_ON~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\,
	datac => \IRQ~combout\,
	datad => \IRQ_ON~combout\,
	combout => \control_matrix|MEM_WRITE~10_combout\);

-- Location: LCCOMB_X4_Y13_N28
\control_matrix|MA_CLR_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_CLR_HI~0_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & ((\control_matrix|MEM_WRITE~10_combout\) # ((!\control_matrix|PC_CLR_HI~1_combout\ & 
-- \state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datab => \control_matrix|MEM_WRITE~10_combout\,
	datac => \control_matrix|PC_CLR_HI~1_combout\,
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	combout => \control_matrix|MA_CLR_HI~0_combout\);

-- Location: LCCOMB_X4_Y13_N26
\control_matrix|MA_CLR_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_CLR_HI~1_combout\ = (\control_matrix|MA_CLR_HI~0_combout\) # ((\control_matrix|MA_LOAD_LO~2_combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & \MD_BUS~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MA_LOAD_LO~2_combout\,
	datab => \control_matrix|MA_CLR_HI~0_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datad => \MD_BUS~combout\(4),
	combout => \control_matrix|MA_CLR_HI~1_combout\);

-- Location: LCCOMB_X1_Y13_N2
\control_matrix|MA_CLR_LO~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MA_CLR_LO~2_combout\ = (\IRQ_ON~combout\ & (\state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\ & (\IRQ~combout\ & \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRQ_ON~combout\,
	datab => \state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\,
	datac => \IRQ~combout\,
	datad => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	combout => \control_matrix|MA_CLR_LO~2_combout\);

-- Location: LCCOMB_X2_Y13_N18
\state_generator_0|s_state_generator_0|decoder|and_3_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\ = (\state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & \state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\);

-- Location: LCCOMB_X2_Y12_N22
\control_matrix|MEM_READ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MEM_READ~0_combout\ = (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\) # ((\state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & (\control_matrix|decoder_3_to_8_0|and_3_2|output~0_combout\ & 
-- !\MD_BUS~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datab => \control_matrix|decoder_3_to_8_0|and_3_2|output~0_combout\,
	datac => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\,
	datad => \MD_BUS~combout\(2),
	combout => \control_matrix|MEM_READ~0_combout\);

-- Location: LCCOMB_X1_Y12_N16
\control_matrix|MD_IN_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_IN_SEL~2_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_matrix|MEM_READ~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_matrix|MEM_READ~0_combout\,
	combout => \control_matrix|MD_IN_SEL~2_combout\);

-- Location: LCCOMB_X3_Y13_N16
\control_matrix|MEM_WRITE~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MEM_WRITE~11_combout\ = (!\MD_BUS~combout\(0) & (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ & (!\MD_BUS~combout\(2) & \MD_BUS~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(0),
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	datac => \MD_BUS~combout\(2),
	datad => \MD_BUS~combout\(1),
	combout => \control_matrix|MEM_WRITE~11_combout\);

-- Location: LCCOMB_X3_Y13_N26
\control_matrix|ALU_OUT_SEL_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_0~0_combout\ = (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & ((\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\) # ((\IS_AUTO_INDEX~combout\ & 
-- \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IS_AUTO_INDEX~combout\,
	datab => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datad => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	combout => \control_matrix|ALU_OUT_SEL_0~0_combout\);

-- Location: LCCOMB_X3_Y13_N12
\control_matrix|MD_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_BUS_SEL~2_combout\ = (\control_matrix|ALU_OUT_SEL_0~0_combout\) # ((\control_matrix|NEXT_STATE~10_combout\) # ((\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & 
-- \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datab => \control_matrix|ALU_OUT_SEL_0~0_combout\,
	datac => \control_matrix|NEXT_STATE~10_combout\,
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	combout => \control_matrix|MD_BUS_SEL~2_combout\);

-- Location: LCCOMB_X2_Y13_N2
\control_matrix|MD_BUS_SEL~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_BUS_SEL~5_combout\ = (\control_matrix|MD_BUS_SEL~3_combout\ & (((!\MD_BUS~combout\(0) & !\MD_BUS~combout\(2))) # (!\MD_BUS~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MD_BUS_SEL~3_combout\,
	datab => \MD_BUS~combout\(0),
	datac => \MD_BUS~combout\(2),
	datad => \MD_BUS~combout\(1),
	combout => \control_matrix|MD_BUS_SEL~5_combout\);

-- Location: LCCOMB_X2_Y13_N22
\control_matrix|MD_BUS_SEL~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_BUS_SEL~4_combout\ = (\control_matrix|MD_BUS_SEL~2_combout\) # ((\state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((\control_matrix|MEM_WRITE~11_combout\) # (\control_matrix|MD_BUS_SEL~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MEM_WRITE~11_combout\,
	datab => \control_matrix|MD_BUS_SEL~2_combout\,
	datac => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datad => \control_matrix|MD_BUS_SEL~5_combout\,
	combout => \control_matrix|MD_BUS_SEL~4_combout\);

-- Location: LCCOMB_X3_Y13_N6
\control_matrix|MD_LOAD~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_LOAD~7_combout\ = (\IS_AUTO_INDEX~combout\ & (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IS_AUTO_INDEX~combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_matrix|MD_LOAD~7_combout\);

-- Location: LCCOMB_X2_Y13_N28
\control_matrix|MD_LOAD~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_LOAD~8_combout\ = (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & (((\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\) # (\control_matrix|MD_LOAD~7_combout\)))) # 
-- (!\state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datab => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datad => \control_matrix|MD_LOAD~7_combout\,
	combout => \control_matrix|MD_LOAD~8_combout\);

-- Location: LCCOMB_X2_Y13_N20
\control_matrix|MD_LOAD~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_LOAD~4_combout\ = (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\MD_BUS~combout\(0) & (!\MD_BUS~combout\(2) & \MD_BUS~combout\(1))) # (!\MD_BUS~combout\(0) & (\MD_BUS~combout\(2) & 
-- !\MD_BUS~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \MD_BUS~combout\(0),
	datac => \MD_BUS~combout\(2),
	datad => \MD_BUS~combout\(1),
	combout => \control_matrix|MD_LOAD~4_combout\);

-- Location: LCCOMB_X2_Y13_N30
\control_matrix|MD_LOAD~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_LOAD~11_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & ((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- ((\control_matrix|MD_LOAD~4_combout\))) # (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\control_matrix|MD_LOAD~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MD_LOAD~3_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_matrix|MD_LOAD~4_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|MD_LOAD~11_combout\);

-- Location: LCCOMB_X2_Y13_N10
\control_matrix|MD_LOAD~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MD_LOAD~9_combout\ = (\control_matrix|MA_CLR_LO~2_combout\) # ((\control_matrix|MD_LOAD~8_combout\) # ((\state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & \control_matrix|MD_LOAD~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MA_CLR_LO~2_combout\,
	datab => \control_matrix|MD_LOAD~8_combout\,
	datac => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datad => \control_matrix|MD_LOAD~11_combout\,
	combout => \control_matrix|MD_LOAD~9_combout\);

-- Location: LCCOMB_X2_Y11_N10
\register_5_bit_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N4
\register_5_bit_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ = (\MD_BUS~combout\(9) & (!\register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ & ((!\register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\) # 
-- (!\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\MD_BUS~combout\(9) & (((!\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\)) # 
-- (!\register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(9),
	datab => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y11_N28
\register_5_bit_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y13_N16
\control_matrix|GROUP_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|GROUP_1~0_combout\ = (\MD_BUS~combout\(2) & (\MD_BUS~combout\(0) & \MD_BUS~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(2),
	datac => \MD_BUS~combout\(0),
	datad => \MD_BUS~combout\(1),
	combout => \control_matrix|GROUP_1~0_combout\);

-- Location: LCCOMB_X2_Y11_N24
\register_5_bit_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N2
\register_5_bit_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\MD_BUS~combout\(8) & (!\register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ & ((!\register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\) # 
-- (!\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\MD_BUS~combout\(8) & (((!\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\)) # 
-- (!\register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(8),
	datab => \register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y11_N16
\register_5_bit_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & ((\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\))) # (!GLOBAL(\clk~clkctrl_outclk\) & (\register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N28
\state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\MD_BUS~combout\(3) & (\control_matrix|GROUP_1~0_combout\ & (!\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(3),
	datab => \control_matrix|GROUP_1~0_combout\,
	datac => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N18
\control_matrix|SR_BUS_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|SR_BUS_SEL~1_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & (!\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datab => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datad => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \control_matrix|SR_BUS_SEL~1_combout\);

-- Location: LCCOMB_X5_Y12_N2
\control_matrix|AC_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|AC_LOAD~2_combout\ = (!\MD_BUS~combout\(2) & (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MD_BUS~combout\(2),
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_matrix|AC_LOAD~2_combout\);

-- Location: LCCOMB_X2_Y12_N20
\control_matrix|GROUP_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|GROUP_1~1_combout\ = (\MD_BUS~combout\(2) & (\MD_BUS~combout\(1) & (!\MD_BUS~combout\(3) & \MD_BUS~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(2),
	datab => \MD_BUS~combout\(1),
	datac => \MD_BUS~combout\(3),
	datad => \MD_BUS~combout\(0),
	combout => \control_matrix|GROUP_1~1_combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y11_N4
\control_matrix|ALU_OUT_SEL_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_2~0_combout\ = (\control_matrix|GROUP_1~1_combout\ & (((\MD_BUS~combout\(6)) # (!\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\control_matrix|AC_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|AC_LOAD~0_combout\,
	datab => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \control_matrix|GROUP_1~1_combout\,
	datad => \MD_BUS~combout\(6),
	combout => \control_matrix|ALU_OUT_SEL_2~0_combout\);

-- Location: LCCOMB_X3_Y11_N22
\control_matrix|ALU_OUT_SEL_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_2~1_combout\ = (\control_matrix|CLA_MASTER~0_combout\) # ((\control_matrix|ALU_OUT_SEL_2~0_combout\) # ((!\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|CLA_MASTER~0_combout\,
	datab => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_matrix|ALU_OUT_SEL_2~0_combout\,
	datad => \state_generator_0|s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \control_matrix|ALU_OUT_SEL_2~1_combout\);

-- Location: LCCOMB_X3_Y11_N12
\control_matrix|AC_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|AC_LOAD~0_combout\ = (\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|AC_LOAD~0_combout\);

-- Location: LCCOMB_X3_Y11_N10
\control_matrix|AC_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|AC_LOAD~1_combout\ = (!\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & (\control_matrix|GROUP_1~1_combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ & 
-- !\control_matrix|AC_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \control_matrix|GROUP_1~1_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	datad => \control_matrix|AC_LOAD~0_combout\,
	combout => \control_matrix|AC_LOAD~1_combout\);

-- Location: LCCOMB_X3_Y11_N0
\control_matrix|ALU_OUT_SEL_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_2~2_combout\ = (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & ((\control_matrix|AC_LOAD~1_combout\) # ((\control_matrix|ALU_OUT_SEL_2~1_combout\ & 
-- \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \control_matrix|ALU_OUT_SEL_2~1_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datad => \control_matrix|AC_LOAD~1_combout\,
	combout => \control_matrix|ALU_OUT_SEL_2~2_combout\);

-- Location: LCCOMB_X5_Y12_N28
\control_matrix|AC_LOAD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|AC_LOAD~3_combout\ = (\control_matrix|ALU_OUT_SEL_2~2_combout\) # ((\control_matrix|AC_LOAD~2_combout\ & ((\MD_BUS~combout\(0)) # (!\MD_BUS~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(0),
	datab => \control_matrix|AC_LOAD~2_combout\,
	datac => \control_matrix|ALU_OUT_SEL_2~2_combout\,
	datad => \MD_BUS~combout\(1),
	combout => \control_matrix|AC_LOAD~3_combout\);

-- Location: LCCOMB_X5_Y12_N22
\control_matrix|ALU_FUNC_SEL_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_FUNC_SEL_0~0_combout\ = (!\MD_BUS~combout\(2) & (!\MD_BUS~combout\(1) & (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(2),
	datab => \MD_BUS~combout\(1),
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_matrix|ALU_FUNC_SEL_0~0_combout\);

-- Location: LCCOMB_X5_Y12_N0
\control_matrix|ALU_FUNC_SEL_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_FUNC_SEL_1~0_combout\ = (\MD_BUS~combout\(0) & \control_matrix|ALU_FUNC_SEL_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(0),
	datad => \control_matrix|ALU_FUNC_SEL_0~0_combout\,
	combout => \control_matrix|ALU_FUNC_SEL_1~0_combout\);

-- Location: LCCOMB_X3_Y11_N2
\control_matrix|LINK_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LINK_LOAD~0_combout\ = (((\MD_BUS~combout\(5)) # (!\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \MD_BUS~combout\(5),
	combout => \control_matrix|LINK_LOAD~0_combout\);

-- Location: LCCOMB_X3_Y11_N20
\control_matrix|LINK_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LINK_LOAD~1_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & (\control_matrix|GROUP_1~1_combout\ & ((\control_matrix|LINK_LOAD~0_combout\) # 
-- (!\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \control_matrix|GROUP_1~1_combout\,
	datad => \control_matrix|LINK_LOAD~0_combout\,
	combout => \control_matrix|LINK_LOAD~1_combout\);

-- Location: LCCOMB_X3_Y11_N26
\control_matrix|LINK_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LINK_LOAD~2_combout\ = (\control_matrix|ALU_FUNC_SEL_1~0_combout\) # ((\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & ((\control_matrix|LINK_LOAD~1_combout\) # (\control_matrix|AC_LOAD~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datac => \control_matrix|LINK_LOAD~1_combout\,
	datad => \control_matrix|AC_LOAD~1_combout\,
	combout => \control_matrix|LINK_LOAD~2_combout\);

-- Location: LCCOMB_X3_Y11_N8
\control_matrix|LINK_OUT_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LINK_OUT_SEL~0_combout\ = (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & (\control_matrix|GROUP_1~1_combout\ & 
-- \MD_BUS~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \control_matrix|GROUP_1~1_combout\,
	datad => \MD_BUS~combout\(5),
	combout => \control_matrix|LINK_OUT_SEL~0_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X5_Y11_N0
\control_matrix|LINK_COMP~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LINK_COMP~0_combout\ = ((!\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & \INC_CARRY~combout\)) # (!\register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \INC_CARRY~combout\,
	combout => \control_matrix|LINK_COMP~0_combout\);

-- Location: LCCOMB_X2_Y12_N26
\control_matrix|LINK_OUT_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LINK_OUT_SEL~1_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & (\state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & 
-- (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\ & \control_matrix|GROUP_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datab => \state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\,
	datad => \control_matrix|GROUP_1~1_combout\,
	combout => \control_matrix|LINK_OUT_SEL~1_combout\);

-- Location: LCCOMB_X5_Y12_N10
\control_matrix|LINK_COMP~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|LINK_COMP~1_combout\ = (\ADD_CARRY~combout\ & ((\control_matrix|ALU_FUNC_SEL_1~0_combout\) # ((\control_matrix|LINK_COMP~0_combout\ & \control_matrix|LINK_OUT_SEL~1_combout\)))) # (!\ADD_CARRY~combout\ & 
-- (\control_matrix|LINK_COMP~0_combout\ & (\control_matrix|LINK_OUT_SEL~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_CARRY~combout\,
	datab => \control_matrix|LINK_COMP~0_combout\,
	datac => \control_matrix|LINK_OUT_SEL~1_combout\,
	datad => \control_matrix|ALU_FUNC_SEL_1~0_combout\,
	combout => \control_matrix|LINK_COMP~1_combout\);

-- Location: LCCOMB_X5_Y12_N16
\control_matrix|ALU_FUNC_SEL_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_FUNC_SEL_0~1_combout\ = (!\MD_BUS~combout\(0) & \control_matrix|ALU_FUNC_SEL_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS~combout\(0),
	datad => \control_matrix|ALU_FUNC_SEL_0~0_combout\,
	combout => \control_matrix|ALU_FUNC_SEL_0~1_combout\);

-- Location: LCCOMB_X2_Y13_N0
\control_matrix|ALU_OUT_SEL_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_0~1_combout\ = (!\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\MD_BUS~combout\(0) & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \MD_BUS~combout\(0),
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|ALU_OUT_SEL_0~1_combout\);

-- Location: LCCOMB_X2_Y13_N14
\control_matrix|ALU_OUT_SEL_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_0~2_combout\ = (!\MD_BUS~combout\(1) & ((\MD_BUS~combout\(2) & ((\control_matrix|ALU_OUT_SEL_0~1_combout\))) # (!\MD_BUS~combout\(2) & (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datab => \control_matrix|ALU_OUT_SEL_0~1_combout\,
	datac => \MD_BUS~combout\(2),
	datad => \MD_BUS~combout\(1),
	combout => \control_matrix|ALU_OUT_SEL_0~2_combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y13_N22
\control_matrix|PC_LOAD_HI~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|PC_LOAD_HI~4_combout\ = (\control_matrix|NEXT_STATE~6_combout\ & (\IS_ZERO_LAST~combout\ & \control_matrix|decoder_3_to_8_0|and_3_2|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|NEXT_STATE~6_combout\,
	datac => \IS_ZERO_LAST~combout\,
	datad => \control_matrix|decoder_3_to_8_0|and_3_2|output~1_combout\,
	combout => \control_matrix|PC_LOAD_HI~4_combout\);

-- Location: LCCOMB_X2_Y13_N8
\control_matrix|ALU_OUT_SEL_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_0~3_combout\ = (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((\control_matrix|MEM_WRITE~11_combout\) # ((\control_matrix|ALU_OUT_SEL_0~2_combout\) # (\control_matrix|PC_LOAD_HI~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MEM_WRITE~11_combout\,
	datab => \control_matrix|ALU_OUT_SEL_0~2_combout\,
	datac => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datad => \control_matrix|PC_LOAD_HI~4_combout\,
	combout => \control_matrix|ALU_OUT_SEL_0~3_combout\);

-- Location: LCCOMB_X1_Y13_N0
\control_matrix|ALU_OUT_SEL_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_0~4_combout\ = (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & (((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & (\control_matrix|MEM_WRITE~10_combout\ & 
-- ((\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MEM_WRITE~10_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_matrix|ALU_OUT_SEL_0~4_combout\);

-- Location: LCCOMB_X2_Y13_N26
\control_matrix|ALU_OUT_SEL_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_0~5_combout\ = (\control_matrix|ALU_OUT_SEL_0~0_combout\) # ((\control_matrix|ALU_OUT_SEL_0~3_combout\) # ((\control_matrix|ALU_OUT_SEL_0~4_combout\ & 
-- \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|ALU_OUT_SEL_0~0_combout\,
	datab => \control_matrix|ALU_OUT_SEL_0~3_combout\,
	datac => \control_matrix|ALU_OUT_SEL_0~4_combout\,
	datad => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_matrix|ALU_OUT_SEL_0~5_combout\);

-- Location: LCCOMB_X6_Y12_N24
\control_matrix|ALU_OUT_SEL_1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_OUT_SEL_1~combout\ = (\control_matrix|SR_BUS_SEL~1_combout\) # (\control_matrix|ALU_FUNC_SEL_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_matrix|SR_BUS_SEL~1_combout\,
	datad => \control_matrix|ALU_FUNC_SEL_0~0_combout\,
	combout => \control_matrix|ALU_OUT_SEL_1~combout\);

-- Location: LCCOMB_X3_Y11_N30
\control_matrix|ALU_COMP~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_COMP~0_combout\ = (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & (\control_matrix|GROUP_1~1_combout\ & 
-- \MD_BUS~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \control_matrix|GROUP_1~1_combout\,
	datad => \MD_BUS~combout\(6),
	combout => \control_matrix|ALU_COMP~0_combout\);

-- Location: LCCOMB_X3_Y13_N18
\control_matrix|ALU_INC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_INC~2_combout\ = (\control_matrix|NEXT_STATE~10_combout\) # ((\state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datac => \control_matrix|NEXT_STATE~10_combout\,
	datad => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\,
	combout => \control_matrix|ALU_INC~2_combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X4_Y13_N22
\control_matrix|ALU_ROT_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_ROT_2~0_combout\ = (\control_matrix|GROUP_1~0_combout\ & (!\MD_BUS~combout\(3) & \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|GROUP_1~0_combout\,
	datac => \MD_BUS~combout\(3),
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	combout => \control_matrix|ALU_ROT_2~0_combout\);

-- Location: LCCOMB_X4_Y13_N0
\control_matrix|ALU_INC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_INC~0_combout\ = (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & ((\IS_AUTO_INDEX~combout\) # ((!\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & \control_matrix|ALU_ROT_2~0_combout\)))) # 
-- (!\state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & (!\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & ((\control_matrix|ALU_ROT_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datab => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \IS_AUTO_INDEX~combout\,
	datad => \control_matrix|ALU_ROT_2~0_combout\,
	combout => \control_matrix|ALU_INC~0_combout\);

-- Location: LCCOMB_X3_Y13_N28
\control_matrix|ALU_INC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_INC~1_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & ((\control_matrix|ALU_INC~0_combout\) # ((\control_matrix|PC_LOAD_HI~3_combout\ & 
-- \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|PC_LOAD_HI~3_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \control_matrix|ALU_INC~0_combout\,
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_matrix|ALU_INC~1_combout\);

-- Location: LCCOMB_X3_Y13_N20
\control_matrix|ALU_INC~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_INC~3_combout\ = (\control_matrix|ALU_INC~2_combout\) # ((\control_matrix|ALU_INC~1_combout\) # ((\state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & \control_matrix|PC_LOAD_HI~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datab => \control_matrix|ALU_INC~2_combout\,
	datac => \control_matrix|PC_LOAD_HI~4_combout\,
	datad => \control_matrix|ALU_INC~1_combout\,
	combout => \control_matrix|ALU_INC~3_combout\);

-- Location: LCCOMB_X4_Y13_N12
\control_matrix|CLA_MASTER~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|CLA_MASTER~0_combout\ = (\control_matrix|GROUP_1~0_combout\ & (\MD_BUS~combout\(4) & ((\register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\) # (!\MD_BUS~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|GROUP_1~0_combout\,
	datab => \register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \MD_BUS~combout\(3),
	datad => \MD_BUS~combout\(4),
	combout => \control_matrix|CLA_MASTER~0_combout\);

-- Location: LCCOMB_X4_Y13_N14
\control_matrix|ALU_CLEAR~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_CLEAR~3_combout\ = (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & (!\MD_BUS~combout\(2) & (\MD_BUS~combout\(0) & \MD_BUS~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datab => \MD_BUS~combout\(2),
	datac => \MD_BUS~combout\(0),
	datad => \MD_BUS~combout\(1),
	combout => \control_matrix|ALU_CLEAR~3_combout\);

-- Location: LCCOMB_X4_Y13_N2
\control_matrix|ALU_CLEAR~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_CLEAR~2_combout\ = (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & ((\control_matrix|ALU_CLEAR~3_combout\) # ((\control_matrix|CLA_MASTER~0_combout\ & 
-- \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datab => \control_matrix|CLA_MASTER~0_combout\,
	datac => \control_matrix|ALU_CLEAR~3_combout\,
	datad => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	combout => \control_matrix|ALU_CLEAR~2_combout\);

-- Location: LCCOMB_X3_Y11_N16
\control_matrix|ALU_ROT_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_ROT_2~1_combout\ = (\control_matrix|ALU_ROT_2~0_combout\ & ((\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\) # ((!\register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	datad => \control_matrix|ALU_ROT_2~0_combout\,
	combout => \control_matrix|ALU_ROT_2~1_combout\);

-- Location: LCCOMB_X4_Y11_N26
\control_matrix|ALU_ROT_1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_ROT_1~combout\ = (!\register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & \control_matrix|ALU_ROT_2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_matrix|ALU_ROT_2~1_combout\,
	combout => \control_matrix|ALU_ROT_1~combout\);

-- Location: LCCOMB_X4_Y11_N28
\control_matrix|ALU_ROT_2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|ALU_ROT_2~combout\ = (!\register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & \control_matrix|ALU_ROT_2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_matrix|ALU_ROT_2~1_combout\,
	combout => \control_matrix|ALU_ROT_2~combout\);

-- Location: LCCOMB_X1_Y12_N20
\control_matrix|MEM_READ~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MEM_READ~1_combout\ = (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\control_matrix|MEM_READ~0_combout\ & (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ 
-- $ (\state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_matrix|MEM_READ~0_combout\,
	combout => \control_matrix|MEM_READ~1_combout\);

-- Location: LCCOMB_X2_Y13_N24
\control_matrix|MEM_WRITE~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MEM_WRITE~8_combout\ = (\control_matrix|MD_LOAD~10_combout\ & (\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ & ((\control_matrix|decoder_3_to_8_0|and_3_2|output~1_combout\)))) # 
-- (!\control_matrix|MD_LOAD~10_combout\ & ((\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\) # ((\state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ & 
-- \control_matrix|decoder_3_to_8_0|and_3_2|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_matrix|MD_LOAD~10_combout\,
	datab => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	datac => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datad => \control_matrix|decoder_3_to_8_0|and_3_2|output~1_combout\,
	combout => \control_matrix|MEM_WRITE~8_combout\);

-- Location: LCCOMB_X1_Y13_N22
\control_matrix|MEM_WRITE~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_matrix|MEM_WRITE~9_combout\ = (\state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((\control_matrix|MEM_WRITE~8_combout\) # ((\control_matrix|MEM_WRITE~10_combout\ & 
-- \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\)))) # (!\state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & (((\control_matrix|MEM_WRITE~10_combout\ & 
-- \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datab => \control_matrix|MEM_WRITE~8_combout\,
	datac => \control_matrix|MEM_WRITE~10_combout\,
	datad => \state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\,
	combout => \control_matrix|MEM_WRITE~9_combout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\START~I\ : cycloneii_io
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
	padio => ww_START);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\STEP~I\ : cycloneii_io
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
	padio => ww_STEP);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_ADDR_LOAD~I\ : cycloneii_io
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
	padio => ww_FP_ADDR_LOAD);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_EXAMINE~I\ : cycloneii_io
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
	padio => ww_FP_EXAMINE);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_DEPOSIT~I\ : cycloneii_io
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
	padio => ww_FP_DEPOSIT);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HLT_indicator~I\ : cycloneii_io
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
	datain => \state_generator_0|s_state_generator_0|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HLT_indicator);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RUN_indicator~I\ : cycloneii_io
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
	padio => ww_RUN_indicator);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|PC_BUS_SEL~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_BUS_SEL);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|PC_LOAD_HI~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_LOAD_HI);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|PC_LOAD_LO~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_LOAD_LO);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|PC_CLR_HI~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_CLR_HI);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MA_LOAD_HI~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_LOAD_HI);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MA_LOAD_LO~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_LOAD_LO);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MA_CLR_LO~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MA_CLR_LO);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MD_IN_SEL~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MD_IN_SEL);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MD_BUS_SEL~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MD_BUS_SEL);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MD_LOAD~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MD_LOAD);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|SR_BUS_SEL~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SR_BUS_SEL);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|AC_LOAD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AC_LOAD);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|LINK_OUT_SEL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LINK_OUT_SEL);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_FUNC_SEL_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_FUNC_SEL_0);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|SR_BUS_SEL~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_FUNC_SEL_2);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_OUT_SEL_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_OUT_SEL_0);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_CLEAR~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_CLEAR);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_ROT_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_ROT_1);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|ALU_ROT_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALU_ROT_2);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_matrix|MEM_WRITE~9_combout\,
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

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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


