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

-- DATE "01/15/2017 21:01:32"

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

ENTITY 	alu_subsystem IS
    PORT (
	clk : IN std_logic;
	not_reset : IN std_logic;
	ALU_input_A : IN std_logic_vector(11 DOWNTO 0);
	ALU_input_B : IN std_logic_vector(11 DOWNTO 0);
	register_bus_input : IN std_logic_vector(11 DOWNTO 0);
	AC_input : IN std_logic_vector(11 DOWNTO 0);
	LINK_input : IN std_logic;
	LINK_OUT_SEL : IN std_logic;
	LINK_COMP : IN std_logic;
	ALU_FUNC_SEL_0 : IN std_logic;
	ALU_FUNC_SEL_1 : IN std_logic;
	ALU_FUNC_SEL_2 : IN std_logic;
	ALU_OUT_SEL_0 : IN std_logic;
	ALU_OUT_SEL_1 : IN std_logic;
	ALU_OUT_SEL_2 : IN std_logic;
	ALU_COMP : IN std_logic;
	ALU_INC : IN std_logic;
	ALU_CLEAR : IN std_logic;
	ALU_ROT_1 : IN std_logic;
	ALU_ROT_2 : IN std_logic;
	ADD_CARRY : OUT std_logic;
	INC_CARRY : OUT std_logic;
	IS_ZERO_LAST : OUT std_logic;
	IS_ZERO : OUT std_logic;
	IS_NEG : OUT std_logic;
	top_bus_output : OUT std_logic_vector(11 DOWNTO 0);
	LINK_output : OUT std_logic
	);
END alu_subsystem;

