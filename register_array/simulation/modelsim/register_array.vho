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

-- DATE "01/15/2017 19:49:48"

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

ENTITY 	register_array IS
    PORT (
	top_bus : IN std_logic_vector(11 DOWNTO 0);
	ALU_link_output : IN std_logic;
	register_output_bus : OUT std_logic_vector(11 DOWNTO 0);
	mem_data_bus_in : IN std_logic_vector(11 DOWNTO 0);
	mem_data_bus_out : OUT std_logic_vector(11 DOWNTO 0);
	mem_addr_bus_out : OUT std_logic_vector(11 DOWNTO 0);
	not_reset : IN std_logic;
	clk : IN std_logic;
	LINK_VALUE : OUT std_logic;
	PC_BUS_SEL : IN std_logic;
	PC_LOAD_HI : IN std_logic;
	PC_LOAD_LO : IN std_logic;
	PC_CLR_HI : IN std_logic;
	PC_CLR_LO : IN std_logic;
	MA_LOAD_HI : IN std_logic;
	MA_LOAD_LO : IN std_logic;
	MA_BUS_SEL : IN std_logic;
	MA_CLR_HI : IN std_logic;
	MA_CLR_LO : IN std_logic;
	MD_IN_SEL : IN std_logic;
	MD_BUS_SEL : IN std_logic;
	MD_CLR : IN std_logic;
	MD_LOAD : IN std_logic;
	SR_BUS_SEL : IN std_logic;
	AC_LOAD : IN std_logic;
	LINK_LOAD : IN std_logic
	);
END register_array;

