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

-- DATE "01/18/2017 17:18:05"

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

ENTITY 	top_level IS
    PORT (
	mem_data_bus_in : IN std_logic_vector(11 DOWNTO 0);
	mem_data_bus_out : OUT std_logic_vector(11 DOWNTO 0);
	mem_addr_bus_out : OUT std_logic_vector(11 DOWNTO 0);
	not_reset : IN std_logic;
	clk_in : IN std_logic;
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
	HLT_indicator : OUT std_logic;
	RUN_indicator : OUT std_logic
	);
END top_level;

-- Design Ports Information
-- mem_data_bus_out[0]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[1]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[2]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[3]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[4]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[5]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[6]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[7]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[8]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[9]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[10]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[11]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[0]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[1]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[2]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[3]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[4]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[5]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[6]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[7]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[8]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[9]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[10]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[11]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HLT_indicator	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RUN_indicator	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_in	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- START	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- END_STATE	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRQ	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRQ_ON	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ASSERT_CONTROL	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- STEP	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[0]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_ADDR_LOAD	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_EXAMINE	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_DEPOSIT	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[1]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[2]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[3]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[4]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[5]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[6]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[7]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[8]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[9]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[10]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[11]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NEXT_STATE	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HRQ	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mem_data_bus_in : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_mem_data_bus_out : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_mem_addr_bus_out : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_clk_in : std_logic;
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
SIGNAL ww_HLT_indicator : std_logic;
SIGNAL ww_RUN_indicator : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control_subsystem_0|control_matrix|END_STATE~5_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|END_STATE~6_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_4|output~0_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~10_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_8|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[11]~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[11]~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_CLEAR~3_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[9]~8_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_7|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[1]~17_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[1]~19_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_LOAD~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_0_1|output~combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|md_input_mux_0|output[6]~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_8_2|output~combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\ : std_logic;
SIGNAL \register_array_0|md_input_mux_0|output[9]~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|NEXT_STATE~4_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|NEXT_STATE~5_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|LOAD[1]~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_10|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_8|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_9|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_1_2|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_4_0|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_2|nand_3_2|output~4_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[2]~23_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[3]~27_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[10]~37_combout\ : std_logic;
SIGNAL \START~combout\ : std_logic;
SIGNAL \FP_EXAMINE~combout\ : std_logic;
SIGNAL \NEXT_STATE~combout\ : std_logic;
SIGNAL \FP_ADDR_LOAD~combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \END_STATE~combout\ : std_logic;
SIGNAL \IRQ~combout\ : std_logic;
SIGNAL \clk_in~combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|and_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ : std_logic;
SIGNAL \ASSERT_CONTROL~combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|END_STATE_out~combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|LOAD[0]~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|LOAD[1]~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|LOAD[0]~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MA_CLR_LO~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MA_CLR_LO~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_LOAD~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_LOAD~4_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|END_STATE~8_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|NEXT_STATE~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|NEXT_STATE~2_combout\ : std_logic;
SIGNAL \IRQ_ON~combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|END_STATE~7_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \FP_DEPOSIT~combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \STEP~combout\ : std_logic;
SIGNAL \HRQ~combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|or_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_COMP~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[0]~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_LOAD~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~2_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[11]~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_ROT_2~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[9]~6_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[9]~7_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~3_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_LOAD_HI~10_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_LOAD_HI~8_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_INC~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_ROT_2~combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_CLEAR~6_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_CLEAR~4_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[10]~38_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[10]~35_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[10]~36_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_clr_0|and_10|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|GROUP_1~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_COMP~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_INC~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_INC~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|and_10|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|and_7|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_6_1|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_7|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|md_input_mux_0|output[7]~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~9_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[7]~33_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[7]~34_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[7]~31_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[7]~32_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_clr_0|and_7|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_7|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~3_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~5_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~4_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~1_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[8]~10_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[8]~11_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_or_0|or_8|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[8]~12_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_clr_0|and_8|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~8_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_9|output~combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[9]~9_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_clr_0|and_9|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~3_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\ : std_logic;
SIGNAL \register_array_0|md_input_mux_0|output[8]~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_ROT_1~combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~6_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_or_0|or_4|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[4]~14_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[4]~15_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[4]~16_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_clr_0|and_4|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_4|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~4_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_5|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~5_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[5]~29_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[5]~30_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_or_0|or_5|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[5]~13_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_clr_0|and_5|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_5_2|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_4|output~combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|and_5|output~combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_LOAD_LO~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_1_0|output~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_1|output~combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~12_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[1]~18_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[1]~20_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_clr_0|and_1|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~7_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[2]~24_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[2]~21_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[2]~22_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_clr_0|and_2|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|and_2|output~combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~11_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~10_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~13_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~8_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~9_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_0_2|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|LINK_LOAD~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|LINK_LOAD~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|LINK_LOAD~2_combout\ : std_logic;
SIGNAL \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\ : std_logic;
SIGNAL \register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_11|output~combout\ : std_logic;
SIGNAL \register_array_0|md_input_mux_0|output[11]~5_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~11_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[11]~4_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[11]~5_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_clr_0|and_11|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_9_1|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_11_2|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ : std_logic;
SIGNAL \register_array_0|md_input_mux_0|output[10]~4_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|AC_LOAD~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|AC_LOAD~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[3]~28_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~8_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[3]~25_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[3]~26_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_clr_0|and_3|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~9_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_0_0|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~5_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~6_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~8_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~4_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~7_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_6|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_7|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \mem_data_bus_in~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \register_array_0|MA_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|ALT_INV_output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\ : std_logic;

BEGIN

ww_mem_data_bus_in <= mem_data_bus_in;
mem_data_bus_out <= ww_mem_data_bus_out;
mem_addr_bus_out <= ww_mem_addr_bus_out;
ww_not_reset <= not_reset;
ww_clk_in <= clk_in;
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
HLT_indicator <= ww_HLT_indicator;
RUN_indicator <= ww_RUN_indicator;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\);
\register_array_0|MA_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\;
\register_array_0|MA_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\;
\register_array_0|MA_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\;
\register_array_0|MA_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\;
\register_array_0|MA_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\;
\register_array_0|MA_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\;
\register_array_0|MA_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\;
\register_array_0|MA_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\;
\register_array_0|MD_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\;
\register_array_0|MD_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\;
\register_array_0|MD_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\;
\register_array_0|MD_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\;
\register_array_0|MD_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\;
\register_array_0|MD_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\;
\register_array_0|MD_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\;
\register_array_0|MD_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\;
\register_array_0|MD_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\;
\register_array_0|MD_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\;
\register_array_0|MD_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\;
\register_array_0|MD_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\;
\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|ALT_INV_output~2_combout\ <= NOT \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\;
\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ <= NOT \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\;
\register_array_0|MA_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\;
\register_array_0|MA_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\;
\register_array_0|MA_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\;
\register_array_0|MA_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\;

-- Location: LCCOMB_X19_Y11_N20
\control_subsystem_0|control_matrix|END_STATE~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|END_STATE~5_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\ & 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\ & 
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|END_STATE~5_combout\);

-- Location: LCCOMB_X19_Y11_N22
\control_subsystem_0|control_matrix|END_STATE~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|END_STATE~6_combout\ = (\control_subsystem_0|control_matrix|END_STATE~5_combout\) # ((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\ & \control_subsystem_0|control_matrix|END_STATE~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|END_STATE~5_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\,
	datad => \control_subsystem_0|control_matrix|END_STATE~8_combout\,
	combout => \control_subsystem_0|control_matrix|END_STATE~6_combout\);

-- Location: LCCOMB_X20_Y11_N0
\control_subsystem_0|control_matrix|PC_LOAD_HI~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\);

-- Location: LCCOMB_X17_Y12_N12
\control_subsystem_0|control_matrix|PC_LOAD_HI~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\ & 
-- (!\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\,
	datac => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\);

-- Location: LCCOMB_X20_Y11_N30
\control_subsystem_0|control_matrix|PC_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\);

-- Location: LCCOMB_X19_Y11_N6
\control_subsystem_0|control_matrix|PC_BUS_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\ & (\control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\ & 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\,
	datab => \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\);

-- Location: LCCOMB_X17_Y11_N4
\control_subsystem_0|control_matrix|MD_BUS_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\) # ((!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & 
-- \control_subsystem_0|control_matrix|MA_CLR_LO~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MA_CLR_LO~0_combout\,
	combout => \control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\);

-- Location: LCCOMB_X21_Y11_N10
\control_subsystem_0|control_matrix|MD_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\) # ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\);

-- Location: LCCOMB_X17_Y11_N14
\control_subsystem_0|control_matrix|MD_BUS_SEL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\) # ((\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & \control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\,
	combout => \control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\);

-- Location: LCCOMB_X18_Y13_N30
\alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0_combout\ = \register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\ $ (\register_array_0|output_mux|output~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \register_array_0|output_mux|output~6_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0_combout\);

