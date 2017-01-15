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

-- DATE "01/15/2017 21:19:19"

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
-- mem_data_bus_out[0]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[1]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[2]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[3]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[4]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[5]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[6]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[7]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[8]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[9]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[10]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[11]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[0]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[1]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[2]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[3]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[4]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[5]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[6]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[7]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[8]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[9]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[10]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[11]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- STEP	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_in	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[0]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- START	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[1]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[2]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[3]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[4]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[5]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[6]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[7]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[8]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[9]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[10]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[11]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \alu_subsystem_0|alu_rot_0|and_link_1|output~combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~2_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~8_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[3]~3_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_0|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~4_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~5_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_3_2|output~combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_4|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_4|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|md_input_mux_0|output[6]~0_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|md_input_mux_0|output[7]~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|md_input_mux_0|output[8]~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|md_input_mux_0|output[9]~3_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|LINK_LOAD~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|LINK_LOAD~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|LINK_LOAD~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_0_2|output~combout\ : std_logic;
SIGNAL \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~8_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_9|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_LOAD_LO~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \clk_in~combout\ : std_logic;
SIGNAL \START~combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_IN_SEL~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|clock_generator_0|and_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~7_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|GROUP_1~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_CLEAR~8_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_3|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_CLEAR~9_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ : std_logic;
SIGNAL \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_clr_0|and_0|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_ROT_1~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~7_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[4]~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_CLR_HI~4_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|OPR_INS~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_LOAD_HI~4_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_INC~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_ROT_1~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_ROT_2~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_5|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_7|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|Z_BIT~combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_clr_0|and_7|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~3_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_INC~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|ALU_INC~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~4_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[11]~6_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_11|output~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\ : std_logic;
SIGNAL \register_array_0|md_input_mux_0|output[11]~5_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|and_11|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|and_11|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_10|output~3_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ : std_logic;
SIGNAL \register_array_0|md_input_mux_0|output[10]~4_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_10|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_8|output~combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_8|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~3_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|and_8|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_5|output~combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~6_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[5]~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|and_5|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~10_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[1]~5_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_1_1|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_2|output~combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~9_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[2]~4_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|and_2|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|and_1|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_0_1|output~combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|and_1_0|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|output_mux|output~5_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_out_mux|output[6]~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_6|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_7|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_7|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\ : std_logic;
SIGNAL \alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~2_combout\ : std_logic;
SIGNAL \register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
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

-- Location: LCCOMB_X21_Y11_N28
\alu_subsystem_0|alu_rot_0|and_link_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_link_1|output~combout\ = (!\register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_link_1|output~combout\);

-- Location: LCCOMB_X18_Y10_N26
\control_subsystem_0|control_matrix|MA_LOAD_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & 
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\);

-- Location: LCCOMB_X18_Y10_N8
\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~1_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~1_combout\);

-- Location: LCCOMB_X18_Y10_N10
\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\ = (\control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\) # ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~1_combout\) # ((\control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\ & 
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\,
	datab => \control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\);

-- Location: LCCOMB_X17_Y10_N4
\control_subsystem_0|control_matrix|MD_BUS_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\);

-- Location: LCCOMB_X17_Y10_N0
\control_subsystem_0|control_matrix|MD_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|MD_BUS_SEL~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\);