-- Design Ports Information
-- register_output_bus[0]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_output_bus[1]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_output_bus[2]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_output_bus[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_output_bus[4]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_output_bus[5]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_output_bus[6]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_output_bus[7]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_output_bus[8]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_output_bus[9]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_output_bus[10]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- register_output_bus[11]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[0]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[1]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[2]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[3]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[4]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[5]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[6]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[7]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[8]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[9]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[10]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data_bus_out[11]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[0]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[1]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[2]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[3]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[4]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[5]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[6]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[7]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[8]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[9]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[10]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr_bus_out[11]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LINK_VALUE	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AC_LOAD	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SR_BUS_SEL	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_BUS_SEL	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MA_BUS_SEL	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_BUS_SEL	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_bus[0]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MA_LOAD_LO	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MA_CLR_LO	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_CLR	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[0]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_IN_SEL	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_LOAD	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_LOAD_LO	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_CLR_LO	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_bus[1]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[1]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_bus[2]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[2]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_bus[3]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[3]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_bus[4]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[4]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_bus[5]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MA_LOAD_HI	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MA_CLR_HI	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[5]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_LOAD_HI	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_CLR_HI	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_bus[6]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[6]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_bus[7]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[7]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_bus[8]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[8]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_bus[9]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[9]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_bus[10]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[10]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_bus[11]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data_bus_in[11]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LINK_LOAD	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_link_output	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF register_array IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_top_bus : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_ALU_link_output : std_logic;
SIGNAL ww_register_output_bus : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_mem_data_bus_in : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_mem_data_bus_out : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_mem_addr_bus_out : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_LINK_VALUE : std_logic;
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
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MA_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \md_input_mux_0|output[0]~0_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \md_input_mux_0|output[2]~2_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \md_input_mux_0|output[3]~3_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \md_input_mux_0|output[4]~4_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_5|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \md_input_mux_0|output[6]~6_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_7|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_8|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \md_input_mux_0|output[9]~9_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \md_input_mux_0|output[10]~10_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \md_input_mux_0|output[11]~11_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \LINK_LOAD~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \PC_LOAD_LO~combout\ : std_logic;
SIGNAL \PC_CLR_LO~combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \MA_BUS_SEL~combout\ : std_logic;
SIGNAL \output_mux|output[0]~1_combout\ : std_logic;
SIGNAL \PC_BUS_SEL~combout\ : std_logic;
SIGNAL \MD_CLR~combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \MD_LOAD~combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \MA_CLR_LO~combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[0]~0_combout\ : std_logic;
SIGNAL \output_mux|output[0]~2_combout\ : std_logic;
SIGNAL \MD_IN_SEL~combout\ : std_logic;
SIGNAL \md_input_mux_0|output[1]~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \MD_BUS_SEL~combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[1]~3_combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[1]~4_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \MA_LOAD_LO~combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[2]~5_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[2]~6_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_3|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_3|nand_1|output~3_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[3]~7_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_3|nand_1|output~3_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[3]~8_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_4|nand_1|output~3_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_4|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[4]~9_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_4|nand_1|output~3_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[4]~10_combout\ : std_logic;
SIGNAL \PC_CLR_HI~combout\ : std_logic;
SIGNAL \PC_LOAD_HI~combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_5|nand_1|output~3_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \md_input_mux_0|output[5]~5_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \MA_CLR_HI~combout\ : std_logic;
SIGNAL \MA_LOAD_HI~combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_5|nand_1|output~3_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[5]~11_combout\ : std_logic;
SIGNAL \output_mux|output[5]~12_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_6|nand_1|output~3_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_6|nand_1|output~3_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_6|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[6]~13_combout\ : std_logic;
SIGNAL \output_mux|output[6]~14_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_7|nand_1|output~3_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_7|nand_1|output~3_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[7]~15_combout\ : std_logic;
SIGNAL \output_mux|output[7]~16_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_8|nand_1|output~2_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_8|nand_1|output~3_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \md_input_mux_0|output[8]~8_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[8]~17_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_8|nand_1|output~2_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_8|nand_1|output~3_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[8]~18_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_9|nand_1|output~2_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_9|nand_1|output~3_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_9|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_9|nand_1|output~2_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_9|nand_1|output~3_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[9]~19_combout\ : std_logic;
SIGNAL \output_mux|output[9]~20_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_10|nand_1|output~2_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_10|nand_1|output~3_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_10|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[10]~21_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_10|nand_1|output~2_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_10|nand_1|output~3_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[10]~22_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_11|nand_1|output~2_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_11|nand_1|output~3_combout\ : std_logic;
SIGNAL \PC_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_11|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_11|nand_1|output~2_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_11|nand_1|output~3_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \output_mux|output[11]~23_combout\ : std_logic;
SIGNAL \output_mux|output[11]~24_combout\ : std_logic;
SIGNAL \md_input_mux_0|output[7]~7_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \ALU_link_output~combout\ : std_logic;
SIGNAL \LINK_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \LINK_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \top_bus~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mem_data_bus_in~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \MA_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \output_mux|ALT_INV_output[11]~24_combout\ : std_logic;
SIGNAL \output_mux|ALT_INV_output[10]~22_combout\ : std_logic;
SIGNAL \output_mux|ALT_INV_output[9]~20_combout\ : std_logic;
SIGNAL \output_mux|ALT_INV_output[8]~18_combout\ : std_logic;
SIGNAL \output_mux|ALT_INV_output[7]~16_combout\ : std_logic;
SIGNAL \output_mux|ALT_INV_output[6]~14_combout\ : std_logic;
SIGNAL \output_mux|ALT_INV_output[5]~12_combout\ : std_logic;
SIGNAL \output_mux|ALT_INV_output[4]~10_combout\ : std_logic;
SIGNAL \output_mux|ALT_INV_output[3]~8_combout\ : std_logic;
SIGNAL \output_mux|ALT_INV_output[2]~6_combout\ : std_logic;
SIGNAL \output_mux|ALT_INV_output[1]~4_combout\ : std_logic;
SIGNAL \output_mux|ALT_INV_output[0]~2_combout\ : std_logic;
SIGNAL \LINK_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MA_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \MD_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\ : std_logic;

BEGIN

ww_top_bus <= top_bus;
ww_ALU_link_output <= ALU_link_output;
register_output_bus <= ww_register_output_bus;
ww_mem_data_bus_in <= mem_data_bus_in;
mem_data_bus_out <= ww_mem_data_bus_out;
mem_addr_bus_out <= ww_mem_addr_bus_out;
ww_not_reset <= not_reset;
ww_clk <= clk;
LINK_VALUE <= ww_LINK_VALUE;
ww_PC_BUS_SEL <= PC_BUS_SEL;
ww_PC_LOAD_HI <= PC_LOAD_HI;
ww_PC_LOAD_LO <= PC_LOAD_LO;
ww_PC_CLR_HI <= PC_CLR_HI;
ww_PC_CLR_LO <= PC_CLR_LO;
ww_MA_LOAD_HI <= MA_LOAD_HI;
ww_MA_LOAD_LO <= MA_LOAD_LO;
ww_MA_BUS_SEL <= MA_BUS_SEL;
ww_MA_CLR_HI <= MA_CLR_HI;
ww_MA_CLR_LO <= MA_CLR_LO;
ww_MD_IN_SEL <= MD_IN_SEL;
ww_MD_BUS_SEL <= MD_BUS_SEL;
ww_MD_CLR <= MD_CLR;
ww_MD_LOAD <= MD_LOAD;
ww_SR_BUS_SEL <= SR_BUS_SEL;
ww_AC_LOAD <= AC_LOAD;
ww_LINK_LOAD <= LINK_LOAD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\MA_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\ <= NOT \MA_register|ms_jk_ff_3|nand_5|output~1_combout\;
\MD_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ <= NOT \MD_register|ms_jk_ff_2|nand_5|output~1_combout\;
\MA_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ <= NOT \MA_register|ms_jk_ff_2|nand_5|output~1_combout\;
\MD_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \MD_register|ms_jk_ff_1|nand_5|output~1_combout\;
\MA_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \MA_register|ms_jk_ff_1|nand_5|output~1_combout\;
\MD_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \MD_register|ms_jk_ff_0|nand_5|output~1_combout\;
\MA_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \MA_register|ms_jk_ff_0|nand_5|output~1_combout\;
\output_mux|ALT_INV_output[11]~24_combout\ <= NOT \output_mux|output[11]~24_combout\;
\output_mux|ALT_INV_output[10]~22_combout\ <= NOT \output_mux|output[10]~22_combout\;
\output_mux|ALT_INV_output[9]~20_combout\ <= NOT \output_mux|output[9]~20_combout\;
\output_mux|ALT_INV_output[8]~18_combout\ <= NOT \output_mux|output[8]~18_combout\;
\output_mux|ALT_INV_output[7]~16_combout\ <= NOT \output_mux|output[7]~16_combout\;
\output_mux|ALT_INV_output[6]~14_combout\ <= NOT \output_mux|output[6]~14_combout\;
\output_mux|ALT_INV_output[5]~12_combout\ <= NOT \output_mux|output[5]~12_combout\;
\output_mux|ALT_INV_output[4]~10_combout\ <= NOT \output_mux|output[4]~10_combout\;
\output_mux|ALT_INV_output[3]~8_combout\ <= NOT \output_mux|output[3]~8_combout\;
\output_mux|ALT_INV_output[2]~6_combout\ <= NOT \output_mux|output[2]~6_combout\;
\output_mux|ALT_INV_output[1]~4_combout\ <= NOT \output_mux|output[1]~4_combout\;
\output_mux|ALT_INV_output[0]~2_combout\ <= NOT \output_mux|output[0]~2_combout\;
\LINK_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \LINK_register|ms_jk_ff_0|nand_5|output~1_combout\;
\MD_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\ <= NOT \MD_register|ms_jk_ff_11|nand_5|output~1_combout\;
\MA_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\ <= NOT \MA_register|ms_jk_ff_11|nand_5|output~1_combout\;
\MD_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\ <= NOT \MD_register|ms_jk_ff_10|nand_5|output~1_combout\;
\MA_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\ <= NOT \MA_register|ms_jk_ff_10|nand_5|output~1_combout\;
\MD_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\ <= NOT \MD_register|ms_jk_ff_9|nand_5|output~1_combout\;
\MA_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\ <= NOT \MA_register|ms_jk_ff_9|nand_5|output~1_combout\;
\MD_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\ <= NOT \MD_register|ms_jk_ff_8|nand_5|output~1_combout\;
\MA_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\ <= NOT \MA_register|ms_jk_ff_8|nand_5|output~1_combout\;
\MD_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\ <= NOT \MD_register|ms_jk_ff_7|nand_5|output~1_combout\;
\MA_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\ <= NOT \MA_register|ms_jk_ff_7|nand_5|output~1_combout\;
\MD_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\ <= NOT \MD_register|ms_jk_ff_6|nand_5|output~1_combout\;
\MA_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\ <= NOT \MA_register|ms_jk_ff_6|nand_5|output~1_combout\;
\MD_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\ <= NOT \MD_register|ms_jk_ff_5|nand_5|output~1_combout\;
\MA_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\ <= NOT \MA_register|ms_jk_ff_5|nand_5|output~1_combout\;
\MD_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\ <= NOT \MD_register|ms_jk_ff_4|nand_5|output~1_combout\;
\MA_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\ <= NOT \MA_register|ms_jk_ff_4|nand_5|output~1_combout\;
\MD_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\ <= NOT \MD_register|ms_jk_ff_3|nand_5|output~1_combout\;

-- Location: LCCOMB_X7_Y6_N20
\MA_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_0|nand_1|output~1_combout\ = (!\MA_register|ms_jk_ff_0|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MA_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \MA_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N8
\md_input_mux_0|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \md_input_mux_0|output[0]~0_combout\ = (\MD_IN_SEL~combout\ & ((\mem_data_bus_in~combout\(0)))) # (!\MD_IN_SEL~combout\ & (\top_bus~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_bus~combout\(0),
	datab => \mem_data_bus_in~combout\(0),
	datac => \MD_IN_SEL~combout\,
	combout => \md_input_mux_0|output[0]~0_combout\);

-- Location: LCCOMB_X4_Y5_N10
\PC_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_0|nand_1|output~1_combout\ = (!\PC_register|ms_jk_ff_0|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \PC_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X7_Y6_N30
\MA_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_1|nand_1|output~1_combout\ = (!\MA_register|ms_jk_ff_1|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MA_register|ms_jk_ff_1|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \MA_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N10
\MD_register|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_1|nand_3_3|output~0_combout\ = (\not_reset~combout\ & (!\MD_register|ms_jk_ff_1|nand_1|output~1_combout\ & ((\MD_register|ms_jk_ff_1|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \MD_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datad => \MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X7_Y6_N16
\MA_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_2|nand_1|output~1_combout\ = (!\MA_register|ms_jk_ff_2|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MA_register|ms_jk_ff_2|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \MA_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N6
\md_input_mux_0|output[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \md_input_mux_0|output[2]~2_combout\ = (\MD_IN_SEL~combout\ & (\mem_data_bus_in~combout\(2))) # (!\MD_IN_SEL~combout\ & ((\top_bus~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_data_bus_in~combout\(2),
	datac => \MD_IN_SEL~combout\,
	datad => \top_bus~combout\(2),
	combout => \md_input_mux_0|output[2]~2_combout\);

-- Location: LCCOMB_X7_Y6_N18
\MA_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_3|nand_1|output~1_combout\ = (!\MA_register|ms_jk_ff_3|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_3|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \MA_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N4
\md_input_mux_0|output[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \md_input_mux_0|output[3]~3_combout\ = (\MD_IN_SEL~combout\ & ((\mem_data_bus_in~combout\(3)))) # (!\MD_IN_SEL~combout\ & (\top_bus~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_IN_SEL~combout\,
	datac => \top_bus~combout\(3),
	datad => \mem_data_bus_in~combout\(3),
	combout => \md_input_mux_0|output[3]~3_combout\);

-- Location: LCCOMB_X3_Y6_N10
\MA_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_4|nand_1|output~1_combout\ = (!\MA_register|ms_jk_ff_4|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MA_register|ms_jk_ff_4|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \MA_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N16
\md_input_mux_0|output[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \md_input_mux_0|output[4]~4_combout\ = (\MD_IN_SEL~combout\ & ((\mem_data_bus_in~combout\(4)))) # (!\MD_IN_SEL~combout\ & (\top_bus~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_IN_SEL~combout\,
	datab => \top_bus~combout\(4),
	datad => \mem_data_bus_in~combout\(4),
	combout => \md_input_mux_0|output[4]~4_combout\);

-- Location: LCCOMB_X1_Y5_N26
\PC_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_4|nand_1|output~1_combout\ = (!\PC_register|ms_jk_ff_4|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|ms_jk_ff_4|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \PC_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N14
\MA_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_5|nand_1|output~1_combout\ = (!\MA_register|ms_jk_ff_5|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MA_register|ms_jk_ff_5|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \MA_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N16
\MD_register|ms_jk_ff_5|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_5|nand_3_3|output~0_combout\ = (!\MD_register|ms_jk_ff_5|nand_1|output~1_combout\ & (\not_reset~combout\ & ((\MD_register|ms_jk_ff_5|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datad => \MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_5|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X4_Y5_N20
\PC_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_5|nand_1|output~1_combout\ = (!\PC_register|ms_jk_ff_5|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_register|ms_jk_ff_5|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \PC_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N8
\MA_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\MA_register|ms_jk_ff_6|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MA_register|ms_jk_ff_6|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \MA_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N20
\md_input_mux_0|output[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \md_input_mux_0|output[6]~6_combout\ = (\MD_IN_SEL~combout\ & (\mem_data_bus_in~combout\(6))) # (!\MD_IN_SEL~combout\ & ((\top_bus~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_data_bus_in~combout\(6),
	datab => \MD_IN_SEL~combout\,
	datad => \top_bus~combout\(6),
	combout => \md_input_mux_0|output[6]~6_combout\);

-- Location: LCCOMB_X4_Y5_N26
\PC_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\PC_register|ms_jk_ff_6|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|ms_jk_ff_6|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \PC_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N10
\MD_register|ms_jk_ff_7|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_7|nand_3_3|output~0_combout\ = (!\MD_register|ms_jk_ff_7|nand_1|output~1_combout\ & (\not_reset~combout\ & ((\MD_register|ms_jk_ff_7|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datad => \MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_7|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X6_Y6_N16
\MA_register|ms_jk_ff_8|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_8|nand_1|output~1_combout\ = (!\MA_register|ms_jk_ff_8|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MA_register|ms_jk_ff_8|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \MA_register|ms_jk_ff_8|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N24
\MD_register|ms_jk_ff_8|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_8|nand_3_3|output~0_combout\ = (!\MD_register|ms_jk_ff_8|nand_1|output~1_combout\ & (\not_reset~combout\ & ((\MD_register|ms_jk_ff_8|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datad => \MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_8|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X3_Y5_N4
\PC_register|ms_jk_ff_8|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_8|nand_1|output~1_combout\ = (!\PC_register|ms_jk_ff_8|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|ms_jk_ff_8|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \PC_register|ms_jk_ff_8|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N16
\md_input_mux_0|output[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \md_input_mux_0|output[9]~9_combout\ = (\MD_IN_SEL~combout\ & (\mem_data_bus_in~combout\(9))) # (!\MD_IN_SEL~combout\ & ((\top_bus~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_data_bus_in~combout\(9),
	datab => \MD_IN_SEL~combout\,
	datac => \top_bus~combout\(9),
	combout => \md_input_mux_0|output[9]~9_combout\);

-- Location: LCCOMB_X6_Y6_N10
\PC_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_9|nand_1|output~1_combout\ = (!\PC_register|ms_jk_ff_9|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_register|ms_jk_ff_9|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \PC_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N20
\md_input_mux_0|output[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \md_input_mux_0|output[10]~10_combout\ = (\MD_IN_SEL~combout\ & ((\mem_data_bus_in~combout\(10)))) # (!\MD_IN_SEL~combout\ & (\top_bus~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_IN_SEL~combout\,
	datab => \top_bus~combout\(10),
	datac => \mem_data_bus_in~combout\(10),
	combout => \md_input_mux_0|output[10]~10_combout\);

-- Location: LCCOMB_X4_Y6_N14
\PC_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_10|nand_1|output~1_combout\ = (!\PC_register|ms_jk_ff_10|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|ms_jk_ff_10|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \PC_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N20
\MA_register|ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_11|nand_1|output~1_combout\ = (!\MA_register|ms_jk_ff_11|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MA_register|ms_jk_ff_11|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \MA_register|ms_jk_ff_11|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N20
\md_input_mux_0|output[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \md_input_mux_0|output[11]~11_combout\ = (\MD_IN_SEL~combout\ & (\mem_data_bus_in~combout\(11))) # (!\MD_IN_SEL~combout\ & ((\top_bus~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_data_bus_in~combout\(11),
	datac => \MD_IN_SEL~combout\,
	datad => \top_bus~combout\(11),
	combout => \md_input_mux_0|output[11]~11_combout\);

-- Location: LCCOMB_X6_Y6_N22
\PC_register|ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_11|nand_1|output~1_combout\ = (!\PC_register|ms_jk_ff_11|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_register|ms_jk_ff_11|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \PC_register|ms_jk_ff_11|nand_1|output~1_combout\);

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_bus[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_top_bus(9),
	combout => \top_bus~combout\(9));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_bus[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_top_bus(11),
	combout => \top_bus~combout\(11));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_LINK_LOAD,
	combout => \LINK_LOAD~combout\);

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

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PC_LOAD_LO,
	combout => \PC_LOAD_LO~combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PC_CLR_LO,
	combout => \PC_CLR_LO~combout\);

-- Location: LCCOMB_X4_Y5_N28
\PC_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\PC_register|ms_jk_ff_0|nand_5|output~1_combout\ & (\top_bus~combout\(0) & (\PC_LOAD_LO~combout\))) # (!\PC_register|ms_jk_ff_0|nand_5|output~1_combout\ & ((\PC_CLR_LO~combout\) # ((!\top_bus~combout\(0) 
-- & \PC_LOAD_LO~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_bus~combout\(0),
	datab => \PC_LOAD_LO~combout\,
	datac => \PC_CLR_LO~combout\,
	datad => \PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \PC_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y5_N18
\PC_register|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_0|nand_1|output~3_combout\ = (\clk~combout\ & ((\PC_register|ms_jk_ff_0|nand_1|output~2_combout\ & ((!\PC_register|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\PC_register|ms_jk_ff_0|nand_1|output~2_combout\ & 
-- (!\PC_register|ms_jk_ff_0|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\PC_register|ms_jk_ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \clk~combout\,
	datac => \PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \PC_register|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \PC_register|ms_jk_ff_0|nand_1|output~3_combout\);

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

-- Location: LCCOMB_X4_Y5_N12
\PC_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\PC_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\PC_register|ms_jk_ff_0|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \PC_register|ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \PC_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MA_BUS_SEL,
	combout => \MA_BUS_SEL~combout\);

-- Location: LCCOMB_X5_Y5_N12
\output_mux|output[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[0]~1_combout\ = (!\MD_BUS_SEL~combout\ & !\MA_BUS_SEL~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS_SEL~combout\,
	datac => \MA_BUS_SEL~combout\,
	combout => \output_mux|output[0]~1_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PC_BUS_SEL,
	combout => \PC_BUS_SEL~combout\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MD_CLR,
	combout => \MD_CLR~combout\);

-- Location: LCCOMB_X1_Y6_N4
\MD_register|ms_jk_ff_0|nand_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\ = (\MD_CLR~combout\ & \clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD_CLR~combout\,
	datad => \clk~combout\,
	combout => \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\);

-- Location: LCCOMB_X3_Y6_N22
\MD_register|ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_0|nand_3_3|output~0_combout\ = (\not_reset~combout\ & (!\MD_register|ms_jk_ff_0|nand_1|output~1_combout\ & ((\MD_register|ms_jk_ff_0|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \MD_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datad => \MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MD_LOAD,
	combout => \MD_LOAD~combout\);

-- Location: LCCOMB_X1_Y6_N14
\MD_register|ms_jk_ff_11|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ = (\MD_LOAD~combout\ & \clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MD_LOAD~combout\,
	datad => \clk~combout\,
	combout => \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X3_Y6_N18
\MD_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_0|nand_1|output~1_combout\ = (\md_input_mux_0|output[0]~0_combout\ & (!\MD_register|ms_jk_ff_0|nand_3_3|output~0_combout\ & ((!\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # 
-- (!\MD_register|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\md_input_mux_0|output[0]~0_combout\ & (((!\MD_register|ms_jk_ff_0|nand_5|output~1_combout\ & \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # 
-- (!\MD_register|ms_jk_ff_0|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_input_mux_0|output[0]~0_combout\,
	datab => \MD_register|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datac => \MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	combout => \MD_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N28
\MD_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MD_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MD_register|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MD_register|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \MD_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MA_CLR_LO,
	combout => \MA_CLR_LO~combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_bus[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_top_bus(0),
	combout => \top_bus~combout\(0));

-- Location: LCCOMB_X7_Y6_N22
\MA_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\MA_register|ms_jk_ff_0|nand_5|output~1_combout\ & (\MA_LOAD_LO~combout\ & ((\top_bus~combout\(0))))) # (!\MA_register|ms_jk_ff_0|nand_5|output~1_combout\ & ((\MA_CLR_LO~combout\) # 
-- ((\MA_LOAD_LO~combout\ & !\top_bus~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_LOAD_LO~combout\,
	datab => \MA_CLR_LO~combout\,
	datac => \MA_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \top_bus~combout\(0),
	combout => \MA_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X7_Y6_N24
\MA_register|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_0|nand_1|output~3_combout\ = (\clk~combout\ & ((\MA_register|ms_jk_ff_0|nand_1|output~2_combout\ & ((!\MA_register|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\MA_register|ms_jk_ff_0|nand_1|output~2_combout\ & 
-- (!\MA_register|ms_jk_ff_0|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\MA_register|ms_jk_ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \clk~combout\,
	datac => \MA_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \MA_register|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \MA_register|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X7_Y6_N4
\MA_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MA_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MA_register|ms_jk_ff_0|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MA_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MA_register|ms_jk_ff_0|nand_1|output~3_combout\,
	combout => \MA_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y5_N24
\output_mux|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[0]~0_combout\ = (\MA_BUS_SEL~combout\ & (((\MA_register|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\MA_BUS_SEL~combout\ & (\MD_BUS_SEL~combout\ & (\MD_register|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS_SEL~combout\,
	datab => \MD_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \MA_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \MA_BUS_SEL~combout\,
	combout => \output_mux|output[0]~0_combout\);

-- Location: LCCOMB_X3_Y5_N8
\output_mux|output[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[0]~2_combout\ = (\output_mux|output[0]~0_combout\) # ((\output_mux|output[0]~1_combout\ & ((\PC_register|ms_jk_ff_0|nand_5|output~1_combout\) # (!\PC_BUS_SEL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \output_mux|output[0]~1_combout\,
	datac => \PC_BUS_SEL~combout\,
	datad => \output_mux|output[0]~0_combout\,
	combout => \output_mux|output[0]~2_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MD_IN_SEL,
	combout => \MD_IN_SEL~combout\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_bus[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_top_bus(1),
	combout => \top_bus~combout\(1));

-- Location: LCCOMB_X3_Y6_N24
\md_input_mux_0|output[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \md_input_mux_0|output[1]~1_combout\ = (\MD_IN_SEL~combout\ & (\mem_data_bus_in~combout\(1))) # (!\MD_IN_SEL~combout\ & ((\top_bus~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_data_bus_in~combout\(1),
	datac => \MD_IN_SEL~combout\,
	datad => \top_bus~combout\(1),
	combout => \md_input_mux_0|output[1]~1_combout\);

-- Location: LCCOMB_X2_Y6_N4
\MD_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_1|nand_1|output~1_combout\ = (\MD_register|ms_jk_ff_1|nand_3_3|output~0_combout\ & (!\md_input_mux_0|output[1]~1_combout\ & (!\MD_register|ms_jk_ff_1|nand_5|output~1_combout\ & \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\))) # 
-- (!\MD_register|ms_jk_ff_1|nand_3_3|output~0_combout\ & (((!\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # (!\MD_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\md_input_mux_0|output[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_register|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datab => \md_input_mux_0|output[1]~1_combout\,
	datac => \MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	combout => \MD_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N12
\MD_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MD_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MD_register|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \MD_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \MD_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MD_BUS_SEL,
	combout => \MD_BUS_SEL~combout\);

-- Location: LCCOMB_X7_Y6_N28
\MA_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & (\MA_LOAD_LO~combout\ & (\top_bus~combout\(1)))) # (!\MA_register|ms_jk_ff_1|nand_5|output~1_combout\ & ((\MA_CLR_LO~combout\) # ((\MA_LOAD_LO~combout\ 
-- & !\top_bus~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_LOAD_LO~combout\,
	datab => \top_bus~combout\(1),
	datac => \MA_CLR_LO~combout\,
	datad => \MA_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \MA_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X7_Y6_N26
\MA_register|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_1|nand_1|output~3_combout\ = (\clk~combout\ & ((\MA_register|ms_jk_ff_1|nand_1|output~2_combout\ & ((!\MA_register|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\MA_register|ms_jk_ff_1|nand_1|output~2_combout\ & 
-- (!\MA_register|ms_jk_ff_1|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\MA_register|ms_jk_ff_1|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \MA_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \MA_register|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \MA_register|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X7_Y6_N2
\MA_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MA_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MA_register|ms_jk_ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \MA_register|ms_jk_ff_1|nand_1|output~3_combout\,
	datac => \clk~clkctrl_outclk\,
	combout => \MA_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y5_N30
\output_mux|output[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[1]~3_combout\ = (\MA_BUS_SEL~combout\ & (((\MA_register|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\MA_BUS_SEL~combout\ & (\MD_register|ms_jk_ff_1|nand_5|output~1_combout\ & (\MD_BUS_SEL~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_BUS_SEL~combout\,
	datab => \MD_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \MD_BUS_SEL~combout\,
	datad => \MA_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \output_mux|output[1]~3_combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y5_N24
\PC_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_1|nand_1|output~1_combout\ = (!\PC_register|ms_jk_ff_1|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_register|ms_jk_ff_1|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \PC_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N6
\PC_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\PC_register|ms_jk_ff_1|nand_5|output~1_combout\ & (((\top_bus~combout\(1) & \PC_LOAD_LO~combout\)))) # (!\PC_register|ms_jk_ff_1|nand_5|output~1_combout\ & ((\PC_CLR_LO~combout\) # 
-- ((!\top_bus~combout\(1) & \PC_LOAD_LO~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_CLR_LO~combout\,
	datab => \top_bus~combout\(1),
	datac => \PC_LOAD_LO~combout\,
	datad => \PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \PC_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y5_N20
\PC_register|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_1|nand_1|output~3_combout\ = (\clk~combout\ & ((\PC_register|ms_jk_ff_1|nand_1|output~2_combout\ & (!\PC_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\PC_register|ms_jk_ff_1|nand_1|output~2_combout\ & 
-- ((!\PC_register|ms_jk_ff_1|nand_1|output~1_combout\))))) # (!\clk~combout\ & (((!\PC_register|ms_jk_ff_1|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \PC_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \PC_register|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \PC_register|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y5_N0
\PC_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\PC_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\PC_register|ms_jk_ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \PC_register|ms_jk_ff_1|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \PC_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y5_N20
\output_mux|output[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[1]~4_combout\ = (\output_mux|output[1]~3_combout\) # ((\output_mux|output[0]~1_combout\ & ((\PC_register|ms_jk_ff_1|nand_5|output~1_combout\) # (!\PC_BUS_SEL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_mux|output[0]~1_combout\,
	datab => \output_mux|output[1]~3_combout\,
	datac => \PC_BUS_SEL~combout\,
	datad => \PC_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \output_mux|output[1]~4_combout\);

-- Location: LCCOMB_X2_Y6_N2
\MD_register|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_2|nand_3_3|output~0_combout\ = (\not_reset~combout\ & (!\MD_register|ms_jk_ff_2|nand_1|output~1_combout\ & ((\MD_register|ms_jk_ff_2|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \MD_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datad => \MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N0
\MD_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_2|nand_1|output~1_combout\ = (\md_input_mux_0|output[2]~2_combout\ & (!\MD_register|ms_jk_ff_2|nand_3_3|output~0_combout\ & ((!\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # 
-- (!\MD_register|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\md_input_mux_0|output[2]~2_combout\ & (((!\MD_register|ms_jk_ff_2|nand_5|output~1_combout\ & \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # 
-- (!\MD_register|ms_jk_ff_2|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_input_mux_0|output[2]~2_combout\,
	datab => \MD_register|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datac => \MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	combout => \MD_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N6
\MD_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MD_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MD_register|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MD_register|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \MD_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MA_LOAD_LO,
	combout => \MA_LOAD_LO~combout\);

-- Location: LCCOMB_X7_Y6_N6
\MA_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & (\top_bus~combout\(2) & ((\MA_LOAD_LO~combout\)))) # (!\MA_register|ms_jk_ff_2|nand_5|output~1_combout\ & ((\MA_CLR_LO~combout\) # 
-- ((!\top_bus~combout\(2) & \MA_LOAD_LO~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_bus~combout\(2),
	datab => \MA_CLR_LO~combout\,
	datac => \MA_LOAD_LO~combout\,
	datad => \MA_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \MA_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X7_Y6_N8
\MA_register|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_2|nand_1|output~3_combout\ = (\clk~combout\ & ((\MA_register|ms_jk_ff_2|nand_1|output~2_combout\ & ((!\MA_register|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\MA_register|ms_jk_ff_2|nand_1|output~2_combout\ & 
-- (!\MA_register|ms_jk_ff_2|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\MA_register|ms_jk_ff_2|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \MA_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \MA_register|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \MA_register|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X7_Y6_N0
\MA_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MA_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MA_register|ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MA_register|ms_jk_ff_2|nand_1|output~3_combout\,
	combout => \MA_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y5_N18
\output_mux|output[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[2]~5_combout\ = (\MA_BUS_SEL~combout\ & (((\MA_register|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\MA_BUS_SEL~combout\ & (\MD_register|ms_jk_ff_2|nand_5|output~1_combout\ & (\MD_BUS_SEL~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_BUS_SEL~combout\,
	datab => \MD_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \MD_BUS_SEL~combout\,
	datad => \MA_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \output_mux|output[2]~5_combout\);

-- Location: LCCOMB_X1_Y5_N22
\PC_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_2|nand_1|output~1_combout\ = (!\PC_register|ms_jk_ff_2|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_register|ms_jk_ff_2|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \PC_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_bus[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_top_bus(2),
	combout => \top_bus~combout\(2));

-- Location: LCCOMB_X1_Y5_N12
\PC_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\PC_register|ms_jk_ff_2|nand_5|output~1_combout\ & (((\top_bus~combout\(2) & \PC_LOAD_LO~combout\)))) # (!\PC_register|ms_jk_ff_2|nand_5|output~1_combout\ & ((\PC_CLR_LO~combout\) # 
-- ((!\top_bus~combout\(2) & \PC_LOAD_LO~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_CLR_LO~combout\,
	datab => \top_bus~combout\(2),
	datac => \PC_LOAD_LO~combout\,
	datad => \PC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \PC_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y5_N14
\PC_register|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_2|nand_1|output~3_combout\ = (\clk~combout\ & ((\PC_register|ms_jk_ff_2|nand_1|output~2_combout\ & (!\PC_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\PC_register|ms_jk_ff_2|nand_1|output~2_combout\ & 
-- ((!\PC_register|ms_jk_ff_2|nand_1|output~1_combout\))))) # (!\clk~combout\ & (((!\PC_register|ms_jk_ff_2|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \PC_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \clk~combout\,
	datad => \PC_register|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \PC_register|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y5_N10
\PC_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\PC_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\PC_register|ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \PC_register|ms_jk_ff_2|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \PC_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y5_N4
\output_mux|output[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[2]~6_combout\ = (\output_mux|output[2]~5_combout\) # ((\output_mux|output[0]~1_combout\ & ((\PC_register|ms_jk_ff_2|nand_5|output~1_combout\) # (!\PC_BUS_SEL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_mux|output[0]~1_combout\,
	datab => \output_mux|output[2]~5_combout\,
	datac => \PC_BUS_SEL~combout\,
	datad => \PC_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \output_mux|output[2]~6_combout\);

-- Location: LCCOMB_X2_Y6_N18
\MD_register|ms_jk_ff_3|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_3|nand_3_3|output~0_combout\ = (\not_reset~combout\ & (!\MD_register|ms_jk_ff_3|nand_1|output~1_combout\ & ((\MD_register|ms_jk_ff_3|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \MD_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	combout => \MD_register|ms_jk_ff_3|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N28
\MD_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_3|nand_1|output~1_combout\ = (\md_input_mux_0|output[3]~3_combout\ & (!\MD_register|ms_jk_ff_3|nand_3_3|output~0_combout\ & ((!\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # 
-- (!\MD_register|ms_jk_ff_3|nand_5|output~1_combout\)))) # (!\md_input_mux_0|output[3]~3_combout\ & (((!\MD_register|ms_jk_ff_3|nand_5|output~1_combout\ & \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # 
-- (!\MD_register|ms_jk_ff_3|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_input_mux_0|output[3]~3_combout\,
	datab => \MD_register|ms_jk_ff_3|nand_3_3|output~0_combout\,
	datac => \MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	combout => \MD_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N16
\MD_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MD_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MD_register|ms_jk_ff_3|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MD_register|ms_jk_ff_3|nand_1|output~1_combout\,
	combout => \MD_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_bus[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_top_bus(3),
	combout => \top_bus~combout\(3));

-- Location: LCCOMB_X7_Y6_N12
\MA_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & (\MA_LOAD_LO~combout\ & ((\top_bus~combout\(3))))) # (!\MA_register|ms_jk_ff_3|nand_5|output~1_combout\ & ((\MA_CLR_LO~combout\) # 
-- ((\MA_LOAD_LO~combout\ & !\top_bus~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_LOAD_LO~combout\,
	datab => \MA_CLR_LO~combout\,
	datac => \MA_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \top_bus~combout\(3),
	combout => \MA_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X7_Y6_N10
\MA_register|ms_jk_ff_3|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_3|nand_1|output~3_combout\ = (\clk~combout\ & ((\MA_register|ms_jk_ff_3|nand_1|output~2_combout\ & ((!\MA_register|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\MA_register|ms_jk_ff_3|nand_1|output~2_combout\ & 
-- (!\MA_register|ms_jk_ff_3|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\MA_register|ms_jk_ff_3|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \clk~combout\,
	datac => \MA_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \MA_register|ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \MA_register|ms_jk_ff_3|nand_1|output~3_combout\);

-- Location: LCCOMB_X7_Y6_N14
\MA_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MA_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MA_register|ms_jk_ff_3|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MA_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MA_register|ms_jk_ff_3|nand_1|output~3_combout\,
	combout => \MA_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N26
\output_mux|output[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[3]~7_combout\ = (\MA_BUS_SEL~combout\ & (((\MA_register|ms_jk_ff_3|nand_5|output~1_combout\)))) # (!\MA_BUS_SEL~combout\ & (\MD_BUS_SEL~combout\ & (\MD_register|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_BUS_SEL~combout\,
	datab => \MD_BUS_SEL~combout\,
	datac => \MD_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \MA_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \output_mux|output[3]~7_combout\);

-- Location: LCCOMB_X1_Y5_N16
\PC_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_3|nand_1|output~1_combout\ = (!\PC_register|ms_jk_ff_3|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_register|ms_jk_ff_3|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \PC_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N30
\PC_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\PC_register|ms_jk_ff_3|nand_5|output~1_combout\ & (((\top_bus~combout\(3) & \PC_LOAD_LO~combout\)))) # (!\PC_register|ms_jk_ff_3|nand_5|output~1_combout\ & ((\PC_CLR_LO~combout\) # 
-- ((!\top_bus~combout\(3) & \PC_LOAD_LO~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_CLR_LO~combout\,
	datab => \top_bus~combout\(3),
	datac => \PC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \PC_LOAD_LO~combout\,
	combout => \PC_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y5_N4
\PC_register|ms_jk_ff_3|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_3|nand_1|output~3_combout\ = (\clk~combout\ & ((\PC_register|ms_jk_ff_3|nand_1|output~2_combout\ & ((!\PC_register|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\PC_register|ms_jk_ff_3|nand_1|output~2_combout\ & 
-- (!\PC_register|ms_jk_ff_3|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\PC_register|ms_jk_ff_3|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \PC_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \PC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \PC_register|ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \PC_register|ms_jk_ff_3|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y5_N8
\PC_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\PC_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\PC_register|ms_jk_ff_3|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \PC_register|ms_jk_ff_3|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \PC_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N16
\output_mux|output[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[3]~8_combout\ = (\output_mux|output[3]~7_combout\) # ((\output_mux|output[0]~1_combout\ & ((\PC_register|ms_jk_ff_3|nand_5|output~1_combout\) # (!\PC_BUS_SEL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_BUS_SEL~combout\,
	datab => \output_mux|output[3]~7_combout\,
	datac => \output_mux|output[0]~1_combout\,
	datad => \PC_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \output_mux|output[3]~8_combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_bus[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_top_bus(4),
	combout => \top_bus~combout\(4));

-- Location: LCCOMB_X3_Y6_N12
\MA_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & (((\top_bus~combout\(4) & \MA_LOAD_LO~combout\)))) # (!\MA_register|ms_jk_ff_4|nand_5|output~1_combout\ & ((\MA_CLR_LO~combout\) # 
-- ((!\top_bus~combout\(4) & \MA_LOAD_LO~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_CLR_LO~combout\,
	datab => \top_bus~combout\(4),
	datac => \MA_LOAD_LO~combout\,
	datad => \MA_register|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \MA_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y6_N14
\MA_register|ms_jk_ff_4|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_4|nand_1|output~3_combout\ = (\clk~combout\ & ((\MA_register|ms_jk_ff_4|nand_1|output~2_combout\ & ((!\MA_register|ms_jk_ff_4|nand_5|output~1_combout\))) # (!\MA_register|ms_jk_ff_4|nand_1|output~2_combout\ & 
-- (!\MA_register|ms_jk_ff_4|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\MA_register|ms_jk_ff_4|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datab => \MA_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \MA_register|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \MA_register|ms_jk_ff_4|nand_1|output~3_combout\);

-- Location: LCCOMB_X3_Y6_N30
\MA_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MA_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MA_register|ms_jk_ff_4|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MA_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \MA_register|ms_jk_ff_4|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \MA_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N26
\MD_register|ms_jk_ff_4|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_4|nand_3_3|output~0_combout\ = (\not_reset~combout\ & (!\MD_register|ms_jk_ff_4|nand_1|output~1_combout\ & ((\MD_register|ms_jk_ff_4|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \MD_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datac => \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datad => \MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_4|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N24
\MD_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_4|nand_1|output~1_combout\ = (\md_input_mux_0|output[4]~4_combout\ & (!\MD_register|ms_jk_ff_4|nand_3_3|output~0_combout\ & ((!\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # 
-- (!\MD_register|ms_jk_ff_4|nand_5|output~1_combout\)))) # (!\md_input_mux_0|output[4]~4_combout\ & (((!\MD_register|ms_jk_ff_4|nand_5|output~1_combout\ & \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # 
-- (!\MD_register|ms_jk_ff_4|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_input_mux_0|output[4]~4_combout\,
	datab => \MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \MD_register|ms_jk_ff_4|nand_3_3|output~0_combout\,
	datad => \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	combout => \MD_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N22
\MD_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MD_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MD_register|ms_jk_ff_4|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \MD_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \MD_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y5_N2
\output_mux|output[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[4]~9_combout\ = (\MA_BUS_SEL~combout\ & (\MA_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\MA_BUS_SEL~combout\ & (((\MD_BUS_SEL~combout\ & \MD_register|ms_jk_ff_4|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_BUS_SEL~combout\,
	datab => \MA_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \MD_BUS_SEL~combout\,
	datad => \MD_register|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \output_mux|output[4]~9_combout\);

-- Location: LCCOMB_X1_Y5_N28
\PC_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\PC_register|ms_jk_ff_4|nand_5|output~1_combout\ & (((\PC_LOAD_LO~combout\ & \top_bus~combout\(4))))) # (!\PC_register|ms_jk_ff_4|nand_5|output~1_combout\ & ((\PC_CLR_LO~combout\) # 
-- ((\PC_LOAD_LO~combout\ & !\top_bus~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_CLR_LO~combout\,
	datab => \PC_LOAD_LO~combout\,
	datac => \top_bus~combout\(4),
	datad => \PC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \PC_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y5_N2
\PC_register|ms_jk_ff_4|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_4|nand_1|output~3_combout\ = (\clk~combout\ & ((\PC_register|ms_jk_ff_4|nand_1|output~2_combout\ & ((!\PC_register|ms_jk_ff_4|nand_5|output~1_combout\))) # (!\PC_register|ms_jk_ff_4|nand_1|output~2_combout\ & 
-- (!\PC_register|ms_jk_ff_4|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\PC_register|ms_jk_ff_4|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datab => \PC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \PC_register|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \PC_register|ms_jk_ff_4|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y5_N18
\PC_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\PC_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\PC_register|ms_jk_ff_4|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \PC_register|ms_jk_ff_4|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \PC_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y5_N28
\output_mux|output[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[4]~10_combout\ = (\output_mux|output[4]~9_combout\) # ((\output_mux|output[0]~1_combout\ & ((\PC_register|ms_jk_ff_4|nand_5|output~1_combout\) # (!\PC_BUS_SEL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_mux|output[0]~1_combout\,
	datab => \output_mux|output[4]~9_combout\,
	datac => \PC_BUS_SEL~combout\,
	datad => \PC_register|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \output_mux|output[4]~10_combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PC_CLR_HI,
	combout => \PC_CLR_HI~combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PC_LOAD_HI,
	combout => \PC_LOAD_HI~combout\);

-- Location: LCCOMB_X4_Y5_N22
\PC_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\PC_register|ms_jk_ff_5|nand_5|output~1_combout\ & (\top_bus~combout\(5) & ((\PC_LOAD_HI~combout\)))) # (!\PC_register|ms_jk_ff_5|nand_5|output~1_combout\ & ((\PC_CLR_HI~combout\) # 
-- ((!\top_bus~combout\(5) & \PC_LOAD_HI~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_bus~combout\(5),
	datab => \PC_CLR_HI~combout\,
	datac => \PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \PC_LOAD_HI~combout\,
	combout => \PC_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y5_N8
\PC_register|ms_jk_ff_5|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_5|nand_1|output~3_combout\ = (\clk~combout\ & ((\PC_register|ms_jk_ff_5|nand_1|output~2_combout\ & ((!\PC_register|ms_jk_ff_5|nand_5|output~1_combout\))) # (!\PC_register|ms_jk_ff_5|nand_1|output~2_combout\ & 
-- (!\PC_register|ms_jk_ff_5|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\PC_register|ms_jk_ff_5|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datab => \clk~combout\,
	datac => \PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \PC_register|ms_jk_ff_5|nand_1|output~2_combout\,
	combout => \PC_register|ms_jk_ff_5|nand_1|output~3_combout\);

-- Location: LCCOMB_X4_Y5_N14
\PC_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_5|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\PC_register|ms_jk_ff_5|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\PC_register|ms_jk_ff_5|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \PC_register|ms_jk_ff_5|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \PC_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_bus[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_top_bus(5),
	combout => \top_bus~combout\(5));

-- Location: LCCOMB_X1_Y6_N6
\md_input_mux_0|output[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \md_input_mux_0|output[5]~5_combout\ = (\MD_IN_SEL~combout\ & (\mem_data_bus_in~combout\(5))) # (!\MD_IN_SEL~combout\ & ((\top_bus~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MD_IN_SEL~combout\,
	datac => \mem_data_bus_in~combout\(5),
	datad => \top_bus~combout\(5),
	combout => \md_input_mux_0|output[5]~5_combout\);

-- Location: LCCOMB_X1_Y6_N12
\MD_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_5|nand_1|output~1_combout\ = (\MD_register|ms_jk_ff_5|nand_3_3|output~0_combout\ & (!\md_input_mux_0|output[5]~5_combout\ & (\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\MD_register|ms_jk_ff_5|nand_5|output~1_combout\))) # 
-- (!\MD_register|ms_jk_ff_5|nand_3_3|output~0_combout\ & (((!\MD_register|ms_jk_ff_5|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\md_input_mux_0|output[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_register|ms_jk_ff_5|nand_3_3|output~0_combout\,
	datab => \md_input_mux_0|output[5]~5_combout\,
	datac => \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N28
\MD_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_5|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MD_register|ms_jk_ff_5|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MD_register|ms_jk_ff_5|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MD_register|ms_jk_ff_5|nand_1|output~1_combout\,
	combout => \MD_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MA_CLR_HI,
	combout => \MA_CLR_HI~combout\);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MA_LOAD_HI,
	combout => \MA_LOAD_HI~combout\);

-- Location: LCCOMB_X6_Y6_N0
\MA_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & (\top_bus~combout\(5) & ((\MA_LOAD_HI~combout\)))) # (!\MA_register|ms_jk_ff_5|nand_5|output~1_combout\ & ((\MA_CLR_HI~combout\) # 
-- ((!\top_bus~combout\(5) & \MA_LOAD_HI~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_bus~combout\(5),
	datab => \MA_CLR_HI~combout\,
	datac => \MA_LOAD_HI~combout\,
	datad => \MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \MA_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X6_Y6_N30
\MA_register|ms_jk_ff_5|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_5|nand_1|output~3_combout\ = (\clk~combout\ & ((\MA_register|ms_jk_ff_5|nand_1|output~2_combout\ & ((!\MA_register|ms_jk_ff_5|nand_5|output~1_combout\))) # (!\MA_register|ms_jk_ff_5|nand_1|output~2_combout\ & 
-- (!\MA_register|ms_jk_ff_5|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\MA_register|ms_jk_ff_5|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datab => \MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \MA_register|ms_jk_ff_5|nand_1|output~2_combout\,
	combout => \MA_register|ms_jk_ff_5|nand_1|output~3_combout\);

-- Location: LCCOMB_X6_Y6_N28
\MA_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_5|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MA_register|ms_jk_ff_5|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MA_register|ms_jk_ff_5|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \MA_register|ms_jk_ff_5|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \MA_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y5_N26
\output_mux|output[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[5]~11_combout\ = (\MA_BUS_SEL~combout\ & (((\MA_register|ms_jk_ff_5|nand_5|output~1_combout\)))) # (!\MA_BUS_SEL~combout\ & (\MD_register|ms_jk_ff_5|nand_5|output~1_combout\ & (\MD_BUS_SEL~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_BUS_SEL~combout\,
	datab => \MD_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \MD_BUS_SEL~combout\,
	datad => \MA_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \output_mux|output[5]~11_combout\);

-- Location: LCCOMB_X5_Y5_N8
\output_mux|output[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[5]~12_combout\ = (\output_mux|output[5]~11_combout\) # ((\output_mux|output[0]~1_combout\ & ((\PC_register|ms_jk_ff_5|nand_5|output~1_combout\) # (!\PC_BUS_SEL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_mux|output[0]~1_combout\,
	datab => \PC_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \PC_BUS_SEL~combout\,
	datad => \output_mux|output[5]~11_combout\,
	combout => \output_mux|output[5]~12_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_bus[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_top_bus(6),
	combout => \top_bus~combout\(6));

-- Location: LCCOMB_X4_Y5_N0
\PC_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\PC_register|ms_jk_ff_6|nand_5|output~1_combout\ & (((\top_bus~combout\(6) & \PC_LOAD_HI~combout\)))) # (!\PC_register|ms_jk_ff_6|nand_5|output~1_combout\ & ((\PC_CLR_HI~combout\) # 
-- ((!\top_bus~combout\(6) & \PC_LOAD_HI~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_CLR_HI~combout\,
	datab => \top_bus~combout\(6),
	datac => \PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \PC_LOAD_HI~combout\,
	combout => \PC_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y5_N30
\PC_register|ms_jk_ff_6|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_6|nand_1|output~3_combout\ = (\clk~combout\ & ((\PC_register|ms_jk_ff_6|nand_1|output~2_combout\ & ((!\PC_register|ms_jk_ff_6|nand_5|output~1_combout\))) # (!\PC_register|ms_jk_ff_6|nand_1|output~2_combout\ & 
-- (!\PC_register|ms_jk_ff_6|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\PC_register|ms_jk_ff_6|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datab => \clk~combout\,
	datac => \PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \PC_register|ms_jk_ff_6|nand_1|output~2_combout\,
	combout => \PC_register|ms_jk_ff_6|nand_1|output~3_combout\);

-- Location: LCCOMB_X4_Y5_N16
\PC_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_6|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\PC_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\PC_register|ms_jk_ff_6|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \PC_register|ms_jk_ff_6|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \PC_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N26
\MA_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & (\MA_LOAD_HI~combout\ & ((\top_bus~combout\(6))))) # (!\MA_register|ms_jk_ff_6|nand_5|output~1_combout\ & ((\MA_CLR_HI~combout\) # 
-- ((\MA_LOAD_HI~combout\ & !\top_bus~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_LOAD_HI~combout\,
	datab => \MA_CLR_HI~combout\,
	datac => \top_bus~combout\(6),
	datad => \MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \MA_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X6_Y6_N4
\MA_register|ms_jk_ff_6|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_6|nand_1|output~3_combout\ = (\clk~combout\ & ((\MA_register|ms_jk_ff_6|nand_1|output~2_combout\ & ((!\MA_register|ms_jk_ff_6|nand_5|output~1_combout\))) # (!\MA_register|ms_jk_ff_6|nand_1|output~2_combout\ & 
-- (!\MA_register|ms_jk_ff_6|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\MA_register|ms_jk_ff_6|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datab => \clk~combout\,
	datac => \MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \MA_register|ms_jk_ff_6|nand_1|output~2_combout\,
	combout => \MA_register|ms_jk_ff_6|nand_1|output~3_combout\);

-- Location: LCCOMB_X6_Y6_N2
\MA_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_6|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MA_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MA_register|ms_jk_ff_6|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MA_register|ms_jk_ff_6|nand_1|output~3_combout\,
	combout => \MA_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N22
\MD_register|ms_jk_ff_6|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_6|nand_3_3|output~0_combout\ = (!\MD_register|ms_jk_ff_6|nand_1|output~1_combout\ & (\not_reset~combout\ & ((\MD_register|ms_jk_ff_6|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datad => \MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_6|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N8
\MD_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_6|nand_1|output~1_combout\ = (\md_input_mux_0|output[6]~6_combout\ & (!\MD_register|ms_jk_ff_6|nand_3_3|output~0_combout\ & ((!\MD_register|ms_jk_ff_6|nand_5|output~1_combout\) # 
-- (!\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\md_input_mux_0|output[6]~6_combout\ & (((\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\MD_register|ms_jk_ff_6|nand_5|output~1_combout\)) # 
-- (!\MD_register|ms_jk_ff_6|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_input_mux_0|output[6]~6_combout\,
	datab => \MD_register|ms_jk_ff_6|nand_3_3|output~0_combout\,
	datac => \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N30
\MD_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_6|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MD_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MD_register|ms_jk_ff_6|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \MD_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \MD_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y5_N6
\output_mux|output[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[6]~13_combout\ = (\MA_BUS_SEL~combout\ & (((\MA_register|ms_jk_ff_6|nand_5|output~1_combout\)))) # (!\MA_BUS_SEL~combout\ & (\MD_BUS_SEL~combout\ & ((\MD_register|ms_jk_ff_6|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS_SEL~combout\,
	datab => \MA_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \MA_BUS_SEL~combout\,
	datad => \MD_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \output_mux|output[6]~13_combout\);

-- Location: LCCOMB_X5_Y5_N16
\output_mux|output[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[6]~14_combout\ = (\output_mux|output[6]~13_combout\) # ((\output_mux|output[0]~1_combout\ & ((\PC_register|ms_jk_ff_6|nand_5|output~1_combout\) # (!\PC_BUS_SEL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_mux|output[0]~1_combout\,
	datab => \PC_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \PC_BUS_SEL~combout\,
	datad => \output_mux|output[6]~13_combout\,
	combout => \output_mux|output[6]~14_combout\);

-- Location: LCCOMB_X3_Y5_N30
\PC_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_7|nand_1|output~1_combout\ = (!\PC_register|ms_jk_ff_7|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_register|ms_jk_ff_7|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \PC_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_bus[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_top_bus(7),
	combout => \top_bus~combout\(7));

-- Location: LCCOMB_X3_Y5_N12
\PC_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\PC_register|ms_jk_ff_7|nand_5|output~1_combout\ & (\PC_LOAD_HI~combout\ & (\top_bus~combout\(7)))) # (!\PC_register|ms_jk_ff_7|nand_5|output~1_combout\ & ((\PC_CLR_HI~combout\) # ((\PC_LOAD_HI~combout\ 
-- & !\top_bus~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_LOAD_HI~combout\,
	datab => \top_bus~combout\(7),
	datac => \PC_CLR_HI~combout\,
	datad => \PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	combout => \PC_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y5_N14
\PC_register|ms_jk_ff_7|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_7|nand_1|output~3_combout\ = (\clk~combout\ & ((\PC_register|ms_jk_ff_7|nand_1|output~2_combout\ & ((!\PC_register|ms_jk_ff_7|nand_5|output~1_combout\))) # (!\PC_register|ms_jk_ff_7|nand_1|output~2_combout\ & 
-- (!\PC_register|ms_jk_ff_7|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\PC_register|ms_jk_ff_7|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \PC_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datac => \PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \PC_register|ms_jk_ff_7|nand_1|output~2_combout\,
	combout => \PC_register|ms_jk_ff_7|nand_1|output~3_combout\);

-- Location: LCCOMB_X3_Y5_N10
\PC_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_7|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\PC_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\PC_register|ms_jk_ff_7|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \PC_register|ms_jk_ff_7|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \PC_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N6
\MA_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_7|nand_1|output~1_combout\ = (!\MA_register|ms_jk_ff_7|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_7|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \MA_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N18
\MA_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & (\top_bus~combout\(7) & (\MA_LOAD_HI~combout\))) # (!\MA_register|ms_jk_ff_7|nand_5|output~1_combout\ & ((\MA_CLR_HI~combout\) # ((!\top_bus~combout\(7) 
-- & \MA_LOAD_HI~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_bus~combout\(7),
	datab => \MA_LOAD_HI~combout\,
	datac => \MA_CLR_HI~combout\,
	datad => \MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	combout => \MA_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X5_Y6_N8
\MA_register|ms_jk_ff_7|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_7|nand_1|output~3_combout\ = (\clk~combout\ & ((\MA_register|ms_jk_ff_7|nand_1|output~2_combout\ & (!\MA_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\MA_register|ms_jk_ff_7|nand_1|output~2_combout\ & 
-- ((!\MA_register|ms_jk_ff_7|nand_1|output~1_combout\))))) # (!\clk~combout\ & (((!\MA_register|ms_jk_ff_7|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \MA_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datac => \clk~combout\,
	datad => \MA_register|ms_jk_ff_7|nand_1|output~2_combout\,
	combout => \MA_register|ms_jk_ff_7|nand_1|output~3_combout\);

-- Location: LCCOMB_X5_Y6_N12
\MA_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_7|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MA_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MA_register|ms_jk_ff_7|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MA_register|ms_jk_ff_7|nand_1|output~3_combout\,
	combout => \MA_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N18
\output_mux|output[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[7]~15_combout\ = (\MA_BUS_SEL~combout\ & (((\MA_register|ms_jk_ff_7|nand_5|output~1_combout\)))) # (!\MA_BUS_SEL~combout\ & (\MD_register|ms_jk_ff_7|nand_5|output~1_combout\ & ((\MD_BUS_SEL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \MA_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \MA_BUS_SEL~combout\,
	datad => \MD_BUS_SEL~combout\,
	combout => \output_mux|output[7]~15_combout\);

-- Location: LCCOMB_X3_Y5_N20
\output_mux|output[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[7]~16_combout\ = (\output_mux|output[7]~15_combout\) # ((\output_mux|output[0]~1_combout\ & ((\PC_register|ms_jk_ff_7|nand_5|output~1_combout\) # (!\PC_BUS_SEL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_BUS_SEL~combout\,
	datab => \output_mux|output[0]~1_combout\,
	datac => \PC_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \output_mux|output[7]~15_combout\,
	combout => \output_mux|output[7]~16_combout\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_bus[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_top_bus(8),
	combout => \top_bus~combout\(8));

-- Location: LCCOMB_X6_Y6_N18
\MA_register|ms_jk_ff_8|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_8|nand_1|output~2_combout\ = (\MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & (\MA_LOAD_HI~combout\ & ((\top_bus~combout\(8))))) # (!\MA_register|ms_jk_ff_8|nand_5|output~1_combout\ & ((\MA_CLR_HI~combout\) # 
-- ((\MA_LOAD_HI~combout\ & !\top_bus~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_LOAD_HI~combout\,
	datab => \MA_CLR_HI~combout\,
	datac => \top_bus~combout\(8),
	datad => \MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	combout => \MA_register|ms_jk_ff_8|nand_1|output~2_combout\);

-- Location: LCCOMB_X6_Y6_N24
\MA_register|ms_jk_ff_8|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_8|nand_1|output~3_combout\ = (\clk~combout\ & ((\MA_register|ms_jk_ff_8|nand_1|output~2_combout\ & ((!\MA_register|ms_jk_ff_8|nand_5|output~1_combout\))) # (!\MA_register|ms_jk_ff_8|nand_1|output~2_combout\ & 
-- (!\MA_register|ms_jk_ff_8|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\MA_register|ms_jk_ff_8|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datab => \clk~combout\,
	datac => \MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \MA_register|ms_jk_ff_8|nand_1|output~2_combout\,
	combout => \MA_register|ms_jk_ff_8|nand_1|output~3_combout\);

-- Location: LCCOMB_X6_Y6_N12
\MA_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_8|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MA_register|ms_jk_ff_8|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MA_register|ms_jk_ff_8|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MA_register|ms_jk_ff_8|nand_1|output~3_combout\,
	combout => \MA_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y11_N16
\md_input_mux_0|output[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \md_input_mux_0|output[8]~8_combout\ = (\MD_IN_SEL~combout\ & (\mem_data_bus_in~combout\(8))) # (!\MD_IN_SEL~combout\ & ((\top_bus~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_data_bus_in~combout\(8),
	datac => \MD_IN_SEL~combout\,
	datad => \top_bus~combout\(8),
	combout => \md_input_mux_0|output[8]~8_combout\);

-- Location: LCCOMB_X1_Y6_N18
\MD_register|ms_jk_ff_8|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_8|nand_1|output~1_combout\ = (\MD_register|ms_jk_ff_8|nand_3_3|output~0_combout\ & (!\md_input_mux_0|output[8]~8_combout\ & (\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\MD_register|ms_jk_ff_8|nand_5|output~1_combout\))) # 
-- (!\MD_register|ms_jk_ff_8|nand_3_3|output~0_combout\ & (((!\MD_register|ms_jk_ff_8|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\md_input_mux_0|output[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_register|ms_jk_ff_8|nand_3_3|output~0_combout\,
	datab => \md_input_mux_0|output[8]~8_combout\,
	datac => \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_8|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N2
\MD_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_8|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MD_register|ms_jk_ff_8|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MD_register|ms_jk_ff_8|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MD_register|ms_jk_ff_8|nand_1|output~1_combout\,
	combout => \MD_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N22
\output_mux|output[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[8]~17_combout\ = (\MA_BUS_SEL~combout\ & (((\MA_register|ms_jk_ff_8|nand_5|output~1_combout\)))) # (!\MA_BUS_SEL~combout\ & (\MD_BUS_SEL~combout\ & ((\MD_register|ms_jk_ff_8|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_BUS_SEL~combout\,
	datab => \MD_BUS_SEL~combout\,
	datac => \MA_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \MD_register|ms_jk_ff_8|nand_5|output~1_combout\,
	combout => \output_mux|output[8]~17_combout\);

-- Location: LCCOMB_X3_Y5_N6
\PC_register|ms_jk_ff_8|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_8|nand_1|output~2_combout\ = (\PC_register|ms_jk_ff_8|nand_5|output~1_combout\ & (\PC_LOAD_HI~combout\ & (\top_bus~combout\(8)))) # (!\PC_register|ms_jk_ff_8|nand_5|output~1_combout\ & ((\PC_CLR_HI~combout\) # ((\PC_LOAD_HI~combout\ 
-- & !\top_bus~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_LOAD_HI~combout\,
	datab => \top_bus~combout\(8),
	datac => \PC_CLR_HI~combout\,
	datad => \PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	combout => \PC_register|ms_jk_ff_8|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y5_N28
\PC_register|ms_jk_ff_8|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_8|nand_1|output~3_combout\ = (\clk~combout\ & ((\PC_register|ms_jk_ff_8|nand_1|output~2_combout\ & ((!\PC_register|ms_jk_ff_8|nand_5|output~1_combout\))) # (!\PC_register|ms_jk_ff_8|nand_1|output~2_combout\ & 
-- (!\PC_register|ms_jk_ff_8|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\PC_register|ms_jk_ff_8|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_8|nand_1|output~1_combout\,
	datab => \PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \PC_register|ms_jk_ff_8|nand_1|output~2_combout\,
	combout => \PC_register|ms_jk_ff_8|nand_1|output~3_combout\);

-- Location: LCCOMB_X3_Y5_N0
\PC_register|ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_8|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\PC_register|ms_jk_ff_8|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\PC_register|ms_jk_ff_8|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \PC_register|ms_jk_ff_8|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \PC_register|ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N24
\output_mux|output[8]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[8]~18_combout\ = (\output_mux|output[8]~17_combout\) # ((\output_mux|output[0]~1_combout\ & ((\PC_register|ms_jk_ff_8|nand_5|output~1_combout\) # (!\PC_BUS_SEL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_BUS_SEL~combout\,
	datab => \output_mux|output[8]~17_combout\,
	datac => \PC_register|ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \output_mux|output[0]~1_combout\,
	combout => \output_mux|output[8]~18_combout\);

-- Location: LCCOMB_X5_Y6_N28
\PC_register|ms_jk_ff_9|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_9|nand_1|output~2_combout\ = (\PC_register|ms_jk_ff_9|nand_5|output~1_combout\ & (\top_bus~combout\(9) & ((\PC_LOAD_HI~combout\)))) # (!\PC_register|ms_jk_ff_9|nand_5|output~1_combout\ & ((\PC_CLR_HI~combout\) # 
-- ((!\top_bus~combout\(9) & \PC_LOAD_HI~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_bus~combout\(9),
	datab => \PC_CLR_HI~combout\,
	datac => \PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \PC_LOAD_HI~combout\,
	combout => \PC_register|ms_jk_ff_9|nand_1|output~2_combout\);

-- Location: LCCOMB_X5_Y6_N30
\PC_register|ms_jk_ff_9|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_9|nand_1|output~3_combout\ = (\clk~combout\ & ((\PC_register|ms_jk_ff_9|nand_1|output~2_combout\ & ((!\PC_register|ms_jk_ff_9|nand_5|output~1_combout\))) # (!\PC_register|ms_jk_ff_9|nand_1|output~2_combout\ & 
-- (!\PC_register|ms_jk_ff_9|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\PC_register|ms_jk_ff_9|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datab => \clk~combout\,
	datac => \PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \PC_register|ms_jk_ff_9|nand_1|output~2_combout\,
	combout => \PC_register|ms_jk_ff_9|nand_1|output~3_combout\);

-- Location: LCCOMB_X5_Y6_N20
\PC_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_9|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\PC_register|ms_jk_ff_9|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\PC_register|ms_jk_ff_9|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \PC_register|ms_jk_ff_9|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \PC_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N18
\MD_register|ms_jk_ff_9|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_9|nand_3_3|output~0_combout\ = (\not_reset~combout\ & (!\MD_register|ms_jk_ff_9|nand_1|output~1_combout\ & ((\MD_register|ms_jk_ff_9|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \MD_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datac => \MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	combout => \MD_register|ms_jk_ff_9|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X4_Y6_N10
\MD_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_9|nand_1|output~1_combout\ = (\md_input_mux_0|output[9]~9_combout\ & (!\MD_register|ms_jk_ff_9|nand_3_3|output~0_combout\ & ((!\MD_register|ms_jk_ff_9|nand_5|output~1_combout\) # 
-- (!\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\md_input_mux_0|output[9]~9_combout\ & (((\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\MD_register|ms_jk_ff_9|nand_5|output~1_combout\)) # 
-- (!\MD_register|ms_jk_ff_9|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_input_mux_0|output[9]~9_combout\,
	datab => \MD_register|ms_jk_ff_9|nand_3_3|output~0_combout\,
	datac => \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N8
\MD_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_9|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MD_register|ms_jk_ff_9|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MD_register|ms_jk_ff_9|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MD_register|ms_jk_ff_9|nand_1|output~1_combout\,
	combout => \MD_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N22
\MA_register|ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_9|nand_1|output~1_combout\ = (!\MA_register|ms_jk_ff_9|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MA_register|ms_jk_ff_9|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \MA_register|ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N16
\MA_register|ms_jk_ff_9|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_9|nand_1|output~2_combout\ = (\MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & (\top_bus~combout\(9) & (\MA_LOAD_HI~combout\))) # (!\MA_register|ms_jk_ff_9|nand_5|output~1_combout\ & ((\MA_CLR_HI~combout\) # ((!\top_bus~combout\(9) 
-- & \MA_LOAD_HI~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_bus~combout\(9),
	datab => \MA_LOAD_HI~combout\,
	datac => \MA_CLR_HI~combout\,
	datad => \MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \MA_register|ms_jk_ff_9|nand_1|output~2_combout\);

-- Location: LCCOMB_X5_Y6_N14
\MA_register|ms_jk_ff_9|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_9|nand_1|output~3_combout\ = (\clk~combout\ & ((\MA_register|ms_jk_ff_9|nand_1|output~2_combout\ & ((!\MA_register|ms_jk_ff_9|nand_5|output~1_combout\))) # (!\MA_register|ms_jk_ff_9|nand_1|output~2_combout\ & 
-- (!\MA_register|ms_jk_ff_9|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\MA_register|ms_jk_ff_9|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \MA_register|ms_jk_ff_9|nand_1|output~1_combout\,
	datac => \MA_register|ms_jk_ff_9|nand_1|output~2_combout\,
	datad => \MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \MA_register|ms_jk_ff_9|nand_1|output~3_combout\);

-- Location: LCCOMB_X5_Y6_N10
\MA_register|ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_9|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MA_register|ms_jk_ff_9|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MA_register|ms_jk_ff_9|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \MA_register|ms_jk_ff_9|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \MA_register|ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y5_N22
\output_mux|output[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[9]~19_combout\ = (\MA_BUS_SEL~combout\ & (((\MA_register|ms_jk_ff_9|nand_5|output~1_combout\)))) # (!\MA_BUS_SEL~combout\ & (\MD_register|ms_jk_ff_9|nand_5|output~1_combout\ & (\MD_BUS_SEL~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_BUS_SEL~combout\,
	datab => \MD_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \MD_BUS_SEL~combout\,
	datad => \MA_register|ms_jk_ff_9|nand_5|output~1_combout\,
	combout => \output_mux|output[9]~19_combout\);

-- Location: LCCOMB_X5_Y5_N24
\output_mux|output[9]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[9]~20_combout\ = (\output_mux|output[9]~19_combout\) # ((\output_mux|output[0]~1_combout\ & ((\PC_register|ms_jk_ff_9|nand_5|output~1_combout\) # (!\PC_BUS_SEL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_9|nand_5|output~1_combout\,
	datab => \output_mux|output[9]~19_combout\,
	datac => \PC_BUS_SEL~combout\,
	datad => \output_mux|output[0]~1_combout\,
	combout => \output_mux|output[9]~20_combout\);

-- Location: LCCOMB_X4_Y6_N24
\MA_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_10|nand_1|output~1_combout\ = (!\MA_register|ms_jk_ff_10|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MA_register|ms_jk_ff_10|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \MA_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_bus[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_top_bus(10),
	combout => \top_bus~combout\(10));

-- Location: LCCOMB_X4_Y6_N26
\MA_register|ms_jk_ff_10|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_10|nand_1|output~2_combout\ = (\MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & (((\top_bus~combout\(10) & \MA_LOAD_HI~combout\)))) # (!\MA_register|ms_jk_ff_10|nand_5|output~1_combout\ & ((\MA_CLR_HI~combout\) # 
-- ((!\top_bus~combout\(10) & \MA_LOAD_HI~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_CLR_HI~combout\,
	datab => \top_bus~combout\(10),
	datac => \MA_LOAD_HI~combout\,
	datad => \MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \MA_register|ms_jk_ff_10|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N4
\MA_register|ms_jk_ff_10|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_10|nand_1|output~3_combout\ = (\clk~combout\ & ((\MA_register|ms_jk_ff_10|nand_1|output~2_combout\ & (!\MA_register|ms_jk_ff_10|nand_5|output~1_combout\)) # (!\MA_register|ms_jk_ff_10|nand_1|output~2_combout\ & 
-- ((!\MA_register|ms_jk_ff_10|nand_1|output~1_combout\))))) # (!\clk~combout\ & (((!\MA_register|ms_jk_ff_10|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datab => \MA_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datac => \clk~combout\,
	datad => \MA_register|ms_jk_ff_10|nand_1|output~2_combout\,
	combout => \MA_register|ms_jk_ff_10|nand_1|output~3_combout\);

-- Location: LCCOMB_X4_Y6_N6
\MA_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_10|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MA_register|ms_jk_ff_10|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MA_register|ms_jk_ff_10|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MA_register|ms_jk_ff_10|nand_1|output~3_combout\,
	combout => \MA_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N14
\MD_register|ms_jk_ff_10|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_10|nand_3_3|output~0_combout\ = (\not_reset~combout\ & (!\MD_register|ms_jk_ff_10|nand_1|output~1_combout\ & ((\MD_register|ms_jk_ff_10|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \MD_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datac => \MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datad => \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	combout => \MD_register|ms_jk_ff_10|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N30
\MD_register|ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_10|nand_1|output~1_combout\ = (\md_input_mux_0|output[10]~10_combout\ & (!\MD_register|ms_jk_ff_10|nand_3_3|output~0_combout\ & ((!\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\) # 
-- (!\MD_register|ms_jk_ff_10|nand_5|output~1_combout\)))) # (!\md_input_mux_0|output[10]~10_combout\ & (((!\MD_register|ms_jk_ff_10|nand_5|output~1_combout\ & \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # 
-- (!\MD_register|ms_jk_ff_10|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_input_mux_0|output[10]~10_combout\,
	datab => \MD_register|ms_jk_ff_10|nand_3_3|output~0_combout\,
	datac => \MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datad => \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	combout => \MD_register|ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N8
\MD_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_10|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MD_register|ms_jk_ff_10|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MD_register|ms_jk_ff_10|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MD_register|ms_jk_ff_10|nand_1|output~1_combout\,
	combout => \MD_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y5_N6
\output_mux|output[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[10]~21_combout\ = (\MA_BUS_SEL~combout\ & (((\MA_register|ms_jk_ff_10|nand_5|output~1_combout\)))) # (!\MA_BUS_SEL~combout\ & (\MD_BUS_SEL~combout\ & ((\MD_register|ms_jk_ff_10|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_BUS_SEL~combout\,
	datab => \MA_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \MD_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datad => \MA_BUS_SEL~combout\,
	combout => \output_mux|output[10]~21_combout\);

-- Location: LCCOMB_X4_Y6_N0
\PC_register|ms_jk_ff_10|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_10|nand_1|output~2_combout\ = (\PC_register|ms_jk_ff_10|nand_5|output~1_combout\ & (\PC_LOAD_HI~combout\ & (\top_bus~combout\(10)))) # (!\PC_register|ms_jk_ff_10|nand_5|output~1_combout\ & ((\PC_CLR_HI~combout\) # 
-- ((\PC_LOAD_HI~combout\ & !\top_bus~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_LOAD_HI~combout\,
	datab => \top_bus~combout\(10),
	datac => \PC_CLR_HI~combout\,
	datad => \PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \PC_register|ms_jk_ff_10|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N22
\PC_register|ms_jk_ff_10|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_10|nand_1|output~3_combout\ = (\clk~combout\ & ((\PC_register|ms_jk_ff_10|nand_1|output~2_combout\ & ((!\PC_register|ms_jk_ff_10|nand_5|output~1_combout\))) # (!\PC_register|ms_jk_ff_10|nand_1|output~2_combout\ & 
-- (!\PC_register|ms_jk_ff_10|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\PC_register|ms_jk_ff_10|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_10|nand_1|output~1_combout\,
	datab => \PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \PC_register|ms_jk_ff_10|nand_1|output~2_combout\,
	combout => \PC_register|ms_jk_ff_10|nand_1|output~3_combout\);

-- Location: LCCOMB_X4_Y6_N28
\PC_register|ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_10|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\PC_register|ms_jk_ff_10|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\PC_register|ms_jk_ff_10|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \PC_register|ms_jk_ff_10|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \PC_register|ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y5_N10
\output_mux|output[10]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[10]~22_combout\ = (\output_mux|output[10]~21_combout\) # ((\output_mux|output[0]~1_combout\ & ((\PC_register|ms_jk_ff_10|nand_5|output~1_combout\) # (!\PC_BUS_SEL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_mux|output[0]~1_combout\,
	datab => \output_mux|output[10]~21_combout\,
	datac => \PC_BUS_SEL~combout\,
	datad => \PC_register|ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \output_mux|output[10]~22_combout\);

-- Location: LCCOMB_X5_Y6_N0
\PC_register|ms_jk_ff_11|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_11|nand_1|output~2_combout\ = (\PC_register|ms_jk_ff_11|nand_5|output~1_combout\ & (\top_bus~combout\(11) & ((\PC_LOAD_HI~combout\)))) # (!\PC_register|ms_jk_ff_11|nand_5|output~1_combout\ & ((\PC_CLR_HI~combout\) # 
-- ((!\top_bus~combout\(11) & \PC_LOAD_HI~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_bus~combout\(11),
	datab => \PC_CLR_HI~combout\,
	datac => \PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \PC_LOAD_HI~combout\,
	combout => \PC_register|ms_jk_ff_11|nand_1|output~2_combout\);

-- Location: LCCOMB_X5_Y6_N26
\PC_register|ms_jk_ff_11|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_11|nand_1|output~3_combout\ = (\clk~combout\ & ((\PC_register|ms_jk_ff_11|nand_1|output~2_combout\ & ((!\PC_register|ms_jk_ff_11|nand_5|output~1_combout\))) # (!\PC_register|ms_jk_ff_11|nand_1|output~2_combout\ & 
-- (!\PC_register|ms_jk_ff_11|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\PC_register|ms_jk_ff_11|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datab => \clk~combout\,
	datac => \PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datad => \PC_register|ms_jk_ff_11|nand_1|output~2_combout\,
	combout => \PC_register|ms_jk_ff_11|nand_1|output~3_combout\);

-- Location: LCCOMB_X5_Y6_N24
\PC_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_register|ms_jk_ff_11|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\PC_register|ms_jk_ff_11|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\PC_register|ms_jk_ff_11|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \PC_register|ms_jk_ff_11|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \PC_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N2
\MD_register|ms_jk_ff_11|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_11|nand_3_3|output~0_combout\ = (\not_reset~combout\ & (!\MD_register|ms_jk_ff_11|nand_1|output~1_combout\ & ((\MD_register|ms_jk_ff_11|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \MD_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datac => \MD_register|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datad => \MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_11|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X3_Y6_N26
\MD_register|ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_11|nand_1|output~1_combout\ = (\md_input_mux_0|output[11]~11_combout\ & (!\MD_register|ms_jk_ff_11|nand_3_3|output~0_combout\ & ((!\MD_register|ms_jk_ff_11|nand_5|output~1_combout\) # 
-- (!\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)))) # (!\md_input_mux_0|output[11]~11_combout\ & (((\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\MD_register|ms_jk_ff_11|nand_5|output~1_combout\)) # 
-- (!\MD_register|ms_jk_ff_11|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_input_mux_0|output[11]~11_combout\,
	datab => \MD_register|ms_jk_ff_11|nand_3_3|output~0_combout\,
	datac => \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_11|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N0
\MD_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_11|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MD_register|ms_jk_ff_11|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MD_register|ms_jk_ff_11|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MD_register|ms_jk_ff_11|nand_1|output~1_combout\,
	combout => \MD_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N4
\MA_register|ms_jk_ff_11|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_11|nand_1|output~2_combout\ = (\MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & (\top_bus~combout\(11) & (\MA_LOAD_HI~combout\))) # (!\MA_register|ms_jk_ff_11|nand_5|output~1_combout\ & ((\MA_CLR_HI~combout\) # 
-- ((!\top_bus~combout\(11) & \MA_LOAD_HI~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_bus~combout\(11),
	datab => \MA_LOAD_HI~combout\,
	datac => \MA_CLR_HI~combout\,
	datad => \MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \MA_register|ms_jk_ff_11|nand_1|output~2_combout\);

-- Location: LCCOMB_X5_Y6_N6
\MA_register|ms_jk_ff_11|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_11|nand_1|output~3_combout\ = (\clk~combout\ & ((\MA_register|ms_jk_ff_11|nand_1|output~2_combout\ & ((!\MA_register|ms_jk_ff_11|nand_5|output~1_combout\))) # (!\MA_register|ms_jk_ff_11|nand_1|output~2_combout\ & 
-- (!\MA_register|ms_jk_ff_11|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\MA_register|ms_jk_ff_11|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_11|nand_1|output~1_combout\,
	datab => \clk~combout\,
	datac => \MA_register|ms_jk_ff_11|nand_1|output~2_combout\,
	datad => \MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \MA_register|ms_jk_ff_11|nand_1|output~3_combout\);

-- Location: LCCOMB_X5_Y6_N2
\MA_register|ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MA_register|ms_jk_ff_11|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MA_register|ms_jk_ff_11|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MA_register|ms_jk_ff_11|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MA_register|ms_jk_ff_11|nand_1|output~3_combout\,
	combout => \MA_register|ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y5_N0
\output_mux|output[11]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[11]~23_combout\ = (\MA_BUS_SEL~combout\ & (((\MA_register|ms_jk_ff_11|nand_5|output~1_combout\)))) # (!\MA_BUS_SEL~combout\ & (\MD_register|ms_jk_ff_11|nand_5|output~1_combout\ & (\MD_BUS_SEL~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MA_BUS_SEL~combout\,
	datab => \MD_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \MD_BUS_SEL~combout\,
	datad => \MA_register|ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \output_mux|output[11]~23_combout\);

-- Location: LCCOMB_X5_Y5_N14
\output_mux|output[11]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_mux|output[11]~24_combout\ = (\output_mux|output[11]~23_combout\) # ((\output_mux|output[0]~1_combout\ & ((\PC_register|ms_jk_ff_11|nand_5|output~1_combout\) # (!\PC_BUS_SEL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|ms_jk_ff_11|nand_5|output~1_combout\,
	datab => \output_mux|output[11]~23_combout\,
	datac => \PC_BUS_SEL~combout\,
	datad => \output_mux|output[0]~1_combout\,
	combout => \output_mux|output[11]~24_combout\);

-- Location: LCCOMB_X1_Y6_N20
\md_input_mux_0|output[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \md_input_mux_0|output[7]~7_combout\ = (\MD_IN_SEL~combout\ & (\mem_data_bus_in~combout\(7))) # (!\MD_IN_SEL~combout\ & ((\top_bus~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_data_bus_in~combout\(7),
	datab => \MD_IN_SEL~combout\,
	datac => \top_bus~combout\(7),
	combout => \md_input_mux_0|output[7]~7_combout\);

-- Location: LCCOMB_X1_Y6_N26
\MD_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_7|nand_1|output~1_combout\ = (\MD_register|ms_jk_ff_7|nand_3_3|output~0_combout\ & (!\md_input_mux_0|output[7]~7_combout\ & (\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\ & !\MD_register|ms_jk_ff_7|nand_5|output~1_combout\))) # 
-- (!\MD_register|ms_jk_ff_7|nand_3_3|output~0_combout\ & (((!\MD_register|ms_jk_ff_7|nand_5|output~1_combout\) # (!\MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\)) # (!\md_input_mux_0|output[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_register|ms_jk_ff_7|nand_3_3|output~0_combout\,
	datab => \md_input_mux_0|output[7]~7_combout\,
	datac => \MD_register|ms_jk_ff_11|nand_3_1|output~0_combout\,
	datad => \MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	combout => \MD_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N0
\MD_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MD_register|ms_jk_ff_7|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\MD_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\MD_register|ms_jk_ff_7|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MD_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \MD_register|ms_jk_ff_7|nand_1|output~1_combout\,
	combout => \MD_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_link_output~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ALU_link_output,
	combout => \ALU_link_output~combout\);

-- Location: LCCOMB_X4_Y6_N12
\LINK_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LINK_register|ms_jk_ff_0|nand_1|output~1_combout\ = (\LINK_LOAD~combout\ & (\clk~combout\ & (\ALU_link_output~combout\ $ (!\LINK_register|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINK_LOAD~combout\,
	datab => \ALU_link_output~combout\,
	datac => \clk~combout\,
	datad => \LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \LINK_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N2
\LINK_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LINK_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\LINK_register|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\LINK_register|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\LINK_register|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- (((\LINK_register|ms_jk_ff_0|nand_1|output~2_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \LINK_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \LINK_register|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \LINK_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N30
\LINK_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LINK_register|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\LINK_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\LINK_register|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINK_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \LINK_register|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \LINK_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_output_bus[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \output_mux|ALT_INV_output[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_output_bus(0));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_output_bus[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \output_mux|ALT_INV_output[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_output_bus(1));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_output_bus[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \output_mux|ALT_INV_output[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_output_bus(2));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_output_bus[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \output_mux|ALT_INV_output[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_output_bus(3));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_output_bus[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \output_mux|ALT_INV_output[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_output_bus(4));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_output_bus[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \output_mux|ALT_INV_output[5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_output_bus(5));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_output_bus[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \output_mux|ALT_INV_output[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_output_bus(6));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_output_bus[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \output_mux|ALT_INV_output[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_output_bus(7));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_output_bus[8]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \output_mux|ALT_INV_output[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_output_bus(8));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_output_bus[9]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \output_mux|ALT_INV_output[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_output_bus(9));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_output_bus[10]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \output_mux|ALT_INV_output[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_output_bus(10));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\register_output_bus[11]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \output_mux|ALT_INV_output[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_register_output_bus(11));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MD_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(0));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MD_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(1));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MD_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MD_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(3));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MD_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(4));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MD_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(5));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MD_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(6));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MD_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(7));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MD_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(8));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MD_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(9));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MD_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(10));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MD_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data_bus_out(11));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MA_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\,
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
	datain => \MA_register|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(1));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MA_register|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(2));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MA_register|ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(3));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MA_register|ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(4));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MA_register|ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(5));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MA_register|ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(6));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MA_register|ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(7));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MA_register|ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(8));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MA_register|ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(9));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MA_register|ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(10));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MA_register|ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr_bus_out(11));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LINK_register|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LINK_VALUE);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_AC_LOAD);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SR_BUS_SEL);
END structure;


