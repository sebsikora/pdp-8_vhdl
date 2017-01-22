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

-- DATE "01/22/2017 20:01:10"

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

ENTITY 	system IS
    PORT (
	FP_PC_OUTPUT : OUT std_logic_vector(11 DOWNTO 0);
	FP_DATA_OUTPUT : OUT std_logic_vector(11 DOWNTO 0);
	FP_SR_INPUT : IN std_logic_vector(11 DOWNTO 0);
	FP_DATA_SELECT : IN std_logic_vector(2 DOWNTO 0);
	clk_in : IN std_logic;
	clk_out : OUT std_logic;
	not_reset : IN std_logic;
	START : IN std_logic;
	STEP : IN std_logic;
	FP_ADDR_LOAD : IN std_logic;
	FP_EXAMINE : IN std_logic;
	FP_DEPOSIT : IN std_logic;
	HRQ : IN std_logic;
	IRQ : IN std_logic;
	HLT_indicator : OUT std_logic;
	RUN_indicator : OUT std_logic
	);
END system;

-- Design Ports Information
-- FP_PC_OUTPUT[0]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_PC_OUTPUT[1]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_PC_OUTPUT[2]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_PC_OUTPUT[3]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_PC_OUTPUT[4]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_PC_OUTPUT[5]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_PC_OUTPUT[6]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_PC_OUTPUT[7]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_PC_OUTPUT[8]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_PC_OUTPUT[9]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_PC_OUTPUT[10]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_PC_OUTPUT[11]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_DATA_OUTPUT[0]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_DATA_OUTPUT[1]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_DATA_OUTPUT[2]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_DATA_OUTPUT[3]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_DATA_OUTPUT[4]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_DATA_OUTPUT[5]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_DATA_OUTPUT[6]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_DATA_OUTPUT[7]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_DATA_OUTPUT[8]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_DATA_OUTPUT[9]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_DATA_OUTPUT[10]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_DATA_OUTPUT[11]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_out	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRQ	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HLT_indicator	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RUN_indicator	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FP_DATA_SELECT[1]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_DATA_SELECT[0]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_DATA_SELECT[2]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_SR_INPUT[1]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_SR_INPUT[2]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_SR_INPUT[3]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_SR_INPUT[4]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_SR_INPUT[5]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_SR_INPUT[6]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_SR_INPUT[7]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_SR_INPUT[8]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_SR_INPUT[9]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_SR_INPUT[11]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_SR_INPUT[10]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_SR_INPUT[0]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_EXAMINE	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_DEPOSIT	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_ADDR_LOAD	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_in	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- START	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- STEP	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HRQ	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF system IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_FP_PC_OUTPUT : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_FP_DATA_OUTPUT : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_FP_SR_INPUT : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_FP_DATA_SELECT : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_STEP : std_logic;
SIGNAL ww_FP_ADDR_LOAD : std_logic;
SIGNAL ww_FP_EXAMINE : std_logic;
SIGNAL ww_FP_DEPOSIT : std_logic;
SIGNAL ww_HRQ : std_logic;
SIGNAL ww_IRQ : std_logic;
SIGNAL ww_HLT_indicator : std_logic;
SIGNAL ww_RUN_indicator : std_logic;
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~3_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_10|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_8|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_6|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_3|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_2|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_0|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[0]~43_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~4_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_3_2|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_LOAD~7_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_LOAD~8_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_LOAD~9_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|LINK_LOAD~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|LINK_LOAD~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|LINK_LOAD~3_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|and_0_2|output~combout\ : std_logic;
SIGNAL \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|md_input_mux_0|output[5]~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|or_1|output~combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MEM_WRITE~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MEM_WRITE~4_combout\ : std_logic;
SIGNAL \STEP~combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \START~combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|END_STATE~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\ : std_logic;
SIGNAL \FP_DEPOSIT~combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\ : std_logic;
SIGNAL \FP_ADDR_LOAD~combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\ : std_logic;
SIGNAL \FP_EXAMINE~combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~4_combout\ : std_logic;
SIGNAL \clk_en~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~5_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ : std_logic;
SIGNAL \clk_en~0_combout\ : std_logic;
SIGNAL \clk_en~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_LOAD~4_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_LOAD~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_LOAD~10_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_2|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_0|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MEM_INST~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~5_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|OSR~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|OSR~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|FP_CMD~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~4_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~5_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|OSR~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_INC~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~12_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~13_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|md_input_mux_0|output[9]~5_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_9|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[0]~46_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|AC_LOAD~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|AC_LOAD~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|AC_LOAD~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~14_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_0|nand_0|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~15_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~16_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_7|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_0|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[9]~17_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[9]~18_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[9]~19_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_9|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_INC~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_INC~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_INC~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_INC~5_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_INC~6_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_INC~7_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_INC~4_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_INC~8_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~17_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~4_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[11]~11_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[11]~12_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[11]~13_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_11|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|and_10|output~combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~11_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_8|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_0|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[8]~20_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[8]~21_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[8]~22_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_8|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|and_8|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|and_7|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|LINK_LOAD~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|SKIP_MASTER~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~5_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_4|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_4|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[4]~32_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_0|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[4]~33_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_7|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~8_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~9_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~10_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_8|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_7|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[4]~34_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~4_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~3_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~4_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_3|output~4_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[3]~35_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[3]~36_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~6_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~7_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[3]~37_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|and_6|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|and_3|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|and_1_0|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~2_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_2|output~4_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[2]~38_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[2]~39_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_8|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_7|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[2]~40_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~18_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|and_1_2|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|and_4|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|and_1|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|and_0_0|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~19_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[0]~42_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[0]~47_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[0]~44_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|output_mux|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_0|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_7|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_4|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[0]~41_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[0]~45_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_0|output~2_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|and_0_1|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_1|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[1]~8_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[1]~9_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_1|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_7|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[1]~10_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|and_1_1|output~combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|and_3_2|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~7_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_7|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_0|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[10]~14_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[10]~15_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[10]~16_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_10|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ : std_logic;
SIGNAL \cpu|register_array_0|md_input_mux_0|output[10]~7_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~2_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|md_input_mux_0|output[11]~6_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|CLA_MASTER~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|CLA_MASTER~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_5|output~4_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_5|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[5]~29_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_0|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[5]~30_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_7|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[5]~31_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~4_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|and_4_0|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|and_3_1|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\ : std_logic;
SIGNAL \cpu|register_array_0|md_input_mux_0|output[4]~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~4_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|md_input_mux_0|output[7]~3_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_7|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_7|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[7]~23_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[7]~24_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[7]~25_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_7|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|md_input_mux_0|output[8]~4_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|md_input_mux_0|output[6]~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_clr_0|and_6|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[6]~26_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_0|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[6]~27_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_7|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_out_mux|output[6]~28_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|and_2_1|output~combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|and_3_0|output~0_combout\ : std_logic;
SIGNAL \cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|LOAD~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|NEXT_STATE~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|NEXT_STATE~4_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|NEXT_STATE~5_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|END_STATE~5_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~5_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|NEXT_STATE~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \HRQ~combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\ : std_logic;
SIGNAL \clk_in~combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~8_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~5_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~3_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|control_matrix|PC_LOAD_LO~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|Equal0~0_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|Equal1~0_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[0]~0_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|Equal2~0_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[0]~1_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[1]~2_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[1]~3_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[2]~4_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[2]~5_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[3]~6_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[3]~7_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[4]~8_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[4]~9_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[5]~10_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[5]~11_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[6]~12_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[6]~13_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[7]~14_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[7]~15_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[8]~16_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[8]~17_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[9]~18_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[9]~19_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[10]~20_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[10]~21_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[11]~22_combout\ : std_logic;
SIGNAL \cpu|front_panel_display_mux|FP_OUTPUT[11]~23_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \FP_SR_INPUT~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \FP_DATA_SELECT~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \memory_bank_0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|ALT_INV_output~2_combout\ : std_logic;
SIGNAL \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;

BEGIN

FP_PC_OUTPUT <= ww_FP_PC_OUTPUT;
FP_DATA_OUTPUT <= ww_FP_DATA_OUTPUT;
ww_FP_SR_INPUT <= FP_SR_INPUT;
ww_FP_DATA_SELECT <= FP_DATA_SELECT;
ww_clk_in <= clk_in;
clk_out <= ww_clk_out;
ww_not_reset <= not_reset;
ww_START <= START;
ww_STEP <= STEP;
ww_FP_ADDR_LOAD <= FP_ADDR_LOAD;
ww_FP_EXAMINE <= FP_EXAMINE;
ww_FP_DEPOSIT <= FP_DEPOSIT;
ww_HRQ <= HRQ;
ww_IRQ <= IRQ;
HLT_indicator <= ww_HLT_indicator;
RUN_indicator <= ww_RUN_indicator;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\;

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

\memory_bank_0|altsyncram_component|auto_generated|q_a\(9) <= \memory_bank_0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\;

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

\memory_bank_0|altsyncram_component|auto_generated|q_a\(10) <= \memory_bank_0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\;

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

\memory_bank_0|altsyncram_component|auto_generated|q_a\(11) <= \memory_bank_0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\;

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

\memory_bank_0|altsyncram_component|auto_generated|q_a\(8) <= \memory_bank_0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\;

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

\memory_bank_0|altsyncram_component|auto_generated|q_a\(6) <= \memory_bank_0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\;

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

\memory_bank_0|altsyncram_component|auto_generated|q_a\(7) <= \memory_bank_0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\;

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

\memory_bank_0|altsyncram_component|auto_generated|q_a\(5) <= \memory_bank_0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\;

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

\memory_bank_0|altsyncram_component|auto_generated|q_a\(0) <= \memory_bank_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\;

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

\memory_bank_0|altsyncram_component|auto_generated|q_a\(3) <= \memory_bank_0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\;

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

\memory_bank_0|altsyncram_component|auto_generated|q_a\(2) <= \memory_bank_0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\;

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

\memory_bank_0|altsyncram_component|auto_generated|q_a\(1) <= \memory_bank_0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\;

\memory_bank_0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

\memory_bank_0|altsyncram_component|auto_generated|q_a\(4) <= \memory_bank_0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\);

\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\);
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|ALT_INV_output~2_combout\ <= NOT \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\;
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ <= NOT \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\;
\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\ <= NOT \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\;
\cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\ <= NOT \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\;
\cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\ <= NOT \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\;
\cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\ <= NOT \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\;
\cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\ <= NOT \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\;
\cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\ <= NOT \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\;
\cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\ <= NOT \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\;
\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\ <= NOT \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\;
\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\ <= NOT \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\;
\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ <= NOT \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\;
\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\;
\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\;

-- Location: LCCOMB_X17_Y4_N6
\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\)))) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\ & (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\);

-- Location: LCCOMB_X18_Y5_N8
\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~3_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & ((\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~3_combout\);

-- Location: LCCOMB_X19_Y8_N20
\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_10|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_10|output~combout\ = ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~15_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~15_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_10|output~combout\);

-- Location: LCCOMB_X19_Y7_N6
\cpu|alu_subsystem_0|alu_clr_0|and_8|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_8|output~0_combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\,
	datac => \cpu|register_array_0|output_mux|output~11_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_8|output~0_combout\);

-- Location: LCCOMB_X20_Y9_N16
\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_6|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_6|output~combout\ = ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~8_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~8_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_6|output~combout\);

-- Location: LCCOMB_X21_Y8_N4
\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_3|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_3|output~combout\ = ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~3_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|output_mux|output~3_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_3|output~combout\);

-- Location: LCCOMB_X21_Y8_N12
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|output_mux|output~3_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\);

-- Location: LCCOMB_X21_Y8_N8
\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_2|output~combout\ = ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~1_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|output_mux|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_2|output~combout\);

-- Location: LCCOMB_X21_Y8_N24
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_0|output~0_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|output_mux|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_0|output~0_combout\);