-- Location: LCCOMB_X18_Y9_N28
\alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ & ((!\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\) 
-- # (!\control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1_combout\);

-- Location: LCCOMB_X21_Y9_N12
\alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & (\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\)) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & 
-- ((\alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\,
	datac => \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~1_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~2_combout\);

-- Location: LCCOMB_X19_Y10_N20
\register_array_0|output_mux|output~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~8_combout\ = (\register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ & ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\) # 
-- (!\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\,
	datad => \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\,
	combout => \register_array_0|output_mux|output~8_combout\);

-- Location: LCCOMB_X18_Y11_N22
\alu_subsystem_0|alu_out_mux|output[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[3]~3_combout\ = (\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & ((!\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & (!\register_array_0|output_mux|output~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datab => \register_array_0|output_mux|output~8_combout\,
	datac => \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[3]~3_combout\);

-- Location: LCCOMB_X17_Y11_N12
\alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((!\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\ & \alu_subsystem_0|alu_out_mux|output[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[3]~3_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\);

-- Location: LCCOMB_X21_Y11_N24
\alu_subsystem_0|alu_rot_0|or_3_0|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_0|output~1_combout\ = (\alu_subsystem_0|alu_rot_0|and_link_1|output~combout\) # ((\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (\alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\ $ 
-- (\alu_subsystem_0|alu_inc_0|and_2|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datac => \alu_subsystem_0|alu_inc_0|and_2|output~combout\,
	datad => \alu_subsystem_0|alu_rot_0|and_link_1|output~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_0|output~1_combout\);

-- Location: LCCOMB_X21_Y10_N12
\alu_subsystem_0|alu_rot_0|alu_rot_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ = (!\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\);

-- Location: LCCOMB_X19_Y9_N26
\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~4_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & ((\control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\))))) # 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & \control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~4_combout\);

-- Location: LCCOMB_X19_Y9_N10
\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~5_combout\ = (\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~4_combout\ & (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ $ (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~4_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~5_combout\);

-- Location: LCCOMB_X21_Y11_N16
\alu_subsystem_0|alu_rot_0|or_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_1|output~1_combout\ = (\alu_subsystem_0|alu_rot_0|and_1_0|output~0_combout\) # ((\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\,
	datad => \alu_subsystem_0|alu_rot_0|and_1_0|output~0_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_1|output~1_combout\);

-- Location: LCCOMB_X21_Y11_N22
\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & (((\mem_data_bus_in~combout\(1))))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_1|output~1_combout\) # ((\alu_subsystem_0|alu_rot_0|and_0_1|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_1|output~1_combout\,
	datab => \alu_subsystem_0|alu_rot_0|and_0_1|output~combout\,
	datac => \mem_data_bus_in~combout\(1),
	datad => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y11_N24
\alu_subsystem_0|alu_rot_0|and_3_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_3_2|output~combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (\alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\ $ (((\alu_subsystem_0|alu_inc_0|and_5|output~combout\ & 
-- \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_inc_0|and_5|output~combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_3_2|output~combout\);

-- Location: LCCOMB_X20_Y12_N26
\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y11_N14
\alu_subsystem_0|alu_rot_0|or_3_4|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_4|output~1_combout\ = (\alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\ & (((\alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~1_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_2~combout\)) # 
-- (!\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\))) # (!\alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\ & (\alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_4|output~1_combout\);

-- Location: LCCOMB_X18_Y11_N0
\alu_subsystem_0|alu_rot_0|or_3_4|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_4|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_4|output~1_combout\) # ((\alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_4|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_4|output~2_combout\);

-- Location: LCCOMB_X20_Y12_N20
\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & (\mem_data_bus_in~combout\(4))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_4|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_data_bus_in~combout\(4),
	datab => \alu_subsystem_0|alu_rot_0|or_3_4|output~2_combout\,
	datad => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y12_N6
\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\ = (\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\ & (!\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\)))) # (!\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\ & 
-- (((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ & !\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\);

-- Location: LCCOMB_X20_Y13_N20
\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\,
	datac => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y11_N18
\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & (\mem_data_bus_in~combout\(5))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_5|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\,
	datab => \mem_data_bus_in~combout\(5),
	datac => \alu_subsystem_0|alu_rot_0|or_3_5|output~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y13_N18
\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\ = (\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\ & (!\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\)))) # (!\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\ & 
-- (((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ & !\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\);

-- Location: LCCOMB_X20_Y13_N28
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

-- Location: LCCOMB_X18_Y11_N2
\alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\ = \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\ $ (\alu_subsystem_0|alu_inc_0|and_8|output~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_8|output~combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\);

-- Location: LCCOMB_X20_Y13_N2
\register_array_0|md_input_mux_0|output[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|md_input_mux_0|output[6]~0_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & ((\mem_data_bus_in~combout\(6)))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & 
-- (\alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	datac => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\,
	datad => \mem_data_bus_in~combout\(6),
	combout => \register_array_0|md_input_mux_0|output[6]~0_combout\);

-- Location: LCCOMB_X20_Y13_N12
\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\) # (!\register_array_0|md_input_mux_0|output[6]~0_combout\)))) # (!\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- (((!\register_array_0|md_input_mux_0|output[6]~0_combout\ & \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \register_array_0|md_input_mux_0|output[6]~0_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y13_N24
\register_array_0|md_input_mux_0|output[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|md_input_mux_0|output[7]~1_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & ((\mem_data_bus_in~combout\(7)))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & 
-- (\alu_subsystem_0|alu_rot_0|or_3_7|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	datad => \mem_data_bus_in~combout\(7),
	combout => \register_array_0|md_input_mux_0|output[7]~1_combout\);

-- Location: LCCOMB_X18_Y12_N26
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

-- Location: LCCOMB_X21_Y9_N26
\alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\ = \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~3_combout\ $ (((!\alu_subsystem_0|alu_inc_0|and_11|output~combout\) # (!\alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\,
	datac => \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~3_combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_11|output~combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\);

-- Location: LCCOMB_X18_Y12_N24
\register_array_0|md_input_mux_0|output[8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|md_input_mux_0|output[8]~2_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & ((\mem_data_bus_in~combout\(8)))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & 
-- (\alu_subsystem_0|alu_rot_0|or_3_8|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_8|output~combout\,
	datac => \mem_data_bus_in~combout\(8),
	datad => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\,
	combout => \register_array_0|md_input_mux_0|output[8]~2_combout\);

-- Location: LCCOMB_X18_Y12_N30
\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\ = (\register_array_0|md_input_mux_0|output[8]~2_combout\ & (!\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\)))) # (!\register_array_0|md_input_mux_0|output[8]~2_combout\ & 
-- (((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ & !\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|md_input_mux_0|output[8]~2_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y12_N8
\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y12_N2
\register_array_0|md_input_mux_0|output[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|md_input_mux_0|output[9]~3_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & ((\mem_data_bus_in~combout\(9)))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & 
-- (\alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\,
	datad => \mem_data_bus_in~combout\(9),
	combout => \register_array_0|md_input_mux_0|output[9]~3_combout\);

-- Location: LCCOMB_X18_Y12_N20
\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ & 
-- (\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ & !\register_array_0|md_input_mux_0|output[9]~3_combout\))) # (!\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\ & 
-- (((!\register_array_0|md_input_mux_0|output[9]~3_combout\) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\,
	datad => \register_array_0|md_input_mux_0|output[9]~3_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y11_N10
\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y12_N12
\register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N12
\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & (\alu_subsystem_0|alu_rot_0|or_3_5|output~combout\)) # 
-- (!\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & ((\control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\) # ((!\alu_subsystem_0|alu_rot_0|or_3_5|output~combout\ & \control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_5|output~combout\,
	datab => \control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\,
	datac => \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N6
\register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\ = (\register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\) # ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\clk_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X18_Y8_N26
\register_array_0|MA_register|ms_jk_ff_9|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_9|nand_3_1|output~0_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\ & (\register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\ & 
-- \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_9|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X17_Y8_N20
\register_array_0|MA_register|ms_jk_ff_10|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_10|nand_3_1|output~0_combout\ = (\register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & (\alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ & 
-- \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_10|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X17_Y8_N16
\register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\ = ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\) # (\register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\)) # (!\clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X20_Y10_N2
\register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\,
	datab => \register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N26
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~8_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~8_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y9_N20
\register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N8
\register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & ((\register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y10_N2
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\ = (\not_reset~combout\ & !\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N10
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\ = (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\clk_in~combout\ & 
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
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X19_Y10_N26
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & ((!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\))) # 
-- (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)))) # 
-- (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\ & (((!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y10_N6
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\ & 
-- (((!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\)))) # (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_3_1|output~0_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N10
\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N16
\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\ & !\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\) # ((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y9_N28
\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ = (\not_reset~combout\ & !\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y11_N0
\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N16
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\) # 
-- (((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \control_subsystem_0|clock_generator_0|and_1|output~1_combout\)) # (!\not_reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datab => \not_reset~combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X20_Y10_N26
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\) # 
-- (((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|clock_generator_0|and_1|output~1_combout\)) # (!\not_reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datab => \not_reset~combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X21_Y10_N28
\control_subsystem_0|control_matrix|LINK_LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|LINK_LOAD~0_combout\ = (((\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\) # (!\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\)) 
-- # (!\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	combout => \control_subsystem_0|control_matrix|LINK_LOAD~0_combout\);

-- Location: LCCOMB_X21_Y10_N6
\control_subsystem_0|control_matrix|LINK_LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|LINK_LOAD~1_combout\ = (\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_1~0_combout\) # ((\control_subsystem_0|control_matrix|LINK_LOAD~0_combout\ & 
-- \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\)))) # (!\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & (\control_subsystem_0|control_matrix|LINK_LOAD~0_combout\ & 
-- ((\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datab => \control_subsystem_0|control_matrix|LINK_LOAD~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_1~0_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|LINK_LOAD~1_combout\);

-- Location: LCCOMB_X21_Y10_N4
\control_subsystem_0|control_matrix|LINK_LOAD~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|LINK_LOAD~2_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\control_subsystem_0|control_matrix|ALU_CLEAR~8_combout\ & 
-- ((\control_subsystem_0|control_matrix|LINK_LOAD~1_combout\)))) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\) # 
-- ((\control_subsystem_0|control_matrix|ALU_CLEAR~8_combout\ & \control_subsystem_0|control_matrix|LINK_LOAD~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_CLEAR~8_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\,
	datad => \control_subsystem_0|control_matrix|LINK_LOAD~1_combout\,
	combout => \control_subsystem_0|control_matrix|LINK_LOAD~2_combout\);

-- Location: LCCOMB_X21_Y11_N8
\alu_subsystem_0|alu_rot_0|and_0_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_0_2|output~combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (\alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~0_combout\ $ (((!\alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\) # 
-- (!\alu_subsystem_0|alu_inc_0|and_2|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|and_2|output~combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_0_2|output~combout\);

-- Location: LCCOMB_X21_Y11_N30
\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\ = (\alu_subsystem_0|alu_rot_0|and_0_2|output~combout\) # ((!\alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|and_0_2|output~combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	combout => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y11_N18
\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\ = (!\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y11_N2
\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & ((\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\ & 
-- (\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\ & !\register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\ & 
-- ((\register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\,
	datac => \register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X20_Y11_N16
\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\ = (\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\ & ((\control_subsystem_0|control_matrix|LINK_LOAD~2_combout\ & 
-- ((!\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\))) # (!\control_subsystem_0|control_matrix|LINK_LOAD~2_combout\ & (!\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\)))) # 
-- (!\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\ & (!\register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datac => \control_subsystem_0|control_matrix|LINK_LOAD~2_combout\,
	datad => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \register_array_0|LINK_register|ms_jk_ff_0|nand_1|output~4_combout\);

-- Location: LCCOMB_X19_Y12_N14
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & (!\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~8_combout\ & 
-- ((\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\control_subsystem_0|clock_generator_0|and_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~8_combout\,
	datac => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N28
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\ = (!\alu_subsystem_0|alu_rot_0|or_3_2|output~combout\ & !\alu_subsystem_0|alu_rot_0|or_3_0|output~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_2|output~combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X21_Y11_N20
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\ = (!\alu_subsystem_0|alu_rot_0|and_0_1|output~combout\ & (!\alu_subsystem_0|alu_rot_0|or_3_1|output~1_combout\ & !\alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_rot_0|and_0_1|output~combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_1|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X19_Y12_N30
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\ = (\not_reset~combout\ & (((\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|clock_generator_0|and_1|output~1_combout\)) # 
-- (!\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~8_combout\))) # (!\not_reset~combout\ & (((\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|clock_generator_0|and_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~8_combout\,
	datac => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\);

-- Location: LCCOMB_X18_Y12_N10
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\ = (!\alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\ & (!\alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ & (!\alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\ & 
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\,
	datad => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~4_combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\);

-- Location: LCCOMB_X19_Y12_N12
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\ = (!\alu_subsystem_0|alu_rot_0|or_3_8|output~combout\ & (!\alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ & 
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_8|output~combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	datad => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~5_combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\);

-- Location: LCCOMB_X20_Y12_N28
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7_combout\ = (\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\ & (!\alu_subsystem_0|alu_rot_0|or_3_4|output~2_combout\ & 
-- (!\alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\ & !\alu_subsystem_0|alu_rot_0|or_3_5|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~6_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_4|output~2_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_5|output~combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7_combout\);

-- Location: LCCOMB_X20_Y12_N30
\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~8_combout\ = (!\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\) # 
-- (!\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\)) # (!\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~7_combout\,
	datac => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_1|output~8_combout\);

-- Location: LCCOMB_X20_Y8_N26
\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ = (\not_reset~combout\ & !\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N20
\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\ & (((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & 
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\))) # (!\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\ & ((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y9_N16
\register_array_0|PC_register|ms_jk_ff_9|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_9|nand_3_1|output~0_combout\ = (\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\ & (\alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\ & (\register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\ & 
-- \control_subsystem_0|clock_generator_0|and_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_9|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X18_Y9_N26
\register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~0_combout\ = ((\register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\) # (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X18_Y9_N14
\register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\) # (!\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~0_combout\,
	datac => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X18_Y9_N12
\register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_9|nand_3_1|output~0_combout\ & (((\register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\) # 
-- (!\register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_9|nand_3_1|output~0_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_9|nand_3_3|output~1_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y11_N6
\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\ = ((\register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\) # (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y11_N6
\register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y9_N22
\control_subsystem_0|control_matrix|PC_LOAD_LO~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_LOAD_LO~1_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((\control_subsystem_0|control_matrix|PC_CLR_HI~4_combout\) # 
-- (!\control_subsystem_0|control_matrix|ALU_INC~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_INC~1_combout\,
	datab => \control_subsystem_0|control_matrix|PC_CLR_HI~4_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_LOAD_LO~1_combout\);

-- Location: LCCOMB_X19_Y9_N2
\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & ((\control_subsystem_0|control_matrix|PC_LOAD_LO~1_combout\) # 
-- ((\control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_LOAD_LO~1_combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X20_Y11_N24
\register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\ & (!\register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
-- (!\alu_subsystem_0|alu_rot_0|or_3_4|output~2_combout\ & \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\))) # (!\register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\ & 
-- (((!\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\) # (!\alu_subsystem_0|alu_rot_0|or_3_4|output~2_combout\)) # (!\register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_4|output~2_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y12_N22
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

-- Location: LCCOMB_X19_Y12_N24
\register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\ & ((\register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (!\alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\ & !\register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\)) # (!\register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- ((!\register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\) # (!\alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\))))) # (!\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\ & 
-- (((!\register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y11_N10
\register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y11_N30
\register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\ & (!\register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\alu_subsystem_0|alu_rot_0|or_3_1|output~2_combout\ & \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\))) # (!\register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (((!\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\) # (!\alu_subsystem_0|alu_rot_0|or_3_1|output~2_combout\)) # (!\register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_1|output~2_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y13_N8
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

-- Location: LCCOMB_X19_Y13_N18
\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y13_N24
\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & ((\mem_data_bus_in~combout\(2)))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & 
-- (\alu_subsystem_0|alu_rot_0|or_3_2|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_2|output~combout\,
	datac => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\,
	datad => \mem_data_bus_in~combout\(2),
	combout => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y13_N22
\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\ = (\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ & ((\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- (!\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\ & !\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\))))) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ & 
-- (!\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X20_Y10_N30
\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\START~combout\ & (((!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\START~combout\ & 
-- (((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \START~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N24
\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\START~combout\ & (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\START~combout\ & 
-- ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \START~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y13_N6
\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_2|nand_1|output~3_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N4
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\)) # (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\))) # (!\clk_in~combout\ & (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_1|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N2
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\)) # (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\))) # (!\clk_in~combout\ & (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_1|output~2_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N16
\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\);

-- Location: LCCOMB_X19_Y10_N30
\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\ & 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\clk_in~combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\,
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\);

-- Location: LCCOMB_X18_Y10_N22
\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\ & \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\))) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- (((\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y8_N10
\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & 
-- (((\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N4
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

-- Location: LCCOMB_X20_Y10_N18
\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\)))) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (((\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\ & \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y8_N8
\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & 
-- (((\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y9_N0
\control_subsystem_0|control_matrix|MD_IN_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_IN_SEL~0_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_IN_SEL~0_combout\);

-- Location: LCCOMB_X19_Y10_N22
\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & 
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\);

-- Location: LCCOMB_X19_Y10_N28
\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N10
\control_subsystem_0|control_matrix|MD_IN_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\) # ((\control_subsystem_0|control_matrix|MD_IN_SEL~0_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\,
	datab => \control_subsystem_0|control_matrix|MD_IN_SEL~0_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\);

-- Location: LCCOMB_X19_Y10_N14
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

-- Location: LCCOMB_X19_Y10_N8
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & 
-- (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\)) # (!\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & 
-- (((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N12
\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\)))) # (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\)) # (!\clk_in~combout\ & ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_1|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N2
\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~7_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\) # ((\control_subsystem_0|control_matrix|MD_IN_SEL~0_combout\ & 
-- \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_IN_SEL~0_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~7_combout\);

-- Location: LCCOMB_X20_Y10_N24
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\ = ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\) # 
-- ((!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & \control_subsystem_0|clock_generator_0|and_1|output~1_combout\))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X18_Y10_N18
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\)))) # (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\clk_in~combout\ & ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y10_N16
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\)) # (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & 
-- ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\clk_in~combout\ & (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y10_N30
\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\)) # (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & 
-- ((\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\clk_in~combout\ & (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N20
\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\ = (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N24
\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~5_combout\) # 
-- ((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~7_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~5_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~7_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\);

-- Location: LCCOMB_X20_Y8_N18
\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N28
\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\ = (\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\ & (!\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\) # (!\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\ & 
-- (((!\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ & \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X20_Y8_N22
\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_1|nand_1|output~3_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y10_N20
\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\ & \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\))) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (((\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_3_1|output~2_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y8_N24
\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & 
-- (((\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y9_N0
\control_subsystem_0|control_matrix|GROUP_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|GROUP_1~0_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & !\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|GROUP_1~0_combout\);

-- Location: LCCOMB_X18_Y10_N14
\control_subsystem_0|control_matrix|ALU_CLEAR~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_CLEAR~8_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & (\control_subsystem_0|control_matrix|GROUP_1~0_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_CLEAR~8_combout\);

-- Location: LCCOMB_X20_Y8_N24
\control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_3|output~0_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- !\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_3|output~0_combout\);

-- Location: LCCOMB_X18_Y10_N2
\control_subsystem_0|control_matrix|ALU_CLEAR~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_CLEAR~9_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & (\control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_3|output~0_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & !\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_CLEAR~9_combout\);

-- Location: LCCOMB_X18_Y10_N6
\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ = (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N16
\control_subsystem_0|control_matrix|ALU_CLEAR~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & ((\control_subsystem_0|control_matrix|ALU_CLEAR~9_combout\) # 
-- ((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ & \control_subsystem_0|control_matrix|ALU_CLEAR~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_CLEAR~8_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_CLEAR~9_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\);

-- Location: LCCOMB_X17_Y10_N28
\control_subsystem_0|control_matrix|MD_BUS_SEL~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\);

-- Location: LCCOMB_X18_Y10_N12
\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N6
\control_subsystem_0|control_matrix|MD_BUS_SEL~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\) # ((!\control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_3|output~0_combout\ & 
-- \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\);

-- Location: LCCOMB_X18_Y10_N0
\control_subsystem_0|control_matrix|MD_BUS_SEL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\ & ((\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ 
-- & ((\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\))) # (!\control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	combout => \control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\);

-- Location: LCCOMB_X18_Y10_N4
\control_subsystem_0|control_matrix|MD_BUS_SEL~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\) # ((\control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\) # ((\control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\ & 
-- \control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~2_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~5_combout\,
	datac => \control_subsystem_0|control_matrix|MD_BUS_SEL~4_combout\,
	datad => \control_subsystem_0|control_matrix|MD_BUS_SEL~3_combout\,
	combout => \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\);

-- Location: LCCOMB_X19_Y13_N20
\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y13_N30
\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\ & ((\register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\ & !\alu_subsystem_0|alu_rot_0|or_3_0|output~combout\)) # (!\register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\ & ((!\alu_subsystem_0|alu_rot_0|or_3_0|output~combout\) # 
-- (!\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\))))) # (!\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\ & (((!\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y13_N14
\register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y10_N24
\control_subsystem_0|control_matrix|MD_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\);

-- Location: LCCOMB_X19_Y10_N0
\control_subsystem_0|control_matrix|PC_BUS_SEL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\);

-- Location: LCCOMB_X17_Y10_N8
\control_subsystem_0|control_matrix|PC_BUS_SEL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\ = (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- !\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\);

-- Location: LCCOMB_X20_Y10_N8
\control_subsystem_0|control_matrix|PC_BUS_SEL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\ = (\control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\) # ((\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\ & \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datac => \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\,
	datad => \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\,
	combout => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\);

-- Location: LCCOMB_X19_Y13_N26
\alu_subsystem_0|alu_clr_0|and_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_clr_0|and_0|output~0_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & (\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & 
-- (((\register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\) # (!\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	combout => \alu_subsystem_0|alu_clr_0|and_0|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N12
\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\);

-- Location: LCCOMB_X18_Y10_N28
\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\);

-- Location: LCCOMB_X19_Y9_N28
\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ = (\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\) # ((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\) # ((\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\ & 
-- \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~2_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~4_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~3_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\);

-- Location: LCCOMB_X18_Y11_N10
\alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~0_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\) # ((\alu_subsystem_0|alu_clr_0|and_0|output~0_combout\) # 
-- (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	datac => \alu_subsystem_0|alu_clr_0|and_0|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~0_combout\);

-- Location: LCCOMB_X17_Y10_N14
\control_subsystem_0|control_matrix|ALU_ROT_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_ROT_1~0_combout\ = (!\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ & (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_ROT_1~0_combout\);

-- Location: LCCOMB_X17_Y10_N22
\alu_subsystem_0|alu_rot_0|alu_rot_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\ = (\alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\ & (\control_subsystem_0|control_matrix|ALU_CLEAR~8_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_1~0_combout\) # 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|alu_rot_0~0_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_CLEAR~8_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_1~0_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	combout => \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\);

-- Location: LCCOMB_X19_Y13_N4
\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y11_N26
\register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & ((\register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N12
\register_array_0|output_mux|output~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~7_combout\ = (\register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ & ((!\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\) # 
-- (!\control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datac => \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \register_array_0|output_mux|output~7_combout\);

-- Location: LCCOMB_X20_Y12_N22
\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_4|nand_1|output~3_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y11_N16
\alu_subsystem_0|alu_out_mux|output[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[4]~2_combout\ = (\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & ((!\register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & (!\register_array_0|output_mux|output~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datac => \register_array_0|output_mux|output~7_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[4]~2_combout\);

-- Location: LCCOMB_X20_Y13_N10
\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & ((\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N26
\control_subsystem_0|control_matrix|ALU_COMP~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ = (\control_subsystem_0|control_matrix|GROUP_1~0_combout\ & (!\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\);

-- Location: LCCOMB_X18_Y11_N8
\alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((!\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\ & \alu_subsystem_0|alu_out_mux|output[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	datac => \alu_subsystem_0|alu_out_mux|output[4]~2_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\);

-- Location: LCCOMB_X20_Y13_N0
\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & ((\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_5|nand_1|output~3_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y9_N30
\control_subsystem_0|control_matrix|PC_LOAD_HI~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\);

-- Location: LCCOMB_X19_Y9_N18
\control_subsystem_0|control_matrix|PC_CLR_HI~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_CLR_HI~4_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|PC_CLR_HI~4_combout\);

-- Location: LCCOMB_X18_Y8_N2
\control_subsystem_0|control_matrix|OPR_INS~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|OPR_INS~1_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|OPR_INS~1_combout\);

-- Location: LCCOMB_X17_Y10_N30
\control_subsystem_0|control_matrix|PC_LOAD_HI~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_LOAD_HI~4_combout\ = (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_LOAD_HI~4_combout\);

-- Location: LCCOMB_X17_Y10_N18
\control_subsystem_0|control_matrix|PC_LOAD_HI~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\ = (!\alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\control_subsystem_0|control_matrix|PC_LOAD_HI~4_combout\ & 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\ & \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_comp_0|register_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~4_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\);

-- Location: LCCOMB_X19_Y9_N8
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

-- Location: LCCOMB_X19_Y9_N12
\control_subsystem_0|control_matrix|ALU_INC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_INC~1_combout\ = (!\control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\ & (((!\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\) # 
-- (!\control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\)) # (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~5_combout\,
	datac => \control_subsystem_0|control_matrix|decoder_3_to_8_0|and_3_5|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_INC~1_combout\);

-- Location: LCCOMB_X19_Y9_N20
\control_subsystem_0|control_matrix|PC_LOAD_HI~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\ = ((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & (\control_subsystem_0|control_matrix|PC_CLR_HI~4_combout\ & 
-- !\control_subsystem_0|control_matrix|OPR_INS~1_combout\))) # (!\control_subsystem_0|control_matrix|ALU_INC~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|PC_CLR_HI~4_combout\,
	datac => \control_subsystem_0|control_matrix|OPR_INS~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_INC~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\);

-- Location: LCCOMB_X19_Y9_N14
\control_subsystem_0|control_matrix|PC_LOAD_HI~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ & ((\control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\) # 
-- ((\control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\)))) # (!\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\ 
-- & (((\control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\,
	datac => \control_subsystem_0|control_matrix|PC_LOAD_HI~6_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\);

-- Location: LCCOMB_X19_Y11_N0
\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_5|output~combout\ & (\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\ & (\register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\ & 
-- \control_subsystem_0|clock_generator_0|and_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_5|output~combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X21_Y10_N16
\control_subsystem_0|control_matrix|ALU_ROT_1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_ROT_1~combout\ = (!\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ & (\control_subsystem_0|control_matrix|ALU_CLEAR~8_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_1~0_combout\) # 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_CLEAR~8_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_1~0_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\);

-- Location: LCCOMB_X18_Y11_N16
\alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (\alu_subsystem_0|alu_inc_0|and_5|output~combout\ $ (((\alu_subsystem_0|alu_out_mux|output[4]~2_combout\ & 
-- !\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_out_mux|output[4]~2_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_5|output~combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\);

-- Location: LCCOMB_X18_Y12_N22
\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & ((\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y10_N18
\control_subsystem_0|control_matrix|ALU_ROT_2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_ROT_2~combout\ = (\control_subsystem_0|control_matrix|ALU_CLEAR~8_combout\ & (!\register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_1~0_combout\) # 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_ROT_1~0_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_CLEAR~8_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\);

-- Location: LCCOMB_X18_Y11_N24
\alu_subsystem_0|alu_rot_0|or_3_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_5|output~0_combout\ = (\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_2~combout\) # ((\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & 
-- \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\)))) # (!\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\ & (\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & (\alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_5|output~0_combout\);

-- Location: LCCOMB_X20_Y10_N28
\register_array_0|PC_register|ms_jk_ff_7|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_7|nand_3_1|output~0_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ & (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & (\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\ & 
-- \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	datab => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_7|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X19_Y11_N20
\register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~0_combout\ = (\register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\) # ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\clk_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X18_Y8_N22
\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_1|output~2_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N16
\control_subsystem_0|control_matrix|Z_BIT\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|Z_BIT~combout\ = (\control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\) # ((!\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- !\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|Z_BIT~combout\);

-- Location: LCCOMB_X19_Y9_N16
\control_subsystem_0|control_matrix|PC_CLR_HI~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ = (\control_subsystem_0|control_matrix|PC_CLR_HI~4_combout\ & (!\control_subsystem_0|control_matrix|Z_BIT~combout\ & 
-- \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|PC_CLR_HI~4_combout\,
	datac => \control_subsystem_0|control_matrix|Z_BIT~combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\);

-- Location: LCCOMB_X19_Y11_N4
\register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_7|output~combout\) # (!\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_7|nand_3_3|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\,
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

-- Location: LCCOMB_X20_Y10_N0
\register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_7|nand_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N22
\alu_subsystem_0|alu_clr_0|and_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_clr_0|and_7|output~0_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & (\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & 
-- (((\register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\) # (!\control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\,
	datac => \control_subsystem_0|control_matrix|PC_BUS_SEL~2_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_clr_0|and_7|output~0_combout\);

-- Location: LCCOMB_X18_Y11_N4
\alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ ((((\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\) # (\alu_subsystem_0|alu_clr_0|and_7|output~0_combout\)) # 
-- (!\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datad => \alu_subsystem_0|alu_clr_0|and_7|output~0_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\);

-- Location: LCCOMB_X21_Y9_N14
\alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~3_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((!\alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~2_combout\ & (\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & 
-- !\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~2_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~3_combout\);

-- Location: LCCOMB_X19_Y9_N24
\control_subsystem_0|control_matrix|ALU_INC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_INC~0_combout\ = (\control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\) # ((!\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ & 
-- (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ & \control_subsystem_0|control_matrix|GROUP_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	datac => \control_subsystem_0|control_matrix|GROUP_1~0_combout\,
	datad => \control_subsystem_0|control_matrix|PC_LOAD_HI~3_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_INC~0_combout\);

-- Location: LCCOMB_X21_Y10_N20
\control_subsystem_0|control_matrix|ALU_INC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|ALU_INC~2_combout\ = (\control_subsystem_0|control_matrix|ALU_INC~1_combout\ & (\control_subsystem_0|control_matrix|ALU_INC~0_combout\ & 
-- (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\))) # (!\control_subsystem_0|control_matrix|ALU_INC~1_combout\ & ((\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\) # 
-- ((\control_subsystem_0|control_matrix|ALU_INC~0_combout\ & \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_INC~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_INC~0_combout\,
	datac => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|ALU_INC~2_combout\);

-- Location: LCCOMB_X20_Y9_N14
\register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ = (\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\ & (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & (\alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\ & 
-- \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datab => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X20_Y9_N22
\register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~0_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\) # ((\register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\) # (!\clk_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X20_Y9_N6
\register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\) # (!\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~0_combout\,
	datac => \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\,
	datad => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N4
\register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & ((\register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\) # 
-- ((!\register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_11|nand_3_3|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N20
\register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N18
\register_array_0|output_mux|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~4_combout\ = (\register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ & ((!\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\) # 
-- (!\control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datac => \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \register_array_0|output_mux|output~4_combout\);

-- Location: LCCOMB_X21_Y9_N4
\alu_subsystem_0|alu_out_mux|output[11]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[11]~6_combout\ = (\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & ((!\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\))) # 
-- (!\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & (!\register_array_0|output_mux|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\,
	datac => \register_array_0|output_mux|output~4_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[11]~6_combout\);

-- Location: LCCOMB_X21_Y9_N2
\alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (\control_subsystem_0|control_matrix|ALU_INC~2_combout\ $ (((\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\) # 
-- (!\alu_subsystem_0|alu_out_mux|output[11]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	datab => \alu_subsystem_0|alu_out_mux|output[11]~6_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_INC~2_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\);

-- Location: LCCOMB_X21_Y9_N30
\alu_subsystem_0|alu_rot_0|or_3_11|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_11|output~2_combout\ = (\register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ & (!\alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\ & ((!\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\)))) # 
-- (!\register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_2~combout\) # ((!\alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\ & !\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datad => \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_11|output~2_combout\);

-- Location: LCCOMB_X20_Y9_N16
\alu_subsystem_0|alu_rot_0|or_3_11|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_11|output~2_combout\) # ((\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & (\alu_subsystem_0|alu_inc_0|and_11|output~combout\ $ 
-- (\alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|and_11|output~combout\,
	datab => \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_11|output~2_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\);

-- Location: LCCOMB_X18_Y12_N12
\register_array_0|md_input_mux_0|output[11]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|md_input_mux_0|output[11]~5_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & (\mem_data_bus_in~combout\(11))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_data_bus_in~combout\(11),
	datac => \alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\,
	datad => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\,
	combout => \register_array_0|md_input_mux_0|output[11]~5_combout\);

-- Location: LCCOMB_X20_Y12_N24
\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y12_N18
\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ & ((\register_array_0|md_input_mux_0|output[11]~5_combout\ & 
-- (!\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ & !\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\)) # (!\register_array_0|md_input_mux_0|output[11]~5_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\))))) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ & 
-- (((!\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\,
	datab => \register_array_0|md_input_mux_0|output[11]~5_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y12_N16
\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_11|nand_1|output~2_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y9_N0
\alu_subsystem_0|alu_inc_0|and_11|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|and_11|output~0_combout\ = (\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\) # ((\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & (\register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & ((\register_array_0|output_mux|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \register_array_0|output_mux|output~4_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	combout => \alu_subsystem_0|alu_inc_0|and_11|output~0_combout\);

-- Location: LCCOMB_X21_Y9_N10
\alu_subsystem_0|alu_inc_0|and_11|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|and_11|output~combout\ = (\control_subsystem_0|control_matrix|ALU_INC~2_combout\ & (\control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & 
-- !\alu_subsystem_0|alu_inc_0|and_11|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_INC~2_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_11|output~0_combout\,
	combout => \alu_subsystem_0|alu_inc_0|and_11|output~combout\);

-- Location: LCCOMB_X21_Y9_N16
\alu_subsystem_0|alu_rot_0|or_3_10|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_10|output~3_combout\ = (\alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\ & (!\alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_2~combout\)))) # 
-- (!\alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_1~combout\) # ((!\alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_11|nand_3|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_10|output~3_combout\);

-- Location: LCCOMB_X17_Y8_N0
\alu_subsystem_0|alu_rot_0|or_3_10|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ = (\alu_subsystem_0|alu_rot_0|or_3_10|output~3_combout\) # ((!\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\ & (\alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\ $ 
-- (\alu_subsystem_0|alu_inc_0|and_11|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\,
	datab => \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|and_11|output~combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_10|output~3_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X18_Y12_N0
\register_array_0|md_input_mux_0|output[10]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|md_input_mux_0|output[10]~4_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & ((\mem_data_bus_in~combout\(10)))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & 
-- (\alu_subsystem_0|alu_rot_0|or_3_10|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	datac => \mem_data_bus_in~combout\(10),
	datad => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\,
	combout => \register_array_0|md_input_mux_0|output[10]~4_combout\);

-- Location: LCCOMB_X18_Y12_N18
\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y12_N14
\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\ = (\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\) # (!\register_array_0|md_input_mux_0|output[10]~4_combout\)))) # (!\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
-- (((!\register_array_0|md_input_mux_0|output[10]~4_combout\ & \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \register_array_0|md_input_mux_0|output[10]~4_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\);

-- Location: LCCOMB_X18_Y12_N16
\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_10|nand_1|output~2_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N2
\register_array_0|PC_register|ms_jk_ff_10|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_10|nand_3_1|output~0_combout\ = (\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\ & (\alu_subsystem_0|alu_rot_0|or_3_10|output~combout\ & (\register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\ & 
-- \control_subsystem_0|clock_generator_0|and_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_10|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X20_Y9_N30
\register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~0_combout\ = (\register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\) # ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\clk_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X20_Y9_N26
\register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_10|output~combout\) # (!\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	datab => \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N24
\register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_10|nand_3_1|output~0_combout\ & ((\register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\) # 
-- ((!\register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_10|nand_3_1|output~0_combout\,
	datac => \not_reset~combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_10|nand_3_3|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N8
\register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N12
\alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ & 
-- ((!\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\) # (!\control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datac => \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~1_combout\);

-- Location: LCCOMB_X21_Y9_N28
\alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & (\register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\)) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & 
-- ((\alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\,
	datad => \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~1_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~2_combout\);

-- Location: LCCOMB_X21_Y9_N22
\alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((!\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\ & (\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & 
-- !\alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datad => \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~2_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\);

-- Location: LCCOMB_X21_Y9_N20
\alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~0_combout\ = \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~3_combout\ $ ((((!\alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\) # (!\alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~3_combout\)) # 
-- (!\alu_subsystem_0|alu_inc_0|and_11|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|and_11|output~combout\,
	datab => \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~3_combout\,
	datac => \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~3_combout\,
	datad => \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~0_combout\);

-- Location: LCCOMB_X17_Y9_N20
\alu_subsystem_0|alu_rot_0|or_3_8|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\ = (\alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\ & (!\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\ & ((!\alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~0_combout\)))) # 
-- (!\alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_1~combout\) # ((!\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\ & !\alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~0_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N0
\alu_subsystem_0|alu_rot_0|or_3_8|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_8|output~combout\ = (\alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\) # ((!\alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_8|output~1_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_8|output~combout\);

-- Location: LCCOMB_X18_Y9_N2
\register_array_0|PC_register|ms_jk_ff_8|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_8|nand_3_1|output~0_combout\ = (\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\ & (\alu_subsystem_0|alu_rot_0|or_3_8|output~combout\ & (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & 
-- \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_8|output~combout\,
	datac => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_8|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X19_Y9_N6
\register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~0_combout\ = (\register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\) # ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\clk_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X19_Y9_N4
\register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_8|output~combout\) # (!\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~0_combout\,
	datac => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_8|output~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X18_Y9_N4
\register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_8|nand_3_1|output~0_combout\ & ((\register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\) # 
-- ((!\register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_8|nand_3_1|output~0_combout\,
	datac => \not_reset~combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_8|nand_3_3|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y9_N30
\register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y9_N18
\alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ & ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\) 
-- # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\,
	datad => \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1_combout\);

-- Location: LCCOMB_X18_Y12_N28
\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & ((\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_8|nand_1|output~2_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: LCCOMB_X22_Y9_N24
\alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & ((\register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\))) # (!\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & 
-- (\alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~2_combout\);

-- Location: LCCOMB_X21_Y9_N24
\alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~3_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((!\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\ & (\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & 
-- !\alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datad => \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~2_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~3_combout\);

-- Location: LCCOMB_X21_Y9_N6
\alu_subsystem_0|alu_inc_0|and_8|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|and_8|output~combout\ = (\alu_subsystem_0|alu_inc_0|and_11|output~combout\ & (\alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~3_combout\ & (\alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~3_combout\ & 
-- \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|and_11|output~combout\,
	datab => \alu_subsystem_0|alu_xor_0|xor_9|nand_3|output~3_combout\,
	datac => \alu_subsystem_0|alu_xor_0|xor_8|nand_3|output~3_combout\,
	datad => \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\,
	combout => \alu_subsystem_0|alu_inc_0|and_8|output~combout\);

-- Location: LCCOMB_X18_Y11_N28
\alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~1_combout\ = \alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1_combout\ $ (((\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\ & (!\alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\ & 
-- \alu_subsystem_0|alu_inc_0|and_8|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_8|output~combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~1_combout\);

-- Location: LCCOMB_X19_Y11_N14
\alu_subsystem_0|alu_rot_0|or_3_5|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_5|output~combout\ = (\alu_subsystem_0|alu_rot_0|or_3_5|output~0_combout\) # ((\alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~1_combout\ & !\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_rot_0|or_3_5|output~0_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_5|output~combout\);

-- Location: LCCOMB_X19_Y11_N26
\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~3_combout\ = (\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\) # ((!\control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ & ((\alu_subsystem_0|alu_rot_0|or_3_5|output~combout\) # 
-- (!\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_5|output~combout\,
	datac => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datad => \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~3_combout\);

-- Location: LCCOMB_X19_Y11_N8
\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\ = (!\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\ & ((\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\) # 
-- ((!\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~3_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\,
	datab => \not_reset~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~3_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\);

-- Location: LCCOMB_X19_Y11_N24
\register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \clk_in~combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_5|nand_1|output~4_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y11_N12
\register_array_0|output_mux|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~6_combout\ = (\register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ & ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\) # 
-- (!\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datab => \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\,
	combout => \register_array_0|output_mux|output~6_combout\);

-- Location: LCCOMB_X19_Y11_N22
\alu_subsystem_0|alu_out_mux|output[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[5]~1_combout\ = (\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & (!\register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & ((!\register_array_0|output_mux|output~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \register_array_0|output_mux|output~6_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[5]~1_combout\);

-- Location: LCCOMB_X18_Y11_N26
\alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((!\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\ & \alu_subsystem_0|alu_out_mux|output[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[5]~1_combout\,
	combout => \alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1_combout\);

-- Location: LCCOMB_X18_Y11_N30
\alu_subsystem_0|alu_inc_0|and_5|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|and_5|output~combout\ = (\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\ & (\alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1_combout\ & (!\alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\ & 
-- \alu_subsystem_0|alu_inc_0|and_8|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_xor_0|xor_5|nand_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_8|output~combout\,
	combout => \alu_subsystem_0|alu_inc_0|and_5|output~combout\);

-- Location: LCCOMB_X17_Y11_N10
\alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\ = \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ $ (((\alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\ & (\alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ & 
-- \alu_subsystem_0|alu_inc_0|and_5|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_5|output~combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\);

-- Location: LCCOMB_X20_Y11_N28
\register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & ((\register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N14
\register_array_0|output_mux|output~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~10_combout\ = (\register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ & ((!\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\) # 
-- (!\control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\,
	datad => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	combout => \register_array_0|output_mux|output~10_combout\);

-- Location: LCCOMB_X21_Y10_N10
\alu_subsystem_0|alu_out_mux|output[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[1]~5_combout\ = (\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & (!\register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & ((!\register_array_0|output_mux|output~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \register_array_0|output_mux|output~10_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[1]~5_combout\);

-- Location: LCCOMB_X21_Y11_N6
\alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((!\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\ & \alu_subsystem_0|alu_out_mux|output[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[1]~5_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\);

-- Location: LCCOMB_X21_Y11_N12
\alu_subsystem_0|alu_rot_0|and_1_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_1_1|output~combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & (\alu_subsystem_0|alu_inc_0|and_2|output~combout\ $ (\alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datac => \alu_subsystem_0|alu_inc_0|and_2|output~combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_1_1|output~combout\);

-- Location: LCCOMB_X21_Y11_N10
\alu_subsystem_0|alu_rot_0|or_3_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_2|output~combout\ = (\alu_subsystem_0|alu_rot_0|and_3_2|output~combout\) # ((\alu_subsystem_0|alu_rot_0|and_1_1|output~combout\) # ((\alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\ & 
-- !\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|and_3_2|output~combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\,
	datac => \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|and_1_1|output~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_2|output~combout\);

-- Location: LCCOMB_X19_Y13_N2
\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\ & ((\register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (!\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\ & !\alu_subsystem_0|alu_rot_0|or_3_2|output~combout\)) # (!\register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\ & ((!\alu_subsystem_0|alu_rot_0|or_3_2|output~combout\) # 
-- (!\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\))))) # (!\register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\ & (((!\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_2|output~combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y13_N12
\register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y10_N18
\register_array_0|output_mux|output~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~9_combout\ = (\register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ & ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\) # 
-- (!\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\,
	datad => \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\,
	combout => \register_array_0|output_mux|output~9_combout\);

-- Location: LCCOMB_X18_Y11_N12
\alu_subsystem_0|alu_out_mux|output[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[2]~4_combout\ = (\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & (!\register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & ((!\register_array_0|output_mux|output~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \register_array_0|output_mux|output~9_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[2]~4_combout\);

-- Location: LCCOMB_X17_Y11_N22
\alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((\alu_subsystem_0|alu_out_mux|output[2]~4_combout\ & !\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_out_mux|output[2]~4_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\);

-- Location: LCCOMB_X17_Y11_N8
\alu_subsystem_0|alu_inc_0|and_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|and_2|output~combout\ = (\alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\ & (\alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\ & (\alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ & 
-- \alu_subsystem_0|alu_inc_0|and_5|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_5|output~combout\,
	combout => \alu_subsystem_0|alu_inc_0|and_2|output~combout\);

-- Location: LCCOMB_X21_Y11_N2
\alu_subsystem_0|alu_inc_0|and_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|and_1|output~combout\ = (\alu_subsystem_0|alu_inc_0|and_2|output~combout\ & (\control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((!\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\ & 
-- \alu_subsystem_0|alu_out_mux|output[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	datab => \alu_subsystem_0|alu_inc_0|and_2|output~combout\,
	datac => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[1]~5_combout\,
	combout => \alu_subsystem_0|alu_inc_0|and_1|output~combout\);

-- Location: LCCOMB_X21_Y11_N26
\alu_subsystem_0|alu_rot_0|or_3_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\ = (\alu_subsystem_0|alu_rot_0|or_3_0|output~1_combout\) # ((!\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\ & (\alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~0_combout\ $ 
-- (!\alu_subsystem_0|alu_inc_0|and_1|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_0|output~1_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~0_combout\,
	datac => \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_1|output~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\);

-- Location: LCCOMB_X20_Y13_N30
\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & (\mem_data_bus_in~combout\(0))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_0|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_data_bus_in~combout\(0),
	datac => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y13_N28
\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\ = (\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ & ((\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- (!\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\ & !\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\) # (!\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\))))) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ & 
-- (!\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X19_Y13_N16
\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_0|nand_5|output~1_combout\);

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

-- Location: LCCOMB_X20_Y12_N2
\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & ((\mem_data_bus_in~combout\(3)))) # (!\control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\ & 
-- (\alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\,
	datab => \control_subsystem_0|control_matrix|MD_IN_SEL~1_combout\,
	datad => \mem_data_bus_in~combout\(3),
	combout => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y12_N4
\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\ = (!\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y12_N0
\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\ = (\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ & ((\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\ & 
-- (!\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\ & !\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\))))) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ & 
-- (((!\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\);

-- Location: LCCOMB_X20_Y12_N8
\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_3|nand_1|output~3_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y13_N26
\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\ = (\not_reset~combout\ & !\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y13_N14
\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\register_array_0|md_input_mux_0|output[7]~1_combout\ & (!\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\) # (!\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\)))) # (!\register_array_0|md_input_mux_0|output[7]~1_combout\ & 
-- (((\register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\ & !\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|md_input_mux_0|output[7]~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_11|nand_3_1|output~6_combout\,
	datac => \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~1_combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y13_N16
\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \register_array_0|MD_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MD_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y11_N14
\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N4
\control_subsystem_0|control_matrix|MA_LOAD_LO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\ & \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \control_subsystem_0|register_5_bit_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \control_subsystem_0|register_5_bit_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\);

-- Location: LCCOMB_X17_Y8_N2
\register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\ = (\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ & (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & 
-- ((\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\) # (\control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	datab => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~2_combout\,
	datac => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X20_Y11_N4
\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\ & (!\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\) # (!\alu_subsystem_0|alu_rot_0|or_3_0|output~combout\)))) # (!\register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\ & (((!\alu_subsystem_0|alu_rot_0|or_3_0|output~combout\ 
-- & \register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\)) # (!\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_0|output~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y11_N12
\register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (((\register_array_0|MA_register|ms_jk_ff_0|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X21_Y11_N4
\alu_subsystem_0|alu_rot_0|and_0_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_0_1|output~combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & (\alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~0_combout\ $ (((!\alu_subsystem_0|alu_inc_0|and_2|output~combout\) # 
-- (!\alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_0|nand_3|output~0_combout\,
	datac => \alu_subsystem_0|alu_inc_0|and_2|output~combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_0_1|output~combout\);

-- Location: LCCOMB_X21_Y11_N18
\alu_subsystem_0|alu_rot_0|and_1_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|and_1_0|output~0_combout\ = (!\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\ & (\alu_subsystem_0|alu_inc_0|and_2|output~combout\ $ (\alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_inc_0|and_2|output~combout\,
	datac => \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_1|nand_3|output~0_combout\,
	combout => \alu_subsystem_0|alu_rot_0|and_1_0|output~0_combout\);

-- Location: LCCOMB_X21_Y11_N14
\alu_subsystem_0|alu_rot_0|or_3_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_1|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|and_0_1|output~combout\) # ((\alu_subsystem_0|alu_rot_0|and_1_0|output~0_combout\) # ((\alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\ & 
-- \control_subsystem_0|control_matrix|ALU_ROT_2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datac => \alu_subsystem_0|alu_rot_0|and_0_1|output~combout\,
	datad => \alu_subsystem_0|alu_rot_0|and_1_0|output~0_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_1|output~2_combout\);

-- Location: LCCOMB_X20_Y11_N0
\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\ & (!\register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\alu_subsystem_0|alu_rot_0|or_3_1|output~2_combout\ & \register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\))) # (!\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (((!\register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\) # (!\alu_subsystem_0|alu_rot_0|or_3_1|output~2_combout\)) # (!\register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_1|output~2_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y11_N2
\register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N6
\register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MA_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N0
\register_array_0|MA_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (!\alu_subsystem_0|alu_rot_0|or_3_2|output~combout\ & !\register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\)) # (!\register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- ((!\register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\) # (!\alu_subsystem_0|alu_rot_0|or_3_2|output~combout\))))) # (!\register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\ & 
-- (((!\register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_2|output~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X19_Y12_N4
\register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_2|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_2|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y11_N14
\alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\ = \alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\ $ (((\alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\ & \alu_subsystem_0|alu_inc_0|and_5|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_xor_0|xor_3|nand_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~1_combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_5|output~combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\);

-- Location: LCCOMB_X18_Y11_N18
\alu_subsystem_0|alu_rot_0|or_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\ = (\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & ((\alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\) # ((!\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\ & 
-- \alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\)))) # (!\control_subsystem_0|control_matrix|ALU_ROT_2~combout\ & (!\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\ & ((\alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	datab => \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_4|nand_3|output~2_combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_3|nand_3|output~1_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\);

-- Location: LCCOMB_X21_Y11_N0
\alu_subsystem_0|alu_rot_0|or_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\) # ((\alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_rot_0|or_3_3|output~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_2|nand_3|output~2_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\);

-- Location: LCCOMB_X20_Y12_N14
\register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\ & (!\register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (!\alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\ & \register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\))) # (!\register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- (((!\register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\) # (!\alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\)) # (!\register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_3|output~2_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y12_N10
\register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y11_N22
\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y11_N20
\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_4|output~2_combout\ & (!\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\ & 
-- ((!\register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\) # (!\register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\)))) # (!\alu_subsystem_0|alu_rot_0|or_3_4|output~2_combout\ & 
-- (((!\register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & \register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\)) # (!\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_4|output~2_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_4|nand_3_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X20_Y11_N8
\register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\)))) # (!\clk_in~combout\ & (((\register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N0
\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & 
-- (\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N18
\control_subsystem_0|control_matrix|MA_LOAD_HI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\ = (\control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\) # ((!\control_subsystem_0|control_matrix|OPR_INS~1_combout\ & 
-- (!\control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\ & \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|OPR_INS~1_combout\,
	datab => \control_subsystem_0|register_5_bit_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\,
	datad => \control_subsystem_0|state_generator_0|s_state_generator_0|decoder|and_3_1|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\);

-- Location: LCCOMB_X18_Y8_N30
\control_subsystem_0|control_matrix|MA_LOAD_HI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\ = (\control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\ & (((\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\ & 
-- \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\)) # (!\control_subsystem_0|control_matrix|Z_BIT~combout\))) # (!\control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\ & 
-- (\control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\ & ((\control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\,
	datab => \control_subsystem_0|control_matrix|MA_LOAD_HI~1_combout\,
	datac => \control_subsystem_0|control_matrix|Z_BIT~combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\);

-- Location: LCCOMB_X18_Y8_N28
\register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\ = (\clk_in~combout\ & (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & \control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\);

-- Location: LCCOMB_X17_Y8_N24
\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & 
-- ((\register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\))) # (!\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X17_Y8_N14
\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\ = (\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\ & (!\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\)) # 
-- (!\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\ & (((\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\,
	datac => \not_reset~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~2_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\);

-- Location: LCCOMB_X17_Y8_N6
\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_5|nand_1|output~3_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N26
\register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\ = (\register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\) # ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\clk_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X18_Y8_N14
\control_subsystem_0|control_matrix|MA_CLR_HI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ = (\control_subsystem_0|control_matrix|Z_BIT~combout\ & ((\control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\) # ((\control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\ & 
-- \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_LOAD_HI~0_combout\,
	datab => \control_subsystem_0|control_matrix|MA_LOAD_LO~0_combout\,
	datac => \control_subsystem_0|control_matrix|Z_BIT~combout\,
	datad => \control_subsystem_0|state_generator_0|t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	combout => \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\);

-- Location: LCCOMB_X17_Y8_N8
\register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\) # (!\control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~0_combout\,
	datac => \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\,
	datad => \control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X18_Y9_N24
\register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~0_combout\ = (\control_subsystem_0|clock_generator_0|and_1|output~1_combout\ & (\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\ & 
-- (\register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\ & \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|and_1|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X18_Y9_N22
\register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~0_combout\ = (\register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\) # ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\clk_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X18_Y9_N6
\register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~1_combout\ = (\register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\) # (!\control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_CLR_HI~3_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~0_combout\,
	datac => \control_subsystem_0|control_matrix|PC_LOAD_HI~7_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X18_Y9_N0
\register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~0_combout\ & (((\register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\) # 
-- (!\register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_6|nand_3_1|output~0_combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_6|nand_3_3|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y9_N8
\register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \register_array_0|PC_register|ms_jk_ff_6|nand_1|output~1_combout\,
	combout => \register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X18_Y9_N10
\register_array_0|output_mux|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|output_mux|output~5_combout\ = (\register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\) # ((!\control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\ & ((!\control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\) # 
-- (!\control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|PC_BUS_SEL~0_combout\,
	datab => \control_subsystem_0|control_matrix|MD_BUS_SEL~0_combout\,
	datac => \register_array_0|PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|PC_BUS_SEL~1_combout\,
	combout => \register_array_0|output_mux|output~5_combout\);

-- Location: LCCOMB_X19_Y11_N30
\alu_subsystem_0|alu_out_mux|output[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_out_mux|output[6]~0_combout\ = (\control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\ & ((\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & (!\register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\)) # 
-- (!\control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\ & ((!\register_array_0|output_mux|output~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \control_subsystem_0|control_matrix|ALU_OUT_SEL_0~5_combout\,
	datac => \control_subsystem_0|control_matrix|MD_BUS_SEL~6_combout\,
	datad => \register_array_0|output_mux|output~5_combout\,
	combout => \alu_subsystem_0|alu_out_mux|output[6]~0_combout\);

-- Location: LCCOMB_X18_Y11_N20
\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\ = \control_subsystem_0|control_matrix|ALU_COMP~0_combout\ $ (((!\control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\ & \alu_subsystem_0|alu_out_mux|output[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_subsystem_0|control_matrix|ALU_COMP~0_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_CLEAR~7_combout\,
	datad => \alu_subsystem_0|alu_out_mux|output[6]~0_combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\);

-- Location: LCCOMB_X18_Y11_N6
\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\ = \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\ $ (((!\alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\ & \alu_subsystem_0|alu_inc_0|and_8|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~0_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~1_combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_8|output~combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\);

-- Location: LCCOMB_X17_Y9_N26
\alu_subsystem_0|alu_rot_0|or_3_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\ = (\alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\ & (\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\ & (!\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\))) # 
-- (!\alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_2~combout\) # ((\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\ & !\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\,
	datac => \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\);

-- Location: LCCOMB_X17_Y9_N16
\alu_subsystem_0|alu_rot_0|or_3_6|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\) # ((\control_subsystem_0|control_matrix|ALU_ROT_1~combout\ & \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_rot_0|or_3_6|output~1_combout\,
	datac => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	datad => \alu_subsystem_0|alu_inc_0|xor_5|nand_3|output~1_combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\);

-- Location: LCCOMB_X17_Y8_N10
\register_array_0|MA_register|ms_jk_ff_6|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_6|nand_3_1|output~0_combout\ = (\register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\ & (\alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\ & 
-- \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_6|output~2_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_6|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X17_Y8_N22
\register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_6|nand_3_1|output~0_combout\ & (((\register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\) # 
-- (!\register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_6|nand_3_3|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_6|nand_3_1|output~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N4
\register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y9_N30
\alu_subsystem_0|alu_rot_0|or_3_7|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_7|output~1_combout\ = (\alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\ & (!\alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~0_combout\ & ((\control_subsystem_0|control_matrix|ALU_ROT_2~combout\)))) # 
-- (!\alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\ & (((!\alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~0_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_2~combout\)) # (!\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_7|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~0_combout\,
	datac => \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_7|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N8
\alu_subsystem_0|alu_rot_0|or_3_7|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ = (\alu_subsystem_0|alu_rot_0|or_3_7|output~1_combout\) # ((\alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_inc_0|xor_6|nand_3|output~2_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_7|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\);

-- Location: LCCOMB_X19_Y8_N14
\register_array_0|MA_register|ms_jk_ff_7|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_7|nand_3_1|output~0_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_7|output~combout\ & (\register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\ & 
-- \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_7|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X19_Y8_N18
\register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\ = (\register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\) # ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\clk_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X19_Y8_N30
\register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_7|output~combout\) # (!\control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~0_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_7|output~combout\,
	datad => \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_7|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N12
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

-- Location: LCCOMB_X19_Y8_N26
\register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & ((\register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\))) # (!\clk_in~combout\ & 
-- (\register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N2
\register_array_0|MA_register|ms_jk_ff_8|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_8|nand_3_1|output~0_combout\ = (\register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\ & (\register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & 
-- \alu_subsystem_0|alu_rot_0|or_3_8|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_8|output~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_8|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X19_Y8_N10
\register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_8|output~combout\) # (!\control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~0_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_8|output~combout\,
	datac => \control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\,
	datad => \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_8|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N28
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

-- Location: LCCOMB_X19_Y8_N20
\register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: LCCOMB_X19_Y11_N28
\register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\ = ((\register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\) # (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X21_Y9_N8
\alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\ = \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\ $ (!\alu_subsystem_0|alu_inc_0|and_11|output~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_xor_0|xor_10|nand_3|output~3_combout\,
	datad => \alu_subsystem_0|alu_inc_0|and_11|output~combout\,
	combout => \alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\);

-- Location: LCCOMB_X21_Y9_N18
\alu_subsystem_0|alu_rot_0|or_3_9|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\ = (\alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\ & (((!\alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_2~combout\)))) # 
-- (!\alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\ & (((!\alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_2~combout\)) # (!\alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_subsystem_0|alu_inc_0|xor_9|nand_3|output~1_combout\,
	datab => \alu_subsystem_0|alu_rot_0|alu_rot_0~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_10|nand_3|output~1_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_2~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N16
\alu_subsystem_0|alu_rot_0|or_3_9|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\) # ((!\alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~0_combout\ & \control_subsystem_0|control_matrix|ALU_ROT_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_rot_0|or_3_9|output~1_combout\,
	datac => \alu_subsystem_0|alu_inc_0|xor_8|nand_3|output~0_combout\,
	datad => \control_subsystem_0|control_matrix|ALU_ROT_1~combout\,
	combout => \alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\);

-- Location: LCCOMB_X18_Y8_N12
\register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\) # (!\control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\,
	datab => \control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~0_combout\,
	datad => \alu_subsystem_0|alu_rot_0|or_3_9|output~2_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N20
\register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_9|nand_3_1|output~0_combout\ & (((\register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\) # 
-- (!\register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_9|nand_3_1|output~0_combout\,
	datab => \not_reset~combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_9|nand_3_3|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: LCCOMB_X18_Y8_N6
\register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\ = (\clk_in~combout\ & ((\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\)) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\))))) # (!\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \clk_in~combout\,
	datad => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N18
\register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_10|output~combout\) # (!\control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~0_combout\,
	datab => \alu_subsystem_0|alu_rot_0|or_3_10|output~combout\,
	datac => \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\,
	datad => \control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N28
\register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_10|nand_3_1|output~0_combout\ & ((\register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\) # 
-- ((!\register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_10|nand_3_1|output~0_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_10|nand_3_3|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: LCCOMB_X17_Y8_N30
\register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N30
\register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\) # ((\register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\) # (!\clk_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X19_Y8_N4
\register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\ = (\register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\) # ((!\control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\ & 
-- ((\alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\) # (!\control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_subsystem_0|control_matrix|MA_LOAD_HI~2_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~0_combout\,
	datac => \alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\,
	datad => \control_subsystem_0|control_matrix|MA_CLR_HI~0_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N22
\register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~2_combout\ = (\alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\ & (\register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\ & 
-- \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_subsystem_0|alu_rot_0|or_3_11|output~3_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~3_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~2_combout\);

-- Location: LCCOMB_X19_Y8_N24
\register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\ = (!\register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~2_combout\ & (((\register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\) # 
-- (!\register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datac => \register_array_0|MA_register|ms_jk_ff_11|nand_3_3|output~1_combout\,
	datad => \register_array_0|MA_register|ms_jk_ff_11|nand_3_1|output~2_combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N20
\register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\ = (\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\)))) # 
-- (!\control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\clk_in~combout\ & (\register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\)) # (!\clk_in~combout\ & 
-- ((\register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \register_array_0|MA_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datac => \control_subsystem_0|clock_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk_in~combout\,
	combout => \register_array_0|MA_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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