-- Location: LCCOMB_X19_Y13_N16
\alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\ = (\alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0_combout\ & ((\register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (!\register_array_0|output_mux|output~8_combout\ & \alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- ((\alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\) # (!\register_array_0|output_mux|output~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \register_array_0|output_mux|output~8_combout\,
	datac => \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0_combout\,
	datad => \alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\);

-- Location: LCCOMB_X20_Y13_N24
\alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~0_combout\ = (\register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ & ((\register_array_0|output_mux|output~5_combout\) # 
-- ((!\alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\ & \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\)))) # (!\register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ & 
-- (!\alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\ & (\register_array_0|output_mux|output~5_combout\ & \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\,
	datac => \register_array_0|output_mux|output~5_combout\,
	datad => \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~0_combout\);

-- Location: LCCOMB_X20_Y12_N0
\alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_4|output~0_combout\ = (\alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~0_combout\ & ((\register_array_0|output_mux|output~9_combout\ & 
-- (\alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~1_combout\ & !\register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\register_array_0|output_mux|output~9_combout\ & 
-- ((\alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~1_combout\) # (!\register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|output_mux|output~9_combout\,
	datab => \alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~1_combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~0_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_4|output~0_combout\);

-- Location: LCCOMB_X19_Y12_N2
\register_array_0|output_mux|output~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~10_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & (((\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\)))) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & 
-- (((\register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\)) # (!\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\,
	combout => \register_array_0|output_mux|output~10_combout\);

-- Location: LCCOMB_X20_Y12_N10
\alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_8|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_8|output~0_combout\ = (\register_array_0|output_mux|output~10_combout\ & (!\register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ & 
-- ((\alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_4|output~0_combout\) # (!\alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\)))) # (!\register_array_0|output_mux|output~10_combout\ & 
-- ((\alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_4|output~0_combout\) # ((!\register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\) # (!\alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|output_mux|output~10_combout\,
	datab => \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_4|output~0_combout\,
	datac => \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_8|output~0_combout\);

-- Location: LCCOMB_X22_Y11_N0
\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\ = (((!\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|control_matrix|AC_LOAD~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|AC_LOAD~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\);

-- Location: LCCOMB_X21_Y13_N22
\alu_subsystem_0|alu_out_mux|output[11]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[11]~2_combout\ = (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & ((\register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\))) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ 
-- & (\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\ & !\register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[11]~2_combout\);

-- Location: LCCOMB_X21_Y13_N20
\alu_subsystem_0|alu_out_mux|output[11]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[11]~3_combout\ = (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (((!\register_array_0|output_mux|output~11_combout\ & !\alu_subsystem_0|alu_out_mux|output[11]~2_combout\)) # 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (((\alu_subsystem_0|alu_out_mux|output[11]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datac => \register_array_0|output_mux|output~11_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[11]~2_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[11]~3_combout\);

-- Location: LCCOMB_X19_Y11_N0
\control_subsystem_0|control_matrix|ALU_CLEAR~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_CLEAR~3_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_CLEAR~3_combout\);

-- Location: LCCOMB_X20_Y12_N20
\alu_subsystem_0|alu_out_mux|output[9]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[9]~8_combout\ = \register_array_0|output_mux|output~10_combout\ $ (((!\alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_4|output~0_combout\ & (\alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\ & 
-- \alu_subsystem_0|alu_out_mux|output[9]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|output_mux|output~10_combout\,
	datab => \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_4|output~0_combout\,
	datac => \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[9]~7_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[9]~8_combout\);

-- Location: LCCOMB_X20_Y9_N14
\alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1_combout\ = \alu_subsystem_0|alu_clr_0|and_9|output~0_combout\ $ (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_clr_0|and_9|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1_combout\);

-- Location: LCCOMB_X20_Y13_N20
\alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_7|output~0_combout\ = \register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ $ (\register_array_0|output_mux|output~5_combout\ $ 
-- (((\alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\) # (!\alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\,
	datac => \register_array_0|output_mux|output~5_combout\,
	datad => \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_7|output~0_combout\);

-- Location: LCCOMB_X19_Y13_N14
\alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~1_combout\ = \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0_combout\ $ (((\register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (!\register_array_0|output_mux|output~8_combout\ & \alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- ((\alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\) # (!\register_array_0|output_mux|output~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \register_array_0|output_mux|output~8_combout\,
	datac => \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0_combout\,
	datad => \alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~1_combout\);

-- Location: LCCOMB_X15_Y9_N10
\alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\ = \alu_subsystem_0|alu_clr_0|and_3|output~0_combout\ $ (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_clr_0|and_3|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\);

-- Location: LCCOMB_X18_Y12_N20
\alu_subsystem_0|alu_out_mux|output[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[1]~17_combout\ = (\register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\ & (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\)) # 
-- (!\register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\ & (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[1]~17_combout\);

-- Location: LCCOMB_X18_Y12_N6
\alu_subsystem_0|alu_out_mux|output[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[1]~19_combout\ = \register_array_0|output_mux|output~12_combout\ $ (((\alu_subsystem_0|alu_out_mux|output[1]~18_combout\ & ((\register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (\register_array_0|output_mux|output~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[1]~18_combout\,
	datac => \register_array_0|output_mux|output~12_combout\,
	datad => \register_array_0|output_mux|output~13_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[1]~19_combout\);

-- Location: LCCOMB_X21_Y9_N24
\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & ((\mem_data_bus_in~combout\(0)))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & 
-- (\alu_subsystem_0|alu_rot_0|or_3_0|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	datac => \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\,
	datad => \mem_data_bus_in~combout\(0),
	combout => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y11_N2
\control_subsystem_0|control_matrix|MD_LOAD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_LOAD~3_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & ((\control_subsystem_0|control_matrix|MD_LOAD~1_combout\) # 
-- ((\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\)))) # 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & 
-- (\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datac => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\,
	datad => \control_subsystem_0|control_matrix|MD_LOAD~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_LOAD~3_combout\);

-- Location: LCCOMB_X22_Y9_N12
\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\ = (\FP_EXAMINE~combout\ & (\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\FP_EXAMINE~combout\ & 
-- (\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\ & ((\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datad => \FP_EXAMINE~combout\,
	combout => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y9_N20
\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y9_N20
\alu_subsystem_0|alu_rot_0|and_0_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_0_1|output~combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & (\alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~9_combout\ $ (((\alu_subsystem_0|alu_inc_0|and_2|output~combout\ & 
-- \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datab => \alu_subsystem_0|alu_inc_0|and_2|output~combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~9_combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_0_1|output~combout\);

-- Location: LCCOMB_X20_Y8_N16
\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & ((\mem_data_bus_in~combout\(2)))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & 
-- (\alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\,
	datac => \mem_data_bus_in~combout\(2),
	datad => \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y9_N10
\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N20
\register_array_0|md_input_mux_0|output[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|md_input_mux_0|output[6]~0_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & ((\mem_data_bus_in~combout\(6)))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & 
-- (\alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	datad => \mem_data_bus_in~combout\(6),
	combout => \register_array_0|md_input_mux_0|output[6]~0_combout\);

-- Location: LCCOMB_X21_Y10_N26
\alu_subsystem_0|alu_rot_0|and_8_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_8_2|output~combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (\alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1_combout\ $ (((\alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1_combout\ & 
-- \alu_subsystem_0|alu_inc_0|and_10|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datac => \alu_subsystem_0|alu_inc_0|and_10|output~combout\,
	datad => \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1_combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_8_2|output~combout\);

-- Location: LCCOMB_X17_Y8_N12
\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N8
\alu_subsystem_0|alu_rot_0|or_3_9|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\ = (\alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_2~combout\) # ((!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & 
-- \alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~3_combout\)))) # (!\alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\ & (!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & ((\alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~3_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N20
\register_array_0|md_input_mux_0|output[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|md_input_mux_0|output[9]~3_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & (\mem_data_bus_in~combout\(9))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_9|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_data_bus_in~combout\(9),
	datab => \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_9|output~combout\,
	combout => \register_array_0|md_input_mux_0|output[9]~3_combout\);

-- Location: LCCOMB_X18_Y10_N8
\control_subsystem_0|control_matrix|MA_LOAD_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\) # ((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\,
	combout => \control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\);

-- Location: LCCOMB_X21_Y10_N6
\register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\ = ((\register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\)) # (!\clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N16
\register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\ = ((\register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\)) # (!\clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X18_Y11_N4
\control_subsystem_0|control_matrix|NEXT_STATE~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|NEXT_STATE~4_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\ & !\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|NEXT_STATE~4_combout\);

-- Location: LCCOMB_X18_Y11_N26
\control_subsystem_0|control_matrix|NEXT_STATE~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|NEXT_STATE~5_combout\ = (\control_subsystem_0|control_matrix|NEXT_STATE~4_combout\) # ((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|NEXT_STATE~4_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|NEXT_STATE~5_combout\);

-- Location: LCCOMB_X17_Y12_N4
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\clk_in~combout\ & ((\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X15_Y10_N30
\register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \clk_in~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N14
\register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N4
\register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \clk_in~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N14
\register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\))))) # (!\clk_in~combout\ & (((\register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y9_N2
\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\ = (\not_reset~combout\ & !\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X22_Y9_N0
\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\ = (\FP_EXAMINE~combout\ & (!\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\FP_EXAMINE~combout\ & 
-- (((!\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\ & \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datad => \FP_EXAMINE~combout\,
	combout => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y9_N20
\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\ = (!\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y11_N12
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~1_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & (!\control_subsystem_0|control_matrix|END_STATE_out~combout\ & 
-- (!\control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\ & !\NEXT_STATE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|END_STATE_out~combout\,
	datac => \control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\,
	datad => \NEXT_STATE~combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~1_combout\);

-- Location: LCCOMB_X21_Y11_N22
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\ & 
-- ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y11_N8
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\) # 
-- ((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- \control_subsystem_0|clock_generator_0|and_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y11_N14
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~1_combout\ & ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\) # (!\not_reset~combout\)))) # 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & (((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datab => \not_reset~combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X18_Y10_N28
\control_subsystem_0|control_matrix|LOAD[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|LOAD[1]~1_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|LOAD[1]~1_combout\);

-- Location: LCCOMB_X18_Y10_N12
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\ & (\control_subsystem_0|control_matrix|LOAD[0]~3_combout\ 
-- & ((\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\)))) # (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\ & ((\not_reset~combout\) # 
-- ((\control_subsystem_0|control_matrix|LOAD[0]~3_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\,
	datab => \control_subsystem_0|control_matrix|LOAD[0]~3_combout\,
	datac => \not_reset~combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y11_N24
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\ & 
-- (((!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\ & !\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\)) # 
-- (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))) # (!\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\ & 
-- (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X21_Y9_N28
\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y9_N18
\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))))) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ & 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y9_N12
\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y9_N6
\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)))) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (((\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ & \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y8_N4
\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N10
\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ & \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\))))) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ & 
-- (((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y12_N8
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & (!\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\ & 
-- ((\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\control_subsystem_0|clock_generator_0|and_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datac => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y12_N2
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~2_combout\ = (\clk_in~combout\ & (\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|clock_generator_0|or_1|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~2_combout\);

-- Location: LCCOMB_X17_Y12_N20
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\ = (!\alu_subsystem_0|alu_rot_0|or_3_11|output~combout\ & ((\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~2_combout\) # ((\not_reset~combout\ & 
-- !\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_11|output~combout\,
	datab => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \not_reset~combout\,
	datad => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y12_N10
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\ = (\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\ & (!\alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ & 
-- (!\alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ & !\alu_subsystem_0|alu_rot_0|or_3_9|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_9|output~combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X18_Y8_N20
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\ = (!\alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\ & (!\alu_subsystem_0|alu_rot_0|or_3_4|output~combout\ & (!\alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\ & 
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_4|output~combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	datad => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\);

-- Location: LCCOMB_X18_Y8_N12
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\ = (!\alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\ & (!\alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\ & 
-- (\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\ & !\alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\,
	datac => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\);

-- Location: LCCOMB_X17_Y12_N18
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\ = (!\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\ & ((\alu_subsystem_0|alu_rot_0|or_3_1|output~combout\) # 
-- ((\alu_subsystem_0|alu_rot_0|or_3_0|output~combout\) # (!\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_1|output~combout\,
	datab => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\,
	datac => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\);

-- Location: LCCOMB_X15_Y10_N10
\register_array_0|PC_register|ms_jk_ff_10|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_10|nand_3_1|output~0_combout\ = (\register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\ & (\alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ & 
-- \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_10|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X15_Y10_N16
\register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~0_combout\ = (\register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\) # ((!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\) # (!\clk_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X15_Y10_N6
\register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_10|output~combout\) # (!\control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~0_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	datac => \control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\,
	datad => \control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X15_Y10_N18
\register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_10|nand_3_1|output~0_combout\ & (((\register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\) # 
-- (!\register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_10|nand_3_1|output~0_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N22
\register_array_0|PC_register|ms_jk_ff_8|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_8|nand_3_1|output~0_combout\ = (\register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\ & (\register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\ & 
-- \alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_8|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X17_Y8_N4
\register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~0_combout\ = ((\register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\)) # (!\clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X18_Y8_N14
\register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\) # (!\control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N18
\register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_8|nand_3_1|output~0_combout\ & ((\register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\) # 
-- ((!\register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~1_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_8|nand_3_1|output~0_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y10_N2
\register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~0_combout\ = ((\alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\) # ((\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\))) # 
-- (!\control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X20_Y10_N20
\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\ & (\register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\ & 
-- \alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y9_N0
\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_5|output~0_combout\) # (((\alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_1~combout\)) # 
-- (!\control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_5|output~0_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datad => \control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y13_N12
\register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y13_N24
\register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\ & ((\register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
-- (!\alu_subsystem_0|alu_rot_0|or_3_4|output~combout\ & !\register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
-- ((!\register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1_combout\) # (!\alu_subsystem_0|alu_rot_0|or_3_4|output~combout\))))) # (!\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\ & 
-- (((!\register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_4|output~combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y8_N30
\register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N0
\register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_4|output~combout\ & (!\register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\ & 
-- ((!\register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\) # (!\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\)))) # (!\alu_subsystem_0|alu_rot_0|or_3_4|output~combout\ & 
-- (((\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\ & !\register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_4|output~combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y12_N0
\register_array_0|AC_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_0|nand_1|output~1_combout\ = (!\register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y12_N10
\register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ & (!\register_array_0|AC_register|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- ((!\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\) # (!\alu_subsystem_0|alu_rot_0|or_3_0|output~combout\)))) # (!\register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ & (((!\alu_subsystem_0|alu_rot_0|or_3_0|output~combout\ 
-- & \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y12_N24
\register_array_0|AC_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_1|nand_1|output~1_combout\ = (!\register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N22
\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N20
\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\ & (!\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- ((!\alu_subsystem_0|alu_rot_0|or_3_0|output~combout\) # (!\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\)))) # (!\register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (((\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\ & !\alu_subsystem_0|alu_rot_0|or_3_0|output~combout\)) # (!\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y8_N6
\register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y13_N20
\register_array_0|AC_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_2|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y13_N14
\register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\ & (!\register_array_0|AC_register|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- ((!\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\) # (!\register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\ & 
-- (((!\register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ & \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y8_N2
\register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N16
\register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\ & (!\register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- ((!\register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\) # (!\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\)))) # (!\alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\ & 
-- (((\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\ & !\register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y12_N16
\register_array_0|AC_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_7|nand_1|output~1_combout\ = (!\register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N20
\register_array_0|AC_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_9|nand_1|output~1_combout\ = (!\register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N6
\register_array_0|PC_register|ms_jk_ff_9|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_9|nand_3_1|output~0_combout\ = (\register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\ & (\register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\ & 
-- \alu_subsystem_0|alu_rot_0|or_3_9|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_9|output~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_9|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X19_Y12_N16
\register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~0_combout\ = ((\register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\)) # (!\clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X19_Y12_N4
\register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_9|output~combout\) # (!\control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~0_combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\,
	datac => \control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_9|output~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N0
\register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_9|nand_3_1|output~0_combout\ & ((\register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\) # 
-- ((!\register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~1_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_9|nand_3_1|output~0_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: LCCOMB_X15_Y10_N22
\register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_11|output~combout\ & (\register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\ & 
-- \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_11|output~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X19_Y9_N24
\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & ((\register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- ((!\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\))) # (!\register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ & (\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & 
-- \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datab => \register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datad => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X19_Y9_N12
\alu_subsystem_0|alu_rot_0|and_1_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_1_2|output~combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (\alu_subsystem_0|alu_inc_0|and_2|output~combout\ $ (\alu_subsystem_0|alu_clr_0|and_1|output~0_combout\ $ 
-- (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datab => \alu_subsystem_0|alu_inc_0|and_2|output~combout\,
	datac => \alu_subsystem_0|alu_clr_0|and_1|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_1_2|output~combout\);

-- Location: LCCOMB_X15_Y9_N20
\alu_subsystem_0|alu_rot_0|and_4_0|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_4_0|output~2_combout\ = (!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & (\alu_subsystem_0|alu_inc_0|and_5|output~combout\ $ (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\ $ 
-- (\alu_subsystem_0|alu_clr_0|and_4|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|and_5|output~combout\,
	datab => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	datac => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datad => \alu_subsystem_0|alu_clr_0|and_4|output~0_combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_4_0|output~2_combout\);

-- Location: LCCOMB_X18_Y13_N10
\register_array_0|MA_register|ms_jk_ff_2|nand_3_2|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_2|nand_3_2|output~4_combout\ = (\control_subsystem_0|control_matrix|MA_CLR_LO~1_combout\ & (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & \clk_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|MA_CLR_LO~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_2|nand_3_2|output~4_combout\);

-- Location: LCCOMB_X19_Y13_N20
\alu_subsystem_0|alu_out_mux|output[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[2]~23_combout\ = ((!\register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ & !\register_array_0|output_mux|output~7_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \register_array_0|output_mux|output~7_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[2]~23_combout\);

-- Location: LCCOMB_X19_Y13_N24
\alu_subsystem_0|alu_out_mux|output[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[3]~27_combout\ = ((!\register_array_0|output_mux|output~8_combout\ & !\register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \register_array_0|output_mux|output~8_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[3]~27_combout\);

-- Location: LCCOMB_X21_Y13_N4
\alu_subsystem_0|alu_out_mux|output[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[10]~37_combout\ = ((!\register_array_0|output_mux|output~2_combout\ & !\register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \register_array_0|output_mux|output~2_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[10]~37_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_START,
	combout => \START~combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data_bus_in[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_mem_data_bus_in(0),
	combout => \mem_data_bus_in~combout\(0));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_FP_EXAMINE,
	combout => \FP_EXAMINE~combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data_bus_in[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_mem_data_bus_in(2),
	combout => \mem_data_bus_in~combout\(2));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data_bus_in[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_mem_data_bus_in(6),
	combout => \mem_data_bus_in~combout\(6));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data_bus_in[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_mem_data_bus_in(8),
	combout => \mem_data_bus_in~combout\(8));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data_bus_in[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_mem_data_bus_in(9),
	combout => \mem_data_bus_in~combout\(9));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_FP_ADDR_LOAD,
	combout => \FP_ADDR_LOAD~combout\);

-- Location: LCCOMB_X18_Y9_N4
\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & !\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datad => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y9_N2
\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\ = (\FP_ADDR_LOAD~combout\ & (((!\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\FP_ADDR_LOAD~combout\ & 
-- (((\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\ & !\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datab => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \FP_ADDR_LOAD~combout\,
	datad => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y9_N8
\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\ = (\FP_ADDR_LOAD~combout\ & (((\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\FP_ADDR_LOAD~combout\ & 
-- (\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\ & ((\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datab => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \FP_ADDR_LOAD~combout\,
	datad => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_in~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_clk_in,
	combout => \clk_in~combout\);

-- Location: LCCOMB_X22_Y11_N16
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & 
-- ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\clk_in~combout\ & (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\,
	datab => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X21_Y11_N26
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & !\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N14
\control_subsystem_0|clock_generator_0|and_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|and_1|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & \clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \clk_in~combout\,
	combout => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\);

-- Location: LCCOMB_X21_Y11_N16
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- (((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|clock_generator_0|and_1|output~1_combout\)))) # 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X22_Y11_N26
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & 
-- ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\clk_in~combout\ & (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y11_N8
\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ = (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\);

-- Location: LCCOMB_X18_Y10_N26
\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))) # 
-- (!\clk_in~combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \clk_in~combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N14
\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & !\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\);

-- Location: LCCOMB_X18_Y10_N4
\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y10_N8
\control_subsystem_0|control_matrix|END_STATE_out\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|END_STATE_out~combout\ = (\END_STATE~combout\) # ((\control_subsystem_0|control_matrix|END_STATE~7_combout\ & !\ASSERT_CONTROL~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \END_STATE~combout\,
	datac => \control_subsystem_0|control_matrix|END_STATE~7_combout\,
	datad => \ASSERT_CONTROL~combout\,
	combout => \control_subsystem_0|control_matrix|END_STATE_out~combout\);

-- Location: LCCOMB_X19_Y10_N24
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~0_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\) # 
-- (((!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\ & !\control_subsystem_0|control_matrix|END_STATE_out~combout\)) # (!\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|END_STATE_out~combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X19_Y10_N4
\control_subsystem_0|control_matrix|LOAD[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|LOAD[0]~0_combout\ = (\IRQ_ON~combout\ & (\IRQ~combout\ & (\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\ & !\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRQ_ON~combout\,
	datab => \IRQ~combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|LOAD[0]~0_combout\);

-- Location: LCCOMB_X19_Y10_N26
\control_subsystem_0|control_matrix|LOAD[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|LOAD[1]~2_combout\ = (\control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\ & (!\control_subsystem_0|control_matrix|END_STATE~7_combout\ & ((\control_subsystem_0|control_matrix|LOAD[1]~1_combout\) # 
-- (\control_subsystem_0|control_matrix|LOAD[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|LOAD[1]~1_combout\,
	datab => \control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\,
	datac => \control_subsystem_0|control_matrix|LOAD[0]~0_combout\,
	datad => \control_subsystem_0|control_matrix|END_STATE~7_combout\,
	combout => \control_subsystem_0|control_matrix|LOAD[1]~2_combout\);

-- Location: LCCOMB_X19_Y10_N16
\control_subsystem_0|control_matrix|LOAD[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|LOAD[0]~3_combout\ = (\control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\ & (\control_subsystem_0|control_matrix|LOAD[0]~0_combout\ & !\control_subsystem_0|control_matrix|END_STATE~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\,
	datac => \control_subsystem_0|control_matrix|LOAD[0]~0_combout\,
	datad => \control_subsystem_0|control_matrix|END_STATE~7_combout\,
	combout => \control_subsystem_0|control_matrix|LOAD[0]~3_combout\);

-- Location: LCCOMB_X19_Y10_N0
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\ = (!\control_subsystem_0|control_matrix|END_STATE_out~combout\ & (!\control_subsystem_0|control_matrix|LOAD[1]~2_combout\ & ((\NEXT_STATE~combout\) # 
-- (\control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEXT_STATE~combout\,
	datab => \control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\,
	datac => \control_subsystem_0|control_matrix|END_STATE_out~combout\,
	datad => \control_subsystem_0|control_matrix|LOAD[1]~2_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N10
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\ = (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|control_matrix|LOAD[0]~3_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|LOAD[0]~3_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X19_Y10_N12
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\ & ((\control_subsystem_0|control_matrix|LOAD[1]~2_combout\) # (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\,
	datac => \control_subsystem_0|control_matrix|LOAD[1]~2_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N22
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\ = (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ & 
-- (((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\) # (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~0_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_3_3|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y11_N14
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\))) # (!\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y11_N6
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\ = (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\ & ((\control_subsystem_0|clock_generator_0|and_1|output~1_combout\) # 
-- (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y11_N10
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & 
-- (((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\)))) # (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\ & ((\control_subsystem_0|control_matrix|END_STATE_out~combout\) # (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\,
	datac => \control_subsystem_0|control_matrix|END_STATE_out~combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y11_N2
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\ & 
-- (((!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)))) # (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\ & 
-- (((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X18_Y11_N6
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ = (GLOBAL(\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\) & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)) # (!GLOBAL(\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\) & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y11_N30
\control_subsystem_0|control_matrix|MA_CLR_LO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MA_CLR_LO~0_combout\ = (\IRQ_ON~combout\ & (\IRQ~combout\ & (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & 
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRQ_ON~combout\,
	datab => \IRQ~combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MA_CLR_LO~0_combout\);

-- Location: LCCOMB_X17_Y11_N16
\control_subsystem_0|control_matrix|MA_CLR_LO~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MA_CLR_LO~1_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & 
-- (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & \control_subsystem_0|control_matrix|MA_CLR_LO~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MA_CLR_LO~0_combout\,
	combout => \control_subsystem_0|control_matrix|MA_CLR_LO~1_combout\);

-- Location: LCCOMB_X20_Y11_N4
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\ = (!\NEXT_STATE~combout\ & (!\control_subsystem_0|control_matrix|END_STATE_out~combout\ & 
-- !\control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEXT_STATE~combout\,
	datab => \control_subsystem_0|control_matrix|END_STATE_out~combout\,
	datac => \control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X21_Y11_N4
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~1_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|and_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X22_Y11_N10
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\ = (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X22_Y11_N24
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~2_combout\ = (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \not_reset~combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X21_Y11_N2
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~1_combout\ & 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\ & ((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~2_combout\) # 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~1_combout\)))) # (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~1_combout\ & 
-- (((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~2_combout\)) # (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~2_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X22_Y11_N6
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & 
-- ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\))))) # (!\clk_in~combout\ & (((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y10_N10
\control_subsystem_0|control_matrix|PC_LOAD_HI~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\ = (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\);

-- Location: LCCOMB_X18_Y10_N14
\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\)))) # (!\clk_in~combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y11_N28
\control_subsystem_0|control_matrix|MD_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_LOAD~2_combout\ = (\control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & !\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_LOAD~2_combout\);

-- Location: LCCOMB_X18_Y11_N12
\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ = (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\);

-- Location: LCCOMB_X18_Y11_N0
\control_subsystem_0|control_matrix|MD_LOAD~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_LOAD~4_combout\ = (\control_subsystem_0|control_matrix|MA_CLR_LO~1_combout\) # ((\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & 
-- ((\control_subsystem_0|control_matrix|MD_LOAD~3_combout\) # (\control_subsystem_0|control_matrix|MD_LOAD~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_LOAD~3_combout\,
	datab => \control_subsystem_0|control_matrix|MA_CLR_LO~1_combout\,
	datac => \control_subsystem_0|control_matrix|MD_LOAD~2_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_LOAD~4_combout\);

-- Location: LCCOMB_X18_Y11_N24
\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & 
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\);

-- Location: LCCOMB_X17_Y11_N6
\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & ((\control_subsystem_0|control_matrix|MD_LOAD~4_combout\) # 
-- ((\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datac => \control_subsystem_0|control_matrix|MD_LOAD~4_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X20_Y8_N6
\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N26
\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\ = (\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\ & (!\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # (!\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\ & 
-- (((!\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ & \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X20_Y8_N28
\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\)))) # (!\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y11_N30
\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\);

-- Location: LCCOMB_X17_Y11_N26
\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ = (\clk_in~combout\ & (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & 
-- (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X20_Y8_N0
\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N18
\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)))) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (((\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ & \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y10_N30
\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\))))) # (!\clk_in~combout\ & (((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y11_N2
\control_subsystem_0|control_matrix|END_STATE~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|END_STATE~8_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & 
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|END_STATE~8_combout\);

-- Location: LCCOMB_X19_Y11_N26
\control_subsystem_0|control_matrix|NEXT_STATE~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|NEXT_STATE~3_combout\ = (\control_subsystem_0|control_matrix|NEXT_STATE~2_combout\) # ((\control_subsystem_0|control_matrix|END_STATE~8_combout\ & 
-- ((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\) # (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|NEXT_STATE~2_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|END_STATE~8_combout\,
	combout => \control_subsystem_0|control_matrix|NEXT_STATE~3_combout\);

-- Location: LCCOMB_X19_Y10_N28
\control_subsystem_0|control_matrix|NEXT_STATE_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\ = (!\ASSERT_CONTROL~combout\ & ((\control_subsystem_0|control_matrix|NEXT_STATE~3_combout\) # ((\control_subsystem_0|control_matrix|NEXT_STATE~5_combout\ & 
-- !\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|NEXT_STATE~5_combout\,
	datab => \control_subsystem_0|control_matrix|NEXT_STATE~3_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\,
	datad => \ASSERT_CONTROL~combout\,
	combout => \control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\);

-- Location: LCCOMB_X19_Y10_N6
\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\ = (\clk_in~combout\ & (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\NEXT_STATE~combout\) # 
-- (\control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEXT_STATE~combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|NEXT_STATE_out~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\);

-- Location: CLKCTRL_G4
\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y11_N16
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ = (GLOBAL(\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\) & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))) # (!GLOBAL(\control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\) & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y11_N22
\control_subsystem_0|control_matrix|NEXT_STATE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|NEXT_STATE~2_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & 
-- (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & \control_subsystem_0|control_matrix|MA_CLR_LO~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MA_CLR_LO~0_combout\,
	combout => \control_subsystem_0|control_matrix|NEXT_STATE~2_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y10_N2
\control_subsystem_0|control_matrix|END_STATE~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|END_STATE~7_combout\ = (\control_subsystem_0|control_matrix|NEXT_STATE~2_combout\) # ((\control_subsystem_0|control_matrix|END_STATE~6_combout\ & ((!\IRQ_ON~combout\) # (!\IRQ~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|END_STATE~6_combout\,
	datab => \IRQ~combout\,
	datac => \control_subsystem_0|control_matrix|NEXT_STATE~2_combout\,
	datad => \IRQ_ON~combout\,
	combout => \control_subsystem_0|control_matrix|END_STATE~7_combout\);

-- Location: LCCOMB_X18_Y13_N0
\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & ((\END_STATE~combout\) # ((\control_subsystem_0|control_matrix|END_STATE~7_combout\ & 
-- !\ASSERT_CONTROL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datab => \END_STATE~combout\,
	datac => \control_subsystem_0|control_matrix|END_STATE~7_combout\,
	datad => \ASSERT_CONTROL~combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_FP_DEPOSIT,
	combout => \FP_DEPOSIT~combout\);

-- Location: LCCOMB_X18_Y9_N26
\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\ = (\FP_DEPOSIT~combout\ & (((!\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\FP_DEPOSIT~combout\ & 
-- (((!\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\ & \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \FP_DEPOSIT~combout\,
	datac => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y9_N14
\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\ = (\FP_DEPOSIT~combout\ & (((\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\FP_DEPOSIT~combout\ & 
-- (\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\ & ((\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FP_DEPOSIT~combout\,
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datac => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_STEP,
	combout => \STEP~combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X18_Y9_N30
\control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\clk_in~combout\ & (\HRQ~combout\ & 
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \clk_in~combout\,
	datac => \HRQ~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y13_N28
\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~1_combout\ = (!\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\ & (\not_reset~combout\ & 
-- ((\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\) # (!\control_subsystem_0|clock_generator_0|and_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y13_N20
\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\ = (!\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~1_combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- ((!\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\) # (!\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y9_N12
\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\))))) # (!\clk_in~combout\ & (((\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y9_N10
\control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\) # (((\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\)) # (!\clk_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y9_N22
\control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\ = (!\control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~1_combout\ & (((\control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~2_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X18_Y9_N18
\control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\))))) # (!\clk_in~combout\ & (((\control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y9_N24
\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\START~combout\) # ((\control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\ & ((\STEP~combout\) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~combout\,
	datab => \STEP~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y9_N28
\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\,
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y9_N6
\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\);

-- Location: LCCOMB_X18_Y9_N16
\control_subsystem_0|clock_generator_0|or_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|or_1|output~0_combout\ = (((!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\) # (!\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\,
	combout => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\);

-- Location: LCCOMB_X21_Y9_N30
\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y9_N26
\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\ = (\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\ & (!\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\ & 
-- (((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X21_Y9_N0
\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y11_N18
\control_subsystem_0|control_matrix|MD_IN_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\);

-- Location: LCCOMB_X18_Y11_N22
\control_subsystem_0|control_matrix|MD_IN_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\) # ((\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datab => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data_bus_in[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_mem_data_bus_in(1),
	combout => \mem_data_bus_in~combout\(1));

-- Location: LCCOMB_X21_Y9_N2
\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & ((\mem_data_bus_in~combout\(1)))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & 
-- (\alu_subsystem_0|alu_rot_0|or_3_1|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_1|output~combout\,
	datac => \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\,
	datad => \mem_data_bus_in~combout\(1),
	combout => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y9_N16
\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\ = (\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\ & 
-- (\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (((!\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X21_Y9_N22
\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\)))) # (!\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y11_N4
\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\);

-- Location: LCCOMB_X20_Y8_N2
\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N14
\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\register_array_0|md_input_mux_0|output[6]~0_combout\ & (!\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\register_array_0|md_input_mux_0|output[6]~0_combout\ & 
-- (((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|md_input_mux_0|output[6]~0_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y8_N12
\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y11_N10
\control_subsystem_0|control_matrix|ALU_COMP~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_COMP~2_combout\ = (\control_subsystem_0|control_matrix|GROUP_1~0_combout\ & (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & !\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\);

-- Location: LCCOMB_X19_Y11_N12
\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\);

-- Location: LCCOMB_X18_Y10_N20
\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\))) # 
-- (!\clk_in~combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y11_N14
\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~3_combout\ = (\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~3_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data_bus_in[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_mem_data_bus_in(10),
	combout => \mem_data_bus_in~combout\(10));

-- Location: LCCOMB_X17_Y11_N20
\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & \control_subsystem_0|control_matrix|MA_CLR_LO~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MA_CLR_LO~0_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\);

-- Location: LCCOMB_X17_Y11_N12
\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\ = (\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\) # ((\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & 
-- ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\);

-- Location: LCCOMB_X18_Y10_N16
\control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & !\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\);

-- Location: LCCOMB_X17_Y12_N14
\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~0_combout\ = (\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\) # ((\control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\ & 
-- (\control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\ & \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\,
	datac => \control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~0_combout\);

-- Location: LCCOMB_X21_Y11_N0
\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ = (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\);

-- Location: LCCOMB_X21_Y11_N30
\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~1_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (((\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\)))) # 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~1_combout\);

-- Location: LCCOMB_X17_Y11_N28
\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~0_combout\) # 
-- ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~0_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\);

-- Location: LCCOMB_X20_Y11_N26
\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\) # ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\) # ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\ & 
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\);

-- Location: LCCOMB_X20_Y13_N16
\alu_subsystem_0|alu_out_mux|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[0]~0_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[0]~0_combout\);

-- Location: LCCOMB_X19_Y11_N4
\control_subsystem_0|control_matrix|PC_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\ = (\control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\) # ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\);

-- Location: LCCOMB_X20_Y11_N24
\control_subsystem_0|control_matrix|MD_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_LOAD~1_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- !\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_LOAD~1_combout\);

-- Location: LCCOMB_X17_Y11_N24
\control_subsystem_0|control_matrix|MD_BUS_SEL~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ = (\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\ & (\control_subsystem_0|control_matrix|MD_LOAD~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\))) # (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\ & 
-- ((\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\) # ((\control_subsystem_0|control_matrix|MD_LOAD~1_combout\ & 
-- \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\,
	datab => \control_subsystem_0|control_matrix|MD_LOAD~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\);

-- Location: LCCOMB_X18_Y11_N8
\control_subsystem_0|control_matrix|MD_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & 
-- !\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\);

-- Location: LCCOMB_X18_Y11_N28
\control_subsystem_0|control_matrix|MD_BUS_SEL~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\) # ((\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\) # ((\control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datac => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\);

-- Location: LCCOMB_X15_Y10_N20
\register_array_0|output_mux|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & (((\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\)))) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	datad => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\,
	combout => \register_array_0|output_mux|output~2_combout\);

-- Location: LCCOMB_X21_Y13_N0
\register_array_0|AC_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_10|nand_1|output~1_combout\ = (!\register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y11_N30
\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~0_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X19_Y11_N16
\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\) # 
-- ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\);

-- Location: LCCOMB_X21_Y13_N18
\register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\ = (\register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\ & (!\register_array_0|AC_register|ms_jk_ff_10|nand_1|output~1_combout\ & 
-- ((!\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\) # (!\alu_subsystem_0|alu_rot_0|or_3_10|output~combout\)))) # (!\register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
-- (((!\alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ & \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_10|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y13_N12
\register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y13_N24
\alu_subsystem_0|alu_out_mux|output[11]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[11]~1_combout\ = (\alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_8|output~0_combout\ & (\register_array_0|output_mux|output~2_combout\ & \register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\)) # 
-- (!\alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_8|output~0_combout\ & ((\register_array_0|output_mux|output~2_combout\) # (\register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_8|output~0_combout\,
	datac => \register_array_0|output_mux|output~2_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[11]~1_combout\);

-- Location: LCCOMB_X21_Y11_N18
\control_subsystem_0|control_matrix|ALU_ROT_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_ROT_2~1_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_ROT_2~1_combout\);

-- Location: LCCOMB_X20_Y12_N24
\alu_subsystem_0|alu_out_mux|output[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[9]~6_combout\ = (\register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\))) # 
-- (!\register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ & (\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\ & !\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[9]~6_combout\);

-- Location: LCCOMB_X20_Y12_N26
\alu_subsystem_0|alu_out_mux|output[9]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[9]~7_combout\ = (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (((!\register_array_0|output_mux|output~10_combout\ & !\alu_subsystem_0|alu_out_mux|output[9]~6_combout\)) # 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (((\alu_subsystem_0|alu_out_mux|output[9]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|output_mux|output~10_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datac => \alu_subsystem_0|alu_out_mux|output[9]~6_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[9]~7_combout\);

-- Location: LCCOMB_X17_Y9_N22
\register_array_0|output_mux|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~3_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & (((\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\)))) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	datad => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\,
	combout => \register_array_0|output_mux|output~3_combout\);

-- Location: LCCOMB_X22_Y10_N2
\register_array_0|AC_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X22_Y10_N24
\register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\ & (!\register_array_0|AC_register|ms_jk_ff_6|nand_1|output~1_combout\ & 
-- ((!\register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\) # (!\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\)))) # (!\alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\ & 
-- (((\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\ & !\register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_6|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X22_Y10_N22
\register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y10_N2
\control_subsystem_0|control_matrix|PC_CLR_HI~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & !\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\);

-- Location: LCCOMB_X18_Y10_N18
\control_subsystem_0|control_matrix|PC_LOAD_HI~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_LOAD_HI~10_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & (\control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ & 
-- ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\) # (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_LOAD_HI~10_combout\);

-- Location: LCCOMB_X18_Y10_N24
\control_subsystem_0|control_matrix|PC_LOAD_HI~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_LOAD_HI~8_combout\ = (!\control_subsystem_0|control_matrix|NEXT_STATE~2_combout\ & ((!\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\) # 
-- (!\control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|NEXT_STATE~2_combout\,
	datac => \control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	combout => \control_subsystem_0|control_matrix|PC_LOAD_HI~8_combout\);

-- Location: LCCOMB_X18_Y10_N22
\control_subsystem_0|control_matrix|ALU_INC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_INC~1_combout\ = (!\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\ & (((!\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\) # 
-- (!\control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_INC~1_combout\);

-- Location: LCCOMB_X18_Y10_N10
\control_subsystem_0|control_matrix|PC_LOAD_HI~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\ = ((\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((\control_subsystem_0|control_matrix|PC_LOAD_HI~10_combout\) # 
-- (!\control_subsystem_0|control_matrix|ALU_INC~1_combout\)))) # (!\control_subsystem_0|control_matrix|PC_LOAD_HI~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~10_combout\,
	datac => \control_subsystem_0|control_matrix|PC_LOAD_HI~8_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_INC~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\);

-- Location: LCCOMB_X18_Y10_N6
\register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\ & \clk_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\);

-- Location: LCCOMB_X19_Y12_N26
\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N28
\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\ = (\register_array_0|md_input_mux_0|output[9]~3_combout\ & (!\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # (!\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\)))) # (!\register_array_0|md_input_mux_0|output[9]~3_combout\ & 
-- (((!\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ & \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|md_input_mux_0|output[9]~3_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y12_N8
\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y11_N28
\control_subsystem_0|control_matrix|ALU_ROT_2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_ROT_2~combout\ = (\control_subsystem_0|control_matrix|GROUP_1~0_combout\ & (\control_subsystem_0|control_matrix|ALU_ROT_2~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & !\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_ROT_2~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\);

-- Location: LCCOMB_X18_Y11_N10
\control_subsystem_0|control_matrix|ALU_CLEAR~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_CLEAR~6_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_CLEAR~6_combout\);

-- Location: LCCOMB_X20_Y11_N22
\control_subsystem_0|control_matrix|ALU_CLEAR~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_CLEAR~4_combout\ = (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_CLEAR~4_combout\);

-- Location: LCCOMB_X20_Y11_N20
\control_subsystem_0|control_matrix|ALU_CLEAR~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_CLEAR~3_combout\) # 
-- ((\control_subsystem_0|control_matrix|ALU_CLEAR~6_combout\ & \control_subsystem_0|control_matrix|ALU_CLEAR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_CLEAR~3_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_CLEAR~6_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_CLEAR~4_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\);

-- Location: LCCOMB_X21_Y13_N26
\alu_subsystem_0|alu_out_mux|output[10]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[10]~38_combout\ = (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (\alu_subsystem_0|alu_out_mux|output[10]~37_combout\)) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & 
-- (((\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\ & !\register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_out_mux|output[10]~37_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[10]~38_combout\);

-- Location: LCCOMB_X21_Y13_N8
\alu_subsystem_0|alu_out_mux|output[10]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[10]~35_combout\ = (\alu_subsystem_0|alu_out_mux|output[10]~38_combout\ & (\alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_8|output~0_combout\ $ (\register_array_0|output_mux|output~2_combout\ $ 
-- (\register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\)))) # (!\alu_subsystem_0|alu_out_mux|output[10]~38_combout\ & (((!\register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\) # 
-- (!\register_array_0|output_mux|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_8|output~0_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[10]~38_combout\,
	datac => \register_array_0|output_mux|output~2_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[10]~35_combout\);

-- Location: LCCOMB_X21_Y13_N10
\alu_subsystem_0|alu_out_mux|output[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[10]~36_combout\ = (\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & ((\alu_subsystem_0|alu_out_mux|output[10]~38_combout\))) # (!\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & 
-- (\alu_subsystem_0|alu_out_mux|output[10]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_out_mux|output[0]~0_combout\,
	datac => \alu_subsystem_0|alu_out_mux|output[10]~35_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[10]~38_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[10]~36_combout\);

-- Location: LCCOMB_X21_Y13_N6
\alu_subsystem_0|alu_clr_0|and_10|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_clr_0|and_10|output~0_combout\ = (!\control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\ & ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & (!\register_array_0|output_mux|output~2_combout\)) # 
-- (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\alu_subsystem_0|alu_out_mux|output[10]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\,
	datac => \register_array_0|output_mux|output~2_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[10]~36_combout\,
	combout => \alu_subsystem_0|alu_clr_0|and_10|output~0_combout\);

-- Location: LCCOMB_X21_Y11_N20
\control_subsystem_0|control_matrix|GROUP_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|GROUP_1~0_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|GROUP_1~0_combout\);

-- Location: LCCOMB_X21_Y11_N6
\control_subsystem_0|control_matrix|ALU_COMP~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_COMP~3_combout\ = (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\control_subsystem_0|control_matrix|GROUP_1~0_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_COMP~3_combout\);

-- Location: LCCOMB_X19_Y11_N18
\control_subsystem_0|control_matrix|ALU_INC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_INC~0_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & ((\control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\) # 
-- ((!\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ & \control_subsystem_0|control_matrix|ALU_COMP~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_COMP~3_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_INC~0_combout\);

-- Location: LCCOMB_X18_Y11_N20
\control_subsystem_0|control_matrix|ALU_INC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_INC~2_combout\ = (\control_subsystem_0|control_matrix|ALU_INC~0_combout\) # ((\control_subsystem_0|control_matrix|NEXT_STATE~2_combout\) # ((!\control_subsystem_0|control_matrix|ALU_INC~1_combout\ & 
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_INC~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_INC~0_combout\,
	datac => \control_subsystem_0|control_matrix|NEXT_STATE~2_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_INC~2_combout\);

-- Location: LCCOMB_X20_Y9_N12
\alu_subsystem_0|alu_inc_0|and_10|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|and_10|output~combout\ = (\control_subsystem_0|control_matrix|ALU_INC~2_combout\ & ((\control_subsystem_0|control_matrix|ALU_COMP~2_combout\ & (!\alu_subsystem_0|alu_clr_0|and_11|output~0_combout\ & 
-- !\alu_subsystem_0|alu_clr_0|and_10|output~0_combout\)) # (!\control_subsystem_0|control_matrix|ALU_COMP~2_combout\ & (\alu_subsystem_0|alu_clr_0|and_11|output~0_combout\ & \alu_subsystem_0|alu_clr_0|and_10|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	datab => \alu_subsystem_0|alu_clr_0|and_11|output~0_combout\,
	datac => \alu_subsystem_0|alu_clr_0|and_10|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_INC~2_combout\,
	combout => \alu_subsystem_0|alu_inc_0|and_10|output~combout\);

-- Location: LCCOMB_X19_Y11_N8
\alu_subsystem_0|alu_rot_0|alu_rot_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ = (!\control_subsystem_0|control_matrix|AC_LOAD~1_combout\ & (\control_subsystem_0|control_matrix|ALU_ROT_2~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & \control_subsystem_0|control_matrix|GROUP_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|AC_LOAD~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_ROT_2~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datad => \control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	combout => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\);

-- Location: LCCOMB_X21_Y10_N30
\alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1_combout\ = \alu_subsystem_0|alu_clr_0|and_8|output~0_combout\ $ (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_subsystem_0|alu_clr_0|and_8|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1_combout\);

-- Location: LCCOMB_X21_Y10_N16
\alu_subsystem_0|alu_inc_0|and_7|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|and_7|output~combout\ = (\alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1_combout\ & (\alu_subsystem_0|alu_inc_0|and_10|output~combout\ & (\alu_subsystem_0|alu_xor_0|xor_7|nand_3|output~1_combout\ & 
-- \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_inc_0|and_10|output~combout\,
	datac => \alu_subsystem_0|alu_xor_0|xor_7|nand_3|output~1_combout\,
	datad => \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1_combout\,
	combout => \alu_subsystem_0|alu_inc_0|and_7|output~combout\);

-- Location: LCCOMB_X17_Y9_N16
\alu_subsystem_0|alu_rot_0|and_6_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_6_1|output~combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & (\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~4_combout\ $ (\alu_subsystem_0|alu_inc_0|and_7|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~4_combout\,
	datab => \alu_subsystem_0|alu_inc_0|and_7|output~combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_6_1|output~combout\);

-- Location: LCCOMB_X20_Y10_N24
\alu_subsystem_0|alu_rot_0|or_3_7|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ = (\alu_subsystem_0|alu_rot_0|and_8_2|output~combout\) # ((\alu_subsystem_0|alu_rot_0|and_6_1|output~combout\) # ((!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & 
-- \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|and_8_2|output~combout\,
	datab => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datac => \alu_subsystem_0|alu_rot_0|and_6_1|output~combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\);

-- Location: LCCOMB_X20_Y10_N10
\register_array_0|PC_register|ms_jk_ff_7|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_7|nand_3_1|output~0_combout\ = (\register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\ & (\alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ & 
-- \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_7|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X20_Y10_N4
\register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~0_combout\ = ((\register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\)) # (!\clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X20_Y10_N26
\register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_7|output~combout\) # (!\control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~0_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	datad => \control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N6
\register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_7|nand_3_1|output~0_combout\ & ((\register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\) # 
-- ((!\register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_7|nand_3_1|output~0_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N8
\register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X15_Y9_N16
\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data_bus_in[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_mem_data_bus_in(7),
	combout => \mem_data_bus_in~combout\(7));

-- Location: LCCOMB_X22_Y10_N16
\register_array_0|md_input_mux_0|output[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|md_input_mux_0|output[7]~1_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & (\mem_data_bus_in~combout\(7))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_7|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\,
	datac => \mem_data_bus_in~combout\(7),
	datad => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	combout => \register_array_0|md_input_mux_0|output[7]~1_combout\);

-- Location: LCCOMB_X15_Y9_N26
\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\ & 
-- ((!\register_array_0|md_input_mux_0|output[7]~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
-- (((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\register_array_0|md_input_mux_0|output[7]~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datad => \register_array_0|md_input_mux_0|output[7]~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X15_Y9_N12
\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N28
\register_array_0|output_mux|output~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~9_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & (((\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\)))) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	combout => \register_array_0|output_mux|output~9_combout\);

-- Location: LCCOMB_X20_Y12_N12
\alu_subsystem_0|alu_out_mux|output[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[7]~33_combout\ = ((!\register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\ & !\register_array_0|output_mux|output~9_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \register_array_0|output_mux|output~9_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[7]~33_combout\);

-- Location: LCCOMB_X20_Y12_N2
\alu_subsystem_0|alu_out_mux|output[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[7]~34_combout\ = (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (((\alu_subsystem_0|alu_out_mux|output[7]~33_combout\)))) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & 
-- (!\register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\ & (\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[7]~33_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[7]~34_combout\);

-- Location: LCCOMB_X17_Y12_N30
\register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\register_array_0|AC_register|ms_jk_ff_7|nand_1|output~1_combout\ & (!\register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
-- (\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\ & !\alu_subsystem_0|alu_rot_0|or_3_7|output~combout\))) # (!\register_array_0|AC_register|ms_jk_ff_7|nand_1|output~1_combout\ & (((!\alu_subsystem_0|alu_rot_0|or_3_7|output~combout\) # 
-- (!\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y12_N26
\register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y12_N28
\alu_subsystem_0|alu_out_mux|output[7]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[7]~31_combout\ = (\alu_subsystem_0|alu_out_mux|output[7]~34_combout\ & (\register_array_0|output_mux|output~9_combout\ $ (\alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~1_combout\ $ 
-- (\register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\)))) # (!\alu_subsystem_0|alu_out_mux|output[7]~34_combout\ & (((!\register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\register_array_0|output_mux|output~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|output_mux|output~9_combout\,
	datab => \alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~1_combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[7]~34_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[7]~31_combout\);

-- Location: LCCOMB_X20_Y12_N6
\alu_subsystem_0|alu_out_mux|output[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[7]~32_combout\ = (\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & (\alu_subsystem_0|alu_out_mux|output[7]~34_combout\)) # (!\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & 
-- ((\alu_subsystem_0|alu_out_mux|output[7]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_out_mux|output[7]~34_combout\,
	datac => \alu_subsystem_0|alu_out_mux|output[0]~0_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[7]~31_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[7]~32_combout\);

-- Location: LCCOMB_X20_Y12_N16
\alu_subsystem_0|alu_clr_0|and_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_clr_0|and_7|output~0_combout\ = (!\control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\ & ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & (!\register_array_0|output_mux|output~9_combout\)) # 
-- (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\alu_subsystem_0|alu_out_mux|output[7]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\,
	datac => \register_array_0|output_mux|output~9_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[7]~32_combout\,
	combout => \alu_subsystem_0|alu_clr_0|and_7|output~0_combout\);

-- Location: LCCOMB_X21_Y10_N24
\alu_subsystem_0|alu_xor_0|xor_7|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_7|nand_3|output~1_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~2_combout\ $ (\alu_subsystem_0|alu_clr_0|and_7|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	datad => \alu_subsystem_0|alu_clr_0|and_7|output~0_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_7|nand_3|output~1_combout\);

-- Location: LCCOMB_X21_Y10_N4
\alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\ = \alu_subsystem_0|alu_xor_0|xor_7|nand_3|output~1_combout\ $ (((\alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1_combout\ & (\alu_subsystem_0|alu_inc_0|and_10|output~combout\ & 
-- \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_inc_0|and_10|output~combout\,
	datac => \alu_subsystem_0|alu_xor_0|xor_7|nand_3|output~1_combout\,
	datad => \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\);

-- Location: LCCOMB_X18_Y12_N2
\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\ = (!\register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & 
-- ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\);

-- Location: LCCOMB_X18_Y12_N12
\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~3_combout\ = (\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & (((!\register_array_0|output_mux|output~4_combout\)))) # (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & 
-- (\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\ & ((!\register_array_0|output_mux|output~4_combout\) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datad => \register_array_0|output_mux|output~4_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~3_combout\);

-- Location: LCCOMB_X21_Y10_N18
\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~5_combout\ = \alu_subsystem_0|alu_inc_0|and_7|output~combout\ $ (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\ $ (((!\control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\ & 
-- \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~3_combout\,
	datac => \alu_subsystem_0|alu_inc_0|and_7|output~combout\,
	datad => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~5_combout\);

-- Location: LCCOMB_X21_Y10_N14
\alu_subsystem_0|alu_rot_0|or_3_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\ = (\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & (\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (\alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\))) # 
-- (!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & ((\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~5_combout\) # ((\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~5_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N16
\alu_subsystem_0|alu_rot_0|or_3_6|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\) # ((\alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\);

-- Location: LCCOMB_X20_Y10_N28
\register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~2_combout\ = (\register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\ & (\register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~3_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~2_combout\);

-- Location: LCCOMB_X20_Y10_N22
\register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\) # (((\register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~0_combout\ & 
-- !\control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\)) # (!\control_subsystem_0|clock_generator_0|and_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~0_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N12
\register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~2_combout\ & ((\register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\) # 
-- ((!\register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~2_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N30
\register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N30
\register_array_0|output_mux|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~4_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & (((\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\)))) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & 
-- (((\register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\,
	combout => \register_array_0|output_mux|output~4_combout\);

-- Location: LCCOMB_X19_Y12_N18
\alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~1_combout\ = (\alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~0_combout\ & (!\register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- !\register_array_0|output_mux|output~4_combout\)) # (!\alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~0_combout\ & ((!\register_array_0|output_mux|output~4_combout\) # (!\register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~0_combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \register_array_0|output_mux|output~4_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N26
\register_array_0|AC_register|ms_jk_ff_8|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_8|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_8|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N30
\register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\ = (\register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\ & (!\register_array_0|AC_register|ms_jk_ff_8|nand_1|output~1_combout\ & 
-- ((!\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\) # (!\alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\)))) # (!\register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\ & 
-- (((!\alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\ & \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_8|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y8_N10
\register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y12_N4
\alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~0_combout\ = \register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\ $ (\register_array_0|output_mux|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \register_array_0|output_mux|output~3_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~0_combout\);

-- Location: LCCOMB_X20_Y12_N30
\alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~1_combout\ = \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~0_combout\ $ (((\register_array_0|output_mux|output~9_combout\ & 
-- (\alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~1_combout\ & !\register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\register_array_0|output_mux|output~9_combout\ & 
-- ((\alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~1_combout\) # (!\register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|output_mux|output~9_combout\,
	datab => \alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_8|output~1_combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~0_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~1_combout\);

-- Location: LCCOMB_X21_Y12_N24
\alu_subsystem_0|alu_out_mux|output[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[8]~10_combout\ = (\register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\) # (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[8]~10_combout\);

-- Location: LCCOMB_X21_Y12_N30
\alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\ = (\register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\) # (\register_array_0|output_mux|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \register_array_0|output_mux|output~3_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\);

-- Location: LCCOMB_X20_Y12_N4
\alu_subsystem_0|alu_out_mux|output[8]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[8]~11_combout\ = (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (((!\alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\)) # 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (((!\alu_subsystem_0|alu_out_mux|output[8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[8]~10_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datad => \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[8]~11_combout\);

-- Location: LCCOMB_X21_Y12_N18
\alu_subsystem_0|alu_main_0|alu_or_0|or_8|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_or_0|or_8|output~combout\ = (!\register_array_0|output_mux|output~3_combout\) # (!\register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \register_array_0|output_mux|output~3_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_or_0|or_8|output~combout\);

-- Location: LCCOMB_X20_Y12_N14
\alu_subsystem_0|alu_out_mux|output[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[8]~12_combout\ = (\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & (((\alu_subsystem_0|alu_out_mux|output[8]~11_combout\)))) # (!\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & 
-- ((\alu_subsystem_0|alu_out_mux|output[8]~11_combout\ & (\alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~1_combout\)) # (!\alu_subsystem_0|alu_out_mux|output[8]~11_combout\ & ((\alu_subsystem_0|alu_main_0|alu_or_0|or_8|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_out_mux|output[0]~0_combout\,
	datab => \alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~1_combout\,
	datac => \alu_subsystem_0|alu_out_mux|output[8]~11_combout\,
	datad => \alu_subsystem_0|alu_main_0|alu_or_0|or_8|output~combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[8]~12_combout\);

-- Location: LCCOMB_X21_Y12_N22
\alu_subsystem_0|alu_clr_0|and_8|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_clr_0|and_8|output~0_combout\ = (!\control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\ & ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & (!\register_array_0|output_mux|output~3_combout\)) # 
-- (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\alu_subsystem_0|alu_out_mux|output[8]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\,
	datab => \register_array_0|output_mux|output~3_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[8]~12_combout\,
	combout => \alu_subsystem_0|alu_clr_0|and_8|output~0_combout\);

-- Location: LCCOMB_X20_Y9_N18
\alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~8_combout\ = \alu_subsystem_0|alu_clr_0|and_8|output~0_combout\ $ (((\alu_subsystem_0|alu_inc_0|and_10|output~combout\ & (\alu_subsystem_0|alu_clr_0|and_9|output~0_combout\)) # 
-- (!\alu_subsystem_0|alu_inc_0|and_10|output~combout\ & ((\control_subsystem_0|control_matrix|ALU_COMP~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|and_10|output~combout\,
	datab => \alu_subsystem_0|alu_clr_0|and_9|output~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	datad => \alu_subsystem_0|alu_clr_0|and_8|output~0_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~8_combout\);

-- Location: LCCOMB_X18_Y8_N24
\alu_subsystem_0|alu_rot_0|or_3_9|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_9|output~combout\ = (\alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\) # ((\alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~8_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~8_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_9|output~combout\);

-- Location: LCCOMB_X17_Y8_N24
\register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\ = (\register_array_0|AC_register|ms_jk_ff_9|nand_1|output~1_combout\ & (\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\ & 
-- (!\alu_subsystem_0|alu_rot_0|or_3_9|output~combout\ & !\register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\))) # (!\register_array_0|AC_register|ms_jk_ff_9|nand_1|output~1_combout\ & 
-- (((!\register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\) # (!\alu_subsystem_0|alu_rot_0|or_3_9|output~combout\)) # (!\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_9|output~combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y8_N6
\register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \clk_in~combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y12_N22
\alu_subsystem_0|alu_out_mux|output[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[9]~9_combout\ = (\alu_subsystem_0|alu_out_mux|output[9]~7_combout\ & ((\alu_subsystem_0|alu_out_mux|output[0]~0_combout\) # (\alu_subsystem_0|alu_out_mux|output[9]~8_combout\ $ 
-- (!\register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\)))) # (!\alu_subsystem_0|alu_out_mux|output[9]~7_combout\ & (!\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & ((!\register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\) # 
-- (!\alu_subsystem_0|alu_out_mux|output[9]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_out_mux|output[9]~8_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[9]~7_combout\,
	datac => \alu_subsystem_0|alu_out_mux|output[0]~0_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[9]~9_combout\);

-- Location: LCCOMB_X20_Y12_N8
\alu_subsystem_0|alu_clr_0|and_9|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_clr_0|and_9|output~0_combout\ = (!\control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\ & ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & (!\register_array_0|output_mux|output~10_combout\)) # 
-- (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\alu_subsystem_0|alu_out_mux|output[9]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|output_mux|output~10_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[9]~9_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\,
	combout => \alu_subsystem_0|alu_clr_0|and_9|output~0_combout\);

-- Location: LCCOMB_X20_Y9_N26
\alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~3_combout\ = \alu_subsystem_0|alu_inc_0|and_10|output~combout\ $ (\alu_subsystem_0|alu_clr_0|and_9|output~0_combout\ $ (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|and_10|output~combout\,
	datab => \alu_subsystem_0|alu_clr_0|and_9|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~3_combout\);

-- Location: LCCOMB_X20_Y9_N16
\alu_subsystem_0|alu_rot_0|or_3_8|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & ((\alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~3_combout\) # ((!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & 
-- \alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~8_combout\)))) # (!\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (((!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & \alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~3_combout\,
	datac => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~8_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N16
\alu_subsystem_0|alu_rot_0|or_3_8|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\) # ((\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\);

-- Location: LCCOMB_X17_Y8_N16
\register_array_0|md_input_mux_0|output[8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|md_input_mux_0|output[8]~2_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & (\mem_data_bus_in~combout\(8))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_data_bus_in~combout\(8),
	datac => \alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\,
	datad => \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\,
	combout => \register_array_0|md_input_mux_0|output[8]~2_combout\);

-- Location: LCCOMB_X17_Y8_N28
\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ & 
-- (!\register_array_0|md_input_mux_0|output[8]~2_combout\ & \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\))) # (!\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\ & 
-- (((!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # (!\register_array_0|md_input_mux_0|output[8]~2_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \register_array_0|md_input_mux_0|output[8]~2_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y8_N8
\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y11_N16
\control_subsystem_0|control_matrix|ALU_ROT_1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_ROT_1~combout\ = (\control_subsystem_0|control_matrix|GROUP_1~0_combout\ & (\control_subsystem_0|control_matrix|ALU_ROT_2~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ & 
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_ROT_2~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\);

-- Location: LCCOMB_X22_Y10_N26
\register_array_0|AC_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_5|nand_1|output~1_combout\ = (!\register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X22_Y10_N8
\register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\ & (!\register_array_0|AC_register|ms_jk_ff_5|nand_1|output~1_combout\ & 
-- ((!\register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\) # (!\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\)))) # (!\alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\ & 
-- (((\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\ & !\register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_5|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X22_Y10_N28
\register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N18
\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~3_combout\ = (\register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\) # (((\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\ & 
-- !\control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\)) # (!\control_subsystem_0|clock_generator_0|and_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~3_combout\);

-- Location: LCCOMB_X20_Y10_N2
\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\ = (!\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\ & (((\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\) # 
-- (!\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~3_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~3_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\);

-- Location: LCCOMB_X20_Y10_N14
\register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data_bus_in[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_mem_data_bus_in(5),
	combout => \mem_data_bus_in~combout\(5));

-- Location: LCCOMB_X18_Y13_N26
\register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N10
\register_array_0|output_mux|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~6_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & (((\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\)))) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	combout => \register_array_0|output_mux|output~6_combout\);

-- Location: LCCOMB_X20_Y13_N14
\alu_subsystem_0|alu_main_0|alu_or_0|or_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_or_0|or_4|output~combout\ = (!\register_array_0|output_mux|output~6_combout\) # (!\register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \register_array_0|output_mux|output~6_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_or_0|or_4|output~combout\);

-- Location: LCCOMB_X20_Y13_N8
\alu_subsystem_0|alu_out_mux|output[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[4]~14_combout\ = (\register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\) # (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[4]~14_combout\);

-- Location: LCCOMB_X20_Y13_N26
\alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\ = (\register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\) # (\register_array_0|output_mux|output~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \register_array_0|output_mux|output~6_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\);

-- Location: LCCOMB_X20_Y13_N10
\alu_subsystem_0|alu_out_mux|output[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[4]~15_combout\ = (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (((!\alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\)) # 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (((!\alu_subsystem_0|alu_out_mux|output[4]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datac => \alu_subsystem_0|alu_out_mux|output[4]~14_combout\,
	datad => \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[4]~15_combout\);

-- Location: LCCOMB_X20_Y13_N0
\alu_subsystem_0|alu_out_mux|output[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[4]~16_combout\ = (\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & (((\alu_subsystem_0|alu_out_mux|output[4]~15_combout\)))) # (!\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & 
-- ((\alu_subsystem_0|alu_out_mux|output[4]~15_combout\ & (\alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~1_combout\)) # (!\alu_subsystem_0|alu_out_mux|output[4]~15_combout\ & ((\alu_subsystem_0|alu_main_0|alu_or_0|or_4|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~1_combout\,
	datab => \alu_subsystem_0|alu_main_0|alu_or_0|or_4|output~combout\,
	datac => \alu_subsystem_0|alu_out_mux|output[0]~0_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[4]~15_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[4]~16_combout\);

-- Location: LCCOMB_X20_Y12_N18
\alu_subsystem_0|alu_clr_0|and_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_clr_0|and_4|output~0_combout\ = (!\control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\ & ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & (!\register_array_0|output_mux|output~6_combout\)) # 
-- (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\alu_subsystem_0|alu_out_mux|output[4]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|output_mux|output~6_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[4]~16_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\,
	combout => \alu_subsystem_0|alu_clr_0|and_4|output~0_combout\);

-- Location: LCCOMB_X15_Y9_N28
\alu_subsystem_0|alu_xor_0|xor_4|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_4|nand_3|output~1_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~2_combout\ $ (\alu_subsystem_0|alu_clr_0|and_4|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	datad => \alu_subsystem_0|alu_clr_0|and_4|output~0_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_4|nand_3|output~1_combout\);

-- Location: LCCOMB_X17_Y9_N30
\alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ = \alu_subsystem_0|alu_xor_0|xor_4|nand_3|output~1_combout\ $ (((\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~4_combout\ & (\alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1_combout\ & 
-- \alu_subsystem_0|alu_inc_0|and_7|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~4_combout\,
	datab => \alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|and_7|output~combout\,
	datad => \alu_subsystem_0|alu_xor_0|xor_4|nand_3|output~1_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\);

-- Location: LCCOMB_X21_Y10_N8
\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~4_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~2_combout\ $ (((\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~3_combout\ & !\control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~3_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~4_combout\);

-- Location: LCCOMB_X21_Y10_N12
\alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\ = \alu_subsystem_0|alu_clr_0|and_5|output~0_combout\ $ (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\ $ (((\alu_subsystem_0|alu_inc_0|and_7|output~combout\ & 
-- \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|and_7|output~combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~4_combout\,
	datac => \alu_subsystem_0|alu_clr_0|and_5|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\);

-- Location: LCCOMB_X17_Y9_N12
\alu_subsystem_0|alu_rot_0|or_3_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_5|output~0_combout\ = (\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~5_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_2~combout\) # ((\alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\ & 
-- !\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\)))) # (!\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~5_combout\ & (\alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\ & (!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~5_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\,
	datac => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_5|output~0_combout\);

-- Location: LCCOMB_X20_Y10_N0
\alu_subsystem_0|alu_rot_0|or_3_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_5|output~0_combout\) # ((\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_5|output~0_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\);

-- Location: LCCOMB_X21_Y9_N8
\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & (\mem_data_bus_in~combout\(5))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\,
	datac => \mem_data_bus_in~combout\(5),
	datad => \alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y9_N14
\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\ = (\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\ & 
-- (!\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\ & \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\))) # (!\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\ & 
-- (((!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # (!\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\);

-- Location: LCCOMB_X21_Y9_N4
\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\)))) # (!\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N20
\register_array_0|output_mux|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~5_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & (((\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\)))) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & 
-- (((\register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\)) # (!\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\,
	datab => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \register_array_0|output_mux|output~5_combout\);

-- Location: LCCOMB_X20_Y13_N28
\alu_subsystem_0|alu_out_mux|output[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[5]~29_combout\ = ((!\register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ & !\register_array_0|output_mux|output~5_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \register_array_0|output_mux|output~5_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[5]~29_combout\);

-- Location: LCCOMB_X20_Y13_N2
\alu_subsystem_0|alu_out_mux|output[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[5]~30_combout\ = (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (((\alu_subsystem_0|alu_out_mux|output[5]~29_combout\)))) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & 
-- (\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\ & (!\register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[5]~29_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[5]~30_combout\);

-- Location: LCCOMB_X20_Y13_N22
\alu_subsystem_0|alu_main_0|alu_or_0|or_5|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_or_0|or_5|output~combout\ = (!\register_array_0|output_mux|output~5_combout\) # (!\register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \register_array_0|output_mux|output~5_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_or_0|or_5|output~combout\);

-- Location: LCCOMB_X20_Y13_N18
\alu_subsystem_0|alu_out_mux|output[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[5]~13_combout\ = (\alu_subsystem_0|alu_out_mux|output[5]~30_combout\ & ((\alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_7|output~0_combout\) # ((\alu_subsystem_0|alu_out_mux|output[0]~0_combout\)))) # 
-- (!\alu_subsystem_0|alu_out_mux|output[5]~30_combout\ & (((!\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & \alu_subsystem_0|alu_main_0|alu_or_0|or_5|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_7|output~0_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[5]~30_combout\,
	datac => \alu_subsystem_0|alu_out_mux|output[0]~0_combout\,
	datad => \alu_subsystem_0|alu_main_0|alu_or_0|or_5|output~combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[5]~13_combout\);

-- Location: LCCOMB_X20_Y13_N12
\alu_subsystem_0|alu_clr_0|and_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_clr_0|and_5|output~0_combout\ = (!\control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\ & ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & (!\register_array_0|output_mux|output~5_combout\)) # 
-- (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\alu_subsystem_0|alu_out_mux|output[5]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|output_mux|output~5_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[5]~13_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\,
	combout => \alu_subsystem_0|alu_clr_0|and_5|output~0_combout\);

-- Location: LCCOMB_X15_Y9_N6
\alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1_combout\ = \alu_subsystem_0|alu_clr_0|and_5|output~0_combout\ $ (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_clr_0|and_5|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1_combout\);

-- Location: LCCOMB_X17_Y9_N18
\alu_subsystem_0|alu_rot_0|and_5_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_5_2|output~combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (\alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1_combout\ $ (((\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~4_combout\ & 
-- \alu_subsystem_0|alu_inc_0|and_7|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~4_combout\,
	datab => \alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|and_7|output~combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_5_2|output~combout\);

-- Location: LCCOMB_X17_Y9_N26
\alu_subsystem_0|alu_rot_0|or_3_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_4|output~combout\ = (\alu_subsystem_0|alu_rot_0|and_4_0|output~2_combout\) # ((\alu_subsystem_0|alu_rot_0|and_5_2|output~combout\) # ((\alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~9_combout\ & 
-- \control_subsystem_0|control_matrix|ALU_ROT_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|and_4_0|output~2_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~9_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datad => \alu_subsystem_0|alu_rot_0|and_5_2|output~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_4|output~combout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data_bus_in[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_mem_data_bus_in(4),
	combout => \mem_data_bus_in~combout\(4));

-- Location: LCCOMB_X21_Y12_N12
\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & ((\mem_data_bus_in~combout\(4)))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & 
-- (\alu_subsystem_0|alu_rot_0|or_3_4|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_4|output~combout\,
	datad => \mem_data_bus_in~combout\(4),
	combout => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y12_N24
\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N22
\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\ = (\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & ((\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\ & 
-- (!\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\ & !\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\))))) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- (((!\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\);

-- Location: LCCOMB_X19_Y13_N8
\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y11_N2
\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ = (\not_reset~combout\ & !\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X22_Y11_N28
\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)))) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & 
-- (((\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\ & \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y10_N20
\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\)))) # (!\clk_in~combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N18
\control_subsystem_0|control_matrix|PC_CLR_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\ & 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\,
	combout => \control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\);

-- Location: LCCOMB_X15_Y10_N8
\register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~0_combout\ = ((\register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\)) # (!\clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X15_Y10_N0
\register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_11|output~combout\) # (!\control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_11|output~combout\,
	datab => \control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X15_Y10_N2
\register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & ((\register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\) # 
-- ((!\register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\);

-- Location: LCCOMB_X15_Y10_N14
\register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \clk_in~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data_bus_in[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_mem_data_bus_in(11),
	combout => \mem_data_bus_in~combout\(11));

-- Location: LCCOMB_X19_Y9_N30
\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\not_reset~combout\ & !\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datac => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\,
	combout => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X15_Y9_N2
\alu_subsystem_0|alu_inc_0|and_5|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|and_5|output~combout\ = (\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~4_combout\ & (\alu_subsystem_0|alu_inc_0|and_7|output~combout\ & (\alu_subsystem_0|alu_clr_0|and_5|output~0_combout\ $ 
-- (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~4_combout\,
	datab => \alu_subsystem_0|alu_clr_0|and_5|output~0_combout\,
	datac => \alu_subsystem_0|alu_inc_0|and_7|output~combout\,
	datad => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	combout => \alu_subsystem_0|alu_inc_0|and_5|output~combout\);

-- Location: LCCOMB_X18_Y11_N18
\control_subsystem_0|control_matrix|PC_LOAD_LO~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_LOAD_LO~1_combout\ = ((\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((\control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\) # 
-- (!\control_subsystem_0|control_matrix|ALU_INC~1_combout\)))) # (!\control_subsystem_0|control_matrix|PC_LOAD_HI~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_INC~1_combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~8_combout\,
	datac => \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_LOAD_LO~1_combout\);

-- Location: LCCOMB_X19_Y8_N14
\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\ = (\control_subsystem_0|control_matrix|PC_LOAD_LO~1_combout\ & (\clk_in~combout\ & \control_subsystem_0|clock_generator_0|or_1|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|PC_LOAD_LO~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\);

-- Location: LCCOMB_X15_Y9_N4
\alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ = \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~0_combout\ $ (((\alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\ & (\alu_subsystem_0|alu_inc_0|and_5|output~combout\ & 
-- \alu_subsystem_0|alu_xor_0|xor_4|nand_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_inc_0|and_5|output~combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~0_combout\,
	datad => \alu_subsystem_0|alu_xor_0|xor_4|nand_3|output~1_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\);

-- Location: LCCOMB_X17_Y9_N24
\alu_subsystem_0|alu_rot_0|or_3_2|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & ((\alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~9_combout\) # ((\alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ & 
-- !\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\)))) # (!\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (\alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ & (!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~9_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\);

-- Location: LCCOMB_X19_Y9_N22
\alu_subsystem_0|alu_rot_0|and_1_0|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_1_0|output~2_combout\ = (!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & (\alu_subsystem_0|alu_clr_0|and_1|output~0_combout\ $ (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\ $ 
-- (\alu_subsystem_0|alu_inc_0|and_2|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_clr_0|and_1|output~0_combout\,
	datab => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_2|output~combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_1_0|output~2_combout\);

-- Location: LCCOMB_X19_Y9_N10
\alu_subsystem_0|alu_rot_0|or_3_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_1|output~combout\ = (\alu_subsystem_0|alu_rot_0|and_0_1|output~combout\) # ((\alu_subsystem_0|alu_rot_0|and_1_0|output~2_combout\) # ((\alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ & 
-- \control_subsystem_0|control_matrix|ALU_ROT_2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|and_0_1|output~combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datad => \alu_subsystem_0|alu_rot_0|and_1_0|output~2_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_1|output~combout\);

-- Location: LCCOMB_X17_Y12_N22
\register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\register_array_0|AC_register|ms_jk_ff_1|nand_1|output~1_combout\ & (!\register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\ & !\alu_subsystem_0|alu_rot_0|or_3_1|output~combout\))) # (!\register_array_0|AC_register|ms_jk_ff_1|nand_1|output~1_combout\ & (((!\alu_subsystem_0|alu_rot_0|or_3_1|output~combout\) # 
-- (!\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_1|output~combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y12_N28
\register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N24
\register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\ & (!\alu_subsystem_0|alu_rot_0|or_3_1|output~combout\ & 
-- (\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\ & !\register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (((!\register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\) # (!\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\)) # (!\alu_subsystem_0|alu_rot_0|or_3_1|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_1|output~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y8_N12
\register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \clk_in~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y12_N14
\register_array_0|output_mux|output~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~12_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & (((\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & 
-- (((\register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\,
	combout => \register_array_0|output_mux|output~12_combout\);

-- Location: LCCOMB_X18_Y12_N18
\alu_subsystem_0|alu_out_mux|output[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[1]~18_combout\ = (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (((!\alu_subsystem_0|alu_out_mux|output[1]~17_combout\ & !\register_array_0|output_mux|output~12_combout\)) # 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (\alu_subsystem_0|alu_out_mux|output[1]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_out_mux|output[1]~17_combout\,
	datab => \register_array_0|output_mux|output~12_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[1]~18_combout\);

-- Location: LCCOMB_X18_Y12_N8
\alu_subsystem_0|alu_out_mux|output[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[1]~20_combout\ = (\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & (((\alu_subsystem_0|alu_out_mux|output[1]~18_combout\)))) # (!\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & 
-- ((\alu_subsystem_0|alu_out_mux|output[1]~19_combout\ & (\register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\ $ (!\alu_subsystem_0|alu_out_mux|output[1]~18_combout\))) # (!\alu_subsystem_0|alu_out_mux|output[1]~19_combout\ & 
-- ((!\alu_subsystem_0|alu_out_mux|output[1]~18_combout\) # (!\register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_out_mux|output[1]~19_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \alu_subsystem_0|alu_out_mux|output[0]~0_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[1]~18_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[1]~20_combout\);

-- Location: LCCOMB_X18_Y12_N30
\alu_subsystem_0|alu_clr_0|and_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_clr_0|and_1|output~0_combout\ = (!\control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\ & ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((!\register_array_0|output_mux|output~12_combout\))) # 
-- (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & (\alu_subsystem_0|alu_out_mux|output[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[1]~20_combout\,
	datac => \register_array_0|output_mux|output~12_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	combout => \alu_subsystem_0|alu_clr_0|and_1|output~0_combout\);

-- Location: LCCOMB_X19_Y9_N8
\alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~2_combout\ $ (\alu_subsystem_0|alu_clr_0|and_1|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	datac => \alu_subsystem_0|alu_clr_0|and_1|output~0_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\);

-- Location: LCCOMB_X19_Y9_N16
\alu_subsystem_0|alu_rot_0|or_3_2|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\) # ((\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & (\alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\ $ 
-- (\alu_subsystem_0|alu_inc_0|and_2|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_2|output~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\);

-- Location: LCCOMB_X19_Y8_N18
\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N8
\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\ & (!\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- ((!\alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\) # (!\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\)))) # (!\register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (((\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\ & !\alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\)) # (!\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~2_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y8_N10
\register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\))))) # (!\clk_in~combout\ & (((\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N10
\register_array_0|output_mux|output~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~7_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & (((\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & 
-- (((\register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\,
	datab => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \register_array_0|output_mux|output~7_combout\);

-- Location: LCCOMB_X18_Y13_N8
\register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datab => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y13_N26
\alu_subsystem_0|alu_out_mux|output[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[2]~24_combout\ = (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (\alu_subsystem_0|alu_out_mux|output[2]~23_combout\)) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & 
-- (((\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\ & !\register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_out_mux|output[2]~23_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[2]~24_combout\);

-- Location: LCCOMB_X19_Y13_N28
\alu_subsystem_0|alu_out_mux|output[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[2]~21_combout\ = (\alu_subsystem_0|alu_out_mux|output[2]~24_combout\ & (\alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~2_combout\ $ (\register_array_0|output_mux|output~7_combout\ $ 
-- (\register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\alu_subsystem_0|alu_out_mux|output[2]~24_combout\ & (((!\register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\) # (!\register_array_0|output_mux|output~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~2_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[2]~24_combout\,
	datac => \register_array_0|output_mux|output~7_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[2]~21_combout\);

-- Location: LCCOMB_X19_Y13_N22
\alu_subsystem_0|alu_out_mux|output[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[2]~22_combout\ = (\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & ((\alu_subsystem_0|alu_out_mux|output[2]~24_combout\))) # (!\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & 
-- (\alu_subsystem_0|alu_out_mux|output[2]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_out_mux|output[2]~21_combout\,
	datac => \alu_subsystem_0|alu_out_mux|output[0]~0_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[2]~24_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[2]~22_combout\);

-- Location: LCCOMB_X19_Y13_N10
\alu_subsystem_0|alu_clr_0|and_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_clr_0|and_2|output~0_combout\ = (!\control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\ & ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & (!\register_array_0|output_mux|output~7_combout\)) # 
-- (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\alu_subsystem_0|alu_out_mux|output[2]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\,
	datab => \register_array_0|output_mux|output~7_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[2]~22_combout\,
	combout => \alu_subsystem_0|alu_clr_0|and_2|output~0_combout\);

-- Location: LCCOMB_X15_Y9_N24
\alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~0_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~2_combout\ $ (\alu_subsystem_0|alu_clr_0|and_2|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	datad => \alu_subsystem_0|alu_clr_0|and_2|output~0_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~0_combout\);

-- Location: LCCOMB_X15_Y9_N18
\alu_subsystem_0|alu_inc_0|and_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|and_2|output~combout\ = (\alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\ & (\alu_subsystem_0|alu_inc_0|and_5|output~combout\ & (\alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~0_combout\ & 
-- \alu_subsystem_0|alu_xor_0|xor_4|nand_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_inc_0|and_5|output~combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~0_combout\,
	datad => \alu_subsystem_0|alu_xor_0|xor_4|nand_3|output~1_combout\,
	combout => \alu_subsystem_0|alu_inc_0|and_2|output~combout\);

-- Location: LCCOMB_X17_Y12_N6
\register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y12_N22
\alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~11_combout\ = (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ $ 
-- (!\register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (((\register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~11_combout\);

-- Location: LCCOMB_X18_Y12_N16
\alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~10_combout\ = (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & ((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (!\register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~10_combout\);

-- Location: LCCOMB_X19_Y8_N26
\register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\)))) # (!\clk_in~combout\ & (\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \clk_in~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y12_N0
\register_array_0|output_mux|output~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~13_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & (((\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & 
-- (((\register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\,
	combout => \register_array_0|output_mux|output~13_combout\);

-- Location: LCCOMB_X18_Y12_N4
\alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~8_combout\ = (\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & (((\register_array_0|output_mux|output~13_combout\)))) # (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & 
-- (\alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~11_combout\ $ (((\alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~10_combout\ & \register_array_0|output_mux|output~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~11_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~10_combout\,
	datad => \register_array_0|output_mux|output~13_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~8_combout\);

-- Location: LCCOMB_X19_Y9_N18
\alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~9_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~2_combout\ $ (((!\control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\ & !\alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~8_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~9_combout\);

-- Location: LCCOMB_X19_Y9_N2
\alu_subsystem_0|alu_rot_0|and_0_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_0_2|output~combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (\alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~9_combout\ $ (((\alu_subsystem_0|alu_inc_0|and_2|output~combout\ & 
-- \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datab => \alu_subsystem_0|alu_inc_0|and_2|output~combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~9_combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_0_2|output~combout\);

-- Location: LCCOMB_X20_Y9_N24
\alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~2_combout\ $ (\control_subsystem_0|control_matrix|ALU_INC~2_combout\ $ (\alu_subsystem_0|alu_clr_0|and_11|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_INC~2_combout\,
	datad => \alu_subsystem_0|alu_clr_0|and_11|output~0_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\);

-- Location: LCCOMB_X19_Y9_N4
\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\ = (\alu_subsystem_0|alu_rot_0|and_0_2|output~combout\) # ((\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & \alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datab => \alu_subsystem_0|alu_rot_0|and_0_2|output~combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\,
	combout => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X22_Y11_N22
\control_subsystem_0|control_matrix|LINK_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|LINK_LOAD~0_combout\ = (((!\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\)) # 
-- (!\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|LINK_LOAD~0_combout\);

-- Location: LCCOMB_X21_Y11_N28
\control_subsystem_0|control_matrix|LINK_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|LINK_LOAD~1_combout\ = (\control_subsystem_0|control_matrix|AC_LOAD~2_combout\) # ((\control_subsystem_0|control_matrix|ALU_COMP~3_combout\ & ((\control_subsystem_0|control_matrix|LINK_LOAD~0_combout\) # 
-- (!\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_COMP~3_combout\,
	datab => \control_subsystem_0|control_matrix|LINK_LOAD~0_combout\,
	datac => \control_subsystem_0|control_matrix|AC_LOAD~2_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|LINK_LOAD~1_combout\);

-- Location: LCCOMB_X19_Y11_N14
\control_subsystem_0|control_matrix|LINK_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|LINK_LOAD~2_combout\ = (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (((\control_subsystem_0|control_matrix|LINK_LOAD~1_combout\ & 
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & 
-- (\control_subsystem_0|control_matrix|LINK_LOAD~1_combout\ & (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datab => \control_subsystem_0|control_matrix|LINK_LOAD~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|LINK_LOAD~2_combout\);

-- Location: LCCOMB_X19_Y9_N14
\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\ = (\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\ & ((\control_subsystem_0|control_matrix|LINK_LOAD~2_combout\ & 
-- ((!\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\))) # (!\control_subsystem_0|control_matrix|LINK_LOAD~2_combout\ & (!\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\)))) # 
-- (!\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\ & (!\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datab => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|LINK_LOAD~2_combout\,
	combout => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\);

-- Location: LCCOMB_X19_Y9_N28
\register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y9_N26
\alu_subsystem_0|alu_rot_0|or_3_11|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\ = (\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & (!\register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ & (\control_subsystem_0|control_matrix|ALU_ROT_2~combout\))) # 
-- (!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & ((\alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\) # ((!\register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datab => \register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\);

-- Location: LCCOMB_X15_Y10_N24
\alu_subsystem_0|alu_rot_0|or_3_11|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_11|output~combout\ = (\alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\) # ((\alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_11|output~combout\);

-- Location: LCCOMB_X21_Y11_N24
\register_array_0|md_input_mux_0|output[11]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|md_input_mux_0|output[11]~5_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & (\mem_data_bus_in~combout\(11))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_11|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_data_bus_in~combout\(11),
	datac => \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_11|output~combout\,
	combout => \register_array_0|md_input_mux_0|output[11]~5_combout\);

-- Location: LCCOMB_X22_Y11_N30
\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\);

-- Location: LCCOMB_X22_Y11_N8
\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # (!\register_array_0|md_input_mux_0|output[11]~5_combout\)))) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ & 
-- (((!\register_array_0|md_input_mux_0|output[11]~5_combout\ & \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \register_array_0|md_input_mux_0|output[11]~5_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\);

-- Location: LCCOMB_X22_Y11_N20
\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N2
\register_array_0|output_mux|output~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~11_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & (((\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\)))) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & 
-- (((\register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\)) # (!\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\,
	datab => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \register_array_0|output_mux|output~11_combout\);

-- Location: LCCOMB_X21_Y13_N28
\register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y13_N14
\register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\ = (\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\ & ((\register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1_combout\ & 
-- (!\alu_subsystem_0|alu_rot_0|or_3_11|output~combout\ & !\register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1_combout\ & 
-- ((!\register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\) # (!\alu_subsystem_0|alu_rot_0|or_3_11|output~combout\))))) # (!\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\ & 
-- (!\register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_11|output~combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y13_N30
\register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\)))) # (!\clk_in~combout\ & (\register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y13_N2
\alu_subsystem_0|alu_out_mux|output[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[11]~4_combout\ = (\alu_subsystem_0|alu_out_mux|output[11]~3_combout\ & (\register_array_0|output_mux|output~11_combout\ $ (\register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\))) # 
-- (!\alu_subsystem_0|alu_out_mux|output[11]~3_combout\ & (\register_array_0|output_mux|output~11_combout\ & \register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_out_mux|output[11]~3_combout\,
	datac => \register_array_0|output_mux|output~11_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[11]~4_combout\);

-- Location: LCCOMB_X21_Y13_N16
\alu_subsystem_0|alu_out_mux|output[11]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[11]~5_combout\ = (\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & (\alu_subsystem_0|alu_out_mux|output[11]~3_combout\)) # (!\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & 
-- (\alu_subsystem_0|alu_out_mux|output[11]~4_combout\ $ (((!\alu_subsystem_0|alu_out_mux|output[11]~1_combout\) # (!\alu_subsystem_0|alu_out_mux|output[11]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_out_mux|output[11]~3_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[0]~0_combout\,
	datac => \alu_subsystem_0|alu_out_mux|output[11]~1_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[11]~4_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[11]~5_combout\);

-- Location: LCCOMB_X21_Y12_N20
\alu_subsystem_0|alu_clr_0|and_11|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_clr_0|and_11|output~0_combout\ = (!\control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\ & ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & (!\register_array_0|output_mux|output~11_combout\)) # 
-- (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\alu_subsystem_0|alu_out_mux|output[11]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|output_mux|output~11_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datac => \alu_subsystem_0|alu_out_mux|output[11]~5_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\,
	combout => \alu_subsystem_0|alu_clr_0|and_11|output~0_combout\);

-- Location: LCCOMB_X20_Y9_N30
\alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\ = \alu_subsystem_0|alu_clr_0|and_10|output~0_combout\ $ (((\control_subsystem_0|control_matrix|ALU_INC~2_combout\ & ((\alu_subsystem_0|alu_clr_0|and_11|output~0_combout\))) # 
-- (!\control_subsystem_0|control_matrix|ALU_INC~2_combout\ & (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	datab => \alu_subsystem_0|alu_clr_0|and_11|output~0_combout\,
	datac => \alu_subsystem_0|alu_clr_0|and_10|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_INC~2_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N0
\alu_subsystem_0|alu_rot_0|and_9_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_9_1|output~combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\ $ (\alu_subsystem_0|alu_clr_0|and_9|output~0_combout\ $ 
-- (\alu_subsystem_0|alu_inc_0|and_10|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	datab => \alu_subsystem_0|alu_clr_0|and_9|output~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_10|output~combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_9_1|output~combout\);

-- Location: LCCOMB_X20_Y9_N22
\alu_subsystem_0|alu_rot_0|and_11_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_11_2|output~combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\ $ (\control_subsystem_0|control_matrix|ALU_INC~2_combout\ $ 
-- (\alu_subsystem_0|alu_clr_0|and_11|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_INC~2_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datad => \alu_subsystem_0|alu_clr_0|and_11|output~0_combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_11_2|output~combout\);

-- Location: LCCOMB_X15_Y10_N4
\alu_subsystem_0|alu_rot_0|or_3_10|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ = (\alu_subsystem_0|alu_rot_0|and_9_1|output~combout\) # ((\alu_subsystem_0|alu_rot_0|and_11_2|output~combout\) # ((!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & 
-- \alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|and_9_1|output~combout\,
	datad => \alu_subsystem_0|alu_rot_0|and_11_2|output~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\);

-- Location: LCCOMB_X22_Y10_N30
\register_array_0|md_input_mux_0|output[10]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|md_input_mux_0|output[10]~4_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & (\mem_data_bus_in~combout\(10))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_10|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\,
	datac => \mem_data_bus_in~combout\(10),
	datad => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	combout => \register_array_0|md_input_mux_0|output[10]~4_combout\);

-- Location: LCCOMB_X15_Y10_N12
\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: LCCOMB_X15_Y10_N26
\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & ((\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
-- (!\register_array_0|md_input_mux_0|output[10]~4_combout\ & !\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\) # (!\register_array_0|md_input_mux_0|output[10]~4_combout\))))) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- (((!\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \register_array_0|md_input_mux_0|output[10]~4_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\);

-- Location: LCCOMB_X15_Y10_N28
\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y11_N18
\control_subsystem_0|control_matrix|AC_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|AC_LOAD~1_combout\ = (\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ & \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|AC_LOAD~1_combout\);

-- Location: LCCOMB_X21_Y11_N12
\control_subsystem_0|control_matrix|AC_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|AC_LOAD~2_combout\ = (\control_subsystem_0|control_matrix|GROUP_1~0_combout\ & (!\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ & !\control_subsystem_0|control_matrix|AC_LOAD~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|AC_LOAD~1_combout\,
	combout => \control_subsystem_0|control_matrix|AC_LOAD~2_combout\);

-- Location: LCCOMB_X19_Y11_N2
\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & ((\control_subsystem_0|control_matrix|AC_LOAD~2_combout\) # 
-- ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\ & \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~3_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datad => \control_subsystem_0|control_matrix|AC_LOAD~2_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\);

-- Location: LCCOMB_X20_Y13_N30
\register_array_0|AC_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_3|nand_1|output~1_combout\ = (!\register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y13_N6
\register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ & (!\register_array_0|AC_register|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- ((!\alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\) # (!\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\)))) # (!\register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (((\register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\ & !\alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_3|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \register_array_0|AC_register|ms_jk_ff_4|nand_3_1|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y13_N12
\register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y13_N30
\alu_subsystem_0|alu_out_mux|output[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[3]~28_combout\ = (\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & (\alu_subsystem_0|alu_out_mux|output[3]~27_combout\)) # (!\control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\ & 
-- (((\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\ & !\register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_out_mux|output[3]~27_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_FUNC_SEL_1~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~4_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[3]~28_combout\);

-- Location: LCCOMB_X19_Y8_N28
\register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\)))) # (!\clk_in~combout\ & (\register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N12
\register_array_0|output_mux|output~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~8_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & (((\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\)))) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & 
-- (((\register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\,
	combout => \register_array_0|output_mux|output~8_combout\);

-- Location: LCCOMB_X18_Y12_N26
\alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\ & (!\register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\ & !\register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (((!\register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ & !\register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~1_combout\);

-- Location: LCCOMB_X18_Y12_N24
\alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\ = (\register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\ & (!\register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\ & !\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (((!\register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ & !\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\);

-- Location: LCCOMB_X18_Y12_N28
\alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & (((\alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\)))) # 
-- (!\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & (\alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~1_combout\ & ((\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\,
	datab => \alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~1_combout\,
	datac => \alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~2_combout\);

-- Location: LCCOMB_X19_Y13_N2
\alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\ = (\register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ & (!\register_array_0|output_mux|output~7_combout\ & 
-- \alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~2_combout\)) # (!\register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ & ((\alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~2_combout\) # 
-- (!\register_array_0|output_mux|output~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \register_array_0|output_mux|output~7_combout\,
	datac => \alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~2_combout\,
	combout => \alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\);

-- Location: LCCOMB_X19_Y13_N4
\alu_subsystem_0|alu_out_mux|output[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[3]~25_combout\ = (\alu_subsystem_0|alu_out_mux|output[3]~28_combout\ & (\register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ $ (\register_array_0|output_mux|output~8_combout\ $ 
-- (\alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\)))) # (!\alu_subsystem_0|alu_out_mux|output[3]~28_combout\ & (((!\register_array_0|output_mux|output~8_combout\)) # 
-- (!\register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[3]~28_combout\,
	datac => \register_array_0|output_mux|output~8_combout\,
	datad => \alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[3]~25_combout\);

-- Location: LCCOMB_X19_Y13_N18
\alu_subsystem_0|alu_out_mux|output[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[3]~26_combout\ = (\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & (\alu_subsystem_0|alu_out_mux|output[3]~28_combout\)) # (!\alu_subsystem_0|alu_out_mux|output[0]~0_combout\ & 
-- ((\alu_subsystem_0|alu_out_mux|output[3]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_out_mux|output[0]~0_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[3]~28_combout\,
	datac => \alu_subsystem_0|alu_out_mux|output[3]~25_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[3]~26_combout\);

-- Location: LCCOMB_X19_Y13_N0
\alu_subsystem_0|alu_clr_0|and_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_clr_0|and_3|output~0_combout\ = (!\control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\ & ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((!\register_array_0|output_mux|output~8_combout\))) # 
-- (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & (\alu_subsystem_0|alu_out_mux|output[3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_CLEAR~5_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[3]~26_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datad => \register_array_0|output_mux|output~8_combout\,
	combout => \alu_subsystem_0|alu_clr_0|and_3|output~0_combout\);

-- Location: LCCOMB_X15_Y9_N22
\alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~9_combout\ = \alu_subsystem_0|alu_clr_0|and_3|output~0_combout\ $ (((\alu_subsystem_0|alu_inc_0|and_5|output~combout\ & ((\alu_subsystem_0|alu_clr_0|and_4|output~0_combout\))) # 
-- (!\alu_subsystem_0|alu_inc_0|and_5|output~combout\ & (\control_subsystem_0|control_matrix|ALU_COMP~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|and_5|output~combout\,
	datab => \control_subsystem_0|control_matrix|ALU_COMP~2_combout\,
	datac => \alu_subsystem_0|alu_clr_0|and_3|output~0_combout\,
	datad => \alu_subsystem_0|alu_clr_0|and_4|output~0_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~9_combout\);

-- Location: LCCOMB_X17_Y9_N14
\alu_subsystem_0|alu_rot_0|or_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\ = (\alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_2~combout\) # ((\alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~9_combout\ & 
-- !\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\)))) # (!\alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ & (\alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~9_combout\ & (!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~9_combout\,
	datac => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\);

-- Location: LCCOMB_X17_Y9_N28
\alu_subsystem_0|alu_rot_0|or_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\) # ((\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\);

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data_bus_in[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_mem_data_bus_in(3),
	combout => \mem_data_bus_in~combout\(3));

-- Location: LCCOMB_X20_Y8_N30
\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & ((\mem_data_bus_in~combout\(3)))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & 
-- (\alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\,
	datad => \mem_data_bus_in~combout\(3),
	combout => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y8_N8
\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N24
\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\ = (\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & ((\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\ & 
-- (!\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\ & !\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\))))) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- (((!\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\);

-- Location: LCCOMB_X20_Y8_N22
\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & ((\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\)))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y9_N0
\alu_subsystem_0|alu_rot_0|and_0_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_0_0|output~0_combout\ = (!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & (\alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~9_combout\ $ (((\alu_subsystem_0|alu_inc_0|and_2|output~combout\ & 
-- \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datab => \alu_subsystem_0|alu_inc_0|and_2|output~combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~9_combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_0_0|output~0_combout\);

-- Location: LCCOMB_X19_Y9_N6
\alu_subsystem_0|alu_rot_0|or_3_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\ = (\alu_subsystem_0|alu_rot_0|and_1_2|output~combout\) # ((\alu_subsystem_0|alu_rot_0|and_0_0|output~0_combout\) # ((!\register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \control_subsystem_0|control_matrix|ALU_ROT_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|and_1_2|output~combout\,
	datab => \register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datad => \alu_subsystem_0|alu_rot_0|and_0_0|output~0_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\);

-- Location: LCCOMB_X17_Y11_N10
\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~5_combout\ = (\not_reset~combout\ & ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\) # 
-- ((!\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\) # (!\control_subsystem_0|control_matrix|MA_CLR_LO~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|MA_CLR_LO~0_combout\,
	datac => \not_reset~combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~5_combout\);

-- Location: LCCOMB_X21_Y8_N20
\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~6_combout\ = (\register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- ((\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~5_combout\ & !\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~7_combout\)))) # (!\register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\ & 
-- (\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~5_combout\ & ((!\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~5_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~7_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~6_combout\);

-- Location: LCCOMB_X18_Y10_N0
\control_subsystem_0|control_matrix|MA_LOAD_LO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\ & 
-- ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\) # (!\control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\,
	datac => \control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\);

-- Location: LCCOMB_X17_Y11_N0
\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~3_combout\ = (!\control_subsystem_0|control_matrix|MA_CLR_LO~1_combout\ & (((!\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\ & 
-- !\control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\)) # (!\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datac => \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\,
	datad => \control_subsystem_0|control_matrix|MA_CLR_LO~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X21_Y8_N24
\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~8_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (!\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~3_combout\ & \clk_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~8_combout\);

-- Location: LCCOMB_X21_Y8_N22
\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~4_combout\ = (!\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~7_combout\ & (\not_reset~combout\ & ((\register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~7_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~8_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~4_combout\);

-- Location: LCCOMB_X21_Y8_N10
\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~7_combout\ = (!\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~4_combout\ & ((!\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~6_combout\) # 
-- (!\alu_subsystem_0|alu_rot_0|or_3_0|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~6_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~4_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~7_combout\);

-- Location: LCCOMB_X21_Y8_N4
\register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~7_combout\)))) # (!\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~7_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y11_N18
\register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\) # (\control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~3_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datac => \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X21_Y8_N2
\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~3_combout\ & (\register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\))) # (!\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~3_combout\ & ((\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~5_combout\) # 
-- ((\register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & \register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~3_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~5_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y8_N0
\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~3_combout\ & (\not_reset~combout\ & ((\register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (!\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~3_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~8_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y8_N12
\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~3_combout\ = (!\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\ & ((!\alu_subsystem_0|alu_rot_0|or_3_1|output~combout\) # 
-- (!\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_1|output~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X21_Y8_N18
\register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~3_combout\)))) # (!\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~3_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y13_N2
\register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\ = (!\register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\ & (\not_reset~combout\ & ((\register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (!\register_array_0|MA_register|ms_jk_ff_2|nand_3_2|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_2|nand_3_2|output~4_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X18_Y13_N4
\register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\ & (!\register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\ & 
-- ((!\register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\) # (!\register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\)))) # (!\alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\ & 
-- (((\register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\ & !\register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_2|output~2_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y13_N18
\register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y13_N16
\register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0_combout\ = (!\register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\ & (\not_reset~combout\ & ((\register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\) # 
-- (!\register_array_0|MA_register|ms_jk_ff_2|nand_3_2|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_2|nand_3_2|output~4_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X18_Y13_N22
\register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\ & (!\register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0_combout\ & 
-- ((!\register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\) # (!\register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\)))) # (!\alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\ & 
-- (((\register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\ & !\register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y13_N6
\register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\))))) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (((\register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y8_N8
\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\) # 
-- ((\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~5_combout\ & !\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\)))) # (!\register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\ & 
-- (\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~5_combout\ & ((!\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_3|nand_3_1|output~0_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~5_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y8_N30
\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\ & (\not_reset~combout\ & ((\register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\) # 
-- (!\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~8_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y8_N26
\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\ = (!\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\ & ((!\alu_subsystem_0|alu_rot_0|or_3_4|output~combout\) # 
-- (!\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_4|output~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\);

-- Location: LCCOMB_X21_Y8_N16
\register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\))))) # (!\clk_in~combout\ & (((\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y10_N30
\control_subsystem_0|control_matrix|MA_LOAD_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\ = (\control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\) # ((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\ & \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\,
	datad => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	combout => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\);

-- Location: LCCOMB_X17_Y11_N8
\control_subsystem_0|control_matrix|MA_CLR_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\) # ((\control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\ & 
-- \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\);

-- Location: LCCOMB_X17_Y10_N10
\control_subsystem_0|control_matrix|MA_CLR_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ = (\control_subsystem_0|control_matrix|MA_CLR_LO~1_combout\) # ((\control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ & ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\) # 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_CLR_LO~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\,
	combout => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\);

-- Location: LCCOMB_X22_Y10_N18
\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & (\alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\ & (\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\))) # 
-- (!\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & ((\control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\) # ((!\alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\ & \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	datac => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X22_Y10_N20
\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X22_Y10_N12
\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\ & 
-- ((!\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\))) # (!\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\ & (!\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & (((!\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\);

-- Location: LCCOMB_X22_Y10_N0
\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\)))) # (!\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y10_N22
\register_array_0|MA_register|ms_jk_ff_6|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_6|nand_3_1|output~0_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\ & \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_6|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X21_Y10_N0
\register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\ = ((\alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\) # ((\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\))) # 
-- (!\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X21_Y10_N10
\register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\ = ((\register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ & 
-- \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\))) # (!\control_subsystem_0|clock_generator_0|and_1|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\,
	datac => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X21_Y10_N20
\register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_6|nand_3_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\) # 
-- ((!\register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_6|nand_3_1|output~0_combout\,
	datac => \not_reset~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y10_N28
\register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\))))) # (!\clk_in~combout\ & (((\register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N18
\register_array_0|MA_register|ms_jk_ff_7|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_7|nand_3_1|output~0_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & (\alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ & (\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\ & 
-- \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	datac => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_7|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N28
\register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_7|output~combout\) # (!\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\,
	datab => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	datad => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N8
\register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_7|nand_3_1|output~0_combout\ & (((\register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\) # 
-- (!\register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_7|nand_3_1|output~0_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N12
\register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\))))) # (!\clk_in~combout\ & (((\register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N28
\register_array_0|MA_register|ms_jk_ff_8|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_8|nand_3_1|output~0_combout\ = (\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\ & (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & (\alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\ & 
-- \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	datab => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_8|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X18_Y8_N8
\register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\ = ((\register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\)) # (!\clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X18_Y8_N0
\register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\) # (!\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\,
	datac => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\,
	datad => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N10
\register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_8|nand_3_1|output~0_combout\ & (((\register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\) # 
-- (!\register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_8|nand_3_1|output~0_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N18
\register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\))))) # (!\clk_in~combout\ & (((\register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N26
\register_array_0|MA_register|ms_jk_ff_9|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_9|nand_3_1|output~0_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_9|output~combout\ & (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & (\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\ & 
-- \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_9|output~combout\,
	datab => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_9|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X18_Y8_N2
\register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\ = ((\register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\)) # (!\clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X18_Y8_N30
\register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_9|output~combout\) # (!\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_9|output~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\,
	datac => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\,
	datad => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N22
\register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_9|nand_3_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\) # 
-- ((!\register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_9|nand_3_1|output~0_combout\,
	datac => \not_reset~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N6
\register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\))))) # (!\clk_in~combout\ & (((\register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N6
\register_array_0|MA_register|ms_jk_ff_10|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_10|nand_3_1|output~0_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ & (\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
-- \control_subsystem_0|clock_generator_0|and_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	datab => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_10|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N0
\register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_10|output~combout\) # (!\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\,
	datab => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	datad => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N30
\register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_10|nand_3_1|output~0_combout\ & (((\register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\) # 
-- (!\register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_10|nand_3_1|output~0_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N20
\register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\))))) # (!\clk_in~combout\ & (((\register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N26
\register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_11|output~combout\ & (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & (\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\ & 
-- \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_11|output~combout\,
	datab => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N2
\register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\ = ((\register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\) # (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\)) # (!\clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N22
\register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_11|output~combout\) # (!\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_11|output~combout\,
	datad => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N4
\register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & (((\register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\) # 
-- (!\register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N24
\register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & (\register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|or_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\))))) # (!\clk_in~combout\ & (((\register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|or_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data_bus_out[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MD_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(0));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data_bus_out[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MD_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(1));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data_bus_out[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MD_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(2));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data_bus_out[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MD_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(3));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data_bus_out[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MD_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(4));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data_bus_out[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MD_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(5));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data_bus_out[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MD_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(6));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data_bus_out[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MD_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(7));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data_bus_out[8]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MD_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(8));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data_bus_out[9]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MD_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(9));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data_bus_out[10]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MD_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(10));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data_bus_out[11]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MD_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(11));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr_bus_out[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MA_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(0));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr_bus_out[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MA_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(1));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr_bus_out[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MA_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(2));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr_bus_out[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MA_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(3));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr_bus_out[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MA_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(4));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr_bus_out[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MA_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(5));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr_bus_out[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MA_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(6));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr_bus_out[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MA_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(7));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr_bus_out[8]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MA_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(8));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr_bus_out[9]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MA_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(9));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr_bus_out[10]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MA_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(10));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr_bus_out[11]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \register_array_0|MA_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(11));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HLT_indicator);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|ALT_INV_output~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RUN_indicator);
END structure;