-- Location: LCCOMB_X22_Y7_N2
\cpu|alu_subsystem_0|alu_out_mux|output[0]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[0]~43_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ & (((!\cpu|alu_subsystem_0|alu_out_mux|output[0]~42_combout\)))) # 
-- (!\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ & (\cpu|alu_subsystem_0|alu_out_mux|output[0]~42_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\) # (\cpu|alu_subsystem_0|alu_out_mux|output[0]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[0]~42_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[0]~47_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[0]~43_combout\);

-- Location: LCCOMB_X24_Y7_N10
\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~4_combout\ = (\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~3_combout\ & (((\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\)) # (!\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~5_combout\))) # (!\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~3_combout\ & 
-- (\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\ & ((\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~5_combout\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~4_combout\);

-- Location: LCCOMB_X24_Y7_N2
\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_3_2|output~0_combout\ = (!\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_3_2|output~0_combout\);

-- Location: LCCOMB_X24_Y7_N0
\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_3_3|output~0_combout\ = (\not_reset~combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\ & ((!\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_3_2|output~0_combout\) # 
-- (!\cpu|control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \cpu|control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_3_2|output~0_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X21_Y8_N16
\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\ = (\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_3_3|output~0_combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\))) # (!\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_3_3|output~0_combout\ & 
-- (((!\cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\) # (!\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\)) # (!\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X13_Y7_N12
\cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\ = (!\cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X14_Y7_N8
\cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\ = (!\cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X13_Y7_N14
\cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\ = (!\cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y7_N8
\cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~2_combout\ = (\cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\))) # (!\cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\ & 
-- (((!\cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\) # (!\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~2_combout\);

-- Location: LCCOMB_X13_Y7_N28
\cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\ = (!\cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y5_N24
\cpu|control_subsystem_0|control_matrix|MD_LOAD~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_LOAD~7_combout\ = (!\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~4_combout\ & ((\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\) # 
-- (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~4_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_LOAD~7_combout\);

-- Location: LCCOMB_X20_Y5_N12
\cpu|control_subsystem_0|control_matrix|MD_LOAD~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_LOAD~8_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & 
-- (((!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\ & \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_LOAD~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|MD_LOAD~7_combout\,
	datab => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_LOAD~8_combout\);

-- Location: LCCOMB_X20_Y5_N22
\cpu|control_subsystem_0|control_matrix|MD_LOAD~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_LOAD~9_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_LOAD~8_combout\) # ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & 
-- ((\cpu|control_subsystem_0|control_matrix|ALU_INC~2_combout\) # (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_INC~2_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|MD_LOAD~8_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_LOAD~9_combout\);

-- Location: LCCOMB_X17_Y8_N0
\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~1_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y4_N2
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ = (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y5_N20
\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_3_3|output~0_combout\ = (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X21_Y5_N4
\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_3_3|output~0_combout\ = (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X18_Y4_N6
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ = (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y4_N12
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ & (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ & !\memory_bank_0|altsyncram_component|auto_generated|q_a\(2)))) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- (((!\memory_bank_0|altsyncram_component|auto_generated|q_a\(2)) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datad => \memory_bank_0|altsyncram_component|auto_generated|q_a\(2),
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y4_N20
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y4_N26
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ = (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y4_N10
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ & (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ & !\memory_bank_0|altsyncram_component|auto_generated|q_a\(1)))) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (((!\memory_bank_0|altsyncram_component|auto_generated|q_a\(1)) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datad => \memory_bank_0|altsyncram_component|auto_generated|q_a\(1),
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y5_N6
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\ = (\not_reset~combout\ & (((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\)) # (!\cpu|control_subsystem_0|control_matrix|NEXT_STATE~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \cpu|control_subsystem_0|control_matrix|NEXT_STATE~5_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y6_N26
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ = (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y4_N22
\cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & (\cpu|control_subsystem_0|control_matrix|MEM_INST~0_combout\ & 
-- ((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MEM_INST~0_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\);

-- Location: LCCOMB_X15_Y6_N24
\cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\ = (!\cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N10
\cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\ = (!\cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y4_N6
\cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\ = (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\ & 
-- !\cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\);

-- Location: LCCOMB_X17_Y8_N26
\cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\ = (\not_reset~combout\ & !\cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N20
\cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\ & (\cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\))) # (!\cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\ & 
-- ((\cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\) # ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\) # (!\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y6_N24
\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & (!\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datab => \not_reset~combout\,
	datac => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7_combout\,
	combout => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y6_N14
\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\ = (!\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X15_Y7_N6
\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\ = (!\cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ & ((\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\) # 
-- ((\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ & \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X15_Y7_N16
\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\ = (\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\ & (!\cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\ & 
-- (!\cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\,
	datab => \cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\);

-- Location: LCCOMB_X18_Y7_N24
\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\ = (\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\ & (!\cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\ & 
-- (!\cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\,
	datab => \cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\,
	combout => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\);

-- Location: LCCOMB_X22_Y8_N26
\cpu|control_subsystem_0|control_matrix|LINK_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|LINK_LOAD~1_combout\ = (\memory_bank_0|altsyncram_component|auto_generated|q_a\(11)) # ((\memory_bank_0|altsyncram_component|auto_generated|q_a\(7)) # ((\memory_bank_0|altsyncram_component|auto_generated|q_a\(9)) # 
-- (!\cpu|control_subsystem_0|control_matrix|LINK_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_bank_0|altsyncram_component|auto_generated|q_a\(11),
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(7),
	datac => \cpu|control_subsystem_0|control_matrix|LINK_LOAD~0_combout\,
	datad => \memory_bank_0|altsyncram_component|auto_generated|q_a\(9),
	combout => \cpu|control_subsystem_0|control_matrix|LINK_LOAD~1_combout\);

-- Location: LCCOMB_X21_Y8_N22
\cpu|control_subsystem_0|control_matrix|LINK_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|LINK_LOAD~2_combout\ = (\cpu|control_subsystem_0|control_matrix|AC_LOAD~1_combout\) # ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & 
-- (\cpu|control_subsystem_0|control_matrix|LINK_LOAD~1_combout\ & \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|AC_LOAD~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|LINK_LOAD~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|LINK_LOAD~2_combout\);

-- Location: LCCOMB_X21_Y6_N18
\cpu|control_subsystem_0|control_matrix|LINK_LOAD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|LINK_LOAD~3_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & 
-- (\cpu|control_subsystem_0|control_matrix|LINK_LOAD~2_combout\))) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\) # 
-- ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & \cpu|control_subsystem_0|control_matrix|LINK_LOAD~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|LINK_LOAD~2_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|LINK_LOAD~3_combout\);

-- Location: LCCOMB_X17_Y7_N0
\cpu|alu_subsystem_0|alu_rot_0|and_0_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|and_0_2|output~combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (\cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (\cpu|alu_subsystem_0|alu_clr_0|and_0|output~2_combout\ $ 
-- (\cpu|alu_subsystem_0|alu_inc_0|and_1|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datac => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~2_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|and_1|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|and_0_2|output~combout\);

-- Location: LCCOMB_X17_Y7_N22
\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\ = (\cpu|alu_subsystem_0|alu_rot_0|and_0_2|output~combout\) # ((\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|and_0_2|output~combout\,
	combout => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y7_N24
\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\ = (!\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y7_N2
\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\)) # (!\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ & (\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\ & 
-- \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datab => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\,
	combout => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X17_Y7_N20
\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\ = (\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\ & ((\cpu|control_subsystem_0|control_matrix|LINK_LOAD~3_combout\ & 
-- ((!\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\))) # (!\cpu|control_subsystem_0|control_matrix|LINK_LOAD~3_combout\ & (!\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\)))) # 
-- (!\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\ & (!\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|LINK_LOAD~3_combout\,
	datad => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\);

-- Location: LCCOMB_X20_Y4_N16
\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\ = (!\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X14_Y7_N10
\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~1_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X15_Y7_N14
\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ & (!\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\) # (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (((\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y4_N6
\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\ = (!\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y3_N6
\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\ = (!\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y4_N8
\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\ = (!\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X13_Y7_N2
\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y9_N4
\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\ = (!\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y9_N6
\cpu|register_array_0|md_input_mux_0|output[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|md_input_mux_0|output[5]~1_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & (\memory_bank_0|altsyncram_component|auto_generated|q_a\(5))) # (!\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(5),
	datac => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\,
	combout => \cpu|register_array_0|md_input_mux_0|output[5]~1_combout\);

-- Location: LCCOMB_X19_Y9_N28
\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & ((\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\ & !\cpu|register_array_0|md_input_mux_0|output[5]~1_combout\)) # (!\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\ & 
-- ((\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\) # (!\cpu|register_array_0|md_input_mux_0|output[5]~1_combout\))))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- (!\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|md_input_mux_0|output[5]~1_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y10_N30
\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~1_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N16
\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ & (!\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~1_combout\ & 
-- ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\) # (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ & 
-- (((\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y10_N6
\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y3_N4
\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\ = (!\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X13_Y7_N16
\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\ = (!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\);

-- Location: LCCOMB_X15_Y6_N6
\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y3_N18
\cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\ = (!\cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: LCCOMB_X15_Y6_N18
\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~1_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y9_N24
\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~1_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y9_N30
\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ & (!\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~1_combout\ & 
-- ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\) # (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ & 
-- (((\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y9_N20
\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~1_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y3_N8
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~2_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y3_N6
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~1_combout\ = (\not_reset~combout\ & (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\ & 
-- ((\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y3_N4
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~1_combout\ = (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y4_N28
\cpu|control_subsystem_0|clock_generator_0|or_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|or_1|output~combout\ = (((!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\) # (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\)) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\)) # (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\,
	datab => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|or_1|output~combout\);

-- Location: LCCOMB_X18_Y3_N30
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~2_combout\ = (\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~1_combout\ & (\clk_in~combout\ & 
-- (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_5|output~1_combout\ & !\cpu|control_subsystem_0|clock_generator_0|or_1|output~combout\))) # (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- (((!\cpu|control_subsystem_0|clock_generator_0|or_1|output~combout\) # (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\clk_in~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|or_1|output~combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y5_N24
\cpu|control_subsystem_0|control_matrix|MEM_WRITE~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MEM_WRITE~3_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & 
-- (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\))) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~3_combout\);

-- Location: LCCOMB_X17_Y5_N10
\cpu|control_subsystem_0|control_matrix|MEM_WRITE~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MEM_WRITE~4_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & (\cpu|control_subsystem_0|control_matrix|MEM_WRITE~3_combout\ & 
-- (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ $ (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~3_combout\,
	datad => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~4_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_SR_INPUT[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_SR_INPUT(1),
	combout => \FP_SR_INPUT~combout\(1));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_SR_INPUT[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_SR_INPUT(2),
	combout => \FP_SR_INPUT~combout\(2));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_SR_INPUT[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_SR_INPUT(3),
	combout => \FP_SR_INPUT~combout\(3));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_SR_INPUT[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_SR_INPUT(8),
	combout => \FP_SR_INPUT~combout\(8));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_SR_INPUT[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_SR_INPUT(0),
	combout => \FP_SR_INPUT~combout\(0));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X18_Y6_N22
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ & (\not_reset~combout\ & 
-- ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \not_reset~combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y5_N6
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & !\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\);

-- Location: LCCOMB_X18_Y4_N22
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y4_N8
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\))) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y4_N2
\cpu|control_subsystem_0|control_matrix|GROUP_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\ = (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- !\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\);

-- Location: LCCOMB_X18_Y5_N24
\cpu|control_subsystem_0|control_matrix|END_STATE~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|END_STATE~3_combout\ = (\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\ & (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ & 
-- ((\cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\)))) # (!\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\ & (((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datad => \cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|END_STATE~3_combout\);

-- Location: LCCOMB_X19_Y5_N20
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & !\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~0_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\);

-- Location: CLKCTRL_G4
\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X21_Y5_N18
\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_3_3|output~0_combout\ = (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X19_Y5_N30
\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\ = (\FP_DEPOSIT~combout\ & (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\)) # (!\FP_DEPOSIT~combout\ & 
-- (((!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\ & \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\)) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\,
	datab => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datac => \FP_DEPOSIT~combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y5_N30
\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- ((\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\) # ((!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\) # (!\cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y5_N14
\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\ = (\FP_DEPOSIT~combout\ & (\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\)) # (!\FP_DEPOSIT~combout\ & 
-- ((\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\,
	datac => \FP_DEPOSIT~combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\);

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
	padio => ww_FP_ADDR_LOAD,
	combout => \FP_ADDR_LOAD~combout\);

-- Location: LCCOMB_X18_Y5_N2
\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\ = (\FP_ADDR_LOAD~combout\ & (((!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\)))) # (!\FP_ADDR_LOAD~combout\ & 
-- (((!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\ & \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\)) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datab => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \FP_ADDR_LOAD~combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y5_N28
\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- ((\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\) # ((!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\) # (!\cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y5_N20
\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\ = (\FP_ADDR_LOAD~combout\ & (\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\)) # (!\FP_ADDR_LOAD~combout\ & 
-- ((\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \FP_ADDR_LOAD~combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X18_Y5_N26
\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\ = (\FP_EXAMINE~combout\ & (((!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\)))) # (!\FP_EXAMINE~combout\ & 
-- (((!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\ & \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\)) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datab => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\,
	datac => \FP_EXAMINE~combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y5_N10
\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- ((\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\) # ((!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\) # (!\cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y5_N0
\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\ = (\FP_EXAMINE~combout\ & (\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\)) # (!\FP_EXAMINE~combout\ & 
-- ((\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\,
	datac => \FP_EXAMINE~combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\);

-- Location: LCCOMB_X18_Y5_N16
\cpu|control_subsystem_0|control_matrix|FP_CMD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\ = (\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\ & (\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\ & 
-- \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\);

-- Location: LCCOMB_X20_Y5_N14
\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~4_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & 
-- (((\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\ & \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\)) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~4_combout\);

-- Location: LCCOMB_X20_Y5_N28
\clk_en~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_en~1_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~4_combout\) # ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\ & 
-- ((\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\) # (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~4_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\,
	combout => \clk_en~1_combout\);

-- Location: LCCOMB_X19_Y5_N4
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\);

-- Location: LCCOMB_X20_Y5_N4
\cpu|control_subsystem_0|control_matrix|MEM_WRITE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\ = (\cpu|control_subsystem_0|control_matrix|MEM_WRITE~4_combout\) # ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & !\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~4_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\);

-- Location: LCCOMB_X19_Y4_N26
\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~5_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~5_combout\);

-- Location: LCCOMB_X20_Y6_N16
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_3|output~0_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_3|output~0_combout\);

-- Location: CLKCTRL_G6
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y5_N24
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\) & 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)) # (!GLOBAL(\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\) & 
-- ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_3|output~0_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y5_N18
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & !\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\);

-- Location: LCCOMB_X19_Y5_N22
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ = (!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\);

-- Location: LCCOMB_X19_Y4_N12
\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\) # ((\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~5_combout\ & 
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~5_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\);

-- Location: LCCOMB_X20_Y5_N2
\clk_en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_en~0_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ $ (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\,
	combout => \clk_en~0_combout\);

-- Location: LCCOMB_X20_Y5_N26
\clk_en~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_en~2_combout\ = (\cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\) # ((\clk_en~0_combout\) # ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & \clk_en~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \clk_en~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\,
	datad => \clk_en~0_combout\,
	combout => \clk_en~2_combout\);

-- Location: LCCOMB_X19_Y4_N18
\cpu|control_subsystem_0|control_matrix|MD_LOAD~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_LOAD~4_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (((!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # 
-- (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & !\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_LOAD~4_combout\);

-- Location: LCCOMB_X19_Y4_N20
\cpu|control_subsystem_0|control_matrix|MD_LOAD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_LOAD~3_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- ((!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_LOAD~3_combout\);

-- Location: LCCOMB_X19_Y4_N22
\cpu|control_subsystem_0|control_matrix|MD_LOAD~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_LOAD~10_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ 
-- & (\cpu|control_subsystem_0|control_matrix|MD_LOAD~4_combout\)) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_LOAD~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|MD_LOAD~4_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_LOAD~3_combout\,
	datad => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_LOAD~10_combout\);

-- Location: LCCOMB_X19_Y4_N4
\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_LOAD~9_combout\) # 
-- ((\cpu|control_subsystem_0|control_matrix|MD_LOAD~10_combout\ & \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|MD_LOAD~9_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|MD_LOAD~10_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X20_Y5_N10
\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_LOAD~7_combout\ & (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & 
-- ((\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\)))) # (!\cpu|control_subsystem_0|control_matrix|MD_LOAD~7_combout\ & ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\) # 
-- ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|MD_LOAD~7_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\);

-- Location: LCCOMB_X22_Y8_N8
\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~2_combout\ = (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & 
-- !\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~2_combout\);

-- Location: LCCOMB_X19_Y9_N14
\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y9_N8
\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\ = (!\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y6_N28
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\ = (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\);

-- Location: LCCOMB_X18_Y6_N30
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\);

-- Location: LCCOMB_X17_Y5_N0
\cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\ = (\cpu|control_subsystem_0|control_matrix|FP_CMD~1_combout\ & (((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\)))) # 
-- (!\cpu|control_subsystem_0|control_matrix|FP_CMD~1_combout\ & ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\) # 
-- ((!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\ & \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|FP_CMD~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\);

-- Location: LCCOMB_X18_Y6_N8
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ = (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\);

-- Location: LCCOMB_X19_Y6_N24
\cpu|alu_subsystem_0|alu_clr_0|and_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\ = (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ & !\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\);

-- Location: LCCOMB_X21_Y4_N12
\cpu|control_subsystem_0|control_matrix|MA_LOAD_LO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & ((\cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\) # 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\);

-- Location: LCCOMB_X21_Y6_N24
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_2|output~0_combout\ = (\cpu|control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\ & (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & 
-- ((\cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\) # (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_2|output~0_combout\);

-- Location: LCCOMB_X21_Y6_N12
\cpu|register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0_combout\ = (!\cpu|register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\ & (\not_reset~combout\ & ((!\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_2|output~0_combout\) # 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X20_Y6_N22
\cpu|alu_subsystem_0|alu_clr_0|and_0|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_0|output~1_combout\ = (!\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\ & \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~1_combout\);

-- Location: LCCOMB_X18_Y4_N30
\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~0_combout\ = (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~0_combout\);

-- Location: LCCOMB_X17_Y5_N2
\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & 
-- ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\) # ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & 
-- !\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\);

-- Location: LCCOMB_X17_Y5_N16
\cpu|control_subsystem_0|control_matrix|MEM_INST~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MEM_INST~0_combout\ = (\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\ & ((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	datad => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MEM_INST~0_combout\);

-- Location: LCCOMB_X17_Y4_N0
\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~1_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~1_combout\);

-- Location: LCCOMB_X17_Y5_N14
\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\);

-- Location: LCCOMB_X17_Y5_N30
\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\) # ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & 
-- (\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\ & \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\);

-- Location: LCCOMB_X17_Y5_N26
\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\) # ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\) # 
-- ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\ & \cpu|control_subsystem_0|control_matrix|MEM_INST~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MEM_INST~0_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_SR_INPUT[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_SR_INPUT(4),
	combout => \FP_SR_INPUT~combout\(4));

-- Location: LCCOMB_X22_Y8_N4
\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~5_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & ((!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~5_combout\);

-- Location: LCCOMB_X22_Y8_N12
\cpu|control_subsystem_0|control_matrix|OSR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|OSR~0_combout\ = (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & !\memory_bank_0|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \memory_bank_0|altsyncram_component|auto_generated|q_a\(11),
	combout => \cpu|control_subsystem_0|control_matrix|OSR~0_combout\);

-- Location: LCCOMB_X22_Y8_N18
\cpu|control_subsystem_0|control_matrix|OSR~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|OSR~1_combout\ = (!\memory_bank_0|altsyncram_component|auto_generated|q_a\(8) & (\cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\ & (\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\ & 
-- \cpu|control_subsystem_0|control_matrix|OSR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_bank_0|altsyncram_component|auto_generated|q_a\(8),
	datab => \cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|OSR~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|OSR~1_combout\);

-- Location: LCCOMB_X22_Y8_N24
\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\ = (\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~5_combout\) # ((\memory_bank_0|altsyncram_component|auto_generated|q_a\(9) & (\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~2_combout\ 
-- & \cpu|control_subsystem_0|control_matrix|OSR~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_bank_0|altsyncram_component|auto_generated|q_a\(9),
	datab => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~2_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~5_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|OSR~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\);

-- Location: LCCOMB_X18_Y6_N18
\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|control_matrix|NEXT_STATE~2_combout\ & 
-- ((!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\ & \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|NEXT_STATE~2_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\);

-- Location: LCCOMB_X18_Y6_N20
\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ & (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & 
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datad => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\);

-- Location: LCCOMB_X19_Y5_N8
\cpu|control_subsystem_0|control_matrix|FP_CMD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|FP_CMD~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\ & \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|FP_CMD~1_combout\);

-- Location: LCCOMB_X19_Y5_N6
\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~4_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\ & ((\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\) # (!\cpu|control_subsystem_0|control_matrix|FP_CMD~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|FP_CMD~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~4_combout\);

-- Location: LCCOMB_X19_Y8_N14
\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~5_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~4_combout\) # ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & !\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~4_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~5_combout\);

-- Location: LCCOMB_X19_Y4_N2
\cpu|control_subsystem_0|control_matrix|OSR~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|OSR~2_combout\ = (\cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\ & (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (!\memory_bank_0|altsyncram_component|auto_generated|q_a\(11) & \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \memory_bank_0|altsyncram_component|auto_generated|q_a\(11),
	datad => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|OSR~2_combout\);

-- Location: LCCOMB_X19_Y9_N12
\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (!\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y6_N8
\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\ = (!\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\ & (\not_reset~combout\ & ((!\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X21_Y6_N30
\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\ = (\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & (((\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\ & 
-- !\cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\)) # (!\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\))) # (!\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\ & ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\) # (!\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y6_N20
\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	datad => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y4_N10
\cpu|control_subsystem_0|control_matrix|MA_CLR_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ = (\cpu|control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\ & ((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\) # 
-- (\cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\);

-- Location: LCCOMB_X20_Y7_N6
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\) # 
-- ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\ & \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datab => \cpu|control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~4_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y7_N8
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & (((\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\)))) # 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & (\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\ & (\cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\,
	datad => \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y6_N30
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~3_combout\ = (\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2_combout\ & (((\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\)))) # 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2_combout\ & (((\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~3_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~3_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~3_combout\);

-- Location: LCCOMB_X20_Y6_N18
\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	datad => \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_1|output~3_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y3_N14
\cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\) # 
-- ((\cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~4_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datab => \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~4_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y3_N12
\cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & (((\cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\)))) # 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & (\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\ & ((\cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y3_N6
\cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\ = (\cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\ & (((\cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\)))) # 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\ & ((\cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\);

-- Location: LCCOMB_X18_Y3_N2
\cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	datad => \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_1|output~3_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N14
\cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (!\cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N30
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y6_N20
\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\) # 
-- ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X17_Y8_N16
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & (((\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- !\cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\)) # (!\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\))) # (!\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\ & ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\) # (!\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y8_N12
\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y4_N30
\cpu|control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\ = (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\);

-- Location: LCCOMB_X17_Y4_N16
\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\ = (!\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~2_combout\ & (((!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\) # 
-- (!\cpu|control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\)) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\);

-- Location: LCCOMB_X17_Y5_N8
\cpu|control_subsystem_0|control_matrix|ALU_INC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_INC~1_combout\ = (!\cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & (!\cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & !\cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_INC~1_combout\);

-- Location: LCCOMB_X15_Y6_N22
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\ = (!\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_SR_INPUT[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_SR_INPUT(9),
	combout => \FP_SR_INPUT~combout\(9));

-- Location: LCCOMB_X19_Y8_N24
\cpu|register_array_0|output_mux|output~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~12_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (((\FP_SR_INPUT~combout\(9) & \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datab => \FP_SR_INPUT~combout\(9),
	datac => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\,
	combout => \cpu|register_array_0|output_mux|output~12_combout\);

-- Location: LCCOMB_X18_Y8_N8
\cpu|register_array_0|output_mux|output~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~13_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~12_combout\,
	combout => \cpu|register_array_0|output_mux|output~13_combout\);

-- Location: LCCOMB_X19_Y9_N10
\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\ = (!\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N24
\cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~2_combout\ = (\cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\ & (\cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\))) # (!\cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\ & 
-- ((\cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\) # ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\) # (!\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y8_N28
\cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: LCCOMB_X15_Y7_N12
\cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~2_combout\ = (\cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\ & (\cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\))) # (!\cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\ & 
-- ((\cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\) # ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\) # (!\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y5_N12
\cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y6_N26
\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\ = (!\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y6_N30
\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~2_combout\ = (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & (((\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- !\cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\)) # (!\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\))) # (!\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\ & ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\) # (!\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y6_N16
\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: M4K_X23_Y6
\memory_bank_0|altsyncram_component|auto_generated|ram_block1a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "initial_state.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_4k:memory_bank_0|altsyncram:altsyncram_component|altsyncram_aie1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\,
	clk0 => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	ena0 => \clk_en~2_combout\,
	portadatain => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X15_Y9_N20
\cpu|register_array_0|md_input_mux_0|output[9]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|md_input_mux_0|output[9]~5_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & (\memory_bank_0|altsyncram_component|auto_generated|q_a\(9))) # (!\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(9),
	datac => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\,
	combout => \cpu|register_array_0|md_input_mux_0|output[9]~5_combout\);

-- Location: LCCOMB_X19_Y9_N20
\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\ = (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & ((\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ & 
-- ((!\cpu|register_array_0|md_input_mux_0|output[9]~5_combout\) # (!\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ & 
-- (!\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\ & !\cpu|register_array_0|md_input_mux_0|output[9]~5_combout\)))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- (((!\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datad => \cpu|register_array_0|md_input_mux_0|output[9]~5_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y9_N22
\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N14
\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_9|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_9|output~combout\ = ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~12_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|output_mux|output~12_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_9|output~combout\);

-- Location: LCCOMB_X19_Y4_N24
\cpu|alu_subsystem_0|alu_out_mux|output[0]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[0]~46_combout\ = (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[0]~46_combout\);

-- Location: LCCOMB_X19_Y4_N28
\cpu|control_subsystem_0|control_matrix|AC_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|AC_LOAD~2_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\cpu|alu_subsystem_0|alu_out_mux|output[0]~46_combout\ & 
-- ((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[0]~46_combout\,
	datad => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|AC_LOAD~2_combout\);

-- Location: LCCOMB_X22_Y8_N20
\cpu|control_subsystem_0|control_matrix|AC_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|AC_LOAD~0_combout\ = (!\memory_bank_0|altsyncram_component|auto_generated|q_a\(8) & !\memory_bank_0|altsyncram_component|auto_generated|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_bank_0|altsyncram_component|auto_generated|q_a\(8),
	datad => \memory_bank_0|altsyncram_component|auto_generated|q_a\(9),
	combout => \cpu|control_subsystem_0|control_matrix|AC_LOAD~0_combout\);

-- Location: LCCOMB_X19_Y4_N10
\cpu|control_subsystem_0|control_matrix|GROUP_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\ & 
-- \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\);

-- Location: LCCOMB_X22_Y8_N14
\cpu|control_subsystem_0|control_matrix|AC_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|AC_LOAD~1_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ & (\memory_bank_0|altsyncram_component|auto_generated|q_a\(10) & 
-- (!\cpu|control_subsystem_0|control_matrix|AC_LOAD~0_combout\ & \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(10),
	datac => \cpu|control_subsystem_0|control_matrix|AC_LOAD~0_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|AC_LOAD~1_combout\);

-- Location: LCCOMB_X22_Y8_N28
\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~0_combout\ = (\cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\ & ((\memory_bank_0|altsyncram_component|auto_generated|q_a\(11)) # ((\memory_bank_0|altsyncram_component|auto_generated|q_a\(6)) 
-- # (!\cpu|control_subsystem_0|control_matrix|AC_LOAD~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_bank_0|altsyncram_component|auto_generated|q_a\(11),
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(6),
	datac => \cpu|control_subsystem_0|control_matrix|AC_LOAD~0_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~0_combout\);

-- Location: LCCOMB_X22_Y8_N22
\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\ = (\cpu|control_subsystem_0|control_matrix|CLA_MASTER~1_combout\) # ((\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~0_combout\) # 
-- ((\memory_bank_0|altsyncram_component|auto_generated|q_a\(9) & \cpu|control_subsystem_0|control_matrix|OSR~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_bank_0|altsyncram_component|auto_generated|q_a\(9),
	datab => \cpu|control_subsystem_0|control_matrix|OSR~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|CLA_MASTER~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\);

-- Location: LCCOMB_X22_Y8_N0
\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & ((\cpu|control_subsystem_0|control_matrix|AC_LOAD~1_combout\) # 
-- ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|AC_LOAD~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\);

-- Location: LCCOMB_X18_Y3_N28
\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|control_matrix|AC_LOAD~2_combout\) # 
-- (\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datac => \cpu|control_subsystem_0|control_matrix|AC_LOAD~2_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X15_Y6_N16
\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1_combout\ & (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1_combout\ & 
-- (((!\cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\) # (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\);

-- Location: LCCOMB_X15_Y6_N2
\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_SR_INPUT[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_SR_INPUT(11),
	combout => \FP_SR_INPUT~combout\(11));

-- Location: LCCOMB_X19_Y8_N26
\cpu|register_array_0|output_mux|output~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~14_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (((\FP_SR_INPUT~combout\(11) & \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \FP_SR_INPUT~combout\(11),
	datac => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\,
	combout => \cpu|register_array_0|output_mux|output~14_combout\);

-- Location: LCCOMB_X19_Y8_N16
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_0|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_0|nand_0|output~0_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|output_mux|output~14_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_0|nand_0|output~0_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_SR_INPUT[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_SR_INPUT(10),
	combout => \FP_SR_INPUT~combout\(10));

-- Location: LCCOMB_X19_Y8_N18
\cpu|register_array_0|output_mux|output~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~15_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (((\FP_SR_INPUT~combout\(10) & \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \FP_SR_INPUT~combout\(10),
	datac => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\,
	combout => \cpu|register_array_0|output_mux|output~15_combout\);

-- Location: LCCOMB_X19_Y8_N12
\cpu|register_array_0|output_mux|output~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~16_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~15_combout\,
	combout => \cpu|register_array_0|output_mux|output~16_combout\);

-- Location: LCCOMB_X19_Y8_N10
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_0|nand_0|output~0_combout\ & 
-- \cpu|register_array_0|output_mux|output~16_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\ & ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_0|nand_0|output~0_combout\) # 
-- (\cpu|register_array_0|output_mux|output~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_0|nand_0|output~0_combout\,
	datad => \cpu|register_array_0|output_mux|output~16_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\);

-- Location: LCCOMB_X18_Y8_N16
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_7|output~0_combout\ = \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ $ (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\ $ 
-- (\cpu|register_array_0|output_mux|output~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\,
	datad => \cpu|register_array_0|output_mux|output~13_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_7|output~0_combout\);

-- Location: LCCOMB_X19_Y4_N8
\cpu|alu_subsystem_0|alu_out_mux|output[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\);

-- Location: LCCOMB_X18_Y8_N20
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_0|output~0_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|output_mux|output~12_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_0|output~0_combout\);

-- Location: LCCOMB_X18_Y8_N10
\cpu|alu_subsystem_0|alu_out_mux|output[9]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[9]~17_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[9]~17_combout\);

-- Location: LCCOMB_X18_Y8_N6
\cpu|alu_subsystem_0|alu_out_mux|output[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[9]~18_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\)) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_0|output~0_combout\)) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & 
-- ((!\cpu|alu_subsystem_0|alu_out_mux|output[9]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_0|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[9]~17_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[9]~18_combout\);

-- Location: LCCOMB_X18_Y8_N4
\cpu|alu_subsystem_0|alu_out_mux|output[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[9]~19_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[9]~18_combout\ & ((!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_7|output~0_combout\))) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[9]~18_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_9|output~combout\)))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (((\cpu|alu_subsystem_0|alu_out_mux|output[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datab => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_9|output~combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_7|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[9]~18_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[9]~19_combout\);

-- Location: LCCOMB_X19_Y7_N0
\cpu|alu_subsystem_0|alu_clr_0|and_9|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_9|output~0_combout\ = (!\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\ & ((\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ & (\cpu|register_array_0|output_mux|output~13_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[9]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\,
	datac => \cpu|register_array_0|output_mux|output~13_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[9]~19_combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_9|output~0_combout\);

-- Location: LCCOMB_X19_Y7_N20
\cpu|alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\ = \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (\cpu|alu_subsystem_0|alu_clr_0|and_9|output~0_combout\ $ (\cpu|alu_subsystem_0|alu_inc_0|and_10|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datab => \cpu|alu_subsystem_0|alu_clr_0|and_9|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|and_10|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\);

-- Location: LCCOMB_X15_Y7_N18
\cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & ((\cpu|alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\) # ((!\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\)))) # (!\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (!\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & (\cpu|alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datab => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\);

-- Location: LCCOMB_X15_Y7_N8
\cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\ = (\cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\) # ((\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & \cpu|alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\);

-- Location: LCCOMB_X15_Y6_N4
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~2_combout\ = (\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & (((\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- !\cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\)) # (!\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\))) # (!\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\ & ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\) # (!\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~2_combout\);

-- Location: LCCOMB_X15_Y6_N20
\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y5_N28
\cpu|control_subsystem_0|control_matrix|ALU_INC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_INC~0_combout\ = (!\cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & (!\cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & !\cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_INC~0_combout\);

-- Location: LCCOMB_X17_Y5_N22
\cpu|control_subsystem_0|control_matrix|ALU_INC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_INC~2_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & (\cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|control_matrix|ALU_INC~1_combout\ & \cpu|control_subsystem_0|control_matrix|ALU_INC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_INC~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_INC~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_INC~2_combout\);

-- Location: LCCOMB_X17_Y5_N18
\cpu|control_subsystem_0|control_matrix|ALU_INC~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_INC~3_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & 
-- (((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & \cpu|control_subsystem_0|control_matrix|ALU_INC~2_combout\)) # (!\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\))) # 
-- (!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & 
-- ((\cpu|control_subsystem_0|control_matrix|ALU_INC~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_INC~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_INC~3_combout\);

-- Location: LCCOMB_X20_Y5_N8
\cpu|control_subsystem_0|control_matrix|ALU_INC~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_INC~5_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_INC~5_combout\);

-- Location: LCCOMB_X20_Y5_N18
\cpu|control_subsystem_0|control_matrix|ALU_INC~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_INC~6_combout\ = (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_INC~6_combout\);

-- Location: LCCOMB_X20_Y5_N16
\cpu|control_subsystem_0|control_matrix|ALU_INC~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_INC~7_combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_INC~5_combout\) # ((\cpu|control_subsystem_0|control_matrix|ALU_INC~6_combout\) # 
-- ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\ & \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_INC~5_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_INC~6_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_INC~7_combout\);

-- Location: LCCOMB_X19_Y4_N16
\cpu|control_subsystem_0|control_matrix|ALU_INC~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_INC~4_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & (\memory_bank_0|altsyncram_component|auto_generated|q_a\(11) & 
-- \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \memory_bank_0|altsyncram_component|auto_generated|q_a\(11),
	datad => \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_INC~4_combout\);

-- Location: LCCOMB_X20_Y5_N30
\cpu|control_subsystem_0|control_matrix|ALU_INC~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_INC~8_combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_INC~3_combout\) # ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & 
-- ((\cpu|control_subsystem_0|control_matrix|ALU_INC~7_combout\) # (\cpu|control_subsystem_0|control_matrix|ALU_INC~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_INC~3_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_INC~7_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_INC~4_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_INC~8_combout\);

-- Location: LCCOMB_X19_Y7_N16
\cpu|register_array_0|output_mux|output~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~17_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|output_mux|output~14_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	combout => \cpu|register_array_0|output_mux|output~17_combout\);

-- Location: LCCOMB_X22_Y8_N30
\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~4_combout\ = (\memory_bank_0|altsyncram_component|auto_generated|q_a\(9) & (\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~2_combout\ & \cpu|control_subsystem_0|control_matrix|OSR~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_bank_0|altsyncram_component|auto_generated|q_a\(9),
	datac => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~2_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|OSR~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~4_combout\);

-- Location: LCCOMB_X18_Y8_N12
\cpu|alu_subsystem_0|alu_out_mux|output[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & 
-- ((\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~4_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\);

-- Location: LCCOMB_X20_Y8_N20
\cpu|alu_subsystem_0|alu_out_mux|output[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[11]~11_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[11]~11_combout\);

-- Location: LCCOMB_X20_Y8_N10
\cpu|alu_subsystem_0|alu_out_mux|output[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[11]~12_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\) # ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_0|nand_0|output~0_combout\)))) 
-- # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (!\cpu|alu_subsystem_0|alu_out_mux|output[11]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[11]~11_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_0|nand_0|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[11]~12_combout\);

-- Location: LCCOMB_X19_Y7_N2
\cpu|alu_subsystem_0|alu_out_mux|output[11]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[11]~13_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & ((\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\ & (\cpu|register_array_0|output_mux|output~17_combout\)) # 
-- (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\ & ((!\cpu|alu_subsystem_0|alu_out_mux|output[11]~12_combout\) # (!\cpu|register_array_0|output_mux|output~17_combout\))))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & 
-- (((\cpu|alu_subsystem_0|alu_out_mux|output[11]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|output_mux|output~17_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[11]~12_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[11]~13_combout\);

-- Location: LCCOMB_X19_Y7_N12
\cpu|alu_subsystem_0|alu_clr_0|and_11|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_11|output~0_combout\ = (!\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\ & ((\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ & (\cpu|register_array_0|output_mux|output~17_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[11]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\,
	datac => \cpu|register_array_0|output_mux|output~17_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[11]~13_combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_11|output~0_combout\);

-- Location: LCCOMB_X19_Y7_N22
\cpu|alu_subsystem_0|alu_inc_0|and_10|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|and_10|output~combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_INC~8_combout\ & ((\cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ & (!\cpu|alu_subsystem_0|alu_clr_0|and_10|output~0_combout\ & 
-- !\cpu|alu_subsystem_0|alu_clr_0|and_11|output~0_combout\)) # (!\cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ & (\cpu|alu_subsystem_0|alu_clr_0|and_10|output~0_combout\ & \cpu|alu_subsystem_0|alu_clr_0|and_11|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_INC~8_combout\,
	datac => \cpu|alu_subsystem_0|alu_clr_0|and_10|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_clr_0|and_11|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|and_10|output~combout\);

-- Location: LCCOMB_X19_Y10_N2
\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~1_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N8
\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\ & (!\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~1_combout\ & 
-- ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\) # (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\ & 
-- (((\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y10_N20
\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_1|output~2_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: LCCOMB_X15_Y7_N24
\cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_1|output~2_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N0
\cpu|register_array_0|output_mux|output~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~11_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (((!\cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\)))) # 
-- (!\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (\FP_SR_INPUT~combout\(8) & ((\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FP_SR_INPUT~combout\(8),
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\,
	combout => \cpu|register_array_0|output_mux|output~11_combout\);

-- Location: LCCOMB_X18_Y8_N2
\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_8|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_8|output~combout\ = ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~11_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~11_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_8|output~combout\);

-- Location: LCCOMB_X18_Y8_N30
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_0|output~0_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~11_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_0|output~0_combout\);

-- Location: LCCOMB_X18_Y8_N18
\cpu|alu_subsystem_0|alu_out_mux|output[8]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[8]~20_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[8]~20_combout\);

-- Location: LCCOMB_X18_Y8_N24
\cpu|alu_subsystem_0|alu_out_mux|output[8]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[8]~21_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\)) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_0|output~0_combout\)) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & 
-- ((!\cpu|alu_subsystem_0|alu_out_mux|output[8]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_0|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[8]~20_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[8]~21_combout\);

-- Location: LCCOMB_X18_Y8_N22
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~0_combout\ = \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\ $ (((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~11_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~0_combout\);

-- Location: LCCOMB_X18_Y8_N28
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~1_combout\ = \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~0_combout\ $ (((\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ & 
-- (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\ & \cpu|register_array_0|output_mux|output~13_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\) # (\cpu|register_array_0|output_mux|output~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datab => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\,
	datad => \cpu|register_array_0|output_mux|output~13_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N26
\cpu|alu_subsystem_0|alu_out_mux|output[8]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[8]~22_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[8]~21_combout\ & ((!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~1_combout\))) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[8]~21_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_8|output~combout\)))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (((\cpu|alu_subsystem_0|alu_out_mux|output[8]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datab => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_8|output~combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[8]~21_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[8]~22_combout\);

-- Location: LCCOMB_X19_Y7_N4
\cpu|alu_subsystem_0|alu_clr_0|and_8|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_8|output~1_combout\ = (!\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\ & ((\cpu|alu_subsystem_0|alu_clr_0|and_8|output~0_combout\) # ((!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ & 
-- \cpu|alu_subsystem_0|alu_out_mux|output[8]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_clr_0|and_8|output~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[8]~22_combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_8|output~1_combout\);

-- Location: LCCOMB_X18_Y7_N14
\cpu|alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~1_combout\ = \cpu|alu_subsystem_0|alu_clr_0|and_8|output~1_combout\ $ (((\cpu|alu_subsystem_0|alu_inc_0|and_10|output~combout\ & ((\cpu|alu_subsystem_0|alu_clr_0|and_9|output~0_combout\))) # 
-- (!\cpu|alu_subsystem_0|alu_inc_0|and_10|output~combout\ & (\cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datab => \cpu|alu_subsystem_0|alu_inc_0|and_10|output~combout\,
	datac => \cpu|alu_subsystem_0|alu_clr_0|and_9|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_clr_0|and_8|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~1_combout\);

-- Location: LCCOMB_X19_Y7_N10
\cpu|alu_subsystem_0|alu_inc_0|and_8|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|and_8|output~combout\ = (\cpu|alu_subsystem_0|alu_inc_0|and_10|output~combout\ & ((\cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ & (!\cpu|alu_subsystem_0|alu_clr_0|and_8|output~1_combout\ & 
-- !\cpu|alu_subsystem_0|alu_clr_0|and_9|output~0_combout\)) # (!\cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ & (\cpu|alu_subsystem_0|alu_clr_0|and_8|output~1_combout\ & \cpu|alu_subsystem_0|alu_clr_0|and_9|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datab => \cpu|alu_subsystem_0|alu_inc_0|and_10|output~combout\,
	datac => \cpu|alu_subsystem_0|alu_clr_0|and_8|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_clr_0|and_9|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|and_8|output~combout\);

-- Location: LCCOMB_X19_Y7_N8
\cpu|alu_subsystem_0|alu_inc_0|and_7|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|and_7|output~combout\ = (\cpu|alu_subsystem_0|alu_inc_0|and_8|output~combout\ & (\cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((!\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\ & 
-- \cpu|alu_subsystem_0|alu_clr_0|and_7|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\,
	datab => \cpu|alu_subsystem_0|alu_clr_0|and_7|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|and_8|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|and_7|output~combout\);

-- Location: LCCOMB_X19_Y7_N24
\cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\ = \cpu|alu_subsystem_0|alu_inc_0|and_7|output~combout\ $ (\cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|alu_subsystem_0|alu_inc_0|and_7|output~combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\);

-- Location: LCCOMB_X18_Y7_N28
\cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~1_combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & ((\cpu|alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~1_combout\) # ((\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\)))) # (!\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & 
-- ((\cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~1_combout\);

-- Location: LCCOMB_X18_Y7_N10
\cpu|alu_subsystem_0|alu_rot_0|or_3_7|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ = (\cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~1_combout\) # ((!\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & \cpu|alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\);

-- Location: LCCOMB_X17_Y8_N18
\cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\ = (!\cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N8
\cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & ((\cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
-- ((!\cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\) # (!\cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\))) # (!\cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
-- (!\cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ & !\cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\)))) # (!\cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- (((!\cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	datad => \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y8_N22
\cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: M4K_X11_Y8
\memory_bank_0|altsyncram_component|auto_generated|ram_block1a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "initial_state.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_4k:memory_bank_0|altsyncram:altsyncram_component|altsyncram_aie1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\,
	clk0 => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	ena0 => \clk_en~2_combout\,
	portadatain => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X19_Y8_N0
\cpu|control_subsystem_0|control_matrix|LINK_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|LINK_LOAD~0_combout\ = (!\memory_bank_0|altsyncram_component|auto_generated|q_a\(8) & !\memory_bank_0|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory_bank_0|altsyncram_component|auto_generated|q_a\(8),
	datad => \memory_bank_0|altsyncram_component|auto_generated|q_a\(5),
	combout => \cpu|control_subsystem_0|control_matrix|LINK_LOAD~0_combout\);

-- Location: LCCOMB_X19_Y8_N6
\cpu|control_subsystem_0|control_matrix|SKIP_MASTER~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|SKIP_MASTER~1_combout\ = (\memory_bank_0|altsyncram_component|auto_generated|q_a\(6)) # (((!\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \memory_bank_0|altsyncram_component|auto_generated|q_a\(7))) # (!\cpu|control_subsystem_0|control_matrix|LINK_LOAD~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(7),
	datac => \memory_bank_0|altsyncram_component|auto_generated|q_a\(6),
	datad => \cpu|control_subsystem_0|control_matrix|LINK_LOAD~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|SKIP_MASTER~1_combout\);

-- Location: LCCOMB_X19_Y8_N28
\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & (\cpu|control_subsystem_0|control_matrix|OSR~2_combout\ & \cpu|control_subsystem_0|control_matrix|SKIP_MASTER~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|OSR~2_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|SKIP_MASTER~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\);

-- Location: LCCOMB_X19_Y8_N8
\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~3_combout\) # ((\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\) # 
-- ((\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~5_combout\) # (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~3_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~5_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\);

-- Location: LCCOMB_X20_Y6_N0
\cpu|register_array_0|output_mux|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~5_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (((\FP_SR_INPUT~combout\(4) & \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \FP_SR_INPUT~combout\(4),
	datac => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\,
	combout => \cpu|register_array_0|output_mux|output~5_combout\);

-- Location: LCCOMB_X20_Y6_N24
\cpu|alu_subsystem_0|alu_clr_0|and_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_4|output~0_combout\ = (\cpu|alu_subsystem_0|alu_clr_0|and_0|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~5_combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_4|output~0_combout\);

-- Location: LCCOMB_X14_Y7_N28
\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1_combout\ & (!\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1_combout\ & 
-- (((!\cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\) # (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X14_Y7_N22
\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y6_N28
\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_4|output~combout\ = ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~5_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~5_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_4|output~combout\);

-- Location: LCCOMB_X20_Y6_N26
\cpu|alu_subsystem_0|alu_out_mux|output[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[4]~32_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\,
	datad => \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[4]~32_combout\);

-- Location: LCCOMB_X20_Y6_N2
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_0|output~0_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~5_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_0|output~0_combout\);

-- Location: LCCOMB_X19_Y6_N20
\cpu|alu_subsystem_0|alu_out_mux|output[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[4]~33_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\)) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_0|output~0_combout\))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[4]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[4]~32_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_0|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[4]~33_combout\);

-- Location: LCCOMB_X19_Y10_N24
\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y6_N20
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_7|output~0_combout\ = \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\ $ (((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~5_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_7|output~0_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_SR_INPUT[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_SR_INPUT(6),
	combout => \FP_SR_INPUT~combout\(6));

-- Location: LCCOMB_X20_Y9_N0
\cpu|register_array_0|output_mux|output~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~8_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (((\FP_SR_INPUT~combout\(6) & \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \FP_SR_INPUT~combout\(6),
	datac => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\,
	combout => \cpu|register_array_0|output_mux|output~8_combout\);

-- Location: LCCOMB_X20_Y9_N10
\cpu|register_array_0|output_mux|output~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~9_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~8_combout\,
	combout => \cpu|register_array_0|output_mux|output~9_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_SR_INPUT[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_SR_INPUT(7),
	combout => \FP_SR_INPUT~combout\(7));

-- Location: LCCOMB_X19_Y8_N2
\cpu|register_array_0|output_mux|output~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~10_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (((\FP_SR_INPUT~combout\(7) & \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \FP_SR_INPUT~combout\(7),
	datac => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\,
	combout => \cpu|register_array_0|output_mux|output~10_combout\);

-- Location: LCCOMB_X20_Y8_N0
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~10_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\);

-- Location: LCCOMB_X14_Y7_N26
\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~1_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X14_Y7_N12
\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\ & (!\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~1_combout\ & 
-- ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\) # (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
-- (((\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X14_Y7_N24
\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	datad => \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_1|output~2_combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N8
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0_combout\ = \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\ $ (((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|output_mux|output~10_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0_combout\);

-- Location: LCCOMB_X21_Y9_N16
\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N22
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ & (\cpu|register_array_0|output_mux|output~13_combout\ & 
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ & ((\cpu|register_array_0|output_mux|output~13_combout\) # 
-- (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|output_mux|output~13_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_8|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\);

-- Location: LCCOMB_X20_Y8_N6
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\ = (!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0_combout\ & ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_0|output~0_combout\) # 
-- ((!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~0_combout\ & \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_0|output~0_combout\,
	datab => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\);

-- Location: LCCOMB_X19_Y6_N28
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_8|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_8|output~0_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ & (\cpu|register_array_0|output_mux|output~9_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\) # (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- ((\cpu|register_array_0|output_mux|output~9_combout\) # ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\) # (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|output_mux|output~9_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_8|output~0_combout\);

-- Location: LCCOMB_X19_Y6_N30
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_7|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_7|output~1_combout\ = \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_7|output~0_combout\ $ (((\cpu|register_array_0|output_mux|output~7_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_8|output~0_combout\) # (!\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\))) # (!\cpu|register_array_0|output_mux|output~7_combout\ & 
-- (!\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ & \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_8|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|output_mux|output~7_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_7|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_8|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_7|output~1_combout\);

-- Location: LCCOMB_X19_Y6_N6
\cpu|alu_subsystem_0|alu_out_mux|output[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[4]~34_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[4]~33_combout\ & ((!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_7|output~1_combout\))) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[4]~33_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_4|output~combout\)))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (((\cpu|alu_subsystem_0|alu_out_mux|output[4]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datab => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_4|output~combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[4]~33_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_7|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[4]~34_combout\);

-- Location: LCCOMB_X19_Y6_N0
\cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ = \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((\cpu|alu_subsystem_0|alu_clr_0|and_4|output~0_combout\) # ((\cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\ & 
-- \cpu|alu_subsystem_0|alu_out_mux|output[4]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\,
	datab => \cpu|alu_subsystem_0|alu_clr_0|and_4|output~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[4]~34_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\);

-- Location: LCCOMB_X24_Y7_N30
\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\ = (!\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~3_combout\ & (\not_reset~combout\ & ((\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\) # 
-- (!\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~3_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y4_N10
\cpu|control_subsystem_0|control_matrix|PC_CLR_HI~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\);

-- Location: LCCOMB_X21_Y4_N14
\cpu|control_subsystem_0|control_matrix|PC_CLR_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & (!\cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\ & 
-- (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & \cpu|control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\);

-- Location: LCCOMB_X24_Y7_N20
\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~3_combout\ = (\not_reset~combout\ & !\cpu|control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datac => \cpu|control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X17_Y4_N18
\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\);

-- Location: LCCOMB_X17_Y4_N24
\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\) # ((\cpu|control_subsystem_0|control_matrix|SKIP_MASTER~1_combout\ & 
-- (\cpu|control_subsystem_0|control_matrix|OSR~0_combout\ & \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|SKIP_MASTER~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|OSR~0_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\);

-- Location: LCCOMB_X20_Y4_N14
\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~4_combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_INC~6_combout\) # ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & 
-- ((!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\) # (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_0|nand_5|output~2_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_INC~6_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~4_combout\);

-- Location: LCCOMB_X17_Y4_N26
\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & ((\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~4_combout\) # 
-- ((\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\ & \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~4_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\);

-- Location: LCCOMB_X17_Y3_N28
\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\) # 
-- ((\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~8_combout\ & \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~8_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X24_Y7_N4
\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\ & ((\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\) # 
-- ((!\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~3_combout\ & \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~3_combout\)))) # (!\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (!\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~3_combout\ & (\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~3_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X24_Y7_N14
\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~3_combout\ = (!\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\ & ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\) # 
-- (!\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~3_combout\);

-- Location: LCCOMB_X24_Y7_N6
\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_1|output~3_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y8_N26
\cpu|register_array_0|output_mux|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~3_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (((!\cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\)))) # 
-- (!\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (\FP_SR_INPUT~combout\(3) & (\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FP_SR_INPUT~combout\(3),
	datab => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \cpu|register_array_0|output_mux|output~3_combout\);

-- Location: LCCOMB_X21_Y7_N30
\cpu|register_array_0|output_mux|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~4_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|output_mux|output~3_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	combout => \cpu|register_array_0|output_mux|output~4_combout\);

-- Location: LCCOMB_X21_Y7_N4
\cpu|alu_subsystem_0|alu_clr_0|and_3|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_3|output~4_combout\ = (!\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\ & (\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ & \cpu|register_array_0|output_mux|output~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\,
	datad => \cpu|register_array_0|output_mux|output~4_combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_3|output~4_combout\);

-- Location: LCCOMB_X21_Y9_N14
\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~1_combout\ & (!\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (!\cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\ & \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- (((!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # (!\cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\,
	datad => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y9_N22
\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y8_N10
\cpu|alu_subsystem_0|alu_out_mux|output[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[3]~35_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\,
	datad => \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[3]~35_combout\);

-- Location: LCCOMB_X21_Y8_N30
\cpu|alu_subsystem_0|alu_out_mux|output[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[3]~36_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (((\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\)))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\)) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & 
-- ((!\cpu|alu_subsystem_0|alu_out_mux|output[3]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_0|output~0_combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[3]~35_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[3]~36_combout\);

-- Location: LCCOMB_X21_Y7_N24
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~0_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ & (\cpu|register_array_0|output_mux|output~9_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\) # (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\) # ((\cpu|register_array_0|output_mux|output~9_combout\) # (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\,
	datac => \cpu|register_array_0|output_mux|output~9_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~0_combout\);

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_SR_INPUT[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_SR_INPUT(5),
	combout => \FP_SR_INPUT~combout\(5));

-- Location: LCCOMB_X19_Y6_N26
\cpu|register_array_0|output_mux|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~6_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (((\FP_SR_INPUT~combout\(5) & \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \FP_SR_INPUT~combout\(5),
	datac => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\,
	combout => \cpu|register_array_0|output_mux|output~6_combout\);

-- Location: LCCOMB_X19_Y6_N12
\cpu|register_array_0|output_mux|output~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~7_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~6_combout\,
	combout => \cpu|register_array_0|output_mux|output~7_combout\);

-- Location: LCCOMB_X21_Y7_N22
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~1_combout\ = (!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_7|output~0_combout\ & ((\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ & 
-- (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~0_combout\ & \cpu|register_array_0|output_mux|output~7_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~0_combout\) # (\cpu|register_array_0|output_mux|output~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_7|output~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~0_combout\,
	datad => \cpu|register_array_0|output_mux|output~7_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~1_combout\);

-- Location: LCCOMB_X21_Y7_N0
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~0_combout\ = \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ $ (\cpu|register_array_0|output_mux|output~4_combout\ $ 
-- (((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_0|output~0_combout\) # (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|output_mux|output~4_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_0|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~0_combout\);

-- Location: LCCOMB_X21_Y7_N6
\cpu|alu_subsystem_0|alu_out_mux|output[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[3]~37_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[3]~36_combout\ & ((!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~0_combout\))) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[3]~36_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_3|output~combout\)))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (((\cpu|alu_subsystem_0|alu_out_mux|output[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_3|output~combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[3]~36_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_7|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[3]~37_combout\);

-- Location: LCCOMB_X21_Y7_N8
\cpu|alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\ = \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((\cpu|alu_subsystem_0|alu_clr_0|and_3|output~4_combout\) # ((\cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\ & 
-- \cpu|alu_subsystem_0|alu_out_mux|output[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_clr_0|and_3|output~4_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[3]~37_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\);

-- Location: LCCOMB_X19_Y7_N18
\cpu|alu_subsystem_0|alu_inc_0|and_6|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|and_6|output~combout\ = (\cpu|alu_subsystem_0|alu_inc_0|and_7|output~combout\ & \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|alu_subsystem_0|alu_inc_0|and_7|output~combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|and_6|output~combout\);

-- Location: LCCOMB_X19_Y7_N28
\cpu|alu_subsystem_0|alu_inc_0|and_3|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|and_3|output~combout\ = (\cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\ & (\cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ & (\cpu|alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|and_6|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\,
	datab => \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|and_6|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|and_3|output~combout\);

-- Location: LCCOMB_X20_Y7_N28
\cpu|alu_subsystem_0|alu_rot_0|and_1_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|and_1_0|output~0_combout\ = (!\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & (\cpu|alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~1_combout\ $ (((\cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|and_3|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\,
	datab => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|and_3|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|and_1_0|output~0_combout\);

-- Location: M4K_X11_Y4
\memory_bank_0|altsyncram_component|auto_generated|ram_block1a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "initial_state.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_4k:memory_bank_0|altsyncram:altsyncram_component|altsyncram_aie1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\,
	clk0 => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	ena0 => \clk_en~2_combout\,
	portadatain => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X20_Y4_N0
\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & (\memory_bank_0|altsyncram_component|auto_generated|q_a\(2))) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & ((\cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(2),
	datac => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y4_N30
\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\ = (\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- ((\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\) # ((!\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\) # (!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X20_Y4_N28
\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	datad => \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y8_N14
\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y8_N20
\cpu|register_array_0|output_mux|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~1_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (((!\cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\)))) # 
-- (!\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (\FP_SR_INPUT~combout\(2) & ((\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FP_SR_INPUT~combout\(2),
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\,
	combout => \cpu|register_array_0|output_mux|output~1_combout\);

-- Location: LCCOMB_X21_Y7_N20
\cpu|register_array_0|output_mux|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~2_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~1_combout\,
	combout => \cpu|register_array_0|output_mux|output~2_combout\);

-- Location: LCCOMB_X21_Y7_N14
\cpu|alu_subsystem_0|alu_clr_0|and_2|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_2|output~4_combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ & (\cpu|register_array_0|output_mux|output~2_combout\ & !\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\,
	datac => \cpu|register_array_0|output_mux|output~2_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_2|output~4_combout\);

-- Location: LCCOMB_X15_Y7_N10
\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y8_N18
\cpu|alu_subsystem_0|alu_out_mux|output[2]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[2]~38_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\,
	datad => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[2]~38_combout\);

-- Location: LCCOMB_X21_Y8_N6
\cpu|alu_subsystem_0|alu_out_mux|output[2]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[2]~39_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (((\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\)))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_0|output~0_combout\)) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & 
-- ((!\cpu|alu_subsystem_0|alu_out_mux|output[2]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_0|output~0_combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[2]~38_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[2]~39_combout\);

-- Location: LCCOMB_X21_Y7_N28
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_8|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_8|output~0_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ & (\cpu|register_array_0|output_mux|output~4_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_0|output~0_combout\) # (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~1_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- ((\cpu|register_array_0|output_mux|output~4_combout\) # ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_0|output~0_combout\) # (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|output_mux|output~4_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_0|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_7|nand_4|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_8|output~0_combout\);

-- Location: LCCOMB_X21_Y7_N10
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_7|output~0_combout\ = \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ $ (\cpu|register_array_0|output_mux|output~2_combout\ $ 
-- (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_8|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|output_mux|output~2_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_8|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_7|output~0_combout\);

-- Location: LCCOMB_X21_Y7_N12
\cpu|alu_subsystem_0|alu_out_mux|output[2]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[2]~40_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[2]~39_combout\ & (((!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_7|output~0_combout\) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\)))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[2]~39_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_2|output~combout\ & (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_2|output~combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[2]~39_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_9|nand_7|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[2]~40_combout\);

-- Location: LCCOMB_X21_Y7_N26
\cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ = \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((\cpu|alu_subsystem_0|alu_clr_0|and_2|output~4_combout\) # ((\cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\ & 
-- \cpu|alu_subsystem_0|alu_out_mux|output[2]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_clr_0|and_2|output~4_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[2]~40_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\);

-- Location: LCCOMB_X20_Y7_N24
\cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\ = \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ $ (\cpu|alu_subsystem_0|alu_inc_0|and_3|output~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|and_3|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\);

-- Location: LCCOMB_X22_Y7_N14
\cpu|register_array_0|output_mux|output~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~18_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (((!\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\)))) # 
-- (!\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (\FP_SR_INPUT~combout\(0) & (\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FP_SR_INPUT~combout\(0),
	datab => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\,
	combout => \cpu|register_array_0|output_mux|output~18_combout\);

-- Location: LCCOMB_X20_Y4_N4
\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\ = (!\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: M4K_X11_Y5
\memory_bank_0|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "initial_state.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_4k:memory_bank_0|altsyncram:altsyncram_component|altsyncram_aie1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\,
	clk0 => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	ena0 => \clk_en~2_combout\,
	portadatain => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y7_N26
\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\,
	datab => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y7_N16
\cpu|alu_subsystem_0|alu_rot_0|and_1_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|and_1_2|output~combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (\cpu|alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~1_combout\ $ (((\cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|and_3|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datab => \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|and_3|output~combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|and_1_2|output~combout\);

-- Location: LCCOMB_X19_Y7_N30
\cpu|alu_subsystem_0|alu_inc_0|and_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|and_4|output~combout\ = (\cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\ & (\cpu|alu_subsystem_0|alu_inc_0|and_7|output~combout\ & (\cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\,
	datab => \cpu|alu_subsystem_0|alu_inc_0|and_7|output~combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|and_4|output~combout\);

-- Location: LCCOMB_X18_Y7_N22
\cpu|alu_subsystem_0|alu_inc_0|and_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|and_1|output~combout\ = (\cpu|alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\ & (\cpu|alu_subsystem_0|alu_inc_0|and_4|output~combout\ & (\cpu|alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~1_combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\,
	datab => \cpu|alu_subsystem_0|alu_inc_0|and_4|output~combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|and_1|output~combout\);

-- Location: LCCOMB_X17_Y7_N10
\cpu|alu_subsystem_0|alu_rot_0|and_0_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|and_0_0|output~0_combout\ = (!\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & (\cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (\cpu|alu_subsystem_0|alu_clr_0|and_0|output~2_combout\ $ 
-- (\cpu|alu_subsystem_0|alu_inc_0|and_1|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datab => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\,
	datac => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~2_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|and_1|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|and_0_0|output~0_combout\);

-- Location: LCCOMB_X17_Y7_N28
\cpu|alu_subsystem_0|alu_rot_0|or_3_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\ = (\cpu|alu_subsystem_0|alu_rot_0|and_1_2|output~combout\) # ((\cpu|alu_subsystem_0|alu_rot_0|and_0_0|output~0_combout\) # ((\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & 
-- !\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datab => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|and_1_2|output~combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|and_0_0|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\);

-- Location: LCCOMB_X20_Y4_N22
\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & (\memory_bank_0|altsyncram_component|auto_generated|q_a\(0))) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & ((\cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(0),
	datac => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y4_N20
\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\ = (\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\ & (((\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- !\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\)) # (!\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\ & ((!\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\) # (!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X20_Y4_N12
\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y7_N20
\cpu|register_array_0|output_mux|output~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~19_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\))) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|output_mux|output~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datac => \cpu|register_array_0|output_mux|output~18_combout\,
	datad => \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \cpu|register_array_0|output_mux|output~19_combout\);

-- Location: LCCOMB_X17_Y7_N14
\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~1_combout\ & (!\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- (((!\cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\) # (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y7_N18
\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y7_N24
\cpu|alu_subsystem_0|alu_out_mux|output[0]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[0]~42_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|output_mux|output~18_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[0]~42_combout\);

-- Location: LCCOMB_X22_Y8_N10
\cpu|alu_subsystem_0|alu_out_mux|output[0]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[0]~47_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & (((!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & (!\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~4_combout\ & ((\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~4_combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[0]~47_combout\);

-- Location: LCCOMB_X22_Y7_N4
\cpu|alu_subsystem_0|alu_out_mux|output[0]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[0]~44_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ & (\cpu|alu_subsystem_0|alu_out_mux|output[0]~42_combout\ $ (((!\cpu|alu_subsystem_0|alu_out_mux|output[0]~47_combout\) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\))))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ & (((!\cpu|alu_subsystem_0|alu_out_mux|output[0]~42_combout\ & 
-- \cpu|alu_subsystem_0|alu_out_mux|output[0]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[0]~42_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[0]~47_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[0]~44_combout\);

-- Location: LCCOMB_X21_Y9_N28
\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~1_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y9_N18
\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\ & (!\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- ((!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # (!\cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (((!\cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\ & \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\,
	datad => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y9_N10
\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	datad => \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X24_Y7_N22
\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\ = (\not_reset~combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~3_combout\ & ((\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (!\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~3_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X24_Y7_N12
\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\ & ((\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\) # 
-- ((!\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~3_combout\ & \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~3_combout\)))) # (!\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~3_combout\ & (\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~3_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y7_N18
\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~3_combout\ = (!\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\ & ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\) # 
-- (!\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X21_Y7_N16
\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y7_N12
\cpu|register_array_0|output_mux|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|output_mux|output~0_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (((!\cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\)))) # 
-- (!\cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\ & (\FP_SR_INPUT~combout\(1) & ((\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FP_SR_INPUT~combout\(1),
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|PC_BUS_SEL~6_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~3_combout\,
	combout => \cpu|register_array_0|output_mux|output~0_combout\);

-- Location: LCCOMB_X22_Y7_N16
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_0|output~0_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_0|output~0_combout\);

-- Location: LCCOMB_X22_Y7_N28
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_7|output~0_combout\ = \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\ $ (((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_7|output~0_combout\);

-- Location: LCCOMB_X22_Y7_N18
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_4|output~0_combout\ = (!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_7|output~0_combout\ & ((\cpu|register_array_0|output_mux|output~2_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_8|output~0_combout\) # (!\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\cpu|register_array_0|output_mux|output~2_combout\ & 
-- (!\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_8|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|output_mux|output~2_combout\,
	datab => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_7|output~0_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_8|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_4|output~0_combout\);

-- Location: LCCOMB_X22_Y7_N0
\cpu|alu_subsystem_0|alu_out_mux|output[0]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[0]~41_combout\ = (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_0|output~0_combout\) # (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_4|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_0|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_4|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[0]~41_combout\);

-- Location: LCCOMB_X22_Y7_N6
\cpu|alu_subsystem_0|alu_out_mux|output[0]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[0]~45_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~41_combout\ & ((!\cpu|alu_subsystem_0|alu_out_mux|output[0]~44_combout\))) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~41_combout\ & (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~43_combout\)))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (\cpu|alu_subsystem_0|alu_out_mux|output[0]~43_combout\ $ 
-- ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~43_combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[0]~44_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[0]~41_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[0]~45_combout\);

-- Location: LCCOMB_X22_Y7_N22
\cpu|alu_subsystem_0|alu_clr_0|and_0|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_0|output~2_combout\ = (\cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~45_combout\) # ((\cpu|alu_subsystem_0|alu_clr_0|and_0|output~1_combout\ & 
-- \cpu|register_array_0|output_mux|output~19_combout\)))) # (!\cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\ & (\cpu|alu_subsystem_0|alu_clr_0|and_0|output~1_combout\ & (\cpu|register_array_0|output_mux|output~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\,
	datab => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~1_combout\,
	datac => \cpu|register_array_0|output_mux|output~19_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[0]~45_combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~2_combout\);

-- Location: LCCOMB_X20_Y7_N18
\cpu|alu_subsystem_0|alu_rot_0|and_0_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|and_0_1|output~combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & (\cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (\cpu|alu_subsystem_0|alu_clr_0|and_0|output~2_combout\ $ 
-- (\cpu|alu_subsystem_0|alu_inc_0|and_1|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~2_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|and_1|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|and_0_1|output~combout\);

-- Location: LCCOMB_X20_Y7_N2
\cpu|alu_subsystem_0|alu_rot_0|or_3_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\ = (\cpu|alu_subsystem_0|alu_rot_0|and_1_0|output~0_combout\) # ((\cpu|alu_subsystem_0|alu_rot_0|and_0_1|output~combout\) # ((\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datab => \cpu|alu_subsystem_0|alu_rot_0|and_1_0|output~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|and_0_1|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\);

-- Location: LCCOMB_X21_Y6_N14
\cpu|register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\ = (\cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & (((\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\ & 
-- !\cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\)) # (!\cpu|register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0_combout\))) # (!\cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0_combout\ & ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\) # (!\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y6_N10
\cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: M4K_X23_Y3
\memory_bank_0|altsyncram_component|auto_generated|ram_block1a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "initial_state.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_4k:memory_bank_0|altsyncram:altsyncram_component|altsyncram_aie1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\,
	clk0 => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	ena0 => \clk_en~2_combout\,
	portadatain => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X20_Y4_N26
\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & (\memory_bank_0|altsyncram_component|auto_generated|q_a\(1))) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & ((\cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\,
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(1),
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y4_N24
\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\ = (\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- ((\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\) # ((!\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\) # (!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X20_Y4_N18
\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y7_N8
\cpu|alu_subsystem_0|alu_clr_0|and_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_1|output~0_combout\ = (\cpu|alu_subsystem_0|alu_clr_0|and_0|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~1_combout\,
	datad => \cpu|register_array_0|output_mux|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_1|output~0_combout\);

-- Location: LCCOMB_X22_Y7_N30
\cpu|alu_subsystem_0|alu_out_mux|output[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[1]~8_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[1]~8_combout\);

-- Location: LCCOMB_X22_Y7_N26
\cpu|alu_subsystem_0|alu_out_mux|output[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[1]~9_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\) # ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_0|output~0_combout\)))) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & ((!\cpu|alu_subsystem_0|alu_out_mux|output[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_0|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[1]~8_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[1]~9_combout\);

-- Location: LCCOMB_X22_Y7_N10
\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_1|output~combout\ = ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~0_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_1|output~combout\);

-- Location: LCCOMB_X18_Y7_N0
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_7|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_7|output~1_combout\ = \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_7|output~0_combout\ $ (((\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_8|output~0_combout\ & \cpu|register_array_0|output_mux|output~2_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_8|output~0_combout\) # (\cpu|register_array_0|output_mux|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_7|output~0_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_8|nand_8|output~0_combout\,
	datad => \cpu|register_array_0|output_mux|output~2_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_7|output~1_combout\);

-- Location: LCCOMB_X18_Y7_N30
\cpu|alu_subsystem_0|alu_out_mux|output[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[1]~10_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[1]~9_combout\ & ((!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_7|output~1_combout\))) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[1]~9_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_1|output~combout\)))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (\cpu|alu_subsystem_0|alu_out_mux|output[1]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[1]~9_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_1|output~combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_10|nand_7|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[1]~10_combout\);

-- Location: LCCOMB_X18_Y7_N4
\cpu|alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~1_combout\ = \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((\cpu|alu_subsystem_0|alu_clr_0|and_1|output~0_combout\) # ((\cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\ & 
-- \cpu|alu_subsystem_0|alu_out_mux|output[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datab => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_clr_0|and_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[1]~10_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~1_combout\);

-- Location: LCCOMB_X20_Y7_N16
\cpu|alu_subsystem_0|alu_rot_0|and_1_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|and_1_1|output~combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & (\cpu|alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~1_combout\ $ (((\cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|and_3|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|and_3|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|and_1_1|output~combout\);

-- Location: LCCOMB_X22_Y6_N22
\cpu|control_subsystem_0|control_matrix|ALU_ROT_2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ = (\memory_bank_0|altsyncram_component|auto_generated|q_a\(9) & (\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~2_combout\ & \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_bank_0|altsyncram_component|auto_generated|q_a\(9),
	datac => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~2_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\);

-- Location: LCCOMB_X20_Y7_N22
\cpu|alu_subsystem_0|alu_rot_0|and_3_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|and_3_2|output~combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (\cpu|alu_subsystem_0|alu_inc_0|and_4|output~combout\ $ (\cpu|alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|and_4|output~combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|and_3_2|output~combout\);

-- Location: LCCOMB_X20_Y7_N4
\cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\ = (\cpu|alu_subsystem_0|alu_rot_0|and_1_1|output~combout\) # ((\cpu|alu_subsystem_0|alu_rot_0|and_3_2|output~combout\) # ((\cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\ & 
-- !\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\,
	datab => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|and_1_1|output~combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|and_3_2|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\);

-- Location: LCCOMB_X20_Y7_N10
\cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\ = (\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & (\cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\ & (\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\))) # 
-- (!\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & ((\cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~4_combout\) # ((\cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\ & \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\,
	datab => \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~4_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\);

-- Location: LCCOMB_X20_Y7_N0
\cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\ = (\cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\) # ((\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datab => \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\);

-- Location: LCCOMB_X20_Y7_N26
\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\ = (\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\ & (!\cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\ & 
-- (!\cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\,
	datab => \cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\,
	combout => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\);

-- Location: LCCOMB_X17_Y7_N6
\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7_combout\ = (!\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\ & (((\cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\) # 
-- (\cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\)) # (!\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7_combout\);

-- Location: LCCOMB_X17_Y7_N4
\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	datad => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7_combout\,
	combout => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y4_N12
\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~2_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|control_matrix|NEXT_STATE~2_combout\ & 
-- (!\cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ & \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|NEXT_STATE~2_combout\,
	datac => \cpu|alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~2_combout\);

-- Location: LCCOMB_X17_Y4_N4
\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\) # ((\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~2_combout\) # 
-- ((\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\ & \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\);

-- Location: LCCOMB_X18_Y4_N14
\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~7_combout\ = (!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\ & 
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~7_combout\);

-- Location: LCCOMB_X17_Y5_N4
\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & 
-- ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\) # (\cpu|control_subsystem_0|control_matrix|ALU_INC~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_INC~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\);

-- Location: LCCOMB_X17_Y4_N2
\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_1|nand_5|output~2_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\);

-- Location: LCCOMB_X17_Y4_N8
\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\) # ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & 
-- ((\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\) # (!\cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datab => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|fp_latch_bank|ms_jk_ff_2|nand_5|output~2_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\);

-- Location: LCCOMB_X18_Y4_N24
\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~7_combout\) # ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\) # 
-- ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~7_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\);

-- Location: LCCOMB_X19_Y8_N30
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_7|output~0_combout\ = \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\ $ (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_0|nand_0|output~0_combout\ $ 
-- (\cpu|register_array_0|output_mux|output~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_0|nand_0|output~0_combout\,
	datad => \cpu|register_array_0|output_mux|output~16_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_7|output~0_combout\);

-- Location: LCCOMB_X15_Y7_N30
\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~1_combout\ & (!\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~1_combout\ & 
-- (((!\cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\) # (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\);

-- Location: LCCOMB_X14_Y7_N6
\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N4
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_0|output~0_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~15_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_0|output~0_combout\);

-- Location: LCCOMB_X20_Y8_N28
\cpu|alu_subsystem_0|alu_out_mux|output[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[10]~14_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[10]~14_combout\);

-- Location: LCCOMB_X20_Y8_N2
\cpu|alu_subsystem_0|alu_out_mux|output[10]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[10]~15_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\) # ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_0|output~0_combout\)))) 
-- # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & ((!\cpu|alu_subsystem_0|alu_out_mux|output[10]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_0|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[10]~14_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[10]~15_combout\);

-- Location: LCCOMB_X20_Y8_N12
\cpu|alu_subsystem_0|alu_out_mux|output[10]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[10]~16_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[10]~15_combout\ & ((!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_7|output~0_combout\))) 
-- # (!\cpu|alu_subsystem_0|alu_out_mux|output[10]~15_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_10|output~combout\)))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (((\cpu|alu_subsystem_0|alu_out_mux|output[10]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_10|output~combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_1|nand_7|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[10]~15_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[10]~16_combout\);

-- Location: LCCOMB_X20_Y8_N26
\cpu|alu_subsystem_0|alu_clr_0|and_10|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_10|output~0_combout\ = (!\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\ & ((\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ & (\cpu|register_array_0|output_mux|output~16_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[10]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|output_mux|output~16_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[10]~16_combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_10|output~0_combout\);

-- Location: LCCOMB_X15_Y7_N0
\cpu|alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\ = \cpu|alu_subsystem_0|alu_clr_0|and_10|output~0_combout\ $ (((\cpu|control_subsystem_0|control_matrix|ALU_INC~8_combout\ & ((\cpu|alu_subsystem_0|alu_clr_0|and_11|output~0_combout\))) # 
-- (!\cpu|control_subsystem_0|control_matrix|ALU_INC~8_combout\ & (\cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_INC~8_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_clr_0|and_10|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_clr_0|and_11|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\);

-- Location: LCCOMB_X15_Y7_N26
\cpu|alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\ = \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (\cpu|control_subsystem_0|control_matrix|ALU_INC~8_combout\ $ (\cpu|alu_subsystem_0|alu_clr_0|and_11|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_INC~8_combout\,
	datad => \cpu|alu_subsystem_0|alu_clr_0|and_11|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\);

-- Location: LCCOMB_X15_Y7_N28
\cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~1_combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & ((\cpu|alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\) # ((\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\)))) # (!\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (((\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datab => \cpu|alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~1_combout\);

-- Location: LCCOMB_X15_Y7_N22
\cpu|alu_subsystem_0|alu_rot_0|or_3_10|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ = (\cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~1_combout\) # ((\cpu|alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\);

-- Location: LCCOMB_X15_Y7_N20
\cpu|register_array_0|md_input_mux_0|output[10]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|md_input_mux_0|output[10]~7_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & (\memory_bank_0|altsyncram_component|auto_generated|q_a\(10))) # (!\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(10),
	datac => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	combout => \cpu|register_array_0|md_input_mux_0|output[10]~7_combout\);

-- Location: LCCOMB_X19_Y3_N28
\cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\ = (\cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|register_array_0|md_input_mux_0|output[10]~7_combout\))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\ & 
-- ((\cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\) # ((!\cpu|register_array_0|md_input_mux_0|output[10]~7_combout\) # (!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|register_array_0|md_input_mux_0|output[10]~7_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y3_N8
\cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: M4K_X23_Y5
\memory_bank_0|altsyncram_component|auto_generated|ram_block1a10\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "initial_state.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_4k:memory_bank_0|altsyncram:altsyncram_component|altsyncram_aie1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\,
	clk0 => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	ena0 => \clk_en~2_combout\,
	portadatain => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y6_N20
\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~2_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & 
-- ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\) # ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ & 
-- \memory_bank_0|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datad => \memory_bank_0|altsyncram_component|auto_generated|q_a\(10),
	combout => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~2_combout\);

-- Location: LCCOMB_X22_Y6_N8
\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ = (\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~2_combout\ & (\cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\ & ((\memory_bank_0|altsyncram_component|auto_generated|q_a\(9)) # 
-- (\memory_bank_0|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_bank_0|altsyncram_component|auto_generated|q_a\(9),
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(8),
	datac => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~2_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\);

-- Location: LCCOMB_X15_Y7_N4
\cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~0_combout\ = (\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ & (!\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\)))) # (!\cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\) # 
-- ((!\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & \cpu|alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~0_combout\);

-- Location: LCCOMB_X15_Y7_N2
\cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\ = (\cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~0_combout\) # ((\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & \cpu|alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\);

-- Location: LCCOMB_X14_Y7_N18
\cpu|register_array_0|md_input_mux_0|output[11]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|md_input_mux_0|output[11]~6_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & (\memory_bank_0|altsyncram_component|auto_generated|q_a\(11))) # (!\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(11),
	datac => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\,
	combout => \cpu|register_array_0|md_input_mux_0|output[11]~6_combout\);

-- Location: LCCOMB_X13_Y7_N30
\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\ = (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|register_array_0|md_input_mux_0|output[11]~6_combout\))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\ & 
-- ((\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\) # ((!\cpu|register_array_0|md_input_mux_0|output[11]~6_combout\) # (!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|register_array_0|md_input_mux_0|output[11]~6_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\);

-- Location: LCCOMB_X13_Y7_N22
\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	datad => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: M4K_X23_Y4
\memory_bank_0|altsyncram_component|auto_generated|ram_block1a11\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "initial_state.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_4k:memory_bank_0|altsyncram:altsyncram_component|altsyncram_aie1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\,
	clk0 => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	ena0 => \clk_en~2_combout\,
	portadatain => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y8_N2
\cpu|control_subsystem_0|control_matrix|CLA_MASTER~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|CLA_MASTER~0_combout\ = (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\) # 
-- (!\memory_bank_0|altsyncram_component|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \memory_bank_0|altsyncram_component|auto_generated|q_a\(11),
	combout => \cpu|control_subsystem_0|control_matrix|CLA_MASTER~0_combout\);

-- Location: LCCOMB_X22_Y8_N16
\cpu|control_subsystem_0|control_matrix|CLA_MASTER~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|CLA_MASTER~1_combout\ = (\cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\ & (\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\ & \cpu|control_subsystem_0|control_matrix|CLA_MASTER~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|CLA_MASTER~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|CLA_MASTER~1_combout\);

-- Location: LCCOMB_X22_Y8_N6
\cpu|control_subsystem_0|control_matrix|ALU_CLEAR\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~0_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~46_combout\) # ((\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~2_combout\ & 
-- \cpu|control_subsystem_0|control_matrix|CLA_MASTER~1_combout\)))) # (!\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~0_combout\ & (\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~2_combout\ & 
-- (\cpu|control_subsystem_0|control_matrix|CLA_MASTER~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~2_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|CLA_MASTER~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[0]~46_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\);

-- Location: LCCOMB_X19_Y6_N2
\cpu|alu_subsystem_0|alu_clr_0|and_5|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_5|output~4_combout\ = (!\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\ & (\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ & \cpu|register_array_0|output_mux|output~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\,
	datad => \cpu|register_array_0|output_mux|output~7_combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_5|output~4_combout\);

-- Location: LCCOMB_X19_Y6_N14
\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_5|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_5|output~combout\ = ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~6_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~6_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_5|output~combout\);

-- Location: LCCOMB_X19_Y6_N8
\cpu|alu_subsystem_0|alu_out_mux|output[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[5]~29_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[5]~29_combout\);

-- Location: LCCOMB_X19_Y6_N22
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_0|output~0_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~6_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_0|output~0_combout\);

-- Location: LCCOMB_X19_Y6_N16
\cpu|alu_subsystem_0|alu_out_mux|output[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[5]~30_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\)) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_0|output~0_combout\))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[5]~29_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_0|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[5]~30_combout\);

-- Location: LCCOMB_X19_Y6_N18
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_7|output~0_combout\ = \cpu|register_array_0|output_mux|output~7_combout\ $ (\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ $ 
-- (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_8|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|output_mux|output~7_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_8|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_7|output~0_combout\);

-- Location: LCCOMB_X19_Y6_N10
\cpu|alu_subsystem_0|alu_out_mux|output[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[5]~31_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[5]~30_combout\ & ((!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_7|output~0_combout\))) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[5]~30_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_5|output~combout\)))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (((\cpu|alu_subsystem_0|alu_out_mux|output[5]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datab => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_5|output~combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[5]~30_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_6|nand_7|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[5]~31_combout\);

-- Location: LCCOMB_X19_Y6_N4
\cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\ = \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((\cpu|alu_subsystem_0|alu_clr_0|and_5|output~4_combout\) # ((\cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\ & 
-- \cpu|alu_subsystem_0|alu_out_mux|output[5]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\,
	datab => \cpu|alu_subsystem_0|alu_clr_0|and_5|output~4_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[5]~31_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\);

-- Location: LCCOMB_X19_Y7_N14
\cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~4_combout\ = \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\ $ (((\cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\ & \cpu|alu_subsystem_0|alu_inc_0|and_7|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|and_7|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~4_combout\);

-- Location: LCCOMB_X18_Y7_N16
\cpu|alu_subsystem_0|alu_rot_0|and_4_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|and_4_0|output~0_combout\ = (!\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & (\cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ $ (((\cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|and_6|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\,
	datab => \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|and_6|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|and_4_0|output~0_combout\);

-- Location: LCCOMB_X18_Y7_N6
\cpu|alu_subsystem_0|alu_rot_0|and_3_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|and_3_1|output~combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & (\cpu|alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\ $ (\cpu|alu_subsystem_0|alu_inc_0|and_4|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|and_4|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|and_3_1|output~combout\);

-- Location: LCCOMB_X18_Y7_N20
\cpu|alu_subsystem_0|alu_rot_0|or_3_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\ = (\cpu|alu_subsystem_0|alu_rot_0|and_4_0|output~0_combout\) # ((\cpu|alu_subsystem_0|alu_rot_0|and_3_1|output~combout\) # ((\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datab => \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~4_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|and_4_0|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|and_3_1|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\);

-- Location: LCCOMB_X18_Y7_N26
\cpu|register_array_0|md_input_mux_0|output[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|md_input_mux_0|output[4]~0_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & (\memory_bank_0|altsyncram_component|auto_generated|q_a\(4))) # (!\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_bank_0|altsyncram_component|auto_generated|q_a\(4),
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\,
	datad => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\,
	combout => \cpu|register_array_0|md_input_mux_0|output[4]~0_combout\);

-- Location: LCCOMB_X19_Y4_N30
\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\ & !\cpu|register_array_0|md_input_mux_0|output[4]~0_combout\))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\ & 
-- (((\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\) # (!\cpu|register_array_0|md_input_mux_0|output[4]~0_combout\)) # (!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|md_input_mux_0|output[4]~0_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y4_N14
\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: M4K_X11_Y6
\memory_bank_0|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "initial_state.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_4k:memory_bank_0|altsyncram:altsyncram_component|altsyncram_aie1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\,
	clk0 => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	ena0 => \clk_en~2_combout\,
	portadatain => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y6_N16
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ & (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ & 
-- (!\memory_bank_0|altsyncram_component|auto_generated|q_a\(4) & !\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\))) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ & 
-- (((!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\) # (!\memory_bank_0|altsyncram_component|auto_generated|q_a\(4))) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datac => \memory_bank_0|altsyncram_component|auto_generated|q_a\(4),
	datad => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y6_N28
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y4_N0
\cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~3_combout\ = (\cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\) # ((!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & !\cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~3_combout\);

-- Location: LCCOMB_X17_Y5_N20
\cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~4_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & ((\cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\) # 
-- ((\cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~3_combout\ & \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\)))) # 
-- (!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & (((\cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~3_combout\ & 
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~3_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~4_combout\);

-- Location: LCCOMB_X19_Y3_N16
\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\ = (\cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~4_combout\ & \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|control_matrix|MA_LOAD_HI~4_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X21_Y6_N22
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0_combout\ = (!\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1_combout\ & (\not_reset~combout\ & ((!\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_2|output~0_combout\) # 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X17_Y7_N30
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1_combout\ = (\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\ & (((\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\ & 
-- !\cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\)) # (!\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0_combout\))) # (!\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0_combout\ & ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\) # (!\cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MA_register|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y7_N12
\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: M4K_X23_Y7
\memory_bank_0|altsyncram_component|auto_generated|ram_block1a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "initial_state.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_4k:memory_bank_0|altsyncram:altsyncram_component|altsyncram_aie1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\,
	clk0 => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	ena0 => \clk_en~2_combout\,
	portadatain => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X19_Y3_N10
\cpu|register_array_0|md_input_mux_0|output[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|md_input_mux_0|output[7]~3_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & (\memory_bank_0|altsyncram_component|auto_generated|q_a\(7))) # (!\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(7),
	datac => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	combout => \cpu|register_array_0|md_input_mux_0|output[7]~3_combout\);

-- Location: LCCOMB_X19_Y3_N20
\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|register_array_0|md_input_mux_0|output[7]~3_combout\))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\ & 
-- ((\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\) # ((!\cpu|register_array_0|md_input_mux_0|output[7]~3_combout\) # (!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|register_array_0|md_input_mux_0|output[7]~3_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y3_N22
\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (!\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N4
\cpu|alu_subsystem_0|alu_clr_0|and_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_7|output~0_combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~10_combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_7|output~0_combout\);

-- Location: LCCOMB_X19_Y8_N22
\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_7|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_7|output~combout\ = ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~10_combout\)))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~10_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_7|output~combout\);

-- Location: LCCOMB_X20_Y8_N16
\cpu|alu_subsystem_0|alu_out_mux|output[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[7]~23_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[7]~23_combout\);

-- Location: LCCOMB_X20_Y8_N14
\cpu|alu_subsystem_0|alu_out_mux|output[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[7]~24_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\) # ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\)))) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (!\cpu|alu_subsystem_0|alu_out_mux|output[7]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[7]~23_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[7]~24_combout\);

-- Location: LCCOMB_X20_Y8_N30
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~1_combout\ = \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0_combout\ $ (((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_0|output~0_combout\) # 
-- ((!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~0_combout\ & \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_7|output~0_combout\,
	datab => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_3|nand_0|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_2|nand_8|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N24
\cpu|alu_subsystem_0|alu_out_mux|output[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[7]~25_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[7]~24_combout\ & ((!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~1_combout\))) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[7]~24_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_7|output~combout\)))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (((\cpu|alu_subsystem_0|alu_out_mux|output[7]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datab => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_7|output~combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[7]~24_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_7|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[7]~25_combout\);

-- Location: LCCOMB_X20_Y8_N18
\cpu|alu_subsystem_0|alu_clr_0|and_7|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_7|output~1_combout\ = (\cpu|alu_subsystem_0|alu_clr_0|and_7|output~0_combout\) # ((\cpu|alu_subsystem_0|alu_out_mux|output[7]~25_combout\ & !\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|alu_subsystem_0|alu_clr_0|and_7|output~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[7]~25_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_7|output~1_combout\);

-- Location: LCCOMB_X19_Y7_N26
\cpu|alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\ = \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (\cpu|alu_subsystem_0|alu_inc_0|and_8|output~combout\ $ (((!\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\ & 
-- \cpu|alu_subsystem_0|alu_clr_0|and_7|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\,
	datab => \cpu|alu_subsystem_0|alu_clr_0|and_7|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|and_8|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\);

-- Location: LCCOMB_X18_Y7_N12
\cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & ((\cpu|alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\) # ((!\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~1_combout\)))) # (!\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (!\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & (\cpu|alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datab => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\);

-- Location: LCCOMB_X18_Y7_N2
\cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\ = (\cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\) # ((\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & \cpu|alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\);

-- Location: LCCOMB_X19_Y9_N2
\cpu|register_array_0|md_input_mux_0|output[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|md_input_mux_0|output[8]~4_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & (\memory_bank_0|altsyncram_component|auto_generated|q_a\(8))) # (!\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_bank_0|altsyncram_component|auto_generated|q_a\(8),
	datac => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\,
	combout => \cpu|register_array_0|md_input_mux_0|output[8]~4_combout\);

-- Location: LCCOMB_X19_Y9_N24
\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\ = (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & ((\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ & !\cpu|register_array_0|md_input_mux_0|output[8]~4_combout\)) # (!\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\ & 
-- ((\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\) # (!\cpu|register_array_0|md_input_mux_0|output[8]~4_combout\))))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- (!\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|md_input_mux_0|output[8]~4_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y9_N16
\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((!\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: M4K_X23_Y8
\memory_bank_0|altsyncram_component|auto_generated|ram_block1a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "initial_state.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_4k:memory_bank_0|altsyncram:altsyncram_component|altsyncram_aie1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\,
	clk0 => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	ena0 => \clk_en~2_combout\,
	portadatain => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y6_N24
\cpu|control_subsystem_0|control_matrix|ALU_ROT_1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ = (\memory_bank_0|altsyncram_component|auto_generated|q_a\(8) & (\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~2_combout\ & \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(8),
	datac => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~2_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\);

-- Location: LCCOMB_X18_Y7_N18
\cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & ((\cpu|alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\) # ((!\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\)))) # (!\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (!\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & ((\cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datab => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\);

-- Location: LCCOMB_X18_Y7_N8
\cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\ = (\cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\) # ((\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~4_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\);

-- Location: LCCOMB_X19_Y9_N0
\cpu|register_array_0|md_input_mux_0|output[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|md_input_mux_0|output[6]~2_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & (\memory_bank_0|altsyncram_component|auto_generated|q_a\(6))) # (!\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(6),
	datac => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	combout => \cpu|register_array_0|md_input_mux_0|output[6]~2_combout\);

-- Location: LCCOMB_X19_Y9_N30
\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & ((\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- ((!\cpu|register_array_0|md_input_mux_0|output[6]~2_combout\) # (!\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- (!\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\ & !\cpu|register_array_0|md_input_mux_0|output[6]~2_combout\)))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- (((!\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datad => \cpu|register_array_0|md_input_mux_0|output[6]~2_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y9_N18
\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (!\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: M4K_X23_Y9
\memory_bank_0|altsyncram_component|auto_generated|ram_block1a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "initial_state.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_4k:memory_bank_0|altsyncram:altsyncram_component|altsyncram_aie1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\,
	clk0 => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	ena0 => \clk_en~2_combout\,
	portadatain => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y7_N2
\cpu|control_subsystem_0|control_matrix|ALU_COMP~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ = (\cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\ & (\cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~2_combout\ & \memory_bank_0|altsyncram_component|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|GROUP_1~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|SR_BUS_SEL~2_combout\,
	datad => \memory_bank_0|altsyncram_component|auto_generated|q_a\(6),
	combout => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\);

-- Location: LCCOMB_X20_Y9_N8
\cpu|alu_subsystem_0|alu_clr_0|and_6|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_clr_0|and_6|output~0_combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\ & (!\cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\ & \cpu|register_array_0|output_mux|output~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_0~6_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|ALU_CLEAR~combout\,
	datad => \cpu|register_array_0|output_mux|output~9_combout\,
	combout => \cpu|alu_subsystem_0|alu_clr_0|and_6|output~0_combout\);

-- Location: LCCOMB_X19_Y10_N28
\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~1_combout\ & (!\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\))) # (!\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~1_combout\ & 
-- (((!\cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\) # (!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y10_N22
\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N20
\cpu|alu_subsystem_0|alu_out_mux|output[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[6]~26_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\) # (!\cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|ALU_OUT_SEL_2~2_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[6]~26_combout\);

-- Location: LCCOMB_X20_Y9_N2
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_0|output~0_combout\ = (!\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ & ((\cpu|register_array_0|output_mux|output~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \cpu|register_array_0|output_mux|output~8_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_0|output~0_combout\);

-- Location: LCCOMB_X20_Y9_N4
\cpu|alu_subsystem_0|alu_out_mux|output[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[6]~27_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\) # ((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_0|output~0_combout\)))) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\ & (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (!\cpu|alu_subsystem_0|alu_out_mux|output[6]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_out_mux|output[0]~6_combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[6]~26_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_0|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[6]~27_combout\);

-- Location: LCCOMB_X20_Y9_N6
\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_7|output~0_combout\ = \cpu|register_array_0|output_mux|output~9_combout\ $ (\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ $ 
-- (((\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\) # (\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|output_mux|output~9_combout\,
	datab => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_0|output~0_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_4|nand_4|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_7|output~0_combout\);

-- Location: LCCOMB_X20_Y9_N18
\cpu|alu_subsystem_0|alu_out_mux|output[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_out_mux|output[6]~28_combout\ = (\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & ((\cpu|alu_subsystem_0|alu_out_mux|output[6]~27_combout\ & ((!\cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_7|output~0_combout\))) # 
-- (!\cpu|alu_subsystem_0|alu_out_mux|output[6]~27_combout\ & (\cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_6|output~combout\)))) # (!\cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\ & (((\cpu|alu_subsystem_0|alu_out_mux|output[6]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_main_0|alu_or_0|or_6|output~combout\,
	datab => \cpu|alu_subsystem_0|alu_out_mux|output[0]~7_combout\,
	datac => \cpu|alu_subsystem_0|alu_out_mux|output[6]~27_combout\,
	datad => \cpu|alu_subsystem_0|alu_main_0|alu_add_0|adder_5|nand_7|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_out_mux|output[6]~28_combout\);

-- Location: LCCOMB_X20_Y9_N22
\cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\ = \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((\cpu|alu_subsystem_0|alu_clr_0|and_6|output~0_combout\) # ((\cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\ & 
-- \cpu|alu_subsystem_0|alu_out_mux|output[6]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_clr_0|and_0|output~0_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_clr_0|and_6|output~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_out_mux|output[6]~28_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\);

-- Location: LCCOMB_X20_Y7_N30
\cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\ = \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ $ (((\cpu|alu_subsystem_0|alu_inc_0|and_7|output~combout\ & (\cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_inc_0|and_7|output~combout\,
	datab => \cpu|alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~3_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\);

-- Location: LCCOMB_X20_Y7_N14
\cpu|alu_subsystem_0|alu_rot_0|and_2_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|and_2_1|output~combout\ = (\cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & (\cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ $ (\cpu|alu_subsystem_0|alu_inc_0|and_3|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|and_3|output~combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|and_2_1|output~combout\);

-- Location: LCCOMB_X20_Y7_N12
\cpu|alu_subsystem_0|alu_rot_0|and_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|and_3_0|output~0_combout\ = (!\cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\ & (\cpu|alu_subsystem_0|alu_inc_0|and_4|output~combout\ $ (\cpu|alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_rot_0|alu_rot_0~3_combout\,
	datac => \cpu|alu_subsystem_0|alu_inc_0|and_4|output~combout\,
	datad => \cpu|alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|and_3_0|output~0_combout\);

-- Location: LCCOMB_X20_Y7_N20
\cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\ = (\cpu|alu_subsystem_0|alu_rot_0|and_2_1|output~combout\) # ((\cpu|alu_subsystem_0|alu_rot_0|and_3_0|output~0_combout\) # ((\cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & 
-- \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datab => \cpu|alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|and_2_1|output~combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|and_3_0|output~0_combout\,
	combout => \cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\);

-- Location: LCCOMB_X19_Y3_N12
\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & (\memory_bank_0|altsyncram_component|auto_generated|q_a\(3))) # 
-- (!\cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\ & ((\cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_bank_0|altsyncram_component|auto_generated|q_a\(3),
	datac => \cpu|control_subsystem_0|control_matrix|MD_IN_SEL~3_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y3_N30
\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\ = (\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- ((\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\) # ((!\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\) # (!\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\);

-- Location: LCCOMB_X19_Y3_N0
\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (!\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: M4K_X11_Y7
\memory_bank_0|altsyncram_component|auto_generated|ram_block1a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "initial_state.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_4k:memory_bank_0|altsyncram:altsyncram_component|altsyncram_aie1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \cpu|control_subsystem_0|control_matrix|MEM_WRITE~2_combout\,
	clk0 => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	ena0 => \clk_en~2_combout\,
	portadatain => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory_bank_0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X19_Y4_N6
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ & (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (!\memory_bank_0|altsyncram_component|auto_generated|q_a\(3) & \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\))) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- (((!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\) # (!\memory_bank_0|altsyncram_component|auto_generated|q_a\(3))) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \memory_bank_0|altsyncram_component|auto_generated|q_a\(3),
	datad => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y4_N0
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\))) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y5_N20
\cpu|control_subsystem_0|control_matrix|LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|LOAD~0_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & (!\cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\ & 
-- !\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~0_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|LOAD~0_combout\);

-- Location: LCCOMB_X18_Y4_N4
\cpu|control_subsystem_0|control_matrix|NEXT_STATE~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|NEXT_STATE~3_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ & (((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\) 
-- # (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|NEXT_STATE~3_combout\);

-- Location: LCCOMB_X18_Y4_N18
\cpu|control_subsystem_0|control_matrix|NEXT_STATE~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|NEXT_STATE~4_combout\ = (\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\ & (\cpu|control_subsystem_0|control_matrix|NEXT_STATE~3_combout\)) # (!\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\ & 
-- ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|NEXT_STATE~3_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	combout => \cpu|control_subsystem_0|control_matrix|NEXT_STATE~4_combout\);

-- Location: LCCOMB_X19_Y5_N0
\cpu|control_subsystem_0|control_matrix|NEXT_STATE~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|NEXT_STATE~5_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & (!\cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\ & !\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\,
	datad => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|NEXT_STATE~5_combout\);

-- Location: LCCOMB_X19_Y5_N16
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_1|output~1_combout\ = (!\cpu|control_subsystem_0|control_matrix|NEXT_STATE~5_combout\ & ((!\cpu|control_subsystem_0|control_matrix|NEXT_STATE~4_combout\) # 
-- (!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|NEXT_STATE~4_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|NEXT_STATE~5_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_1|output~1_combout\);

-- Location: LCCOMB_X19_Y5_N18
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\ & (!\cpu|control_subsystem_0|control_matrix|LOAD~0_combout\ & 
-- (!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_1|output~1_combout\ & !\cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\,
	datab => \cpu|control_subsystem_0|control_matrix|LOAD~0_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_1|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y5_N0
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\ & ((!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\) # 
-- (!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\)))) # (!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\ & 
-- (((!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\) # (!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~2_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X19_Y5_N2
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\) & 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\)) # (!GLOBAL(\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\) & 
-- ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~3_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~clkctrl_outclk\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y5_N28
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ = (\cpu|control_subsystem_0|control_matrix|LOAD~0_combout\ & 
-- (((!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\)))) # (!\cpu|control_subsystem_0|control_matrix|LOAD~0_combout\ & 
-- ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_1|output~1_combout\) # ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_1|output~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|LOAD~0_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y5_N12
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\ & ((\cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\ & 
-- (!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\ & 
-- ((!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y5_N10
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~3_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\ & 
-- (((!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\)))) # (!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\ & 
-- (((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~3_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~3_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X19_Y5_N14
\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\ & 
-- ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_0|output~combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~3_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y5_N4
\cpu|control_subsystem_0|control_matrix|END_STATE~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|END_STATE~5_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|control_matrix|END_STATE~3_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|END_STATE~3_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|END_STATE~5_combout\);

-- Location: LCCOMB_X18_Y6_N10
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_1|output~0_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & (!\cpu|control_subsystem_0|control_matrix|END_STATE~5_combout\ & 
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datac => \cpu|control_subsystem_0|control_matrix|END_STATE~5_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~0_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X18_Y6_N0
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ = (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- ((!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_1|output~0_combout\) # (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_1|output~0_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y6_N6
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & 
-- ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y6_N2
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~5_combout\ = (!\cpu|control_subsystem_0|control_matrix|END_STATE~5_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~0_combout\ & ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|END_STATE~5_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~0_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~5_combout\);

-- Location: LCCOMB_X18_Y6_N26
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\) # 
-- ((!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & 
-- !\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~5_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X18_Y6_N24
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\ = (\not_reset~combout\ & (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ & 
-- ((!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_1|output~0_combout\) # (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\)))) # (!\not_reset~combout\ 
-- & (((!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_1|output~0_combout\) # (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_1|output~0_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\);

-- Location: LCCOMB_X18_Y6_N12
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & 
-- ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y6_N16
\cpu|control_subsystem_0|control_matrix|NEXT_STATE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|NEXT_STATE~2_combout\ = (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & !\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|NEXT_STATE~2_combout\);

-- Location: LCCOMB_X19_Y5_N26
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~0_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_1|output~1_combout\ & (((\cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\) # 
-- (!\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)) # (!\cpu|control_subsystem_0|control_matrix|NEXT_STATE~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|and_1|output~1_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|NEXT_STATE~2_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~0_combout\);

-- Location: LCCOMB_X19_Y3_N14
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~1_combout\ = (\cpu|control_subsystem_0|control_matrix|END_STATE~5_combout\) # (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~0_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|END_STATE~5_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~1_combout\);

-- Location: LCCOMB_X19_Y3_N24
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & 
-- ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~1_combout\ & (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~1_combout\ & ((!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|or_0|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y3_N26
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (((!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y6_N14
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & 
-- ((\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y6_N4
\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\);

-- Location: LCCOMB_X18_Y4_N16
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ = (\cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\ & 
-- (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~combout\,
	datac => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X18_Y4_N28
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ & !\memory_bank_0|altsyncram_component|auto_generated|q_a\(0)))) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- (((!\memory_bank_0|altsyncram_component|auto_generated|q_a\(0)) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)) # (!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datad => \memory_bank_0|altsyncram_component|auto_generated|q_a\(0),
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y4_N0
\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & (\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	combout => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y5_N6
\cpu|control_subsystem_0|control_matrix|BASIC_INS\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\ = ((!\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	datad => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\);

-- Location: LCCOMB_X18_Y5_N22
\cpu|control_subsystem_0|control_matrix|END_STATE~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\ = (\cpu|control_subsystem_0|control_matrix|END_STATE~5_combout\) # ((\cpu|control_subsystem_0|control_matrix|NEXT_STATE~2_combout\ & (!\cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\ 
-- & \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|NEXT_STATE~2_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\,
	datac => \cpu|control_subsystem_0|control_matrix|END_STATE~5_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\);

-- Location: LCCOMB_X18_Y5_N12
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & \cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|control_matrix|END_STATE~4_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\);

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

-- Location: LCCOMB_X22_Y6_N30
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\HRQ~combout\) # ((\cpu|control_subsystem_0|control_matrix|OSR~1_combout\ & \memory_bank_0|altsyncram_component|auto_generated|q_a\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HRQ~combout\,
	datac => \cpu|control_subsystem_0|control_matrix|OSR~1_combout\,
	datad => \memory_bank_0|altsyncram_component|auto_generated|q_a\(10),
	combout => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y3_N0
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- ((\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~1_combout\))) # (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y3_N16
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\ = (\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~2_combout\ & (((!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~2_combout\ & ((\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\,
	datab => \not_reset~combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X17_Y3_N14
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & (\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y3_N18
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\START~combout\) # ((\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\ & ((\STEP~combout\) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STEP~combout\,
	datab => \START~combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y3_N20
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\)))) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \not_reset~combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y3_N26
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\ = (\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\)) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X18_Y3_N0
\cpu|control_subsystem_0|clock_generator_0|and_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ = LCELL((!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_5|output~1_combout\ & (\clk_in~combout\ & ((!\cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\) # 
-- (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|FP_CMD~0_combout\,
	datad => \clk_in~combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\);

-- Location: LCCOMB_X21_Y4_N16
\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~8_combout\ = ((\cpu|control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ & (!\cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\ & 
-- !\cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\,
	datab => \cpu|control_subsystem_0|control_matrix|BASIC_INS~combout\,
	datac => \cpu|control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~8_combout\);

-- Location: LCCOMB_X17_Y3_N26
\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\ = (\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\) # ((\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & 
-- \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~8_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\);

-- Location: LCCOMB_X24_Y7_N8
\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\) # 
-- (\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datac => \cpu|control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\,
	datad => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X24_Y7_N18
\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\not_reset~combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~5_combout\ & ((\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~5_combout\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X24_Y7_N24
\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~5_combout\ = (!\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\ & ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\) # 
-- (!\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~4_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~5_combout\);

-- Location: LCCOMB_X24_Y7_N28
\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_1|output~5_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y3_N24
\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\) # 
-- ((\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	datab => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~9_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|PC_CLR_HI~2_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y3_N10
\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\ & (\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\ & 
-- ((\cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\)))) # (!\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\ & (((\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y3_N22
\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~3_combout\ = (\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\ & (((!\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\)))) # 
-- (!\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\ & (((\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~3_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~3_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~3_combout\);

-- Location: LCCOMB_X18_Y3_N16
\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_1|output~3_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y4_N20
\cpu|control_subsystem_0|control_matrix|PC_LOAD_LO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|control_matrix|PC_LOAD_LO~0_combout\ = (\cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((\cpu|control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\) # 
-- (!\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\,
	datad => \cpu|control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \cpu|control_subsystem_0|control_matrix|PC_LOAD_LO~0_combout\);

-- Location: LCCOMB_X13_Y7_N26
\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ = (\cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\ & ((\cpu|control_subsystem_0|control_matrix|PC_LOAD_LO~0_combout\) # 
-- (\cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|control_subsystem_0|control_matrix|PC_LOAD_LO~0_combout\,
	datac => \cpu|control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X13_Y7_N20
\cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\ & (\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- (!\cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\ & !\cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\))) # (!\cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\ & 
-- (((!\cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\) # (!\cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\)) # (!\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X13_Y7_N24
\cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X13_Y7_N10
\cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X13_Y7_N8
\cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\ & 
-- ((!\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # (!\cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\)))) # (!\cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- (((!\cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\ & \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X13_Y7_N6
\cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X14_Y7_N30
\cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
-- (!\cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ & \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\))) # (!\cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\ & 
-- (((!\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # (!\cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\)) # (!\cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X14_Y7_N0
\cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X14_Y7_N20
\cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~2_combout\ = (\cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\ & 
-- (!\cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\ & \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\))) # (!\cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\ & 
-- (((!\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # (!\cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\)) # (!\cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\,
	datad => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~2_combout\);

-- Location: LCCOMB_X14_Y7_N2
\cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X13_Y7_N18
\cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\ = (!\cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: LCCOMB_X14_Y7_N14
\cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~2_combout\ = (\cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\ & 
-- ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\) # (!\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
-- (((\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\)) # (!\cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~2_combout\);

-- Location: LCCOMB_X14_Y7_N16
\cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: LCCOMB_X13_Y7_N4
\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\ = (!\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\);

-- Location: LCCOMB_X14_Y7_N4
\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~2_combout\ = (\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\ & (!\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\ & 
-- ((!\cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\) # (!\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\ & 
-- (((\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\)) # (!\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~2_combout\);

-- Location: LCCOMB_X13_Y7_N0
\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_DATA_SELECT[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_DATA_SELECT(0),
	combout => \FP_DATA_SELECT~combout\(0));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_DATA_SELECT[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_DATA_SELECT(1),
	combout => \FP_DATA_SELECT~combout\(1));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_DATA_SELECT[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_FP_DATA_SELECT(2),
	combout => \FP_DATA_SELECT~combout\(2));

-- Location: LCCOMB_X14_Y6_N2
\cpu|front_panel_display_mux|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|Equal0~0_combout\ = (\FP_DATA_SELECT~combout\(0) & (!\FP_DATA_SELECT~combout\(1) & !\FP_DATA_SELECT~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FP_DATA_SELECT~combout\(0),
	datac => \FP_DATA_SELECT~combout\(1),
	datad => \FP_DATA_SELECT~combout\(2),
	combout => \cpu|front_panel_display_mux|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y6_N16
\cpu|front_panel_display_mux|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|Equal1~0_combout\ = (!\FP_DATA_SELECT~combout\(0) & (\FP_DATA_SELECT~combout\(1) & !\FP_DATA_SELECT~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FP_DATA_SELECT~combout\(0),
	datac => \FP_DATA_SELECT~combout\(1),
	datad => \FP_DATA_SELECT~combout\(2),
	combout => \cpu|front_panel_display_mux|Equal1~0_combout\);

-- Location: LCCOMB_X14_Y6_N28
\cpu|front_panel_display_mux|FP_OUTPUT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[0]~0_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ & (((\cpu|front_panel_display_mux|Equal1~0_combout\ & \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\)))) # 
-- (!\cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\ & ((\cpu|front_panel_display_mux|Equal0~0_combout\) # ((\cpu|front_panel_display_mux|Equal1~0_combout\ & \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \cpu|front_panel_display_mux|Equal0~0_combout\,
	datac => \cpu|front_panel_display_mux|Equal1~0_combout\,
	datad => \cpu|register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[0]~0_combout\);

-- Location: LCCOMB_X14_Y6_N10
\cpu|front_panel_display_mux|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|Equal2~0_combout\ = (!\FP_DATA_SELECT~combout\(0) & (!\FP_DATA_SELECT~combout\(1) & \FP_DATA_SELECT~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FP_DATA_SELECT~combout\(0),
	datac => \FP_DATA_SELECT~combout\(1),
	datad => \FP_DATA_SELECT~combout\(2),
	combout => \cpu|front_panel_display_mux|Equal2~0_combout\);

-- Location: LCCOMB_X14_Y6_N8
\cpu|front_panel_display_mux|FP_OUTPUT[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[0]~1_combout\ = (\cpu|front_panel_display_mux|FP_OUTPUT[0]~0_combout\) # ((\cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\ & \cpu|front_panel_display_mux|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|front_panel_display_mux|FP_OUTPUT[0]~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	datad => \cpu|front_panel_display_mux|Equal2~0_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[0]~1_combout\);

-- Location: LCCOMB_X21_Y9_N4
\cpu|front_panel_display_mux|FP_OUTPUT[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[1]~2_combout\ = (\cpu|front_panel_display_mux|Equal1~0_combout\ & ((\cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\) # ((\cpu|front_panel_display_mux|Equal0~0_combout\ & 
-- !\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\cpu|front_panel_display_mux|Equal1~0_combout\ & (((\cpu|front_panel_display_mux|Equal0~0_combout\ & !\cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|front_panel_display_mux|Equal1~0_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|front_panel_display_mux|Equal0~0_combout\,
	datad => \cpu|register_array_0|AC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[1]~2_combout\);

-- Location: LCCOMB_X21_Y9_N2
\cpu|front_panel_display_mux|FP_OUTPUT[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[1]~3_combout\ = (\cpu|front_panel_display_mux|FP_OUTPUT[1]~2_combout\) # ((\cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\ & \cpu|front_panel_display_mux|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|front_panel_display_mux|FP_OUTPUT[1]~2_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_1|output~combout\,
	datad => \cpu|front_panel_display_mux|Equal2~0_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[1]~3_combout\);

-- Location: LCCOMB_X21_Y8_N28
\cpu|front_panel_display_mux|FP_OUTPUT[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[2]~4_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ & ((\cpu|front_panel_display_mux|Equal1~0_combout\)))) # 
-- (!\cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\ & ((\cpu|front_panel_display_mux|Equal0~0_combout\) # ((\cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ & \cpu|front_panel_display_mux|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|front_panel_display_mux|Equal0~0_combout\,
	datad => \cpu|front_panel_display_mux|Equal1~0_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[2]~4_combout\);

-- Location: LCCOMB_X21_Y8_N2
\cpu|front_panel_display_mux|FP_OUTPUT[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[2]~5_combout\ = (\cpu|front_panel_display_mux|FP_OUTPUT[2]~4_combout\) # ((\cpu|front_panel_display_mux|Equal2~0_combout\ & \cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|front_panel_display_mux|FP_OUTPUT[2]~4_combout\,
	datac => \cpu|front_panel_display_mux|Equal2~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_2|output~1_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[2]~5_combout\);

-- Location: LCCOMB_X21_Y8_N0
\cpu|front_panel_display_mux|FP_OUTPUT[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[3]~6_combout\ = (\cpu|front_panel_display_mux|Equal1~0_combout\ & ((\cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\) # ((\cpu|front_panel_display_mux|Equal0~0_combout\ & 
-- !\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\)))) # (!\cpu|front_panel_display_mux|Equal1~0_combout\ & (((\cpu|front_panel_display_mux|Equal0~0_combout\ & !\cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|front_panel_display_mux|Equal1~0_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \cpu|front_panel_display_mux|Equal0~0_combout\,
	datad => \cpu|register_array_0|AC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[3]~6_combout\);

-- Location: LCCOMB_X21_Y9_N12
\cpu|front_panel_display_mux|FP_OUTPUT[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[3]~7_combout\ = (\cpu|front_panel_display_mux|FP_OUTPUT[3]~6_combout\) # ((\cpu|front_panel_display_mux|Equal2~0_combout\ & \cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|front_panel_display_mux|Equal2~0_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\,
	datad => \cpu|front_panel_display_mux|FP_OUTPUT[3]~6_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[3]~7_combout\);

-- Location: LCCOMB_X14_Y6_N22
\cpu|front_panel_display_mux|FP_OUTPUT[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[4]~8_combout\ = (\cpu|front_panel_display_mux|Equal1~0_combout\ & ((\cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\) # ((!\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
-- \cpu|front_panel_display_mux|Equal0~0_combout\)))) # (!\cpu|front_panel_display_mux|Equal1~0_combout\ & (!\cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\ & ((\cpu|front_panel_display_mux|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|front_panel_display_mux|Equal1~0_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \cpu|front_panel_display_mux|Equal0~0_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[4]~8_combout\);

-- Location: LCCOMB_X14_Y6_N12
\cpu|front_panel_display_mux|FP_OUTPUT[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[4]~9_combout\ = (\cpu|front_panel_display_mux|FP_OUTPUT[4]~8_combout\) # ((\cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\ & \cpu|front_panel_display_mux|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_rot_0|or_3_4|output~combout\,
	datab => \cpu|front_panel_display_mux|FP_OUTPUT[4]~8_combout\,
	datad => \cpu|front_panel_display_mux|Equal2~0_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[4]~9_combout\);

-- Location: LCCOMB_X19_Y10_N0
\cpu|front_panel_display_mux|FP_OUTPUT[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[5]~10_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\ & ((\cpu|front_panel_display_mux|Equal1~0_combout\)))) 
-- # (!\cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\ & ((\cpu|front_panel_display_mux|Equal0~0_combout\) # ((\cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\ & \cpu|front_panel_display_mux|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \cpu|front_panel_display_mux|Equal0~0_combout\,
	datad => \cpu|front_panel_display_mux|Equal1~0_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[5]~10_combout\);

-- Location: LCCOMB_X19_Y10_N18
\cpu|front_panel_display_mux|FP_OUTPUT[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[5]~11_combout\ = (\cpu|front_panel_display_mux|FP_OUTPUT[5]~10_combout\) # ((\cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\ & \cpu|front_panel_display_mux|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_rot_0|or_3_5|output~2_combout\,
	datac => \cpu|front_panel_display_mux|Equal2~0_combout\,
	datad => \cpu|front_panel_display_mux|FP_OUTPUT[5]~10_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[5]~11_combout\);

-- Location: LCCOMB_X19_Y10_N12
\cpu|front_panel_display_mux|FP_OUTPUT[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[6]~12_combout\ = (\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ & ((\cpu|front_panel_display_mux|Equal1~0_combout\) # ((!\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- \cpu|front_panel_display_mux|Equal0~0_combout\)))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ & (!\cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\ & (\cpu|front_panel_display_mux|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|AC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \cpu|front_panel_display_mux|Equal0~0_combout\,
	datad => \cpu|front_panel_display_mux|Equal1~0_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[6]~12_combout\);

-- Location: LCCOMB_X19_Y10_N10
\cpu|front_panel_display_mux|FP_OUTPUT[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[6]~13_combout\ = (\cpu|front_panel_display_mux|FP_OUTPUT[6]~12_combout\) # ((\cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\ & \cpu|front_panel_display_mux|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	datac => \cpu|front_panel_display_mux|Equal2~0_combout\,
	datad => \cpu|front_panel_display_mux|FP_OUTPUT[6]~12_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[6]~13_combout\);

-- Location: LCCOMB_X14_Y6_N18
\cpu|front_panel_display_mux|FP_OUTPUT[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[7]~14_combout\ = (\cpu|front_panel_display_mux|Equal1~0_combout\ & ((\cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\) # ((\cpu|front_panel_display_mux|Equal0~0_combout\ & 
-- !\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\)))) # (!\cpu|front_panel_display_mux|Equal1~0_combout\ & (\cpu|front_panel_display_mux|Equal0~0_combout\ & ((!\cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|front_panel_display_mux|Equal1~0_combout\,
	datab => \cpu|front_panel_display_mux|Equal0~0_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|AC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[7]~14_combout\);

-- Location: LCCOMB_X14_Y6_N4
\cpu|front_panel_display_mux|FP_OUTPUT[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[7]~15_combout\ = (\cpu|front_panel_display_mux|FP_OUTPUT[7]~14_combout\) # ((\cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ & \cpu|front_panel_display_mux|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|front_panel_display_mux|FP_OUTPUT[7]~14_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	datad => \cpu|front_panel_display_mux|Equal2~0_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[7]~15_combout\);

-- Location: LCCOMB_X19_Y10_N4
\cpu|front_panel_display_mux|FP_OUTPUT[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[8]~16_combout\ = (\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ & ((\cpu|front_panel_display_mux|Equal1~0_combout\) # ((\cpu|front_panel_display_mux|Equal0~0_combout\ & 
-- !\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\)))) # (!\cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ & (\cpu|front_panel_display_mux|Equal0~0_combout\ & 
-- (!\cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \cpu|front_panel_display_mux|Equal0~0_combout\,
	datac => \cpu|register_array_0|AC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \cpu|front_panel_display_mux|Equal1~0_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[8]~16_combout\);

-- Location: LCCOMB_X19_Y10_N26
\cpu|front_panel_display_mux|FP_OUTPUT[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[8]~17_combout\ = (\cpu|front_panel_display_mux|FP_OUTPUT[8]~16_combout\) # ((\cpu|front_panel_display_mux|Equal2~0_combout\ & \cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|front_panel_display_mux|FP_OUTPUT[8]~16_combout\,
	datac => \cpu|front_panel_display_mux|Equal2~0_combout\,
	datad => \cpu|alu_subsystem_0|alu_rot_0|or_3_8|output~2_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[8]~17_combout\);

-- Location: LCCOMB_X21_Y9_N26
\cpu|front_panel_display_mux|FP_OUTPUT[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[9]~18_combout\ = (\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ & (\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ & ((\cpu|front_panel_display_mux|Equal1~0_combout\)))) 
-- # (!\cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\ & ((\cpu|front_panel_display_mux|Equal0~0_combout\) # ((\cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ & \cpu|front_panel_display_mux|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|register_array_0|AC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datab => \cpu|register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \cpu|front_panel_display_mux|Equal0~0_combout\,
	datad => \cpu|front_panel_display_mux|Equal1~0_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[9]~18_combout\);

-- Location: LCCOMB_X21_Y9_N0
\cpu|front_panel_display_mux|FP_OUTPUT[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[9]~19_combout\ = (\cpu|front_panel_display_mux|FP_OUTPUT[9]~18_combout\) # ((\cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\ & \cpu|front_panel_display_mux|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\,
	datab => \cpu|front_panel_display_mux|Equal2~0_combout\,
	datad => \cpu|front_panel_display_mux|FP_OUTPUT[9]~18_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[9]~19_combout\);

-- Location: LCCOMB_X14_Y6_N30
\cpu|front_panel_display_mux|FP_OUTPUT[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[10]~20_combout\ = (\cpu|front_panel_display_mux|Equal1~0_combout\ & ((\cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\) # ((\cpu|front_panel_display_mux|Equal0~0_combout\ & 
-- !\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\)))) # (!\cpu|front_panel_display_mux|Equal1~0_combout\ & (\cpu|front_panel_display_mux|Equal0~0_combout\ & 
-- ((!\cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|front_panel_display_mux|Equal1~0_combout\,
	datab => \cpu|front_panel_display_mux|Equal0~0_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|AC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[10]~20_combout\);

-- Location: LCCOMB_X14_Y6_N24
\cpu|front_panel_display_mux|FP_OUTPUT[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[10]~21_combout\ = (\cpu|front_panel_display_mux|FP_OUTPUT[10]~20_combout\) # ((\cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ & \cpu|front_panel_display_mux|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|front_panel_display_mux|FP_OUTPUT[10]~20_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	datad => \cpu|front_panel_display_mux|Equal2~0_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[10]~21_combout\);

-- Location: LCCOMB_X14_Y6_N26
\cpu|front_panel_display_mux|FP_OUTPUT[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[11]~22_combout\ = (\cpu|front_panel_display_mux|Equal1~0_combout\ & ((\cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\) # ((\cpu|front_panel_display_mux|Equal0~0_combout\ & 
-- !\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\)))) # (!\cpu|front_panel_display_mux|Equal1~0_combout\ & (\cpu|front_panel_display_mux|Equal0~0_combout\ & 
-- ((!\cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|front_panel_display_mux|Equal1~0_combout\,
	datab => \cpu|front_panel_display_mux|Equal0~0_combout\,
	datac => \cpu|register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \cpu|register_array_0|AC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[11]~22_combout\);

-- Location: LCCOMB_X14_Y6_N20
\cpu|front_panel_display_mux|FP_OUTPUT[11]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|front_panel_display_mux|FP_OUTPUT[11]~23_combout\ = (\cpu|front_panel_display_mux|FP_OUTPUT[11]~22_combout\) # ((\cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\ & \cpu|front_panel_display_mux|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu|front_panel_display_mux|FP_OUTPUT[11]~22_combout\,
	datac => \cpu|alu_subsystem_0|alu_rot_0|or_3_11|output~1_combout\,
	datad => \cpu|front_panel_display_mux|Equal2~0_combout\,
	combout => \cpu|front_panel_display_mux|FP_OUTPUT[11]~23_combout\);

-- Location: LCCOMB_X17_Y3_N30
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\ = (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~1_combout\ & ((\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- ((!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\) # (!\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y3_N24
\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & (\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\) & ((\cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \cpu|control_subsystem_0|clock_generator_0|and_2|output~clkctrl_outclk\,
	combout => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_PC_OUTPUT[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|register_array_0|PC_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_PC_OUTPUT(0));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_PC_OUTPUT[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|register_array_0|PC_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_PC_OUTPUT(1));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_PC_OUTPUT[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|register_array_0|PC_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_PC_OUTPUT(2));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_PC_OUTPUT[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|register_array_0|PC_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_PC_OUTPUT(3));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_PC_OUTPUT[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|register_array_0|PC_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_PC_OUTPUT(4));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_PC_OUTPUT[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|register_array_0|PC_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_PC_OUTPUT(5));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_PC_OUTPUT[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|register_array_0|PC_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_PC_OUTPUT(6));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_PC_OUTPUT[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|register_array_0|PC_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_PC_OUTPUT(7));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_PC_OUTPUT[8]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|register_array_0|PC_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_PC_OUTPUT(8));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_PC_OUTPUT[9]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|register_array_0|PC_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_PC_OUTPUT(9));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_PC_OUTPUT[10]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|register_array_0|PC_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_PC_OUTPUT(10));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_PC_OUTPUT[11]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|register_array_0|PC_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_PC_OUTPUT(11));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_DATA_OUTPUT[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|front_panel_display_mux|FP_OUTPUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_DATA_OUTPUT(0));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_DATA_OUTPUT[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|front_panel_display_mux|FP_OUTPUT[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_DATA_OUTPUT(1));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_DATA_OUTPUT[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|front_panel_display_mux|FP_OUTPUT[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_DATA_OUTPUT(2));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_DATA_OUTPUT[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|front_panel_display_mux|FP_OUTPUT[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_DATA_OUTPUT(3));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_DATA_OUTPUT[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|front_panel_display_mux|FP_OUTPUT[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_DATA_OUTPUT(4));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_DATA_OUTPUT[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|front_panel_display_mux|FP_OUTPUT[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_DATA_OUTPUT(5));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_DATA_OUTPUT[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|front_panel_display_mux|FP_OUTPUT[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_DATA_OUTPUT(6));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_DATA_OUTPUT[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|front_panel_display_mux|FP_OUTPUT[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_DATA_OUTPUT(7));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_DATA_OUTPUT[8]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|front_panel_display_mux|FP_OUTPUT[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_DATA_OUTPUT(8));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_DATA_OUTPUT[9]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|front_panel_display_mux|FP_OUTPUT[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_DATA_OUTPUT(9));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_DATA_OUTPUT[10]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|front_panel_display_mux|FP_OUTPUT[10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_DATA_OUTPUT(10));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FP_DATA_OUTPUT[11]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|front_panel_display_mux|FP_OUTPUT[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FP_DATA_OUTPUT(11));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk_out~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \cpu|control_subsystem_0|clock_generator_0|and_2|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_out);

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
	padio => ww_IRQ);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HLT_indicator);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \cpu|control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|ALT_INV_output~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RUN_indicator);
END structure;