-- Design Ports Information
-- ALU_input_A[0]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_A[1]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_A[2]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_A[3]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_A[4]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_A[5]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_A[6]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_A[7]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_A[8]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_A[9]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_A[10]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_A[11]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_B[0]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_B[1]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_B[2]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_B[3]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_B[4]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_B[5]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_B[6]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_B[7]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_B[8]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_B[9]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_B[10]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_input_B[11]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LINK_OUT_SEL	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LINK_COMP	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD_CARRY	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- INC_CARRY	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IS_ZERO_LAST	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IS_ZERO	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IS_NEG	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_bus_output[0]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_bus_output[1]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_bus_output[2]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_bus_output[3]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_bus_output[4]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_bus_output[5]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_bus_output[6]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_bus_output[7]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_bus_output[8]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_bus_output[9]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_bus_output[10]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_bus_output[11]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LINK_output	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AC_input[11]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- register_bus_input[11]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_input[10]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- register_bus_input[10]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_input[9]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- register_bus_input[9]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_input[8]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- register_bus_input[8]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_input[7]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- register_bus_input[7]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_input[6]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- register_bus_input[6]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_input[5]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- register_bus_input[5]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_input[4]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- register_bus_input[4]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_input[3]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- register_bus_input[3]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_input[2]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- register_bus_input[2]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_input[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- register_bus_input[1]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_input[0]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- register_bus_input[0]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_CLEAR	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_COMP	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_OUT_SEL_0	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_OUT_SEL_1	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_FUNC_SEL_2	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_FUNC_SEL_1	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_FUNC_SEL_0	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_OUT_SEL_2	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_INC	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_ROT_2	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_ROT_1	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LINK_input	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF alu_subsystem IS
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
SIGNAL ww_ALU_input_A : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_ALU_input_B : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_register_bus_input : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_AC_input : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_LINK_input : std_logic;
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
SIGNAL ww_ADD_CARRY : std_logic;
SIGNAL ww_INC_CARRY : std_logic;
SIGNAL ww_IS_ZERO_LAST : std_logic;
SIGNAL ww_IS_ZERO : std_logic;
SIGNAL ww_IS_NEG : std_logic;
SIGNAL ww_top_bus_output : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_LINK_output : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~6_combout\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~8_combout\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~18_combout\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~20_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_5|nand_3|output~3_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_4|nand_3|output~2_combout\ : std_logic;
SIGNAL \alu_main_0|alu_or_0|or_10|output~combout\ : std_logic;
SIGNAL \alu_out_mux|output[10]~22_combout\ : std_logic;
SIGNAL \alu_main_0|alu_and_0|and_10|output~combout\ : std_logic;
SIGNAL \alu_out_mux|output[10]~23_combout\ : std_logic;
SIGNAL \alu_out_mux|output[10]~24_combout\ : std_logic;
SIGNAL \alu_clr_0|and_10|output~0_combout\ : std_logic;
SIGNAL \alu_clr_0|and_11|output~1_combout\ : std_logic;
SIGNAL \alu_main_0|alu_or_0|or_6|output~combout\ : std_logic;
SIGNAL \alu_main_0|alu_or_0|or_8|output~combout\ : std_logic;
SIGNAL \alu_main_0|alu_or_0|or_7|output~combout\ : std_logic;
SIGNAL \alu_inc_0|and_4|output~0_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_3|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_3|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_3|nand_3|output~2_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_3|nand_3|output~3_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_3|nand_3|output~4_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_2|nand_3|output~2_combout\ : std_logic;
SIGNAL \alu_rot_0|and_2_2|output~combout\ : std_logic;
SIGNAL \alu_rot_0|and_5_1|output~combout\ : std_logic;
SIGNAL \alu_inc_0|xor_8|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_comp_0|or_10|output~0_combout\ : std_logic;
SIGNAL \alu_rot_0|and_3_2|output~combout\ : std_logic;
SIGNAL \ALU_FUNC_SEL_2~combout\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~1\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~3\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~5\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~7\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~9\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~11\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~13\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~15\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~17\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~19\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~21\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~23\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~24_combout\ : std_logic;
SIGNAL \ALU_OUT_SEL_0~combout\ : std_logic;
SIGNAL \ALU_FUNC_SEL_0~combout\ : std_logic;
SIGNAL \ALU_OUT_SEL_1~combout\ : std_logic;
SIGNAL \alu_out_mux|output[11]~17_combout\ : std_logic;
SIGNAL \alu_main_0|alu_and_0|and_0|output~combout\ : std_logic;
SIGNAL \ALU_OUT_SEL_2~combout\ : std_logic;
SIGNAL \alu_out_mux|output[0]~33_combout\ : std_logic;
SIGNAL \alu_out_mux|output[0]~34_combout\ : std_logic;
SIGNAL \alu_main_0|alu_or_0|or_0|output~combout\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~0_combout\ : std_logic;
SIGNAL \alu_out_mux|output[0]~35_combout\ : std_logic;
SIGNAL \alu_clr_0|and_0|output~0_combout\ : std_logic;
SIGNAL \ALU_FUNC_SEL_1~combout\ : std_logic;
SIGNAL \alu_out_mux|output[11]~18_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_2|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_2|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~4_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_2|nand_3|output~3_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_2|nand_3|output~4_combout\ : std_logic;
SIGNAL \ALU_CLEAR~combout\ : std_logic;
SIGNAL \ALU_COMP~combout\ : std_logic;
SIGNAL \alu_inc_0|xor_2|nand_3|output~5_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_4|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_out_mux|output[11]~16_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_4|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_4|nand_3|output~3_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_4|nand_3|output~4_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_4|nand_3|output~5_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_5|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~10_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_5|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_5|nand_3|output~2_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_5|nand_3|output~4_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_5|nand_3|output~5_combout\ : std_logic;
SIGNAL \ALU_INC~combout\ : std_logic;
SIGNAL \alu_main_0|alu_or_0|or_11|output~combout\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~22_combout\ : std_logic;
SIGNAL \alu_out_mux|output[11]~19_combout\ : std_logic;
SIGNAL \alu_main_0|alu_and_0|and_11|output~combout\ : std_logic;
SIGNAL \alu_out_mux|output[11]~20_combout\ : std_logic;
SIGNAL \alu_out_mux|output[11]~21_combout\ : std_logic;
SIGNAL \alu_clr_0|and_11|output~0_combout\ : std_logic;
SIGNAL \alu_inc_0|and_10|output~combout\ : std_logic;
SIGNAL \alu_inc_0|and_4|output~combout\ : std_logic;
SIGNAL \alu_inc_0|xor_3|nand_3|output~5_combout\ : std_logic;
SIGNAL \alu_inc_0|and_2|output~combout\ : std_logic;
SIGNAL \alu_inc_0|xor_1|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_1|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~2_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_1|nand_3|output~3_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_1|nand_3|output~2_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_1|nand_3|output~4_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_1|nand_3|output~5_combout\ : std_logic;
SIGNAL \alu_inc_0|and_0|output~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_out_mux|output[6]~36_combout\ : std_logic;
SIGNAL \alu_out_mux|output[7]~31_combout\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~14_combout\ : std_logic;
SIGNAL \alu_out_mux|output[7]~32_combout\ : std_logic;
SIGNAL \alu_clr_0|and_7|output~0_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_7|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_clr_0|and_8|output~0_combout\ : std_logic;
SIGNAL \alu_out_mux|output[8]~29_combout\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~16_combout\ : std_logic;
SIGNAL \alu_out_mux|output[8]~30_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_8|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_rot_0|and_7_1|output~0_combout\ : std_logic;
SIGNAL \ALU_ROT_1~combout\ : std_logic;
SIGNAL \alu_rot_0|and_7_1|output~combout\ : std_logic;
SIGNAL \ALU_ROT_2~combout\ : std_logic;
SIGNAL \alu_rot_0|alu_rot_0~0_combout\ : std_logic;
SIGNAL \alu_main_0|alu_or_0|or_9|output~combout\ : std_logic;
SIGNAL \alu_out_mux|output[9]~27_combout\ : std_logic;
SIGNAL \alu_out_mux|output[9]~28_combout\ : std_logic;
SIGNAL \alu_clr_0|and_9|output~0_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_9|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_rot_0|and_9_2|output~combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_8|output~0_combout\ : std_logic;
SIGNAL \alu_rot_0|and_6_0|output~0_combout\ : std_logic;
SIGNAL \alu_clr_0|and_6|output~0_combout\ : std_logic;
SIGNAL \alu_main_0|alu_add_0|adder_1|nand_7|output~12_combout\ : std_logic;
SIGNAL \alu_out_mux|output[6]~25_combout\ : std_logic;
SIGNAL \alu_out_mux|output[6]~26_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_6|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_rot_0|and_6_0|output~1_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_7|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_6|output~0_combout\ : std_logic;
SIGNAL \alu_inc_0|and_7|output~combout\ : std_logic;
SIGNAL \alu_rot_0|and_5_2|output~combout\ : std_logic;
SIGNAL \alu_rot_0|and_3_1|output~combout\ : std_logic;
SIGNAL \alu_inc_0|xor_4|nand_3|output~6_combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_4|output~combout\ : std_logic;
SIGNAL \alu_comp_0|or_10|output~1_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_1|nand_3|output~6_combout\ : std_logic;
SIGNAL \LINK_input~combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_0|output~2_combout\ : std_logic;
SIGNAL \alu_inc_0|xor_0|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_0|output~3_combout\ : std_logic;
SIGNAL \alu_rot_0|and_6_2|output~combout\ : std_logic;
SIGNAL \alu_rot_0|and_5_0|output~0_combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_5|output~0_combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_3|output~0_combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_3|output~1_combout\ : std_logic;
SIGNAL \alu_rot_0|and_2_0|output~0_combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_2|output~0_combout\ : std_logic;
SIGNAL \alu_comp_0|or_10|output~2_combout\ : std_logic;
SIGNAL \alu_rot_0|and_1_0|output~2_combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_1|output~combout\ : std_logic;
SIGNAL \alu_comp_0|or_10|output~combout\ : std_logic;
SIGNAL \alu_rot_0|and_8_2|output~combout\ : std_logic;
SIGNAL \alu_rot_0|and_6_1|output~combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_7|output~combout\ : std_logic;
SIGNAL \alu_inc_0|xor_10|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_9|output~0_combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_9|output~1_combout\ : std_logic;
SIGNAL \alu_rot_0|and_9_1|output~combout\ : std_logic;
SIGNAL \alu_rot_0|and_11_2|output~combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_10|output~combout\ : std_logic;
SIGNAL \alu_rot_0|and_link_2|output~combout\ : std_logic;
SIGNAL \alu_rot_0|and_11_0|output~0_combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_11|output~0_combout\ : std_logic;
SIGNAL \alu_rot_0|and_11_1|output~combout\ : std_logic;
SIGNAL \alu_rot_0|and_link_0|output~combout\ : std_logic;
SIGNAL \alu_rot_0|or_3_link|output~combout\ : std_logic;
SIGNAL \register_bus_input~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \AC_input~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \alu_comp_0|register_0|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \alu_comp_0|or_10|ALT_INV_output~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_not_reset <= not_reset;
ww_ALU_input_A <= ALU_input_A;
ww_ALU_input_B <= ALU_input_B;
ww_register_bus_input <= register_bus_input;
ww_AC_input <= AC_input;
ww_LINK_input <= LINK_input;
ww_LINK_OUT_SEL <= LINK_OUT_SEL;
ww_LINK_COMP <= LINK_COMP;
ww_ALU_FUNC_SEL_0 <= ALU_FUNC_SEL_0;
ww_ALU_FUNC_SEL_1 <= ALU_FUNC_SEL_1;
ww_ALU_FUNC_SEL_2 <= ALU_FUNC_SEL_2;
ww_ALU_OUT_SEL_0 <= ALU_OUT_SEL_0;
ww_ALU_OUT_SEL_1 <= ALU_OUT_SEL_1;
ww_ALU_OUT_SEL_2 <= ALU_OUT_SEL_2;
ww_ALU_COMP <= ALU_COMP;
ww_ALU_INC <= ALU_INC;
ww_ALU_CLEAR <= ALU_CLEAR;
ww_ALU_ROT_1 <= ALU_ROT_1;
ww_ALU_ROT_2 <= ALU_ROT_2;
ADD_CARRY <= ww_ADD_CARRY;
INC_CARRY <= ww_INC_CARRY;
IS_ZERO_LAST <= ww_IS_ZERO_LAST;
IS_ZERO <= ww_IS_ZERO;
IS_NEG <= ww_IS_NEG;
top_bus_output <= ww_top_bus_output;
LINK_output <= ww_LINK_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\alu_comp_0|register_0|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\;
\alu_comp_0|or_10|ALT_INV_output~combout\ <= NOT \alu_comp_0|or_10|output~combout\;

-- Location: LCCOMB_X14_Y9_N12
\alu_main_0|alu_add_0|adder_1|nand_7|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~6_combout\ = (\register_bus_input~combout\(3) & ((\AC_input~combout\(3) & (\alu_main_0|alu_add_0|adder_1|nand_7|output~5\ & VCC)) # (!\AC_input~combout\(3) & (!\alu_main_0|alu_add_0|adder_1|nand_7|output~5\)))) 
-- # (!\register_bus_input~combout\(3) & ((\AC_input~combout\(3) & (!\alu_main_0|alu_add_0|adder_1|nand_7|output~5\)) # (!\AC_input~combout\(3) & ((\alu_main_0|alu_add_0|adder_1|nand_7|output~5\) # (GND)))))
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~7\ = CARRY((\register_bus_input~combout\(3) & (!\AC_input~combout\(3) & !\alu_main_0|alu_add_0|adder_1|nand_7|output~5\)) # (!\register_bus_input~combout\(3) & ((!\alu_main_0|alu_add_0|adder_1|nand_7|output~5\) 
-- # (!\AC_input~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_bus_input~combout\(3),
	datab => \AC_input~combout\(3),
	datad => VCC,
	cin => \alu_main_0|alu_add_0|adder_1|nand_7|output~5\,
	combout => \alu_main_0|alu_add_0|adder_1|nand_7|output~6_combout\,
	cout => \alu_main_0|alu_add_0|adder_1|nand_7|output~7\);

-- Location: LCCOMB_X14_Y9_N14
\alu_main_0|alu_add_0|adder_1|nand_7|output~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~8_combout\ = ((\register_bus_input~combout\(4) $ (\AC_input~combout\(4) $ (!\alu_main_0|alu_add_0|adder_1|nand_7|output~7\)))) # (GND)
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~9\ = CARRY((\register_bus_input~combout\(4) & ((\AC_input~combout\(4)) # (!\alu_main_0|alu_add_0|adder_1|nand_7|output~7\))) # (!\register_bus_input~combout\(4) & (\AC_input~combout\(4) & 
-- !\alu_main_0|alu_add_0|adder_1|nand_7|output~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_bus_input~combout\(4),
	datab => \AC_input~combout\(4),
	datad => VCC,
	cin => \alu_main_0|alu_add_0|adder_1|nand_7|output~7\,
	combout => \alu_main_0|alu_add_0|adder_1|nand_7|output~8_combout\,
	cout => \alu_main_0|alu_add_0|adder_1|nand_7|output~9\);

-- Location: LCCOMB_X14_Y9_N24
\alu_main_0|alu_add_0|adder_1|nand_7|output~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~18_combout\ = (\AC_input~combout\(9) & ((\register_bus_input~combout\(9) & (\alu_main_0|alu_add_0|adder_1|nand_7|output~17\ & VCC)) # (!\register_bus_input~combout\(9) & 
-- (!\alu_main_0|alu_add_0|adder_1|nand_7|output~17\)))) # (!\AC_input~combout\(9) & ((\register_bus_input~combout\(9) & (!\alu_main_0|alu_add_0|adder_1|nand_7|output~17\)) # (!\register_bus_input~combout\(9) & 
-- ((\alu_main_0|alu_add_0|adder_1|nand_7|output~17\) # (GND)))))
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~19\ = CARRY((\AC_input~combout\(9) & (!\register_bus_input~combout\(9) & !\alu_main_0|alu_add_0|adder_1|nand_7|output~17\)) # (!\AC_input~combout\(9) & ((!\alu_main_0|alu_add_0|adder_1|nand_7|output~17\) # 
-- (!\register_bus_input~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AC_input~combout\(9),
	datab => \register_bus_input~combout\(9),
	datad => VCC,
	cin => \alu_main_0|alu_add_0|adder_1|nand_7|output~17\,
	combout => \alu_main_0|alu_add_0|adder_1|nand_7|output~18_combout\,
	cout => \alu_main_0|alu_add_0|adder_1|nand_7|output~19\);

-- Location: LCCOMB_X14_Y9_N26
\alu_main_0|alu_add_0|adder_1|nand_7|output~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~20_combout\ = ((\register_bus_input~combout\(10) $ (\AC_input~combout\(10) $ (!\alu_main_0|alu_add_0|adder_1|nand_7|output~19\)))) # (GND)
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~21\ = CARRY((\register_bus_input~combout\(10) & ((\AC_input~combout\(10)) # (!\alu_main_0|alu_add_0|adder_1|nand_7|output~19\))) # (!\register_bus_input~combout\(10) & (\AC_input~combout\(10) & 
-- !\alu_main_0|alu_add_0|adder_1|nand_7|output~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_bus_input~combout\(10),
	datab => \AC_input~combout\(10),
	datad => VCC,
	cin => \alu_main_0|alu_add_0|adder_1|nand_7|output~19\,
	combout => \alu_main_0|alu_add_0|adder_1|nand_7|output~20_combout\,
	cout => \alu_main_0|alu_add_0|adder_1|nand_7|output~21\);

-- Location: LCCOMB_X13_Y10_N20
\alu_inc_0|xor_5|nand_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_5|nand_3|output~3_combout\ = (\alu_inc_0|xor_5|nand_3|output~0_combout\ & (\alu_out_mux|output[11]~16_combout\)) # (!\alu_inc_0|xor_5|nand_3|output~0_combout\ & (\alu_inc_0|xor_5|nand_3|output~1_combout\ & 
-- ((\alu_main_0|alu_add_0|adder_1|nand_7|output~10_combout\) # (!\alu_out_mux|output[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~16_combout\,
	datab => \alu_inc_0|xor_5|nand_3|output~1_combout\,
	datac => \alu_main_0|alu_add_0|adder_1|nand_7|output~10_combout\,
	datad => \alu_inc_0|xor_5|nand_3|output~0_combout\,
	combout => \alu_inc_0|xor_5|nand_3|output~3_combout\);

-- Location: LCCOMB_X15_Y9_N24
\alu_inc_0|xor_4|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_4|nand_3|output~2_combout\ = (\alu_inc_0|xor_4|nand_3|output~1_combout\ & (\alu_inc_0|xor_4|nand_3|output~0_combout\ & ((!\alu_out_mux|output[11]~16_combout\) # (!\alu_main_0|alu_add_0|adder_1|nand_7|output~8_combout\)))) # 
-- (!\alu_inc_0|xor_4|nand_3|output~1_combout\ & (((\alu_out_mux|output[11]~16_combout\ & !\alu_inc_0|xor_4|nand_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_main_0|alu_add_0|adder_1|nand_7|output~8_combout\,
	datab => \alu_inc_0|xor_4|nand_3|output~1_combout\,
	datac => \alu_out_mux|output[11]~16_combout\,
	datad => \alu_inc_0|xor_4|nand_3|output~0_combout\,
	combout => \alu_inc_0|xor_4|nand_3|output~2_combout\);

-- Location: LCCOMB_X13_Y9_N12
\alu_main_0|alu_or_0|or_10|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_or_0|or_10|output~combout\ = (\register_bus_input~combout\(10)) # (\AC_input~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_bus_input~combout\(10),
	datac => \AC_input~combout\(10),
	combout => \alu_main_0|alu_or_0|or_10|output~combout\);

-- Location: LCCOMB_X13_Y9_N30
\alu_out_mux|output[10]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[10]~22_combout\ = (\ALU_OUT_SEL_2~combout\ & \AC_input~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_OUT_SEL_2~combout\,
	datac => \AC_input~combout\(10),
	combout => \alu_out_mux|output[10]~22_combout\);

-- Location: LCCOMB_X13_Y9_N0
\alu_main_0|alu_and_0|and_10|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_and_0|and_10|output~combout\ = (\register_bus_input~combout\(10) & \AC_input~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_bus_input~combout\(10),
	datac => \AC_input~combout\(10),
	combout => \alu_main_0|alu_and_0|and_10|output~combout\);

-- Location: LCCOMB_X13_Y9_N6
\alu_out_mux|output[10]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[10]~23_combout\ = (\alu_out_mux|output[11]~18_combout\ & (((\alu_main_0|alu_and_0|and_10|output~combout\) # (!\alu_out_mux|output[11]~17_combout\)))) # (!\alu_out_mux|output[11]~18_combout\ & (\alu_out_mux|output[10]~22_combout\ & 
-- (\alu_out_mux|output[11]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[10]~22_combout\,
	datab => \alu_out_mux|output[11]~18_combout\,
	datac => \alu_out_mux|output[11]~17_combout\,
	datad => \alu_main_0|alu_and_0|and_10|output~combout\,
	combout => \alu_out_mux|output[10]~23_combout\);

-- Location: LCCOMB_X13_Y9_N8
\alu_out_mux|output[10]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[10]~24_combout\ = (\alu_out_mux|output[10]~23_combout\ & (((\alu_main_0|alu_add_0|adder_1|nand_7|output~20_combout\)) # (!\alu_out_mux|output[11]~16_combout\))) # (!\alu_out_mux|output[10]~23_combout\ & 
-- (\alu_out_mux|output[11]~16_combout\ & ((\alu_main_0|alu_or_0|or_10|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[10]~23_combout\,
	datab => \alu_out_mux|output[11]~16_combout\,
	datac => \alu_main_0|alu_add_0|adder_1|nand_7|output~20_combout\,
	datad => \alu_main_0|alu_or_0|or_10|output~combout\,
	combout => \alu_out_mux|output[10]~24_combout\);

-- Location: LCCOMB_X13_Y9_N2
\alu_clr_0|and_10|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_clr_0|and_10|output~0_combout\ = (!\ALU_CLEAR~combout\ & ((\ALU_OUT_SEL_0~combout\ & ((\register_bus_input~combout\(10)))) # (!\ALU_OUT_SEL_0~combout\ & (\alu_out_mux|output[10]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CLEAR~combout\,
	datab => \alu_out_mux|output[10]~24_combout\,
	datac => \register_bus_input~combout\(10),
	datad => \ALU_OUT_SEL_0~combout\,
	combout => \alu_clr_0|and_10|output~0_combout\);

-- Location: LCCOMB_X14_Y10_N12
\alu_clr_0|and_11|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_clr_0|and_11|output~1_combout\ = (!\ALU_OUT_SEL_0~combout\ & !\ALU_CLEAR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_OUT_SEL_0~combout\,
	datac => \ALU_CLEAR~combout\,
	combout => \alu_clr_0|and_11|output~1_combout\);

-- Location: LCCOMB_X15_Y10_N16
\alu_main_0|alu_or_0|or_6|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_or_0|or_6|output~combout\ = (\register_bus_input~combout\(6)) # (\AC_input~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_bus_input~combout\(6),
	datad => \AC_input~combout\(6),
	combout => \alu_main_0|alu_or_0|or_6|output~combout\);

-- Location: LCCOMB_X13_Y9_N16
\alu_main_0|alu_or_0|or_8|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_or_0|or_8|output~combout\ = (\AC_input~combout\(8)) # (\register_bus_input~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC_input~combout\(8),
	datac => \register_bus_input~combout\(8),
	combout => \alu_main_0|alu_or_0|or_8|output~combout\);

-- Location: LCCOMB_X13_Y9_N10
\alu_main_0|alu_or_0|or_7|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_or_0|or_7|output~combout\ = (\register_bus_input~combout\(7)) # (\AC_input~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_bus_input~combout\(7),
	datad => \AC_input~combout\(7),
	combout => \alu_main_0|alu_or_0|or_7|output~combout\);

-- Location: LCCOMB_X17_Y10_N12
\alu_inc_0|and_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|and_4|output~0_combout\ = (\alu_inc_0|xor_9|nand_3|output~0_combout\ & (\alu_inc_0|xor_7|nand_3|output~0_combout\ & (\alu_inc_0|xor_6|nand_3|output~0_combout\ & \alu_inc_0|xor_8|nand_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_9|nand_3|output~0_combout\,
	datab => \alu_inc_0|xor_7|nand_3|output~0_combout\,
	datac => \alu_inc_0|xor_6|nand_3|output~0_combout\,
	datad => \alu_inc_0|xor_8|nand_3|output~0_combout\,
	combout => \alu_inc_0|and_4|output~0_combout\);

-- Location: LCCOMB_X13_Y10_N8
\alu_inc_0|xor_3|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_3|nand_3|output~0_combout\ = (\AC_input~combout\(3) & ((\alu_out_mux|output[11]~18_combout\ & ((\alu_out_mux|output[11]~17_combout\))) # (!\alu_out_mux|output[11]~18_combout\ & ((!\alu_out_mux|output[11]~17_combout\) # 
-- (!\ALU_OUT_SEL_2~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_OUT_SEL_2~combout\,
	datab => \AC_input~combout\(3),
	datac => \alu_out_mux|output[11]~18_combout\,
	datad => \alu_out_mux|output[11]~17_combout\,
	combout => \alu_inc_0|xor_3|nand_3|output~0_combout\);

-- Location: LCCOMB_X13_Y10_N22
\alu_inc_0|xor_3|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_3|nand_3|output~1_combout\ = (\alu_out_mux|output[11]~17_combout\ & (\AC_input~combout\(3) & ((\ALU_OUT_SEL_2~combout\) # (\alu_out_mux|output[11]~18_combout\)))) # (!\alu_out_mux|output[11]~17_combout\ & 
-- (((\alu_out_mux|output[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_OUT_SEL_2~combout\,
	datab => \AC_input~combout\(3),
	datac => \alu_out_mux|output[11]~18_combout\,
	datad => \alu_out_mux|output[11]~17_combout\,
	combout => \alu_inc_0|xor_3|nand_3|output~1_combout\);

-- Location: LCCOMB_X13_Y10_N24
\alu_inc_0|xor_3|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_3|nand_3|output~2_combout\ = (\alu_inc_0|xor_3|nand_3|output~0_combout\ & (\alu_inc_0|xor_3|nand_3|output~1_combout\ & ((!\alu_main_0|alu_add_0|adder_1|nand_7|output~6_combout\) # (!\alu_out_mux|output[11]~16_combout\)))) # 
-- (!\alu_inc_0|xor_3|nand_3|output~0_combout\ & (\alu_out_mux|output[11]~16_combout\ & ((!\alu_inc_0|xor_3|nand_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~16_combout\,
	datab => \alu_inc_0|xor_3|nand_3|output~0_combout\,
	datac => \alu_main_0|alu_add_0|adder_1|nand_7|output~6_combout\,
	datad => \alu_inc_0|xor_3|nand_3|output~1_combout\,
	combout => \alu_inc_0|xor_3|nand_3|output~2_combout\);

-- Location: LCCOMB_X13_Y10_N10
\alu_inc_0|xor_3|nand_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_3|nand_3|output~3_combout\ = (\alu_inc_0|xor_3|nand_3|output~0_combout\ & (\alu_out_mux|output[11]~16_combout\)) # (!\alu_inc_0|xor_3|nand_3|output~0_combout\ & (\alu_inc_0|xor_3|nand_3|output~1_combout\ & 
-- ((\alu_main_0|alu_add_0|adder_1|nand_7|output~6_combout\) # (!\alu_out_mux|output[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~16_combout\,
	datab => \alu_inc_0|xor_3|nand_3|output~0_combout\,
	datac => \alu_main_0|alu_add_0|adder_1|nand_7|output~6_combout\,
	datad => \alu_inc_0|xor_3|nand_3|output~1_combout\,
	combout => \alu_inc_0|xor_3|nand_3|output~3_combout\);

-- Location: LCCOMB_X14_Y10_N30
\alu_inc_0|xor_3|nand_3|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_3|nand_3|output~4_combout\ = (\ALU_OUT_SEL_0~combout\ & (((\register_bus_input~combout\(3))))) # (!\ALU_OUT_SEL_0~combout\ & (\alu_inc_0|xor_3|nand_3|output~3_combout\ $ (((\alu_inc_0|xor_3|nand_3|output~2_combout\ & 
-- \register_bus_input~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_3|nand_3|output~3_combout\,
	datab => \alu_inc_0|xor_3|nand_3|output~2_combout\,
	datac => \ALU_OUT_SEL_0~combout\,
	datad => \register_bus_input~combout\(3),
	combout => \alu_inc_0|xor_3|nand_3|output~4_combout\);

-- Location: LCCOMB_X15_Y9_N6
\alu_inc_0|xor_2|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_2|nand_3|output~2_combout\ = (\alu_inc_0|xor_2|nand_3|output~0_combout\ & (\alu_inc_0|xor_2|nand_3|output~1_combout\ & ((!\alu_main_0|alu_add_0|adder_1|nand_7|output~4_combout\) # (!\alu_out_mux|output[11]~16_combout\)))) # 
-- (!\alu_inc_0|xor_2|nand_3|output~0_combout\ & (\alu_out_mux|output[11]~16_combout\ & (!\alu_inc_0|xor_2|nand_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~16_combout\,
	datab => \alu_inc_0|xor_2|nand_3|output~0_combout\,
	datac => \alu_inc_0|xor_2|nand_3|output~1_combout\,
	datad => \alu_main_0|alu_add_0|adder_1|nand_7|output~4_combout\,
	combout => \alu_inc_0|xor_2|nand_3|output~2_combout\);

-- Location: LCCOMB_X19_Y10_N16
\alu_rot_0|and_2_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_2_2|output~combout\ = (\ALU_ROT_2~combout\ & (\alu_inc_0|xor_2|nand_3|output~5_combout\ $ (((\alu_inc_0|and_4|output~combout\ & \alu_inc_0|xor_3|nand_3|output~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|and_4|output~combout\,
	datab => \alu_inc_0|xor_2|nand_3|output~5_combout\,
	datac => \ALU_ROT_2~combout\,
	datad => \alu_inc_0|xor_3|nand_3|output~5_combout\,
	combout => \alu_rot_0|and_2_2|output~combout\);

-- Location: LCCOMB_X18_Y10_N24
\alu_rot_0|and_5_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_5_1|output~combout\ = (\ALU_ROT_1~combout\ & (\alu_inc_0|xor_5|nand_3|output~5_combout\ $ (((\alu_inc_0|xor_6|nand_3|output~0_combout\ & \alu_inc_0|and_7|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_6|nand_3|output~0_combout\,
	datab => \ALU_ROT_1~combout\,
	datac => \alu_inc_0|xor_5|nand_3|output~5_combout\,
	datad => \alu_inc_0|and_7|output~combout\,
	combout => \alu_rot_0|and_5_1|output~combout\);

-- Location: LCCOMB_X17_Y10_N10
\alu_inc_0|xor_8|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_8|nand_3|output~1_combout\ = \alu_inc_0|xor_8|nand_3|output~0_combout\ $ (((\alu_inc_0|xor_9|nand_3|output~0_combout\ & \alu_inc_0|and_10|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_9|nand_3|output~0_combout\,
	datac => \alu_inc_0|and_10|output~combout\,
	datad => \alu_inc_0|xor_8|nand_3|output~0_combout\,
	combout => \alu_inc_0|xor_8|nand_3|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N18
\alu_comp_0|or_10|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_comp_0|or_10|output~0_combout\ = (\alu_rot_0|or_3_9|output~1_combout\) # ((\alu_rot_0|or_3_10|output~combout\) # ((\alu_rot_0|or_3_7|output~combout\) # (\alu_rot_0|or_3_11|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_0|or_3_9|output~1_combout\,
	datab => \alu_rot_0|or_3_10|output~combout\,
	datac => \alu_rot_0|or_3_7|output~combout\,
	datad => \alu_rot_0|or_3_11|output~0_combout\,
	combout => \alu_comp_0|or_10|output~0_combout\);

-- Location: LCCOMB_X19_Y10_N24
\alu_rot_0|and_3_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_3_2|output~combout\ = (\ALU_ROT_2~combout\ & (\alu_inc_0|xor_3|nand_3|output~5_combout\ $ (\alu_inc_0|and_4|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_ROT_2~combout\,
	datab => \alu_inc_0|xor_3|nand_3|output~5_combout\,
	datac => \alu_inc_0|and_4|output~combout\,
	combout => \alu_rot_0|and_3_2|output~combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\register_bus_input[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_register_bus_input(10),
	combout => \register_bus_input~combout\(10));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_input[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_AC_input(7),
	combout => \AC_input~combout\(7));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\register_bus_input[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_register_bus_input(3),
	combout => \register_bus_input~combout\(3));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ALU_FUNC_SEL_2,
	combout => \ALU_FUNC_SEL_2~combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_input[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_AC_input(11),
	combout => \AC_input~combout\(11));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_input[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_AC_input(10),
	combout => \AC_input~combout\(10));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\register_bus_input[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_register_bus_input(9),
	combout => \register_bus_input~combout\(9));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_input[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_AC_input(8),
	combout => \AC_input~combout\(8));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\register_bus_input[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_register_bus_input(7),
	combout => \register_bus_input~combout\(7));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\register_bus_input[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_register_bus_input(6),
	combout => \register_bus_input~combout\(6));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_input[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_AC_input(5),
	combout => \AC_input~combout\(5));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_input[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_AC_input(4),
	combout => \AC_input~combout\(4));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_input[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_AC_input(3),
	combout => \AC_input~combout\(3));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_input[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_AC_input(2),
	combout => \AC_input~combout\(2));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_input[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_AC_input(1),
	combout => \AC_input~combout\(1));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\register_bus_input[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_register_bus_input(0),
	combout => \register_bus_input~combout\(0));

-- Location: LCCOMB_X14_Y9_N6
\alu_main_0|alu_add_0|adder_1|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~0_combout\ = (\AC_input~combout\(0) & (\register_bus_input~combout\(0) $ (VCC))) # (!\AC_input~combout\(0) & (\register_bus_input~combout\(0) & VCC))
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~1\ = CARRY((\AC_input~combout\(0) & \register_bus_input~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC_input~combout\(0),
	datab => \register_bus_input~combout\(0),
	datad => VCC,
	combout => \alu_main_0|alu_add_0|adder_1|nand_7|output~0_combout\,
	cout => \alu_main_0|alu_add_0|adder_1|nand_7|output~1\);

-- Location: LCCOMB_X14_Y9_N8
\alu_main_0|alu_add_0|adder_1|nand_7|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~2_combout\ = (\register_bus_input~combout\(1) & ((\AC_input~combout\(1) & (\alu_main_0|alu_add_0|adder_1|nand_7|output~1\ & VCC)) # (!\AC_input~combout\(1) & (!\alu_main_0|alu_add_0|adder_1|nand_7|output~1\)))) 
-- # (!\register_bus_input~combout\(1) & ((\AC_input~combout\(1) & (!\alu_main_0|alu_add_0|adder_1|nand_7|output~1\)) # (!\AC_input~combout\(1) & ((\alu_main_0|alu_add_0|adder_1|nand_7|output~1\) # (GND)))))
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~3\ = CARRY((\register_bus_input~combout\(1) & (!\AC_input~combout\(1) & !\alu_main_0|alu_add_0|adder_1|nand_7|output~1\)) # (!\register_bus_input~combout\(1) & ((!\alu_main_0|alu_add_0|adder_1|nand_7|output~1\) 
-- # (!\AC_input~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_bus_input~combout\(1),
	datab => \AC_input~combout\(1),
	datad => VCC,
	cin => \alu_main_0|alu_add_0|adder_1|nand_7|output~1\,
	combout => \alu_main_0|alu_add_0|adder_1|nand_7|output~2_combout\,
	cout => \alu_main_0|alu_add_0|adder_1|nand_7|output~3\);

-- Location: LCCOMB_X14_Y9_N10
\alu_main_0|alu_add_0|adder_1|nand_7|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~4_combout\ = ((\register_bus_input~combout\(2) $ (\AC_input~combout\(2) $ (!\alu_main_0|alu_add_0|adder_1|nand_7|output~3\)))) # (GND)
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~5\ = CARRY((\register_bus_input~combout\(2) & ((\AC_input~combout\(2)) # (!\alu_main_0|alu_add_0|adder_1|nand_7|output~3\))) # (!\register_bus_input~combout\(2) & (\AC_input~combout\(2) & 
-- !\alu_main_0|alu_add_0|adder_1|nand_7|output~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_bus_input~combout\(2),
	datab => \AC_input~combout\(2),
	datad => VCC,
	cin => \alu_main_0|alu_add_0|adder_1|nand_7|output~3\,
	combout => \alu_main_0|alu_add_0|adder_1|nand_7|output~4_combout\,
	cout => \alu_main_0|alu_add_0|adder_1|nand_7|output~5\);

-- Location: LCCOMB_X14_Y9_N16
\alu_main_0|alu_add_0|adder_1|nand_7|output~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~10_combout\ = (\register_bus_input~combout\(5) & ((\AC_input~combout\(5) & (\alu_main_0|alu_add_0|adder_1|nand_7|output~9\ & VCC)) # (!\AC_input~combout\(5) & (!\alu_main_0|alu_add_0|adder_1|nand_7|output~9\)))) 
-- # (!\register_bus_input~combout\(5) & ((\AC_input~combout\(5) & (!\alu_main_0|alu_add_0|adder_1|nand_7|output~9\)) # (!\AC_input~combout\(5) & ((\alu_main_0|alu_add_0|adder_1|nand_7|output~9\) # (GND)))))
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~11\ = CARRY((\register_bus_input~combout\(5) & (!\AC_input~combout\(5) & !\alu_main_0|alu_add_0|adder_1|nand_7|output~9\)) # (!\register_bus_input~combout\(5) & ((!\alu_main_0|alu_add_0|adder_1|nand_7|output~9\) 
-- # (!\AC_input~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_bus_input~combout\(5),
	datab => \AC_input~combout\(5),
	datad => VCC,
	cin => \alu_main_0|alu_add_0|adder_1|nand_7|output~9\,
	combout => \alu_main_0|alu_add_0|adder_1|nand_7|output~10_combout\,
	cout => \alu_main_0|alu_add_0|adder_1|nand_7|output~11\);

-- Location: LCCOMB_X14_Y9_N18
\alu_main_0|alu_add_0|adder_1|nand_7|output~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~12_combout\ = ((\AC_input~combout\(6) $ (\register_bus_input~combout\(6) $ (!\alu_main_0|alu_add_0|adder_1|nand_7|output~11\)))) # (GND)
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~13\ = CARRY((\AC_input~combout\(6) & ((\register_bus_input~combout\(6)) # (!\alu_main_0|alu_add_0|adder_1|nand_7|output~11\))) # (!\AC_input~combout\(6) & (\register_bus_input~combout\(6) & 
-- !\alu_main_0|alu_add_0|adder_1|nand_7|output~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AC_input~combout\(6),
	datab => \register_bus_input~combout\(6),
	datad => VCC,
	cin => \alu_main_0|alu_add_0|adder_1|nand_7|output~11\,
	combout => \alu_main_0|alu_add_0|adder_1|nand_7|output~12_combout\,
	cout => \alu_main_0|alu_add_0|adder_1|nand_7|output~13\);

-- Location: LCCOMB_X14_Y9_N20
\alu_main_0|alu_add_0|adder_1|nand_7|output~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~14_combout\ = (\AC_input~combout\(7) & ((\register_bus_input~combout\(7) & (\alu_main_0|alu_add_0|adder_1|nand_7|output~13\ & VCC)) # (!\register_bus_input~combout\(7) & 
-- (!\alu_main_0|alu_add_0|adder_1|nand_7|output~13\)))) # (!\AC_input~combout\(7) & ((\register_bus_input~combout\(7) & (!\alu_main_0|alu_add_0|adder_1|nand_7|output~13\)) # (!\register_bus_input~combout\(7) & 
-- ((\alu_main_0|alu_add_0|adder_1|nand_7|output~13\) # (GND)))))
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~15\ = CARRY((\AC_input~combout\(7) & (!\register_bus_input~combout\(7) & !\alu_main_0|alu_add_0|adder_1|nand_7|output~13\)) # (!\AC_input~combout\(7) & ((!\alu_main_0|alu_add_0|adder_1|nand_7|output~13\) # 
-- (!\register_bus_input~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AC_input~combout\(7),
	datab => \register_bus_input~combout\(7),
	datad => VCC,
	cin => \alu_main_0|alu_add_0|adder_1|nand_7|output~13\,
	combout => \alu_main_0|alu_add_0|adder_1|nand_7|output~14_combout\,
	cout => \alu_main_0|alu_add_0|adder_1|nand_7|output~15\);

-- Location: LCCOMB_X14_Y9_N22
\alu_main_0|alu_add_0|adder_1|nand_7|output~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~16_combout\ = ((\register_bus_input~combout\(8) $ (\AC_input~combout\(8) $ (!\alu_main_0|alu_add_0|adder_1|nand_7|output~15\)))) # (GND)
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~17\ = CARRY((\register_bus_input~combout\(8) & ((\AC_input~combout\(8)) # (!\alu_main_0|alu_add_0|adder_1|nand_7|output~15\))) # (!\register_bus_input~combout\(8) & (\AC_input~combout\(8) & 
-- !\alu_main_0|alu_add_0|adder_1|nand_7|output~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_bus_input~combout\(8),
	datab => \AC_input~combout\(8),
	datad => VCC,
	cin => \alu_main_0|alu_add_0|adder_1|nand_7|output~15\,
	combout => \alu_main_0|alu_add_0|adder_1|nand_7|output~16_combout\,
	cout => \alu_main_0|alu_add_0|adder_1|nand_7|output~17\);

-- Location: LCCOMB_X14_Y9_N28
\alu_main_0|alu_add_0|adder_1|nand_7|output~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~22_combout\ = (\register_bus_input~combout\(11) & ((\AC_input~combout\(11) & (\alu_main_0|alu_add_0|adder_1|nand_7|output~21\ & VCC)) # (!\AC_input~combout\(11) & 
-- (!\alu_main_0|alu_add_0|adder_1|nand_7|output~21\)))) # (!\register_bus_input~combout\(11) & ((\AC_input~combout\(11) & (!\alu_main_0|alu_add_0|adder_1|nand_7|output~21\)) # (!\AC_input~combout\(11) & ((\alu_main_0|alu_add_0|adder_1|nand_7|output~21\) # 
-- (GND)))))
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~23\ = CARRY((\register_bus_input~combout\(11) & (!\AC_input~combout\(11) & !\alu_main_0|alu_add_0|adder_1|nand_7|output~21\)) # (!\register_bus_input~combout\(11) & 
-- ((!\alu_main_0|alu_add_0|adder_1|nand_7|output~21\) # (!\AC_input~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_bus_input~combout\(11),
	datab => \AC_input~combout\(11),
	datad => VCC,
	cin => \alu_main_0|alu_add_0|adder_1|nand_7|output~21\,
	combout => \alu_main_0|alu_add_0|adder_1|nand_7|output~22_combout\,
	cout => \alu_main_0|alu_add_0|adder_1|nand_7|output~23\);

-- Location: LCCOMB_X14_Y9_N30
\alu_main_0|alu_add_0|adder_1|nand_7|output~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_add_0|adder_1|nand_7|output~24_combout\ = !\alu_main_0|alu_add_0|adder_1|nand_7|output~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \alu_main_0|alu_add_0|adder_1|nand_7|output~23\,
	combout => \alu_main_0|alu_add_0|adder_1|nand_7|output~24_combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ALU_OUT_SEL_0,
	combout => \ALU_OUT_SEL_0~combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ALU_FUNC_SEL_0,
	combout => \ALU_FUNC_SEL_0~combout\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ALU_OUT_SEL_1,
	combout => \ALU_OUT_SEL_1~combout\);

-- Location: LCCOMB_X13_Y10_N18
\alu_out_mux|output[11]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[11]~17_combout\ = (\ALU_FUNC_SEL_0~combout\) # (!\ALU_OUT_SEL_1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_FUNC_SEL_0~combout\,
	datad => \ALU_OUT_SEL_1~combout\,
	combout => \alu_out_mux|output[11]~17_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_input[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_AC_input(0),
	combout => \AC_input~combout\(0));

-- Location: LCCOMB_X14_Y10_N4
\alu_main_0|alu_and_0|and_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_and_0|and_0|output~combout\ = (\register_bus_input~combout\(0) & \AC_input~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_bus_input~combout\(0),
	datad => \AC_input~combout\(0),
	combout => \alu_main_0|alu_and_0|and_0|output~combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ALU_OUT_SEL_2,
	combout => \ALU_OUT_SEL_2~combout\);

-- Location: LCCOMB_X14_Y10_N6
\alu_out_mux|output[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[0]~33_combout\ = (\ALU_OUT_SEL_2~combout\ & \AC_input~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_OUT_SEL_2~combout\,
	datad => \AC_input~combout\(0),
	combout => \alu_out_mux|output[0]~33_combout\);

-- Location: LCCOMB_X14_Y10_N26
\alu_out_mux|output[0]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[0]~34_combout\ = (\alu_out_mux|output[11]~18_combout\ & (((\alu_main_0|alu_and_0|and_0|output~combout\)) # (!\alu_out_mux|output[11]~17_combout\))) # (!\alu_out_mux|output[11]~18_combout\ & (\alu_out_mux|output[11]~17_combout\ & 
-- ((\alu_out_mux|output[0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~18_combout\,
	datab => \alu_out_mux|output[11]~17_combout\,
	datac => \alu_main_0|alu_and_0|and_0|output~combout\,
	datad => \alu_out_mux|output[0]~33_combout\,
	combout => \alu_out_mux|output[0]~34_combout\);

-- Location: LCCOMB_X14_Y10_N16
\alu_main_0|alu_or_0|or_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_or_0|or_0|output~combout\ = (\register_bus_input~combout\(0)) # (\AC_input~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_bus_input~combout\(0),
	datad => \AC_input~combout\(0),
	combout => \alu_main_0|alu_or_0|or_0|output~combout\);

-- Location: LCCOMB_X14_Y10_N0
\alu_out_mux|output[0]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[0]~35_combout\ = (\alu_out_mux|output[11]~16_combout\ & ((\alu_out_mux|output[0]~34_combout\ & ((\alu_main_0|alu_add_0|adder_1|nand_7|output~0_combout\))) # (!\alu_out_mux|output[0]~34_combout\ & 
-- (\alu_main_0|alu_or_0|or_0|output~combout\)))) # (!\alu_out_mux|output[11]~16_combout\ & (\alu_out_mux|output[0]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~16_combout\,
	datab => \alu_out_mux|output[0]~34_combout\,
	datac => \alu_main_0|alu_or_0|or_0|output~combout\,
	datad => \alu_main_0|alu_add_0|adder_1|nand_7|output~0_combout\,
	combout => \alu_out_mux|output[0]~35_combout\);

-- Location: LCCOMB_X14_Y10_N10
\alu_clr_0|and_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_clr_0|and_0|output~0_combout\ = (!\ALU_CLEAR~combout\ & ((\ALU_OUT_SEL_0~combout\ & (\register_bus_input~combout\(0))) # (!\ALU_OUT_SEL_0~combout\ & ((\alu_out_mux|output[0]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CLEAR~combout\,
	datab => \register_bus_input~combout\(0),
	datac => \ALU_OUT_SEL_0~combout\,
	datad => \alu_out_mux|output[0]~35_combout\,
	combout => \alu_clr_0|and_0|output~0_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ALU_FUNC_SEL_1,
	combout => \ALU_FUNC_SEL_1~combout\);

-- Location: LCCOMB_X13_Y10_N0
\alu_out_mux|output[11]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[11]~18_combout\ = (\ALU_OUT_SEL_1~combout\ & ((\ALU_FUNC_SEL_0~combout\) # (\ALU_FUNC_SEL_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FUNC_SEL_0~combout\,
	datac => \ALU_FUNC_SEL_1~combout\,
	datad => \ALU_OUT_SEL_1~combout\,
	combout => \alu_out_mux|output[11]~18_combout\);

-- Location: LCCOMB_X15_Y9_N22
\alu_inc_0|xor_2|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_2|nand_3|output~0_combout\ = (\AC_input~combout\(2) & ((\alu_out_mux|output[11]~17_combout\ & ((\alu_out_mux|output[11]~18_combout\) # (!\ALU_OUT_SEL_2~combout\))) # (!\alu_out_mux|output[11]~17_combout\ & 
-- (!\alu_out_mux|output[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC_input~combout\(2),
	datab => \alu_out_mux|output[11]~17_combout\,
	datac => \alu_out_mux|output[11]~18_combout\,
	datad => \ALU_OUT_SEL_2~combout\,
	combout => \alu_inc_0|xor_2|nand_3|output~0_combout\);

-- Location: LCCOMB_X15_Y9_N20
\alu_inc_0|xor_2|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_2|nand_3|output~1_combout\ = (\alu_out_mux|output[11]~17_combout\ & (\AC_input~combout\(2) & ((\alu_out_mux|output[11]~18_combout\) # (\ALU_OUT_SEL_2~combout\)))) # (!\alu_out_mux|output[11]~17_combout\ & 
-- (((\alu_out_mux|output[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC_input~combout\(2),
	datab => \alu_out_mux|output[11]~17_combout\,
	datac => \alu_out_mux|output[11]~18_combout\,
	datad => \ALU_OUT_SEL_2~combout\,
	combout => \alu_inc_0|xor_2|nand_3|output~1_combout\);

-- Location: LCCOMB_X15_Y9_N8
\alu_inc_0|xor_2|nand_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_2|nand_3|output~3_combout\ = (\alu_inc_0|xor_2|nand_3|output~0_combout\ & (\alu_out_mux|output[11]~16_combout\)) # (!\alu_inc_0|xor_2|nand_3|output~0_combout\ & (\alu_inc_0|xor_2|nand_3|output~1_combout\ & 
-- ((\alu_main_0|alu_add_0|adder_1|nand_7|output~4_combout\) # (!\alu_out_mux|output[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~16_combout\,
	datab => \alu_inc_0|xor_2|nand_3|output~0_combout\,
	datac => \alu_inc_0|xor_2|nand_3|output~1_combout\,
	datad => \alu_main_0|alu_add_0|adder_1|nand_7|output~4_combout\,
	combout => \alu_inc_0|xor_2|nand_3|output~3_combout\);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\register_bus_input[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_register_bus_input(2),
	combout => \register_bus_input~combout\(2));

-- Location: LCCOMB_X15_Y9_N30
\alu_inc_0|xor_2|nand_3|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_2|nand_3|output~4_combout\ = (\ALU_OUT_SEL_0~combout\ & (((\register_bus_input~combout\(2))))) # (!\ALU_OUT_SEL_0~combout\ & (\alu_inc_0|xor_2|nand_3|output~3_combout\ $ (((\alu_inc_0|xor_2|nand_3|output~2_combout\ & 
-- \register_bus_input~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_2|nand_3|output~2_combout\,
	datab => \alu_inc_0|xor_2|nand_3|output~3_combout\,
	datac => \register_bus_input~combout\(2),
	datad => \ALU_OUT_SEL_0~combout\,
	combout => \alu_inc_0|xor_2|nand_3|output~4_combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ALU_CLEAR,
	combout => \ALU_CLEAR~combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ALU_COMP,
	combout => \ALU_COMP~combout\);

-- Location: LCCOMB_X15_Y10_N0
\alu_inc_0|xor_2|nand_3|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_2|nand_3|output~5_combout\ = \ALU_COMP~combout\ $ (((\alu_inc_0|xor_2|nand_3|output~4_combout\ & !\ALU_CLEAR~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inc_0|xor_2|nand_3|output~4_combout\,
	datac => \ALU_CLEAR~combout\,
	datad => \ALU_COMP~combout\,
	combout => \alu_inc_0|xor_2|nand_3|output~5_combout\);

-- Location: LCCOMB_X15_Y9_N26
\alu_inc_0|xor_4|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_4|nand_3|output~1_combout\ = (\alu_out_mux|output[11]~17_combout\ & (\AC_input~combout\(4) & ((\alu_out_mux|output[11]~18_combout\) # (\ALU_OUT_SEL_2~combout\)))) # (!\alu_out_mux|output[11]~17_combout\ & 
-- (((\alu_out_mux|output[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC_input~combout\(4),
	datab => \alu_out_mux|output[11]~17_combout\,
	datac => \alu_out_mux|output[11]~18_combout\,
	datad => \ALU_OUT_SEL_2~combout\,
	combout => \alu_inc_0|xor_4|nand_3|output~1_combout\);

-- Location: LCCOMB_X13_Y10_N12
\alu_out_mux|output[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[11]~16_combout\ = (!\ALU_FUNC_SEL_0~combout\ & (\ALU_OUT_SEL_1~combout\ & ((\ALU_FUNC_SEL_2~combout\) # (\ALU_FUNC_SEL_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FUNC_SEL_2~combout\,
	datab => \ALU_FUNC_SEL_0~combout\,
	datac => \ALU_FUNC_SEL_1~combout\,
	datad => \ALU_OUT_SEL_1~combout\,
	combout => \alu_out_mux|output[11]~16_combout\);

-- Location: LCCOMB_X15_Y9_N28
\alu_inc_0|xor_4|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_4|nand_3|output~0_combout\ = (\AC_input~combout\(4) & ((\alu_out_mux|output[11]~17_combout\ & ((\alu_out_mux|output[11]~18_combout\) # (!\ALU_OUT_SEL_2~combout\))) # (!\alu_out_mux|output[11]~17_combout\ & 
-- (!\alu_out_mux|output[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC_input~combout\(4),
	datab => \alu_out_mux|output[11]~17_combout\,
	datac => \alu_out_mux|output[11]~18_combout\,
	datad => \ALU_OUT_SEL_2~combout\,
	combout => \alu_inc_0|xor_4|nand_3|output~0_combout\);

-- Location: LCCOMB_X15_Y9_N18
\alu_inc_0|xor_4|nand_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_4|nand_3|output~3_combout\ = (\alu_inc_0|xor_4|nand_3|output~0_combout\ & (((\alu_out_mux|output[11]~16_combout\)))) # (!\alu_inc_0|xor_4|nand_3|output~0_combout\ & (\alu_inc_0|xor_4|nand_3|output~1_combout\ & 
-- ((\alu_main_0|alu_add_0|adder_1|nand_7|output~8_combout\) # (!\alu_out_mux|output[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_main_0|alu_add_0|adder_1|nand_7|output~8_combout\,
	datab => \alu_inc_0|xor_4|nand_3|output~1_combout\,
	datac => \alu_out_mux|output[11]~16_combout\,
	datad => \alu_inc_0|xor_4|nand_3|output~0_combout\,
	combout => \alu_inc_0|xor_4|nand_3|output~3_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\register_bus_input[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_register_bus_input(4),
	combout => \register_bus_input~combout\(4));

-- Location: LCCOMB_X15_Y9_N0
\alu_inc_0|xor_4|nand_3|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_4|nand_3|output~4_combout\ = (\ALU_OUT_SEL_0~combout\ & (((\register_bus_input~combout\(4))))) # (!\ALU_OUT_SEL_0~combout\ & (\alu_inc_0|xor_4|nand_3|output~3_combout\ $ (((\alu_inc_0|xor_4|nand_3|output~2_combout\ & 
-- \register_bus_input~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_4|nand_3|output~2_combout\,
	datab => \alu_inc_0|xor_4|nand_3|output~3_combout\,
	datac => \register_bus_input~combout\(4),
	datad => \ALU_OUT_SEL_0~combout\,
	combout => \alu_inc_0|xor_4|nand_3|output~4_combout\);

-- Location: LCCOMB_X15_Y10_N8
\alu_inc_0|xor_4|nand_3|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_4|nand_3|output~5_combout\ = \ALU_COMP~combout\ $ (((\alu_inc_0|xor_4|nand_3|output~4_combout\ & !\ALU_CLEAR~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inc_0|xor_4|nand_3|output~4_combout\,
	datac => \ALU_CLEAR~combout\,
	datad => \ALU_COMP~combout\,
	combout => \alu_inc_0|xor_4|nand_3|output~5_combout\);

-- Location: LCCOMB_X13_Y10_N28
\alu_inc_0|xor_5|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_5|nand_3|output~1_combout\ = (\alu_out_mux|output[11]~17_combout\ & (\AC_input~combout\(5) & ((\ALU_OUT_SEL_2~combout\) # (\alu_out_mux|output[11]~18_combout\)))) # (!\alu_out_mux|output[11]~17_combout\ & 
-- (((\alu_out_mux|output[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_OUT_SEL_2~combout\,
	datab => \alu_out_mux|output[11]~18_combout\,
	datac => \AC_input~combout\(5),
	datad => \alu_out_mux|output[11]~17_combout\,
	combout => \alu_inc_0|xor_5|nand_3|output~1_combout\);

-- Location: LCCOMB_X13_Y10_N2
\alu_inc_0|xor_5|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_5|nand_3|output~0_combout\ = (\AC_input~combout\(5) & ((\alu_out_mux|output[11]~18_combout\ & ((\alu_out_mux|output[11]~17_combout\))) # (!\alu_out_mux|output[11]~18_combout\ & ((!\alu_out_mux|output[11]~17_combout\) # 
-- (!\ALU_OUT_SEL_2~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_OUT_SEL_2~combout\,
	datab => \alu_out_mux|output[11]~18_combout\,
	datac => \AC_input~combout\(5),
	datad => \alu_out_mux|output[11]~17_combout\,
	combout => \alu_inc_0|xor_5|nand_3|output~0_combout\);

-- Location: LCCOMB_X13_Y10_N26
\alu_inc_0|xor_5|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_5|nand_3|output~2_combout\ = (\alu_inc_0|xor_5|nand_3|output~1_combout\ & (\alu_inc_0|xor_5|nand_3|output~0_combout\ & ((!\alu_main_0|alu_add_0|adder_1|nand_7|output~10_combout\) # (!\alu_out_mux|output[11]~16_combout\)))) # 
-- (!\alu_inc_0|xor_5|nand_3|output~1_combout\ & (\alu_out_mux|output[11]~16_combout\ & ((!\alu_inc_0|xor_5|nand_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~16_combout\,
	datab => \alu_inc_0|xor_5|nand_3|output~1_combout\,
	datac => \alu_main_0|alu_add_0|adder_1|nand_7|output~10_combout\,
	datad => \alu_inc_0|xor_5|nand_3|output~0_combout\,
	combout => \alu_inc_0|xor_5|nand_3|output~2_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\register_bus_input[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_register_bus_input(5),
	combout => \register_bus_input~combout\(5));

-- Location: LCCOMB_X13_Y10_N14
\alu_inc_0|xor_5|nand_3|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_5|nand_3|output~4_combout\ = (\ALU_OUT_SEL_0~combout\ & (((\register_bus_input~combout\(5))))) # (!\ALU_OUT_SEL_0~combout\ & (\alu_inc_0|xor_5|nand_3|output~3_combout\ $ (((\alu_inc_0|xor_5|nand_3|output~2_combout\ & 
-- \register_bus_input~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_5|nand_3|output~3_combout\,
	datab => \alu_inc_0|xor_5|nand_3|output~2_combout\,
	datac => \register_bus_input~combout\(5),
	datad => \ALU_OUT_SEL_0~combout\,
	combout => \alu_inc_0|xor_5|nand_3|output~4_combout\);

-- Location: LCCOMB_X14_Y10_N8
\alu_inc_0|xor_5|nand_3|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_5|nand_3|output~5_combout\ = \ALU_COMP~combout\ $ (((!\ALU_CLEAR~combout\ & \alu_inc_0|xor_5|nand_3|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CLEAR~combout\,
	datac => \ALU_COMP~combout\,
	datad => \alu_inc_0|xor_5|nand_3|output~4_combout\,
	combout => \alu_inc_0|xor_5|nand_3|output~5_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ALU_INC,
	combout => \ALU_INC~combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\register_bus_input[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_register_bus_input(11),
	combout => \register_bus_input~combout\(11));

-- Location: LCCOMB_X14_Y10_N22
\alu_main_0|alu_or_0|or_11|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_or_0|or_11|output~combout\ = (\register_bus_input~combout\(11)) # (\AC_input~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_bus_input~combout\(11),
	datad => \AC_input~combout\(11),
	combout => \alu_main_0|alu_or_0|or_11|output~combout\);

-- Location: LCCOMB_X14_Y10_N24
\alu_out_mux|output[11]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[11]~19_combout\ = (\ALU_OUT_SEL_2~combout\ & \AC_input~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_OUT_SEL_2~combout\,
	datad => \AC_input~combout\(11),
	combout => \alu_out_mux|output[11]~19_combout\);

-- Location: LCCOMB_X14_Y10_N14
\alu_main_0|alu_and_0|and_11|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_and_0|and_11|output~combout\ = (\register_bus_input~combout\(11) & \AC_input~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_bus_input~combout\(11),
	datad => \AC_input~combout\(11),
	combout => \alu_main_0|alu_and_0|and_11|output~combout\);

-- Location: LCCOMB_X15_Y10_N30
\alu_out_mux|output[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[11]~20_combout\ = (\alu_out_mux|output[11]~17_combout\ & ((\alu_out_mux|output[11]~18_combout\ & ((\alu_main_0|alu_and_0|and_11|output~combout\))) # (!\alu_out_mux|output[11]~18_combout\ & (\alu_out_mux|output[11]~19_combout\)))) # 
-- (!\alu_out_mux|output[11]~17_combout\ & (((\alu_out_mux|output[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~17_combout\,
	datab => \alu_out_mux|output[11]~19_combout\,
	datac => \alu_out_mux|output[11]~18_combout\,
	datad => \alu_main_0|alu_and_0|and_11|output~combout\,
	combout => \alu_out_mux|output[11]~20_combout\);

-- Location: LCCOMB_X14_Y10_N20
\alu_out_mux|output[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[11]~21_combout\ = (\alu_out_mux|output[11]~16_combout\ & ((\alu_out_mux|output[11]~20_combout\ & ((\alu_main_0|alu_add_0|adder_1|nand_7|output~22_combout\))) # (!\alu_out_mux|output[11]~20_combout\ & 
-- (\alu_main_0|alu_or_0|or_11|output~combout\)))) # (!\alu_out_mux|output[11]~16_combout\ & (((\alu_out_mux|output[11]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~16_combout\,
	datab => \alu_main_0|alu_or_0|or_11|output~combout\,
	datac => \alu_main_0|alu_add_0|adder_1|nand_7|output~22_combout\,
	datad => \alu_out_mux|output[11]~20_combout\,
	combout => \alu_out_mux|output[11]~21_combout\);

-- Location: LCCOMB_X14_Y10_N2
\alu_clr_0|and_11|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_clr_0|and_11|output~0_combout\ = (!\ALU_CLEAR~combout\ & ((\ALU_OUT_SEL_0~combout\ & ((\register_bus_input~combout\(11)))) # (!\ALU_OUT_SEL_0~combout\ & (\alu_out_mux|output[11]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_OUT_SEL_0~combout\,
	datab => \ALU_CLEAR~combout\,
	datac => \alu_out_mux|output[11]~21_combout\,
	datad => \register_bus_input~combout\(11),
	combout => \alu_clr_0|and_11|output~0_combout\);

-- Location: LCCOMB_X20_Y10_N24
\alu_inc_0|and_10|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|and_10|output~combout\ = (\ALU_INC~combout\ & ((\alu_clr_0|and_10|output~0_combout\ & (\alu_clr_0|and_11|output~0_combout\ & !\ALU_COMP~combout\)) # (!\alu_clr_0|and_10|output~0_combout\ & (!\alu_clr_0|and_11|output~0_combout\ & 
-- \ALU_COMP~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_clr_0|and_10|output~0_combout\,
	datab => \ALU_INC~combout\,
	datac => \alu_clr_0|and_11|output~0_combout\,
	datad => \ALU_COMP~combout\,
	combout => \alu_inc_0|and_10|output~combout\);

-- Location: LCCOMB_X18_Y10_N0
\alu_inc_0|and_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|and_4|output~combout\ = (\alu_inc_0|and_4|output~0_combout\ & (\alu_inc_0|xor_4|nand_3|output~5_combout\ & (\alu_inc_0|xor_5|nand_3|output~5_combout\ & \alu_inc_0|and_10|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|and_4|output~0_combout\,
	datab => \alu_inc_0|xor_4|nand_3|output~5_combout\,
	datac => \alu_inc_0|xor_5|nand_3|output~5_combout\,
	datad => \alu_inc_0|and_10|output~combout\,
	combout => \alu_inc_0|and_4|output~combout\);

-- Location: LCCOMB_X15_Y10_N22
\alu_inc_0|xor_3|nand_3|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_3|nand_3|output~5_combout\ = \ALU_COMP~combout\ $ (((\alu_inc_0|xor_3|nand_3|output~4_combout\ & !\ALU_CLEAR~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_3|nand_3|output~4_combout\,
	datac => \ALU_CLEAR~combout\,
	datad => \ALU_COMP~combout\,
	combout => \alu_inc_0|xor_3|nand_3|output~5_combout\);

-- Location: LCCOMB_X15_Y10_N26
\alu_inc_0|and_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|and_2|output~combout\ = (\alu_inc_0|xor_2|nand_3|output~5_combout\ & (\alu_inc_0|and_4|output~combout\ & \alu_inc_0|xor_3|nand_3|output~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inc_0|xor_2|nand_3|output~5_combout\,
	datac => \alu_inc_0|and_4|output~combout\,
	datad => \alu_inc_0|xor_3|nand_3|output~5_combout\,
	combout => \alu_inc_0|and_2|output~combout\);

-- Location: LCCOMB_X15_Y9_N2
\alu_inc_0|xor_1|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_1|nand_3|output~1_combout\ = (\alu_out_mux|output[11]~17_combout\ & (\AC_input~combout\(1) & ((\alu_out_mux|output[11]~18_combout\) # (\ALU_OUT_SEL_2~combout\)))) # (!\alu_out_mux|output[11]~17_combout\ & 
-- (\alu_out_mux|output[11]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~18_combout\,
	datab => \ALU_OUT_SEL_2~combout\,
	datac => \alu_out_mux|output[11]~17_combout\,
	datad => \AC_input~combout\(1),
	combout => \alu_inc_0|xor_1|nand_3|output~1_combout\);

-- Location: LCCOMB_X15_Y9_N4
\alu_inc_0|xor_1|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_1|nand_3|output~0_combout\ = (\AC_input~combout\(1) & ((\alu_out_mux|output[11]~18_combout\ & ((\alu_out_mux|output[11]~17_combout\))) # (!\alu_out_mux|output[11]~18_combout\ & ((!\alu_out_mux|output[11]~17_combout\) # 
-- (!\ALU_OUT_SEL_2~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~18_combout\,
	datab => \ALU_OUT_SEL_2~combout\,
	datac => \alu_out_mux|output[11]~17_combout\,
	datad => \AC_input~combout\(1),
	combout => \alu_inc_0|xor_1|nand_3|output~0_combout\);

-- Location: LCCOMB_X15_Y9_N14
\alu_inc_0|xor_1|nand_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_1|nand_3|output~3_combout\ = (\alu_inc_0|xor_1|nand_3|output~0_combout\ & (\alu_out_mux|output[11]~16_combout\)) # (!\alu_inc_0|xor_1|nand_3|output~0_combout\ & (\alu_inc_0|xor_1|nand_3|output~1_combout\ & 
-- ((\alu_main_0|alu_add_0|adder_1|nand_7|output~2_combout\) # (!\alu_out_mux|output[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~16_combout\,
	datab => \alu_inc_0|xor_1|nand_3|output~1_combout\,
	datac => \alu_inc_0|xor_1|nand_3|output~0_combout\,
	datad => \alu_main_0|alu_add_0|adder_1|nand_7|output~2_combout\,
	combout => \alu_inc_0|xor_1|nand_3|output~3_combout\);

-- Location: LCCOMB_X15_Y9_N16
\alu_inc_0|xor_1|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_1|nand_3|output~2_combout\ = (\alu_inc_0|xor_1|nand_3|output~1_combout\ & (\alu_inc_0|xor_1|nand_3|output~0_combout\ & ((!\alu_main_0|alu_add_0|adder_1|nand_7|output~2_combout\) # (!\alu_out_mux|output[11]~16_combout\)))) # 
-- (!\alu_inc_0|xor_1|nand_3|output~1_combout\ & (\alu_out_mux|output[11]~16_combout\ & (!\alu_inc_0|xor_1|nand_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~16_combout\,
	datab => \alu_inc_0|xor_1|nand_3|output~1_combout\,
	datac => \alu_inc_0|xor_1|nand_3|output~0_combout\,
	datad => \alu_main_0|alu_add_0|adder_1|nand_7|output~2_combout\,
	combout => \alu_inc_0|xor_1|nand_3|output~2_combout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\register_bus_input[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_register_bus_input(1),
	combout => \register_bus_input~combout\(1));

-- Location: LCCOMB_X15_Y9_N12
\alu_inc_0|xor_1|nand_3|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_1|nand_3|output~4_combout\ = (\ALU_OUT_SEL_0~combout\ & (((\register_bus_input~combout\(1))))) # (!\ALU_OUT_SEL_0~combout\ & (\alu_inc_0|xor_1|nand_3|output~3_combout\ $ (((\alu_inc_0|xor_1|nand_3|output~2_combout\ & 
-- \register_bus_input~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_OUT_SEL_0~combout\,
	datab => \alu_inc_0|xor_1|nand_3|output~3_combout\,
	datac => \alu_inc_0|xor_1|nand_3|output~2_combout\,
	datad => \register_bus_input~combout\(1),
	combout => \alu_inc_0|xor_1|nand_3|output~4_combout\);

-- Location: LCCOMB_X15_Y10_N24
\alu_inc_0|xor_1|nand_3|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_1|nand_3|output~5_combout\ = \ALU_COMP~combout\ $ (((\alu_inc_0|xor_1|nand_3|output~4_combout\ & !\ALU_CLEAR~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inc_0|xor_1|nand_3|output~4_combout\,
	datac => \ALU_CLEAR~combout\,
	datad => \ALU_COMP~combout\,
	combout => \alu_inc_0|xor_1|nand_3|output~5_combout\);

-- Location: LCCOMB_X15_Y10_N10
\alu_inc_0|and_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|and_0|output~combout\ = (\alu_inc_0|and_2|output~combout\ & (\alu_inc_0|xor_1|nand_3|output~5_combout\ & (\alu_clr_0|and_0|output~0_combout\ $ (\ALU_COMP~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_clr_0|and_0|output~0_combout\,
	datab => \alu_inc_0|and_2|output~combout\,
	datac => \alu_inc_0|xor_1|nand_3|output~5_combout\,
	datad => \ALU_COMP~combout\,
	combout => \alu_inc_0|and_0|output~combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y13_N2
\alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y13_N0
\alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\alu_comp_0|or_10|output~combout\ & (((\clk~combout\ & !\alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\))) # 
-- (!\alu_comp_0|or_10|output~combout\ & (!\alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\ & ((!\alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_comp_0|or_10|output~combout\,
	datab => \alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \clk~combout\,
	datad => \alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y13_N28
\alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk~combout\ & (\alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk~combout\ & ((\alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X13_Y10_N16
\alu_out_mux|output[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[6]~36_combout\ = (\ALU_OUT_SEL_1~combout\ & ((\ALU_FUNC_SEL_0~combout\))) # (!\ALU_OUT_SEL_1~combout\ & (\ALU_OUT_SEL_2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_OUT_SEL_2~combout\,
	datac => \ALU_FUNC_SEL_0~combout\,
	datad => \ALU_OUT_SEL_1~combout\,
	combout => \alu_out_mux|output[6]~36_combout\);

-- Location: LCCOMB_X13_Y9_N20
\alu_out_mux|output[7]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[7]~31_combout\ = (\alu_out_mux|output[6]~36_combout\ & (\AC_input~combout\(7) & ((\register_bus_input~combout\(7)) # (!\alu_out_mux|output[11]~18_combout\)))) # (!\alu_out_mux|output[6]~36_combout\ & 
-- (((\alu_out_mux|output[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC_input~combout\(7),
	datab => \register_bus_input~combout\(7),
	datac => \alu_out_mux|output[6]~36_combout\,
	datad => \alu_out_mux|output[11]~18_combout\,
	combout => \alu_out_mux|output[7]~31_combout\);

-- Location: LCCOMB_X13_Y9_N22
\alu_out_mux|output[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[7]~32_combout\ = (\alu_out_mux|output[11]~16_combout\ & ((\alu_out_mux|output[7]~31_combout\ & ((\alu_main_0|alu_add_0|adder_1|nand_7|output~14_combout\))) # (!\alu_out_mux|output[7]~31_combout\ & 
-- (\alu_main_0|alu_or_0|or_7|output~combout\)))) # (!\alu_out_mux|output[11]~16_combout\ & (((\alu_out_mux|output[7]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_main_0|alu_or_0|or_7|output~combout\,
	datab => \alu_out_mux|output[11]~16_combout\,
	datac => \alu_out_mux|output[7]~31_combout\,
	datad => \alu_main_0|alu_add_0|adder_1|nand_7|output~14_combout\,
	combout => \alu_out_mux|output[7]~32_combout\);

-- Location: LCCOMB_X13_Y9_N24
\alu_clr_0|and_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_clr_0|and_7|output~0_combout\ = (\register_bus_input~combout\(7) & (!\ALU_CLEAR~combout\ & \ALU_OUT_SEL_0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_bus_input~combout\(7),
	datac => \ALU_CLEAR~combout\,
	datad => \ALU_OUT_SEL_0~combout\,
	combout => \alu_clr_0|and_7|output~0_combout\);

-- Location: LCCOMB_X13_Y9_N18
\alu_inc_0|xor_7|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_7|nand_3|output~0_combout\ = \ALU_COMP~combout\ $ (((\alu_clr_0|and_7|output~0_combout\) # ((\alu_clr_0|and_11|output~1_combout\ & \alu_out_mux|output[7]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_clr_0|and_11|output~1_combout\,
	datab => \alu_out_mux|output[7]~32_combout\,
	datac => \alu_clr_0|and_7|output~0_combout\,
	datad => \ALU_COMP~combout\,
	combout => \alu_inc_0|xor_7|nand_3|output~0_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\register_bus_input[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_register_bus_input(8),
	combout => \register_bus_input~combout\(8));

-- Location: LCCOMB_X13_Y9_N26
\alu_clr_0|and_8|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_clr_0|and_8|output~0_combout\ = (!\ALU_CLEAR~combout\ & (\register_bus_input~combout\(8) & \ALU_OUT_SEL_0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CLEAR~combout\,
	datac => \register_bus_input~combout\(8),
	datad => \ALU_OUT_SEL_0~combout\,
	combout => \alu_clr_0|and_8|output~0_combout\);

-- Location: LCCOMB_X13_Y9_N14
\alu_out_mux|output[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[8]~29_combout\ = (\alu_out_mux|output[6]~36_combout\ & (\AC_input~combout\(8) & ((\register_bus_input~combout\(8)) # (!\alu_out_mux|output[11]~18_combout\)))) # (!\alu_out_mux|output[6]~36_combout\ & 
-- (((\alu_out_mux|output[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC_input~combout\(8),
	datab => \register_bus_input~combout\(8),
	datac => \alu_out_mux|output[6]~36_combout\,
	datad => \alu_out_mux|output[11]~18_combout\,
	combout => \alu_out_mux|output[8]~29_combout\);

-- Location: LCCOMB_X13_Y9_N4
\alu_out_mux|output[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[8]~30_combout\ = (\alu_out_mux|output[11]~16_combout\ & ((\alu_out_mux|output[8]~29_combout\ & ((\alu_main_0|alu_add_0|adder_1|nand_7|output~16_combout\))) # (!\alu_out_mux|output[8]~29_combout\ & 
-- (\alu_main_0|alu_or_0|or_8|output~combout\)))) # (!\alu_out_mux|output[11]~16_combout\ & (((\alu_out_mux|output[8]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_main_0|alu_or_0|or_8|output~combout\,
	datab => \alu_out_mux|output[11]~16_combout\,
	datac => \alu_out_mux|output[8]~29_combout\,
	datad => \alu_main_0|alu_add_0|adder_1|nand_7|output~16_combout\,
	combout => \alu_out_mux|output[8]~30_combout\);

-- Location: LCCOMB_X13_Y9_N28
\alu_inc_0|xor_8|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_8|nand_3|output~0_combout\ = \ALU_COMP~combout\ $ (((\alu_clr_0|and_8|output~0_combout\) # ((\alu_clr_0|and_11|output~1_combout\ & \alu_out_mux|output[8]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_clr_0|and_11|output~1_combout\,
	datab => \alu_clr_0|and_8|output~0_combout\,
	datac => \alu_out_mux|output[8]~30_combout\,
	datad => \ALU_COMP~combout\,
	combout => \alu_inc_0|xor_8|nand_3|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N24
\alu_rot_0|and_7_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_7_1|output~0_combout\ = (!\alu_inc_0|xor_8|nand_3|output~0_combout\) # (!\alu_inc_0|xor_9|nand_3|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_9|nand_3|output~0_combout\,
	datad => \alu_inc_0|xor_8|nand_3|output~0_combout\,
	combout => \alu_rot_0|and_7_1|output~0_combout\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ALU_ROT_1,
	combout => \ALU_ROT_1~combout\);

-- Location: LCCOMB_X17_Y10_N22
\alu_rot_0|and_7_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_7_1|output~combout\ = (\ALU_ROT_1~combout\ & (\alu_inc_0|xor_7|nand_3|output~0_combout\ $ (((\alu_inc_0|and_10|output~combout\ & !\alu_rot_0|and_7_1|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|and_10|output~combout\,
	datab => \alu_inc_0|xor_7|nand_3|output~0_combout\,
	datac => \alu_rot_0|and_7_1|output~0_combout\,
	datad => \ALU_ROT_1~combout\,
	combout => \alu_rot_0|and_7_1|output~combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ALU_ROT_2,
	combout => \ALU_ROT_2~combout\);

-- Location: LCCOMB_X18_Y10_N14
\alu_rot_0|alu_rot_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|alu_rot_0~0_combout\ = (\ALU_ROT_2~combout\) # (\ALU_ROT_1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_ROT_2~combout\,
	datad => \ALU_ROT_1~combout\,
	combout => \alu_rot_0|alu_rot_0~0_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_input[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_AC_input(9),
	combout => \AC_input~combout\(9));

-- Location: LCCOMB_X14_Y9_N4
\alu_main_0|alu_or_0|or_9|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_main_0|alu_or_0|or_9|output~combout\ = (\register_bus_input~combout\(9)) # (\AC_input~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_bus_input~combout\(9),
	datad => \AC_input~combout\(9),
	combout => \alu_main_0|alu_or_0|or_9|output~combout\);

-- Location: LCCOMB_X14_Y9_N2
\alu_out_mux|output[9]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[9]~27_combout\ = (\alu_out_mux|output[6]~36_combout\ & (\AC_input~combout\(9) & ((\register_bus_input~combout\(9)) # (!\alu_out_mux|output[11]~18_combout\)))) # (!\alu_out_mux|output[6]~36_combout\ & 
-- (\alu_out_mux|output[11]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[11]~18_combout\,
	datab => \register_bus_input~combout\(9),
	datac => \alu_out_mux|output[6]~36_combout\,
	datad => \AC_input~combout\(9),
	combout => \alu_out_mux|output[9]~27_combout\);

-- Location: LCCOMB_X14_Y9_N0
\alu_out_mux|output[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[9]~28_combout\ = (\alu_out_mux|output[11]~16_combout\ & ((\alu_out_mux|output[9]~27_combout\ & (\alu_main_0|alu_add_0|adder_1|nand_7|output~18_combout\)) # (!\alu_out_mux|output[9]~27_combout\ & 
-- ((\alu_main_0|alu_or_0|or_9|output~combout\))))) # (!\alu_out_mux|output[11]~16_combout\ & (((\alu_out_mux|output[9]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_main_0|alu_add_0|adder_1|nand_7|output~18_combout\,
	datab => \alu_out_mux|output[11]~16_combout\,
	datac => \alu_main_0|alu_or_0|or_9|output~combout\,
	datad => \alu_out_mux|output[9]~27_combout\,
	combout => \alu_out_mux|output[9]~28_combout\);

-- Location: LCCOMB_X14_Y10_N18
\alu_clr_0|and_9|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_clr_0|and_9|output~0_combout\ = (!\ALU_CLEAR~combout\ & (\register_bus_input~combout\(9) & \ALU_OUT_SEL_0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CLEAR~combout\,
	datab => \register_bus_input~combout\(9),
	datac => \ALU_OUT_SEL_0~combout\,
	combout => \alu_clr_0|and_9|output~0_combout\);

-- Location: LCCOMB_X14_Y10_N28
\alu_inc_0|xor_9|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_9|nand_3|output~0_combout\ = \ALU_COMP~combout\ $ (((\alu_clr_0|and_9|output~0_combout\) # ((\alu_clr_0|and_11|output~1_combout\ & \alu_out_mux|output[9]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_clr_0|and_11|output~1_combout\,
	datab => \alu_out_mux|output[9]~28_combout\,
	datac => \ALU_COMP~combout\,
	datad => \alu_clr_0|and_9|output~0_combout\,
	combout => \alu_inc_0|xor_9|nand_3|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N8
\alu_rot_0|and_9_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_9_2|output~combout\ = (\ALU_ROT_2~combout\ & (\alu_inc_0|and_10|output~combout\ $ (\alu_inc_0|xor_9|nand_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|and_10|output~combout\,
	datac => \alu_inc_0|xor_9|nand_3|output~0_combout\,
	datad => \ALU_ROT_2~combout\,
	combout => \alu_rot_0|and_9_2|output~combout\);

-- Location: LCCOMB_X18_Y10_N2
\alu_rot_0|or_3_8|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_8|output~0_combout\ = (\alu_rot_0|and_7_1|output~combout\) # ((\alu_rot_0|and_9_2|output~combout\) # ((\alu_inc_0|xor_8|nand_3|output~1_combout\ & !\alu_rot_0|alu_rot_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_8|nand_3|output~1_combout\,
	datab => \alu_rot_0|and_7_1|output~combout\,
	datac => \alu_rot_0|alu_rot_0~0_combout\,
	datad => \alu_rot_0|and_9_2|output~combout\,
	combout => \alu_rot_0|or_3_8|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N4
\alu_rot_0|and_6_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_6_0|output~0_combout\ = ((!\alu_inc_0|xor_8|nand_3|output~0_combout\) # (!\alu_inc_0|xor_7|nand_3|output~0_combout\)) # (!\alu_inc_0|xor_9|nand_3|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_9|nand_3|output~0_combout\,
	datab => \alu_inc_0|xor_7|nand_3|output~0_combout\,
	datad => \alu_inc_0|xor_8|nand_3|output~0_combout\,
	combout => \alu_rot_0|and_6_0|output~0_combout\);

-- Location: LCCOMB_X15_Y10_N18
\alu_clr_0|and_6|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_clr_0|and_6|output~0_combout\ = (\ALU_OUT_SEL_0~combout\ & (!\ALU_CLEAR~combout\ & \register_bus_input~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_OUT_SEL_0~combout\,
	datac => \ALU_CLEAR~combout\,
	datad => \register_bus_input~combout\(6),
	combout => \alu_clr_0|and_6|output~0_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_input[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_AC_input(6),
	combout => \AC_input~combout\(6));

-- Location: LCCOMB_X15_Y10_N2
\alu_out_mux|output[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[6]~25_combout\ = (\alu_out_mux|output[6]~36_combout\ & (\AC_input~combout\(6) & ((\register_bus_input~combout\(6)) # (!\alu_out_mux|output[11]~18_combout\)))) # (!\alu_out_mux|output[6]~36_combout\ & 
-- (((\alu_out_mux|output[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_mux|output[6]~36_combout\,
	datab => \register_bus_input~combout\(6),
	datac => \alu_out_mux|output[11]~18_combout\,
	datad => \AC_input~combout\(6),
	combout => \alu_out_mux|output[6]~25_combout\);

-- Location: LCCOMB_X15_Y10_N20
\alu_out_mux|output[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_out_mux|output[6]~26_combout\ = (\alu_out_mux|output[11]~16_combout\ & ((\alu_out_mux|output[6]~25_combout\ & ((\alu_main_0|alu_add_0|adder_1|nand_7|output~12_combout\))) # (!\alu_out_mux|output[6]~25_combout\ & 
-- (\alu_main_0|alu_or_0|or_6|output~combout\)))) # (!\alu_out_mux|output[11]~16_combout\ & (((\alu_out_mux|output[6]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_main_0|alu_or_0|or_6|output~combout\,
	datab => \alu_out_mux|output[11]~16_combout\,
	datac => \alu_main_0|alu_add_0|adder_1|nand_7|output~12_combout\,
	datad => \alu_out_mux|output[6]~25_combout\,
	combout => \alu_out_mux|output[6]~26_combout\);

-- Location: LCCOMB_X15_Y10_N28
\alu_inc_0|xor_6|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_6|nand_3|output~0_combout\ = \ALU_COMP~combout\ $ (((\alu_clr_0|and_6|output~0_combout\) # ((\alu_clr_0|and_11|output~1_combout\ & \alu_out_mux|output[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_clr_0|and_11|output~1_combout\,
	datab => \alu_clr_0|and_6|output~0_combout\,
	datac => \alu_out_mux|output[6]~26_combout\,
	datad => \ALU_COMP~combout\,
	combout => \alu_inc_0|xor_6|nand_3|output~0_combout\);

-- Location: LCCOMB_X18_Y10_N30
\alu_rot_0|and_6_0|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_6_0|output~1_combout\ = (!\alu_rot_0|alu_rot_0~0_combout\ & (\alu_inc_0|xor_6|nand_3|output~0_combout\ $ (((!\alu_rot_0|and_6_0|output~0_combout\ & \alu_inc_0|and_10|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_0|alu_rot_0~0_combout\,
	datab => \alu_rot_0|and_6_0|output~0_combout\,
	datac => \alu_inc_0|xor_6|nand_3|output~0_combout\,
	datad => \alu_inc_0|and_10|output~combout\,
	combout => \alu_rot_0|and_6_0|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N6
\alu_inc_0|xor_7|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_7|nand_3|output~1_combout\ = \alu_inc_0|xor_7|nand_3|output~0_combout\ $ (((\alu_inc_0|xor_9|nand_3|output~0_combout\ & (\alu_inc_0|and_10|output~combout\ & \alu_inc_0|xor_8|nand_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_9|nand_3|output~0_combout\,
	datab => \alu_inc_0|xor_7|nand_3|output~0_combout\,
	datac => \alu_inc_0|and_10|output~combout\,
	datad => \alu_inc_0|xor_8|nand_3|output~0_combout\,
	combout => \alu_inc_0|xor_7|nand_3|output~1_combout\);

-- Location: LCCOMB_X18_Y10_N20
\alu_rot_0|or_3_6|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_6|output~0_combout\ = (\alu_rot_0|and_5_1|output~combout\) # ((\alu_rot_0|and_6_0|output~1_combout\) # ((\alu_inc_0|xor_7|nand_3|output~1_combout\ & \ALU_ROT_2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_0|and_5_1|output~combout\,
	datab => \alu_rot_0|and_6_0|output~1_combout\,
	datac => \alu_inc_0|xor_7|nand_3|output~1_combout\,
	datad => \ALU_ROT_2~combout\,
	combout => \alu_rot_0|or_3_6|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N14
\alu_inc_0|and_7|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|and_7|output~combout\ = (\alu_inc_0|xor_9|nand_3|output~0_combout\ & (\alu_inc_0|xor_7|nand_3|output~0_combout\ & (\alu_inc_0|and_10|output~combout\ & \alu_inc_0|xor_8|nand_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_9|nand_3|output~0_combout\,
	datab => \alu_inc_0|xor_7|nand_3|output~0_combout\,
	datac => \alu_inc_0|and_10|output~combout\,
	datad => \alu_inc_0|xor_8|nand_3|output~0_combout\,
	combout => \alu_inc_0|and_7|output~combout\);

-- Location: LCCOMB_X18_Y10_N26
\alu_rot_0|and_5_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_5_2|output~combout\ = (\ALU_ROT_2~combout\ & (\alu_inc_0|xor_5|nand_3|output~5_combout\ $ (((\alu_inc_0|xor_6|nand_3|output~0_combout\ & \alu_inc_0|and_7|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_6|nand_3|output~0_combout\,
	datab => \ALU_ROT_2~combout\,
	datac => \alu_inc_0|xor_5|nand_3|output~5_combout\,
	datad => \alu_inc_0|and_7|output~combout\,
	combout => \alu_rot_0|and_5_2|output~combout\);

-- Location: LCCOMB_X18_Y10_N4
\alu_rot_0|and_3_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_3_1|output~combout\ = (\ALU_ROT_1~combout\ & (\alu_inc_0|and_4|output~combout\ $ (\alu_inc_0|xor_3|nand_3|output~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inc_0|and_4|output~combout\,
	datac => \alu_inc_0|xor_3|nand_3|output~5_combout\,
	datad => \ALU_ROT_1~combout\,
	combout => \alu_rot_0|and_3_1|output~combout\);

-- Location: LCCOMB_X18_Y10_N28
\alu_inc_0|xor_4|nand_3|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_4|nand_3|output~6_combout\ = \alu_inc_0|xor_4|nand_3|output~5_combout\ $ (((\alu_inc_0|xor_6|nand_3|output~0_combout\ & (\alu_inc_0|xor_5|nand_3|output~5_combout\ & \alu_inc_0|and_7|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_6|nand_3|output~0_combout\,
	datab => \alu_inc_0|xor_4|nand_3|output~5_combout\,
	datac => \alu_inc_0|xor_5|nand_3|output~5_combout\,
	datad => \alu_inc_0|and_7|output~combout\,
	combout => \alu_inc_0|xor_4|nand_3|output~6_combout\);

-- Location: LCCOMB_X18_Y10_N18
\alu_rot_0|or_3_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_4|output~combout\ = (\alu_rot_0|and_5_2|output~combout\) # ((\alu_rot_0|and_3_1|output~combout\) # ((!\alu_rot_0|alu_rot_0~0_combout\ & \alu_inc_0|xor_4|nand_3|output~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_0|alu_rot_0~0_combout\,
	datab => \alu_rot_0|and_5_2|output~combout\,
	datac => \alu_rot_0|and_3_1|output~combout\,
	datad => \alu_inc_0|xor_4|nand_3|output~6_combout\,
	combout => \alu_rot_0|or_3_4|output~combout\);

-- Location: LCCOMB_X18_Y10_N12
\alu_comp_0|or_10|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_comp_0|or_10|output~1_combout\ = (\alu_comp_0|or_10|output~0_combout\) # ((\alu_rot_0|or_3_8|output~0_combout\) # ((\alu_rot_0|or_3_6|output~0_combout\) # (\alu_rot_0|or_3_4|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_comp_0|or_10|output~0_combout\,
	datab => \alu_rot_0|or_3_8|output~0_combout\,
	datac => \alu_rot_0|or_3_6|output~0_combout\,
	datad => \alu_rot_0|or_3_4|output~combout\,
	combout => \alu_comp_0|or_10|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N28
\alu_inc_0|xor_1|nand_3|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_1|nand_3|output~6_combout\ = \alu_inc_0|xor_1|nand_3|output~5_combout\ $ (((\alu_inc_0|and_4|output~combout\ & (\alu_inc_0|xor_2|nand_3|output~5_combout\ & \alu_inc_0|xor_3|nand_3|output~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|and_4|output~combout\,
	datab => \alu_inc_0|xor_1|nand_3|output~5_combout\,
	datac => \alu_inc_0|xor_2|nand_3|output~5_combout\,
	datad => \alu_inc_0|xor_3|nand_3|output~5_combout\,
	combout => \alu_inc_0|xor_1|nand_3|output~6_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LINK_input~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_LINK_input,
	combout => \LINK_input~combout\);

-- Location: LCCOMB_X19_Y10_N18
\alu_rot_0|or_3_0|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_0|output~2_combout\ = (\ALU_ROT_1~combout\ & ((\LINK_input~combout\) # ((\alu_inc_0|xor_1|nand_3|output~6_combout\ & \ALU_ROT_2~combout\)))) # (!\ALU_ROT_1~combout\ & (\alu_inc_0|xor_1|nand_3|output~6_combout\ & (\ALU_ROT_2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_ROT_1~combout\,
	datab => \alu_inc_0|xor_1|nand_3|output~6_combout\,
	datac => \ALU_ROT_2~combout\,
	datad => \LINK_input~combout\,
	combout => \alu_rot_0|or_3_0|output~2_combout\);

-- Location: LCCOMB_X15_Y10_N12
\alu_inc_0|xor_0|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_0|nand_3|output~0_combout\ = \alu_clr_0|and_0|output~0_combout\ $ (\ALU_COMP~combout\ $ (((\alu_inc_0|and_2|output~combout\ & \alu_inc_0|xor_1|nand_3|output~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_clr_0|and_0|output~0_combout\,
	datab => \alu_inc_0|and_2|output~combout\,
	datac => \alu_inc_0|xor_1|nand_3|output~5_combout\,
	datad => \ALU_COMP~combout\,
	combout => \alu_inc_0|xor_0|nand_3|output~0_combout\);

-- Location: LCCOMB_X19_Y10_N4
\alu_rot_0|or_3_0|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_0|output~3_combout\ = (\alu_rot_0|or_3_0|output~2_combout\) # ((!\ALU_ROT_2~combout\ & (!\ALU_ROT_1~combout\ & \alu_inc_0|xor_0|nand_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_ROT_2~combout\,
	datab => \alu_rot_0|or_3_0|output~2_combout\,
	datac => \ALU_ROT_1~combout\,
	datad => \alu_inc_0|xor_0|nand_3|output~0_combout\,
	combout => \alu_rot_0|or_3_0|output~3_combout\);

-- Location: LCCOMB_X18_Y10_N6
\alu_rot_0|and_6_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_6_2|output~combout\ = (\ALU_ROT_2~combout\ & (\alu_inc_0|and_7|output~combout\ $ (\alu_inc_0|xor_6|nand_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|and_7|output~combout\,
	datac => \alu_inc_0|xor_6|nand_3|output~0_combout\,
	datad => \ALU_ROT_2~combout\,
	combout => \alu_rot_0|and_6_2|output~combout\);

-- Location: LCCOMB_X18_Y10_N16
\alu_rot_0|and_5_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_5_0|output~0_combout\ = (!\alu_rot_0|alu_rot_0~0_combout\ & (\alu_inc_0|xor_5|nand_3|output~5_combout\ $ (((\alu_inc_0|xor_6|nand_3|output~0_combout\ & \alu_inc_0|and_7|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_6|nand_3|output~0_combout\,
	datab => \alu_rot_0|alu_rot_0~0_combout\,
	datac => \alu_inc_0|xor_5|nand_3|output~5_combout\,
	datad => \alu_inc_0|and_7|output~combout\,
	combout => \alu_rot_0|and_5_0|output~0_combout\);

-- Location: LCCOMB_X19_Y10_N26
\alu_rot_0|or_3_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_5|output~0_combout\ = (\alu_rot_0|and_6_2|output~combout\) # ((\alu_rot_0|and_5_0|output~0_combout\) # ((\ALU_ROT_1~combout\ & \alu_inc_0|xor_4|nand_3|output~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_ROT_1~combout\,
	datab => \alu_inc_0|xor_4|nand_3|output~6_combout\,
	datac => \alu_rot_0|and_6_2|output~combout\,
	datad => \alu_rot_0|and_5_0|output~0_combout\,
	combout => \alu_rot_0|or_3_5|output~0_combout\);

-- Location: LCCOMB_X19_Y10_N12
\alu_rot_0|or_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_3|output~0_combout\ = (\ALU_ROT_1~combout\ & (\alu_inc_0|xor_2|nand_3|output~5_combout\ $ (((\alu_inc_0|and_4|output~combout\ & \alu_inc_0|xor_3|nand_3|output~5_combout\))))) # (!\ALU_ROT_1~combout\ & (\alu_inc_0|and_4|output~combout\ $ 
-- (((\alu_inc_0|xor_3|nand_3|output~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|and_4|output~combout\,
	datab => \alu_inc_0|xor_2|nand_3|output~5_combout\,
	datac => \ALU_ROT_1~combout\,
	datad => \alu_inc_0|xor_3|nand_3|output~5_combout\,
	combout => \alu_rot_0|or_3_3|output~0_combout\);

-- Location: LCCOMB_X19_Y10_N22
\alu_rot_0|or_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_3|output~1_combout\ = (\ALU_ROT_2~combout\ & ((\alu_inc_0|xor_4|nand_3|output~6_combout\) # ((\ALU_ROT_1~combout\ & \alu_rot_0|or_3_3|output~0_combout\)))) # (!\ALU_ROT_2~combout\ & (((\alu_rot_0|or_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_ROT_2~combout\,
	datab => \alu_inc_0|xor_4|nand_3|output~6_combout\,
	datac => \ALU_ROT_1~combout\,
	datad => \alu_rot_0|or_3_3|output~0_combout\,
	combout => \alu_rot_0|or_3_3|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N6
\alu_rot_0|and_2_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_2_0|output~0_combout\ = (!\alu_rot_0|alu_rot_0~0_combout\ & (\alu_inc_0|xor_2|nand_3|output~5_combout\ $ (((\alu_inc_0|and_4|output~combout\ & \alu_inc_0|xor_3|nand_3|output~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|and_4|output~combout\,
	datab => \alu_inc_0|xor_2|nand_3|output~5_combout\,
	datac => \alu_rot_0|alu_rot_0~0_combout\,
	datad => \alu_inc_0|xor_3|nand_3|output~5_combout\,
	combout => \alu_rot_0|and_2_0|output~0_combout\);

-- Location: LCCOMB_X19_Y10_N0
\alu_rot_0|or_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_2|output~0_combout\ = (\alu_rot_0|and_3_2|output~combout\) # ((\alu_rot_0|and_2_0|output~0_combout\) # ((\alu_inc_0|xor_1|nand_3|output~6_combout\ & \ALU_ROT_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_0|and_3_2|output~combout\,
	datab => \alu_inc_0|xor_1|nand_3|output~6_combout\,
	datac => \ALU_ROT_1~combout\,
	datad => \alu_rot_0|and_2_0|output~0_combout\,
	combout => \alu_rot_0|or_3_2|output~0_combout\);

-- Location: LCCOMB_X19_Y10_N20
\alu_comp_0|or_10|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_comp_0|or_10|output~2_combout\ = (\alu_rot_0|or_3_5|output~0_combout\) # ((\alu_rot_0|or_3_3|output~1_combout\) # (\alu_rot_0|or_3_2|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_rot_0|or_3_5|output~0_combout\,
	datac => \alu_rot_0|or_3_3|output~1_combout\,
	datad => \alu_rot_0|or_3_2|output~0_combout\,
	combout => \alu_comp_0|or_10|output~2_combout\);

-- Location: LCCOMB_X19_Y10_N30
\alu_rot_0|and_1_0|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_1_0|output~2_combout\ = (!\ALU_ROT_1~combout\ & (\alu_inc_0|xor_1|nand_3|output~6_combout\ & !\ALU_ROT_2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_ROT_1~combout\,
	datab => \alu_inc_0|xor_1|nand_3|output~6_combout\,
	datac => \ALU_ROT_2~combout\,
	combout => \alu_rot_0|and_1_0|output~2_combout\);

-- Location: LCCOMB_X19_Y10_N10
\alu_rot_0|or_3_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_1|output~combout\ = (\alu_rot_0|and_2_2|output~combout\) # ((\alu_rot_0|and_1_0|output~2_combout\) # ((\ALU_ROT_1~combout\ & \alu_inc_0|xor_0|nand_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_0|and_2_2|output~combout\,
	datab => \alu_rot_0|and_1_0|output~2_combout\,
	datac => \ALU_ROT_1~combout\,
	datad => \alu_inc_0|xor_0|nand_3|output~0_combout\,
	combout => \alu_rot_0|or_3_1|output~combout\);

-- Location: LCCOMB_X19_Y10_N14
\alu_comp_0|or_10|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_comp_0|or_10|output~combout\ = (\alu_comp_0|or_10|output~1_combout\) # ((\alu_rot_0|or_3_0|output~3_combout\) # ((\alu_comp_0|or_10|output~2_combout\) # (\alu_rot_0|or_3_1|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_comp_0|or_10|output~1_combout\,
	datab => \alu_rot_0|or_3_0|output~3_combout\,
	datac => \alu_comp_0|or_10|output~2_combout\,
	datad => \alu_rot_0|or_3_1|output~combout\,
	combout => \alu_comp_0|or_10|output~combout\);

-- Location: LCCOMB_X17_Y10_N16
\alu_rot_0|and_8_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_8_2|output~combout\ = (\ALU_ROT_2~combout\ & (\alu_inc_0|xor_8|nand_3|output~0_combout\ $ (((\alu_inc_0|xor_9|nand_3|output~0_combout\ & \alu_inc_0|and_10|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_9|nand_3|output~0_combout\,
	datab => \ALU_ROT_2~combout\,
	datac => \alu_inc_0|and_10|output~combout\,
	datad => \alu_inc_0|xor_8|nand_3|output~0_combout\,
	combout => \alu_rot_0|and_8_2|output~combout\);

-- Location: LCCOMB_X18_Y10_N8
\alu_rot_0|and_6_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_6_1|output~combout\ = (\ALU_ROT_1~combout\ & (\alu_inc_0|xor_6|nand_3|output~0_combout\ $ (((\alu_inc_0|and_10|output~combout\ & !\alu_rot_0|and_6_0|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_6|nand_3|output~0_combout\,
	datab => \alu_inc_0|and_10|output~combout\,
	datac => \alu_rot_0|and_6_0|output~0_combout\,
	datad => \ALU_ROT_1~combout\,
	combout => \alu_rot_0|and_6_1|output~combout\);

-- Location: LCCOMB_X18_Y10_N10
\alu_rot_0|or_3_7|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_7|output~combout\ = (\alu_rot_0|and_8_2|output~combout\) # ((\alu_rot_0|and_6_1|output~combout\) # ((!\alu_rot_0|alu_rot_0~0_combout\ & \alu_inc_0|xor_7|nand_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_0|alu_rot_0~0_combout\,
	datab => \alu_rot_0|and_8_2|output~combout\,
	datac => \alu_inc_0|xor_7|nand_3|output~1_combout\,
	datad => \alu_rot_0|and_6_1|output~combout\,
	combout => \alu_rot_0|or_3_7|output~combout\);

-- Location: LCCOMB_X20_Y10_N0
\alu_inc_0|xor_10|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_inc_0|xor_10|nand_3|output~0_combout\ = \alu_clr_0|and_10|output~0_combout\ $ (((\ALU_INC~combout\ & (\alu_clr_0|and_11|output~0_combout\)) # (!\ALU_INC~combout\ & ((\ALU_COMP~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_clr_0|and_10|output~0_combout\,
	datab => \ALU_INC~combout\,
	datac => \alu_clr_0|and_11|output~0_combout\,
	datad => \ALU_COMP~combout\,
	combout => \alu_inc_0|xor_10|nand_3|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N0
\alu_rot_0|or_3_9|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_9|output~0_combout\ = (\ALU_ROT_1~combout\ & (\alu_inc_0|xor_8|nand_3|output~0_combout\ $ (((\alu_inc_0|xor_9|nand_3|output~0_combout\ & \alu_inc_0|and_10|output~combout\))))) # (!\ALU_ROT_1~combout\ & 
-- (\alu_inc_0|xor_9|nand_3|output~0_combout\ $ ((\alu_inc_0|and_10|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|xor_9|nand_3|output~0_combout\,
	datab => \ALU_ROT_1~combout\,
	datac => \alu_inc_0|and_10|output~combout\,
	datad => \alu_inc_0|xor_8|nand_3|output~0_combout\,
	combout => \alu_rot_0|or_3_9|output~0_combout\);

-- Location: LCCOMB_X20_Y10_N10
\alu_rot_0|or_3_9|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_9|output~1_combout\ = (\ALU_ROT_2~combout\ & ((\alu_inc_0|xor_10|nand_3|output~0_combout\) # ((\alu_rot_0|or_3_9|output~0_combout\ & \ALU_ROT_1~combout\)))) # (!\ALU_ROT_2~combout\ & (((\alu_rot_0|or_3_9|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_ROT_2~combout\,
	datab => \alu_inc_0|xor_10|nand_3|output~0_combout\,
	datac => \alu_rot_0|or_3_9|output~0_combout\,
	datad => \ALU_ROT_1~combout\,
	combout => \alu_rot_0|or_3_9|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N18
\alu_rot_0|and_9_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_9_1|output~combout\ = (\ALU_ROT_1~combout\ & (\alu_inc_0|and_10|output~combout\ $ (\alu_inc_0|xor_9|nand_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inc_0|and_10|output~combout\,
	datac => \alu_inc_0|xor_9|nand_3|output~0_combout\,
	datad => \ALU_ROT_1~combout\,
	combout => \alu_rot_0|and_9_1|output~combout\);

-- Location: LCCOMB_X20_Y10_N26
\alu_rot_0|and_11_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_11_2|output~combout\ = (\ALU_ROT_2~combout\ & (\ALU_INC~combout\ $ (\alu_clr_0|and_11|output~0_combout\ $ (\ALU_COMP~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_ROT_2~combout\,
	datab => \ALU_INC~combout\,
	datac => \alu_clr_0|and_11|output~0_combout\,
	datad => \ALU_COMP~combout\,
	combout => \alu_rot_0|and_11_2|output~combout\);

-- Location: LCCOMB_X20_Y10_N22
\alu_rot_0|or_3_10|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_10|output~combout\ = (\alu_rot_0|and_9_1|output~combout\) # ((\alu_rot_0|and_11_2|output~combout\) # ((!\alu_rot_0|alu_rot_0~0_combout\ & \alu_inc_0|xor_10|nand_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_0|alu_rot_0~0_combout\,
	datab => \alu_inc_0|xor_10|nand_3|output~0_combout\,
	datac => \alu_rot_0|and_9_1|output~combout\,
	datad => \alu_rot_0|and_11_2|output~combout\,
	combout => \alu_rot_0|or_3_10|output~combout\);

-- Location: LCCOMB_X20_Y10_N12
\alu_rot_0|and_link_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_link_2|output~combout\ = (\ALU_ROT_2~combout\ & \LINK_input~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_ROT_2~combout\,
	datad => \LINK_input~combout\,
	combout => \alu_rot_0|and_link_2|output~combout\);

-- Location: LCCOMB_X20_Y10_N14
\alu_rot_0|and_11_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_11_0|output~0_combout\ = (!\alu_rot_0|alu_rot_0~0_combout\ & (\ALU_INC~combout\ $ (\alu_clr_0|and_11|output~0_combout\ $ (\ALU_COMP~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_0|alu_rot_0~0_combout\,
	datab => \ALU_INC~combout\,
	datac => \alu_clr_0|and_11|output~0_combout\,
	datad => \ALU_COMP~combout\,
	combout => \alu_rot_0|and_11_0|output~0_combout\);

-- Location: LCCOMB_X20_Y10_N20
\alu_rot_0|or_3_11|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_11|output~0_combout\ = (\alu_rot_0|and_link_2|output~combout\) # ((\alu_rot_0|and_11_0|output~0_combout\) # ((\alu_inc_0|xor_10|nand_3|output~0_combout\ & \ALU_ROT_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_0|and_link_2|output~combout\,
	datab => \alu_inc_0|xor_10|nand_3|output~0_combout\,
	datac => \alu_rot_0|and_11_0|output~0_combout\,
	datad => \ALU_ROT_1~combout\,
	combout => \alu_rot_0|or_3_11|output~0_combout\);

-- Location: LCCOMB_X20_Y10_N4
\alu_rot_0|and_11_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_11_1|output~combout\ = (\ALU_ROT_1~combout\ & (\ALU_INC~combout\ $ (\ALU_COMP~combout\ $ (\alu_clr_0|and_11|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_INC~combout\,
	datab => \ALU_COMP~combout\,
	datac => \alu_clr_0|and_11|output~0_combout\,
	datad => \ALU_ROT_1~combout\,
	combout => \alu_rot_0|and_11_1|output~combout\);

-- Location: LCCOMB_X19_Y10_N8
\alu_rot_0|and_link_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|and_link_0|output~combout\ = (!\ALU_ROT_1~combout\ & (!\ALU_ROT_2~combout\ & \LINK_input~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_ROT_1~combout\,
	datac => \ALU_ROT_2~combout\,
	datad => \LINK_input~combout\,
	combout => \alu_rot_0|and_link_0|output~combout\);

-- Location: LCCOMB_X19_Y10_N2
\alu_rot_0|or_3_link|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_rot_0|or_3_link|output~combout\ = (\alu_rot_0|and_11_1|output~combout\) # ((\alu_rot_0|and_link_0|output~combout\) # ((\ALU_ROT_2~combout\ & \alu_inc_0|xor_0|nand_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_0|and_11_1|output~combout\,
	datab => \alu_rot_0|and_link_0|output~combout\,
	datac => \ALU_ROT_2~combout\,
	datad => \alu_inc_0|xor_0|nand_3|output~0_combout\,
	combout => \alu_rot_0|or_3_link|output~combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_A[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_A(0));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_A[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_A(1));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_A[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_A(2));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_A[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_A(3));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_A[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_A(4));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_A[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_A(5));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_A[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_A(6));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_A[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_A(7));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_A[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_A(8));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_A[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_A(9));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_A[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_A(10));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_A[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_A(11));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_B[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_B(0));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_B[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_B(1));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_B[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_B(2));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_B[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_B(3));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_B[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_B(4));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_B[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_B(5));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_B[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_B(6));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_B[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_B(7));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_B[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_B(8));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_B[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_B(9));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_B[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_B(10));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_input_B[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALU_input_B(11));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_LINK_OUT_SEL);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_LINK_COMP);

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \alu_main_0|alu_add_0|adder_1|nand_7|output~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADD_CARRY);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \alu_inc_0|and_0|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_INC_CARRY);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \alu_comp_0|register_0|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IS_ZERO_LAST);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \alu_comp_0|or_10|ALT_INV_output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IS_ZERO);

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \alu_rot_0|or_3_0|output~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IS_NEG);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_bus_output[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \alu_rot_0|or_3_0|output~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_bus_output(0));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_bus_output[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \alu_rot_0|or_3_1|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_bus_output(1));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_bus_output[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \alu_rot_0|or_3_2|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_bus_output(2));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_bus_output[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \alu_rot_0|or_3_3|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_bus_output(3));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_bus_output[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \alu_rot_0|or_3_4|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_bus_output(4));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_bus_output[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \alu_rot_0|or_3_5|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_bus_output(5));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_bus_output[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \alu_rot_0|or_3_6|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_bus_output(6));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_bus_output[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \alu_rot_0|or_3_7|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_bus_output(7));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_bus_output[8]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \alu_rot_0|or_3_8|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_bus_output(8));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_bus_output[9]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \alu_rot_0|or_3_9|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_bus_output(9));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_bus_output[10]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \alu_rot_0|or_3_10|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_bus_output(10));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_bus_output[11]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \alu_rot_0|or_3_11|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_bus_output(11));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LINK_output~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \alu_rot_0|or_3_link|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LINK_output);
END structure;


