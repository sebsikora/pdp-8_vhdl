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

-- DATE "01/15/2017 20:10:05"

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
	STEP : IN std_logic
	);
END top_level;

-- Design Ports Information
-- mem_data_bus_out[0]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[2]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[3]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[4]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[5]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[6]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[7]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[8]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[9]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[10]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[11]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[0]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[1]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[2]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[3]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[4]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[5]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[6]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[7]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[8]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[9]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[10]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[11]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- STEP	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_in	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[0]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- START	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[1]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[2]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[3]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[4]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[5]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[6]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[7]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[8]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[9]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[10]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[11]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \control_subsystem_0|control_matrix|MD_LOAD~6_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \clk_in~combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\ : std_logic;
SIGNAL \START~combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~4_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|and_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|IR_LOAD~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_LOAD~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_LOAD~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_LOAD~4_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_LOAD~5_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_4|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|Z_BIT~combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_LOAD~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \mem_data_bus_in~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\ : std_logic;
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

BEGIN

ww_mem_data_bus_in <= mem_data_bus_in;
mem_data_bus_out <= ww_mem_data_bus_out;
mem_addr_bus_out <= ww_mem_addr_bus_out;
ww_not_reset <= not_reset;
ww_clk_in <= clk_in;
ww_START <= START;
ww_STEP <= STEP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\register_array_0|MA_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\;
\register_array_0|MA_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\;
\register_array_0|MA_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\;
\register_array_0|MA_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\ <= NOT \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\;
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

-- Location: LCCOMB_X24_Y9_N24
\control_subsystem_0|control_matrix|MD_LOAD~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_LOAD~6_combout\ = (\control_subsystem_0|control_matrix|IR_LOAD~1_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|IR_LOAD~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_LOAD~6_combout\);

-- Location: LCCOMB_X26_Y9_N12
\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X25_Y9_N16
\control_subsystem_0|control_matrix|MA_CLR_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\) # ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\);

-- Location: LCCOMB_X26_Y9_N16
\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X25_Y9_N20
\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X26_Y9_N22
\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X26_Y9_N24
\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\ & (((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\))) # (!\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & ((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X24_Y9_N20
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & 
-- (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\)) # (!\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & 
-- (((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X26_Y9_N2
\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X26_Y9_N20
\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)))) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & 
-- (((\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ & \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X26_Y9_N28
\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X24_Y9_N14
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\) # 
-- (((\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & !\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\)) # (!\not_reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X24_Y9_N30
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\)))) # (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & 
-- ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\))) # (!\clk_in~combout\ & (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X10_Y1_N0
\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\START~combout\ & (((!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\START~combout\ & 
-- ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \START~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X10_Y1_N22
\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\START~combout\ & (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\START~combout\ & 
-- ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \START~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X24_Y9_N28
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\)) # (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X25_Y9_N18
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ = (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\clk_in~combout\ & 
-- !\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X25_Y9_N4
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ & 
-- (((!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\)))) # (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ & 
-- (((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X25_Y9_N14
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\)) # (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~2_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X25_Y9_N6
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~4_combout\ = (\clk_in~combout\ & (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & !\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~4_combout\);

-- Location: LCCOMB_X25_Y9_N0
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~4_combout\ & 
-- (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)) # (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~4_combout\ & 
-- (((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\,
	datac => \not_reset~combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~4_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X25_Y9_N12
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\)) # (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\))) # (!\clk_in~combout\ & (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~3_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X24_Y9_N8
\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ = (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\);

-- Location: LCCOMB_X25_Y9_N28
\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X24_Y9_N12
\control_subsystem_0|clock_generator_0|and_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|and_1|output~1_combout\ = (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & \clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\);

-- Location: LCCOMB_X10_Y1_N2
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\) # 
-- (((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & \control_subsystem_0|clock_generator_0|and_1|output~1_combout\)) # (!\not_reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datac => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X10_Y1_N10
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\))) # (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X24_Y9_N22
\control_subsystem_0|control_matrix|IR_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|IR_LOAD~1_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & 
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\,
	combout => \control_subsystem_0|control_matrix|IR_LOAD~1_combout\);

-- Location: LCCOMB_X24_Y9_N16
\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & \control_subsystem_0|control_matrix|IR_LOAD~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|IR_LOAD~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X25_Y9_N2
\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ & (((\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ & 
-- !\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\))) # (!\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ & ((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X25_Y9_N30
\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y5_N22
\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y5_N12
\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\ & ((!\mem_data_bus_in~combout\(2)) # 
-- (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ & (((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\mem_data_bus_in~combout\(2))) # 
-- (!\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \mem_data_bus_in~combout\(2),
	combout => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y5_N24
\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X25_Y9_N26
\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\ & \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- (((\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X25_Y9_N8
\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X26_Y9_N30
\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X25_Y9_N24
\control_subsystem_0|control_matrix|MD_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_LOAD~1_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_LOAD~1_combout\);

-- Location: LCCOMB_X24_Y9_N2
\control_subsystem_0|control_matrix|MD_LOAD~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_LOAD~3_combout\ = (\control_subsystem_0|control_matrix|MD_LOAD~2_combout\ & (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & \control_subsystem_0|control_matrix|MD_LOAD~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_LOAD~2_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|MD_LOAD~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_LOAD~3_combout\);

-- Location: LCCOMB_X25_Y9_N22
\control_subsystem_0|control_matrix|MD_LOAD~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_LOAD~4_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_LOAD~4_combout\);

-- Location: LCCOMB_X24_Y9_N4
\control_subsystem_0|control_matrix|MD_LOAD~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_LOAD~5_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \control_subsystem_0|control_matrix|MD_LOAD~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MD_LOAD~4_combout\,
	combout => \control_subsystem_0|control_matrix|MD_LOAD~5_combout\);

-- Location: LCCOMB_X24_Y9_N18
\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & ((\control_subsystem_0|control_matrix|MD_LOAD~6_combout\) # ((\control_subsystem_0|control_matrix|MD_LOAD~3_combout\) 
-- # (\control_subsystem_0|control_matrix|MD_LOAD~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_LOAD~6_combout\,
	datab => \control_subsystem_0|control_matrix|MD_LOAD~3_combout\,
	datac => \control_subsystem_0|control_matrix|MD_LOAD~5_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X26_Y9_N18
\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\mem_data_bus_in~combout\(0) & (!\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\ & ((!\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\mem_data_bus_in~combout\(0) & (((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_data_bus_in~combout\(0),
	datab => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X26_Y9_N8
\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y9_N14
\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y9_N28
\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\ & ((!\mem_data_bus_in~combout\(1)) # 
-- (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ & (((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\mem_data_bus_in~combout\(1))) # 
-- (!\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \mem_data_bus_in~combout\(1),
	combout => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y9_N8
\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y5_N18
\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y5_N20
\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\ & ((!\mem_data_bus_in~combout\(3)) # 
-- (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\ & (((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\mem_data_bus_in~combout\(3))) # 
-- (!\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \mem_data_bus_in~combout\(3),
	combout => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y5_N6
\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X26_Y9_N10
\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\ & (!\mem_data_bus_in~combout\(4) & (\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & 
-- !\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\))) # (!\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\ & (((!\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\) # 
-- (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\mem_data_bus_in~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datab => \mem_data_bus_in~combout\(4),
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X26_Y9_N6
\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y5_N30
\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y5_N4
\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\mem_data_bus_in~combout\(5) & (!\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\ & ((!\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\) # 
-- (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\mem_data_bus_in~combout\(5) & (((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\)) # 
-- (!\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_data_bus_in~combout\(5),
	datab => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y5_N0
\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & ((\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y9_N30
\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y9_N20
\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & ((\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\ & (!\mem_data_bus_in~combout\(6) & 
-- !\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\ & ((!\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\) # (!\mem_data_bus_in~combout\(6)))))) # 
-- (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & (!\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datac => \mem_data_bus_in~combout\(6),
	datad => \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y9_N6
\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y5_N26
\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y5_N28
\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\ & ((!\mem_data_bus_in~combout\(7)) # 
-- (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\ & (((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\mem_data_bus_in~combout\(7))) # 
-- (!\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \mem_data_bus_in~combout\(7),
	combout => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y5_N10
\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y9_N26
\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y9_N4
\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # (!\mem_data_bus_in~combout\(8))))) # (!\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ & (((!\mem_data_bus_in~combout\(8) & 
-- \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \mem_data_bus_in~combout\(8),
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y9_N24
\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y9_N2
\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y9_N16
\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & ((\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\ & (!\mem_data_bus_in~combout\(9) & 
-- !\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\ & ((!\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\) # (!\mem_data_bus_in~combout\(9)))))) # 
-- (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & (!\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datac => \mem_data_bus_in~combout\(9),
	datad => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y9_N18
\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y9_N22
\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y9_N12
\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\ = (\mem_data_bus_in~combout\(10) & (!\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\ & ((!\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\) # 
-- (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\mem_data_bus_in~combout\(10) & (((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\)) 
-- # (!\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_data_bus_in~combout\(10),
	datab => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y9_N0
\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y5_N2
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

-- Location: LCCOMB_X27_Y5_N8
\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # (!\mem_data_bus_in~combout\(11))))) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ & (((!\mem_data_bus_in~combout\(11) & 
-- \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \mem_data_bus_in~combout\(11),
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y5_N16
\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y10_N8
\register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0_combout\ = (\register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X22_Y10_N4
\register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & ((\register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y10_N26
\register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0_combout\ = (\register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X22_Y10_N22
\register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & ((\register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y10_N12
\register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\ = (\register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X22_Y10_N0
\register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y10_N14
\register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0_combout\ = (\register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X22_Y10_N10
\register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & ((\register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_3|nand_3_3|output~0_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X10_Y1_N12
\register_array_0|MA_register|ms_jk_ff_4|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_4|nand_3_3|output~0_combout\ = (\register_array_0|MA_register|ms_jk_ff_4|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_4|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_4|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X10_Y1_N16
\register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|MA_register|ms_jk_ff_4|nand_3_3|output~0_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MA_register|ms_jk_ff_4|nand_3_3|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_4|nand_3_3|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X26_Y9_N0
\control_subsystem_0|control_matrix|Z_BIT\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|Z_BIT~combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\) # ((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- !\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|Z_BIT~combout\);

-- Location: LCCOMB_X24_Y9_N26
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\) # 
-- (((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \control_subsystem_0|clock_generator_0|and_1|output~1_combout\)) # (!\not_reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datac => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X24_Y9_N6
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\))) # (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X24_Y9_N10
\control_subsystem_0|control_matrix|MD_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_LOAD~2_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_LOAD~2_combout\);

-- Location: LCCOMB_X24_Y9_N0
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk_in~combout\ & (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~2_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X24_Y10_N26
\register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~0_combout\ = (\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\) # (((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\control_subsystem_0|control_matrix|MD_LOAD~2_combout\)) # (!\control_subsystem_0|control_matrix|Z_BIT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|Z_BIT~combout\,
	datac => \control_subsystem_0|control_matrix|MD_LOAD~2_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X24_Y10_N0
\register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~1_combout\ = ((\register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~1_combout\) # ((\control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ & 
-- !\register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~0_combout\))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~0_combout\,
	datac => \not_reset~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X24_Y10_N16
\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_5|nand_3_3|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X25_Y9_N10
\control_subsystem_0|control_matrix|MA_CLR_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & (\control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ & 
-- !\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\)) # (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\);

-- Location: LCCOMB_X24_Y10_N6
\register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\ = ((\register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\) # ((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\control_subsystem_0|control_matrix|MD_LOAD~2_combout\))) # (!\control_subsystem_0|control_matrix|Z_BIT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|Z_BIT~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|MD_LOAD~2_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X24_Y10_N4
\register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\ = ((\register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\) # ((\control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ & 
-- !\register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X24_Y10_N18
\register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X24_Y10_N30
\register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\ = ((\register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\) # ((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\control_subsystem_0|control_matrix|MD_LOAD~2_combout\))) # (!\control_subsystem_0|control_matrix|Z_BIT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|Z_BIT~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|MD_LOAD~2_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X24_Y10_N28
\register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\ = ((\register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\) # ((\control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ & 
-- !\register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\,
	datac => \not_reset~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X24_Y10_N20
\register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y10_N20
\register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\ = (((\register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\) # (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|control_matrix|MD_LOAD~2_combout\)) # (!\control_subsystem_0|control_matrix|Z_BIT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|Z_BIT~combout\,
	datab => \control_subsystem_0|control_matrix|MD_LOAD~2_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X22_Y10_N18
\register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\) # (((\control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ & 
-- !\register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\)) # (!\not_reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X22_Y10_N16
\register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y10_N24
\register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\ = (((\register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\) # (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|control_matrix|MD_LOAD~2_combout\)) # (!\control_subsystem_0|control_matrix|Z_BIT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|Z_BIT~combout\,
	datab => \control_subsystem_0|control_matrix|MD_LOAD~2_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X22_Y10_N2
\register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\) # (((\control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ & 
-- !\register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\)) # (!\not_reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X22_Y10_N30
\register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & ((\register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X24_Y10_N22
\register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\ = (\register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\) # (((!\control_subsystem_0|control_matrix|Z_BIT~combout\) # 
-- (!\control_subsystem_0|control_matrix|MD_LOAD~2_combout\)) # (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|MD_LOAD~2_combout\,
	datad => \control_subsystem_0|control_matrix|Z_BIT~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X24_Y10_N8
\register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\) # (((\control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ & 
-- !\register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\)) # (!\not_reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X24_Y10_N10
\register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: LCCOMB_X24_Y10_N2
\register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\ = (\register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\) # (((!\control_subsystem_0|control_matrix|Z_BIT~combout\) # 
-- (!\control_subsystem_0|control_matrix|MD_LOAD~2_combout\)) # (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|MD_LOAD~2_combout\,
	datad => \control_subsystem_0|control_matrix|Z_BIT~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X24_Y10_N24
\register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\ = ((\register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\) # ((\control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\ & 
-- !\register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_CLR_HI~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\,
	datac => \not_reset~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X24_Y10_N12
\register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
END structure;


