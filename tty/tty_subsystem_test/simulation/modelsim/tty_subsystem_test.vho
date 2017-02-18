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

-- DATE "02/13/2017 22:16:02"

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

ENTITY 	tty_subsystem_test IS
    PORT (
	clk : IN std_logic;
	not_reset : IN std_logic;
	RX : IN std_logic;
	RX_FLAG : OUT std_logic;
	TX : OUT std_logic;
	TX_FLAG : OUT std_logic;
	in_sample_clk : OUT std_logic;
	out_sample_clk : OUT std_logic;
	heart_beat : OUT std_logic
	);
END tty_subsystem_test;

-- Design Ports Information
-- RX_FLAG	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TX	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TX_FLAG	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- in_sample_clk	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_sample_clk	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- heart_beat	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- not_reset	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RX	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF tty_subsystem_test IS
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
SIGNAL ww_RX : std_logic;
SIGNAL ww_RX_FLAG : std_logic;
SIGNAL ww_TX : std_logic;
SIGNAL ww_TX_FLAG : std_logic;
SIGNAL ww_in_sample_clk : std_logic;
SIGNAL ww_out_sample_clk : std_logic;
SIGNAL ww_heart_beat : std_logic;
SIGNAL \tty_subsystem_0|or_0|output~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[3]~19_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[6]~25_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[10]~33_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[3]~19_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[4]~21_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[7]~28\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[8]~29_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[8]~30\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[9]~31_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[9]~32\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[10]~33_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[10]~34\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[11]~35_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~6_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~10_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~18_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~40_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~46_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_9|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|Equal0~2_combout\ : std_logic;
SIGNAL \heartbeat_divider|Equal0~3_combout\ : std_logic;
SIGNAL \heartbeat_divider|Equal0~6_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \heartbeat_divider|prescaler~1_combout\ : std_logic;
SIGNAL \heartbeat_divider|prescaler~4_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_5_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_4_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_3_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_2_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_1_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~6_combout\ : std_logic;
SIGNAL \RX~combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[0]~12_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~4_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[1]~14_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|Equal0~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[0]~13\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[1]~15\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[2]~16_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[2]~17\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[3]~20\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[4]~22\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[5]~23_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[5]~24\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[6]~25_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[6]~26\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler[7]~27_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|Equal0~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|clk_out_int~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|clk_out_int~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|clk_out_int~regout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_6|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|or_1|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~4_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_6|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[0]~12_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_10|output~2_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_7|output~combout\ : std_logic;
SIGNAL \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \test_logic|ms_jk_ff_0|nand_6|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|Equal0~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[0]~13\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[1]~14_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[1]~15\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[2]~16_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[2]~17\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[3]~20\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[4]~21_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[4]~22\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[5]~24\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[6]~26\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[7]~27_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[7]~28\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[8]~30\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[9]~31_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[9]~32\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[10]~34\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[11]~35_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[8]~29_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|Equal0~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler[5]~23_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|Equal0~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|Equal0~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|clk_out_int~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|clk_out_int~regout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_3|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|or_4|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ : std_logic;
SIGNAL \test_logic|and_2|output~0_combout\ : std_logic;
SIGNAL \test_logic|and_2|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|or_0|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|or_0|output~clkctrl_outclk\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_6_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_7_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|nand_0|output~1_combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \heartbeat_divider|Add0~1\ : std_logic;
SIGNAL \heartbeat_divider|Add0~2_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~3\ : std_logic;
SIGNAL \heartbeat_divider|Add0~5\ : std_logic;
SIGNAL \heartbeat_divider|Add0~7\ : std_logic;
SIGNAL \heartbeat_divider|Add0~8_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~9\ : std_logic;
SIGNAL \heartbeat_divider|Add0~11\ : std_logic;
SIGNAL \heartbeat_divider|Add0~12_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~13\ : std_logic;
SIGNAL \heartbeat_divider|Add0~14_combout\ : std_logic;
SIGNAL \heartbeat_divider|prescaler~11_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~15\ : std_logic;
SIGNAL \heartbeat_divider|Add0~16_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~17\ : std_logic;
SIGNAL \heartbeat_divider|Add0~19\ : std_logic;
SIGNAL \heartbeat_divider|Add0~20_combout\ : std_logic;
SIGNAL \heartbeat_divider|Equal0~5_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~4_combout\ : std_logic;
SIGNAL \heartbeat_divider|Equal0~7_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~21\ : std_logic;
SIGNAL \heartbeat_divider|Add0~22_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~23\ : std_logic;
SIGNAL \heartbeat_divider|Add0~24_combout\ : std_logic;
SIGNAL \heartbeat_divider|prescaler~10_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~25\ : std_logic;
SIGNAL \heartbeat_divider|Add0~26_combout\ : std_logic;
SIGNAL \heartbeat_divider|prescaler~9_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~27\ : std_logic;
SIGNAL \heartbeat_divider|Add0~28_combout\ : std_logic;
SIGNAL \heartbeat_divider|prescaler~8_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~29\ : std_logic;
SIGNAL \heartbeat_divider|Add0~30_combout\ : std_logic;
SIGNAL \heartbeat_divider|prescaler~7_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~31\ : std_logic;
SIGNAL \heartbeat_divider|Add0~33\ : std_logic;
SIGNAL \heartbeat_divider|Add0~34_combout\ : std_logic;
SIGNAL \heartbeat_divider|prescaler~6_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~35\ : std_logic;
SIGNAL \heartbeat_divider|Add0~37\ : std_logic;
SIGNAL \heartbeat_divider|Add0~38_combout\ : std_logic;
SIGNAL \heartbeat_divider|prescaler~5_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~39\ : std_logic;
SIGNAL \heartbeat_divider|Add0~41\ : std_logic;
SIGNAL \heartbeat_divider|Add0~42_combout\ : std_logic;
SIGNAL \heartbeat_divider|prescaler~3_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~43\ : std_logic;
SIGNAL \heartbeat_divider|Add0~44_combout\ : std_logic;
SIGNAL \heartbeat_divider|prescaler~2_combout\ : std_logic;
SIGNAL \heartbeat_divider|Equal0~1_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~32_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~36_combout\ : std_logic;
SIGNAL \heartbeat_divider|Equal0~2_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~45\ : std_logic;
SIGNAL \heartbeat_divider|Add0~47\ : std_logic;
SIGNAL \heartbeat_divider|Add0~48_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~0_combout\ : std_logic;
SIGNAL \heartbeat_divider|Add0~49\ : std_logic;
SIGNAL \heartbeat_divider|Add0~50_combout\ : std_logic;
SIGNAL \heartbeat_divider|prescaler~0_combout\ : std_logic;
SIGNAL \heartbeat_divider|Equal0~0_combout\ : std_logic;
SIGNAL \heartbeat_divider|Equal0~4_combout\ : std_logic;
SIGNAL \heartbeat_divider|Equal0~8_combout\ : std_logic;
SIGNAL \heartbeat_divider|clk_out_int~0_combout\ : std_logic;
SIGNAL \heartbeat_divider|clk_out_int~regout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \heartbeat_divider|prescaler\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_not_reset~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|ALT_INV_clk_out_int~regout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|nand_0|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|ALT_INV_clk_out_int~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_not_reset <= not_reset;
ww_RX <= RX;
RX_FLAG <= ww_RX_FLAG;
TX <= ww_TX;
TX_FLAG <= ww_TX_FLAG;
in_sample_clk <= ww_in_sample_clk;
out_sample_clk <= ww_out_sample_clk;
heart_beat <= ww_heart_beat;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\tty_subsystem_0|or_0|output~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \tty_subsystem_0|or_0|output~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_not_reset~combout\ <= NOT \not_reset~combout\;
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\;
\tty_subsystem_0|input_clock_divider|ALT_INV_clk_out_int~regout\ <= NOT \tty_subsystem_0|input_clock_divider|clk_out_int~regout\;
\tty_subsystem_0|tto_state_gen|nand_0|ALT_INV_output~1_combout\ <= NOT \tty_subsystem_0|tto_state_gen|nand_0|output~1_combout\;
\tty_subsystem_0|output_clock_divider|ALT_INV_clk_out_int~regout\ <= NOT \tty_subsystem_0|output_clock_divider|clk_out_int~regout\;

-- Location: LCFF_X1_Y13_N7
\tty_subsystem_0|output_clock_divider|prescaler[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler[3]~19_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(3));

-- Location: LCFF_X1_Y13_N13
\tty_subsystem_0|output_clock_divider|prescaler[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler[6]~25_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(6));

-- Location: LCFF_X1_Y13_N21
\tty_subsystem_0|output_clock_divider|prescaler[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler[10]~33_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(10));

-- Location: LCFF_X4_Y13_N11
\tty_subsystem_0|input_clock_divider|prescaler[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler[3]~19_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(3));

-- Location: LCFF_X2_Y13_N21
\tty_subsystem_0|input_clock_divider|prescaler[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tty_subsystem_0|input_clock_divider|prescaler[4]~21_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(4));

-- Location: LCFF_X4_Y13_N21
\tty_subsystem_0|input_clock_divider|prescaler[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler[8]~29_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(8));

-- Location: LCFF_X4_Y13_N23
\tty_subsystem_0|input_clock_divider|prescaler[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler[9]~31_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(9));

-- Location: LCFF_X4_Y13_N25
\tty_subsystem_0|input_clock_divider|prescaler[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler[10]~33_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(10));

-- Location: LCFF_X4_Y13_N27
\tty_subsystem_0|input_clock_divider|prescaler[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler[11]~35_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(11));

-- Location: LCCOMB_X1_Y13_N6
\tty_subsystem_0|output_clock_divider|prescaler[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler[3]~19_combout\ = (\tty_subsystem_0|output_clock_divider|prescaler\(3) & (!\tty_subsystem_0|output_clock_divider|prescaler[2]~17\)) # (!\tty_subsystem_0|output_clock_divider|prescaler\(3) & 
-- ((\tty_subsystem_0|output_clock_divider|prescaler[2]~17\) # (GND)))
-- \tty_subsystem_0|output_clock_divider|prescaler[3]~20\ = CARRY((!\tty_subsystem_0|output_clock_divider|prescaler[2]~17\) # (!\tty_subsystem_0|output_clock_divider|prescaler\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|prescaler\(3),
	datad => VCC,
	cin => \tty_subsystem_0|output_clock_divider|prescaler[2]~17\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler[3]~19_combout\,
	cout => \tty_subsystem_0|output_clock_divider|prescaler[3]~20\);

-- Location: LCCOMB_X1_Y13_N12
\tty_subsystem_0|output_clock_divider|prescaler[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler[6]~25_combout\ = (\tty_subsystem_0|output_clock_divider|prescaler\(6) & (\tty_subsystem_0|output_clock_divider|prescaler[5]~24\ $ (GND))) # (!\tty_subsystem_0|output_clock_divider|prescaler\(6) & 
-- (!\tty_subsystem_0|output_clock_divider|prescaler[5]~24\ & VCC))
-- \tty_subsystem_0|output_clock_divider|prescaler[6]~26\ = CARRY((\tty_subsystem_0|output_clock_divider|prescaler\(6) & !\tty_subsystem_0|output_clock_divider|prescaler[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|prescaler\(6),
	datad => VCC,
	cin => \tty_subsystem_0|output_clock_divider|prescaler[5]~24\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler[6]~25_combout\,
	cout => \tty_subsystem_0|output_clock_divider|prescaler[6]~26\);

-- Location: LCCOMB_X1_Y13_N20
\tty_subsystem_0|output_clock_divider|prescaler[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler[10]~33_combout\ = (\tty_subsystem_0|output_clock_divider|prescaler\(10) & (\tty_subsystem_0|output_clock_divider|prescaler[9]~32\ $ (GND))) # (!\tty_subsystem_0|output_clock_divider|prescaler\(10) & 
-- (!\tty_subsystem_0|output_clock_divider|prescaler[9]~32\ & VCC))
-- \tty_subsystem_0|output_clock_divider|prescaler[10]~34\ = CARRY((\tty_subsystem_0|output_clock_divider|prescaler\(10) & !\tty_subsystem_0|output_clock_divider|prescaler[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|prescaler\(10),
	datad => VCC,
	cin => \tty_subsystem_0|output_clock_divider|prescaler[9]~32\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler[10]~33_combout\,
	cout => \tty_subsystem_0|output_clock_divider|prescaler[10]~34\);

-- Location: LCCOMB_X4_Y13_N10
\tty_subsystem_0|input_clock_divider|prescaler[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler[3]~19_combout\ = (\tty_subsystem_0|input_clock_divider|prescaler\(3) & (!\tty_subsystem_0|input_clock_divider|prescaler[2]~17\)) # (!\tty_subsystem_0|input_clock_divider|prescaler\(3) & 
-- ((\tty_subsystem_0|input_clock_divider|prescaler[2]~17\) # (GND)))
-- \tty_subsystem_0|input_clock_divider|prescaler[3]~20\ = CARRY((!\tty_subsystem_0|input_clock_divider|prescaler[2]~17\) # (!\tty_subsystem_0|input_clock_divider|prescaler\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|prescaler\(3),
	datad => VCC,
	cin => \tty_subsystem_0|input_clock_divider|prescaler[2]~17\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler[3]~19_combout\,
	cout => \tty_subsystem_0|input_clock_divider|prescaler[3]~20\);

-- Location: LCCOMB_X4_Y13_N12
\tty_subsystem_0|input_clock_divider|prescaler[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler[4]~21_combout\ = (\tty_subsystem_0|input_clock_divider|prescaler\(4) & (\tty_subsystem_0|input_clock_divider|prescaler[3]~20\ $ (GND))) # (!\tty_subsystem_0|input_clock_divider|prescaler\(4) & 
-- (!\tty_subsystem_0|input_clock_divider|prescaler[3]~20\ & VCC))
-- \tty_subsystem_0|input_clock_divider|prescaler[4]~22\ = CARRY((\tty_subsystem_0|input_clock_divider|prescaler\(4) & !\tty_subsystem_0|input_clock_divider|prescaler[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|prescaler\(4),
	datad => VCC,
	cin => \tty_subsystem_0|input_clock_divider|prescaler[3]~20\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler[4]~21_combout\,
	cout => \tty_subsystem_0|input_clock_divider|prescaler[4]~22\);

-- Location: LCCOMB_X4_Y13_N18
\tty_subsystem_0|input_clock_divider|prescaler[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler[7]~27_combout\ = (\tty_subsystem_0|input_clock_divider|prescaler\(7) & (!\tty_subsystem_0|input_clock_divider|prescaler[6]~26\)) # (!\tty_subsystem_0|input_clock_divider|prescaler\(7) & 
-- ((\tty_subsystem_0|input_clock_divider|prescaler[6]~26\) # (GND)))
-- \tty_subsystem_0|input_clock_divider|prescaler[7]~28\ = CARRY((!\tty_subsystem_0|input_clock_divider|prescaler[6]~26\) # (!\tty_subsystem_0|input_clock_divider|prescaler\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|input_clock_divider|prescaler\(7),
	datad => VCC,
	cin => \tty_subsystem_0|input_clock_divider|prescaler[6]~26\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler[7]~27_combout\,
	cout => \tty_subsystem_0|input_clock_divider|prescaler[7]~28\);

-- Location: LCCOMB_X4_Y13_N20
\tty_subsystem_0|input_clock_divider|prescaler[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler[8]~29_combout\ = (\tty_subsystem_0|input_clock_divider|prescaler\(8) & (\tty_subsystem_0|input_clock_divider|prescaler[7]~28\ $ (GND))) # (!\tty_subsystem_0|input_clock_divider|prescaler\(8) & 
-- (!\tty_subsystem_0|input_clock_divider|prescaler[7]~28\ & VCC))
-- \tty_subsystem_0|input_clock_divider|prescaler[8]~30\ = CARRY((\tty_subsystem_0|input_clock_divider|prescaler\(8) & !\tty_subsystem_0|input_clock_divider|prescaler[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|prescaler\(8),
	datad => VCC,
	cin => \tty_subsystem_0|input_clock_divider|prescaler[7]~28\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler[8]~29_combout\,
	cout => \tty_subsystem_0|input_clock_divider|prescaler[8]~30\);

-- Location: LCCOMB_X4_Y13_N22
\tty_subsystem_0|input_clock_divider|prescaler[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler[9]~31_combout\ = (\tty_subsystem_0|input_clock_divider|prescaler\(9) & (!\tty_subsystem_0|input_clock_divider|prescaler[8]~30\)) # (!\tty_subsystem_0|input_clock_divider|prescaler\(9) & 
-- ((\tty_subsystem_0|input_clock_divider|prescaler[8]~30\) # (GND)))
-- \tty_subsystem_0|input_clock_divider|prescaler[9]~32\ = CARRY((!\tty_subsystem_0|input_clock_divider|prescaler[8]~30\) # (!\tty_subsystem_0|input_clock_divider|prescaler\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|input_clock_divider|prescaler\(9),
	datad => VCC,
	cin => \tty_subsystem_0|input_clock_divider|prescaler[8]~30\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler[9]~31_combout\,
	cout => \tty_subsystem_0|input_clock_divider|prescaler[9]~32\);

-- Location: LCCOMB_X4_Y13_N24
\tty_subsystem_0|input_clock_divider|prescaler[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler[10]~33_combout\ = (\tty_subsystem_0|input_clock_divider|prescaler\(10) & (\tty_subsystem_0|input_clock_divider|prescaler[9]~32\ $ (GND))) # (!\tty_subsystem_0|input_clock_divider|prescaler\(10) & 
-- (!\tty_subsystem_0|input_clock_divider|prescaler[9]~32\ & VCC))
-- \tty_subsystem_0|input_clock_divider|prescaler[10]~34\ = CARRY((\tty_subsystem_0|input_clock_divider|prescaler\(10) & !\tty_subsystem_0|input_clock_divider|prescaler[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|prescaler\(10),
	datad => VCC,
	cin => \tty_subsystem_0|input_clock_divider|prescaler[9]~32\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler[10]~33_combout\,
	cout => \tty_subsystem_0|input_clock_divider|prescaler[10]~34\);

-- Location: LCCOMB_X4_Y13_N26
\tty_subsystem_0|input_clock_divider|prescaler[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler[11]~35_combout\ = \tty_subsystem_0|input_clock_divider|prescaler[10]~34\ $ (\tty_subsystem_0|input_clock_divider|prescaler\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tty_subsystem_0|input_clock_divider|prescaler\(11),
	cin => \tty_subsystem_0|input_clock_divider|prescaler[10]~34\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler[11]~35_combout\);

-- Location: LCCOMB_X2_Y13_N12
\heartbeat_divider|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~6_combout\ = (\heartbeat_divider|prescaler\(3) & (!\heartbeat_divider|Add0~5\)) # (!\heartbeat_divider|prescaler\(3) & ((\heartbeat_divider|Add0~5\) # (GND)))
-- \heartbeat_divider|Add0~7\ = CARRY((!\heartbeat_divider|Add0~5\) # (!\heartbeat_divider|prescaler\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(3),
	datad => VCC,
	cin => \heartbeat_divider|Add0~5\,
	combout => \heartbeat_divider|Add0~6_combout\,
	cout => \heartbeat_divider|Add0~7\);

-- Location: LCCOMB_X2_Y13_N16
\heartbeat_divider|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~10_combout\ = (\heartbeat_divider|prescaler\(5) & (!\heartbeat_divider|Add0~9\)) # (!\heartbeat_divider|prescaler\(5) & ((\heartbeat_divider|Add0~9\) # (GND)))
-- \heartbeat_divider|Add0~11\ = CARRY((!\heartbeat_divider|Add0~9\) # (!\heartbeat_divider|prescaler\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(5),
	datad => VCC,
	cin => \heartbeat_divider|Add0~9\,
	combout => \heartbeat_divider|Add0~10_combout\,
	cout => \heartbeat_divider|Add0~11\);

-- Location: LCCOMB_X2_Y13_N24
\heartbeat_divider|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~18_combout\ = (\heartbeat_divider|prescaler\(9) & (!\heartbeat_divider|Add0~17\)) # (!\heartbeat_divider|prescaler\(9) & ((\heartbeat_divider|Add0~17\) # (GND)))
-- \heartbeat_divider|Add0~19\ = CARRY((!\heartbeat_divider|Add0~17\) # (!\heartbeat_divider|prescaler\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(9),
	datad => VCC,
	cin => \heartbeat_divider|Add0~17\,
	combout => \heartbeat_divider|Add0~18_combout\,
	cout => \heartbeat_divider|Add0~19\);

-- Location: LCCOMB_X2_Y12_N14
\heartbeat_divider|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~40_combout\ = (\heartbeat_divider|prescaler\(20) & (\heartbeat_divider|Add0~39\ $ (GND))) # (!\heartbeat_divider|prescaler\(20) & (!\heartbeat_divider|Add0~39\ & VCC))
-- \heartbeat_divider|Add0~41\ = CARRY((\heartbeat_divider|prescaler\(20) & !\heartbeat_divider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(20),
	datad => VCC,
	cin => \heartbeat_divider|Add0~39\,
	combout => \heartbeat_divider|Add0~40_combout\,
	cout => \heartbeat_divider|Add0~41\);

-- Location: LCCOMB_X2_Y12_N20
\heartbeat_divider|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~46_combout\ = (\heartbeat_divider|prescaler\(23) & (!\heartbeat_divider|Add0~45\)) # (!\heartbeat_divider|prescaler\(23) & ((\heartbeat_divider|Add0~45\) # (GND)))
-- \heartbeat_divider|Add0~47\ = CARRY((!\heartbeat_divider|Add0~45\) # (!\heartbeat_divider|prescaler\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(23),
	datad => VCC,
	cin => \heartbeat_divider|Add0~45\,
	combout => \heartbeat_divider|Add0~46_combout\,
	cout => \heartbeat_divider|Add0~47\);

-- Location: LCCOMB_X5_Y11_N6
\tty_subsystem_0|tti_state_gen|and_9|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_9|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & \clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_9|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N10
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ = (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y12_N16
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|and_11|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\)) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|or_4|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y12_N18
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ & (((!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\)))) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X4_Y13_N0
\tty_subsystem_0|input_clock_divider|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|Equal0~2_combout\ = (\tty_subsystem_0|input_clock_divider|prescaler\(10)) # ((\tty_subsystem_0|input_clock_divider|prescaler\(11)) # ((\tty_subsystem_0|input_clock_divider|prescaler\(8)) # 
-- (\tty_subsystem_0|input_clock_divider|prescaler\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|prescaler\(10),
	datab => \tty_subsystem_0|input_clock_divider|prescaler\(11),
	datac => \tty_subsystem_0|input_clock_divider|prescaler\(8),
	datad => \tty_subsystem_0|input_clock_divider|prescaler\(9),
	combout => \tty_subsystem_0|input_clock_divider|Equal0~2_combout\);

-- Location: LCFF_X3_Y12_N17
\heartbeat_divider|prescaler[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|prescaler~1_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(23));

-- Location: LCFF_X3_Y12_N7
\heartbeat_divider|prescaler[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|prescaler~4_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(20));

-- Location: LCCOMB_X3_Y12_N12
\heartbeat_divider|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Equal0~3_combout\ = (\heartbeat_divider|prescaler\(12) & (\heartbeat_divider|prescaler\(14) & (\heartbeat_divider|prescaler\(13) & !\heartbeat_divider|prescaler\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(12),
	datab => \heartbeat_divider|prescaler\(14),
	datac => \heartbeat_divider|prescaler\(13),
	datad => \heartbeat_divider|prescaler\(11),
	combout => \heartbeat_divider|Equal0~3_combout\);

-- Location: LCFF_X2_Y13_N25
\heartbeat_divider|prescaler[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|Add0~18_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(9));

-- Location: LCFF_X2_Y13_N17
\heartbeat_divider|prescaler[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|Add0~10_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(5));

-- Location: LCFF_X2_Y13_N13
\heartbeat_divider|prescaler[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|Add0~6_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(3));

-- Location: LCCOMB_X2_Y13_N0
\heartbeat_divider|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Equal0~6_combout\ = (\heartbeat_divider|prescaler\(3) & (\heartbeat_divider|prescaler\(4) & (\heartbeat_divider|prescaler\(5) & \heartbeat_divider|prescaler\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(3),
	datab => \heartbeat_divider|prescaler\(4),
	datac => \heartbeat_divider|prescaler\(5),
	datad => \heartbeat_divider|prescaler\(6),
	combout => \heartbeat_divider|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y11_N8
\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y11_N14
\test_logic|ms_jk_ff_0|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\ = (\not_reset~combout\ & ((\test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\) # ((!\test_logic|ms_jk_ff_0|nand_6|output~1_combout\ & \tty_subsystem_0|tti_state_gen|and_9|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datab => \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_9|output~1_combout\,
	combout => \test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X5_Y12_N30
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ & (\not_reset~combout\ & 
-- ((!\tty_subsystem_0|tto_state_gen|and_3|output~combout\) # (!\tty_subsystem_0|tto_state_gen|or_4|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y12_N18
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\) # ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y12_N16
\heartbeat_divider|prescaler~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|prescaler~1_combout\ = (!\heartbeat_divider|Equal0~8_combout\ & \heartbeat_divider|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|Equal0~8_combout\,
	datac => \heartbeat_divider|Add0~46_combout\,
	combout => \heartbeat_divider|prescaler~1_combout\);

-- Location: LCCOMB_X3_Y12_N6
\heartbeat_divider|prescaler~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|prescaler~4_combout\ = (!\heartbeat_divider|Equal0~8_combout\ & \heartbeat_divider|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \heartbeat_divider|Equal0~8_combout\,
	datad => \heartbeat_divider|Add0~40_combout\,
	combout => \heartbeat_divider|prescaler~4_combout\);

-- Location: LCCOMB_X4_Y11_N14
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~3_combout\ = (\tty_subsystem_0|tti_state_gen|and_6|output~combout\ & ((\tty_subsystem_0|tti_state_gen|or_1|output~combout\) # 
-- ((!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ & !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|or_1|output~combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_6|output~combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X5_Y11_N20
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\ = ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\) # 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\ & \tty_subsystem_0|input_clock_divider|clk_out_int~regout\))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\);

-- Location: LCCOMB_X1_Y11_N6
\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\)) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & 
-- (\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N24
\test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~0_combout\ = (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\) # ((\test_logic|ms_jk_ff_0|nand_6|output~1_combout\ & ((\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y11_N18
\test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~1_combout\ = (!\test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\ & (\not_reset~combout\ & ((\test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~0_combout\) # 
-- (!\tty_subsystem_0|tto_state_gen|and_7|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|and_7|output~combout\,
	datac => \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N16
\test_logic|counter_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\ = (!\test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~1_combout\ & (((!\tty_subsystem_0|tto_state_gen|and_7|output~combout\) # (!\test_logic|ms_jk_ff_0|nand_6|output~1_combout\)) # 
-- (!\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~1_combout\,
	datac => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_7|output~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N30
\test_logic|counter_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N28
\test_logic|counter_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|and_7|output~combout\ & (((!\test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\ & !\test_logic|ms_jk_ff_0|nand_6|output~1_combout\)) # 
-- (!\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tto_state_gen|and_7|output~combout\ & (!\test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_7|output~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y12_N0
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~0_combout\ = ((\not_reset~combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\)))) # (!\tty_subsystem_0|tto_state_gen|and_10|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_10|output~2_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N10
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_1|output~1_combout\ & (\not_reset~combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~0_combout\) # 
-- (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N26
\tty_subsystem_0|tto_state_gen|and_10|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (((!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\)))) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\) # 
-- (\tty_subsystem_0|tto_state_gen|and_10|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|and_10|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\);

-- Location: LCCOMB_X4_Y12_N10
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ = (!\RX~combout\ & !\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X6_Y11_N22
\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y11_N4
\tty_subsystem_0|tti_state_gen|and_0|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ = (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\);

-- Location: LCCOMB_X6_Y11_N4
\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\ & (!\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\) # (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
-- (((\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X6_Y11_N14
\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X6_Y11_N24
\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\ & (!\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\) # (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- (((\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y11_N12
\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y11_N30
\tty_subsystem_0|tto_register|or_5_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_5_0|output~0_combout\ = (\test_logic|and_2|output~1_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\))) # (!\test_logic|and_2|output~1_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_5_0|output~0_combout\);

-- Location: LCCOMB_X2_Y11_N10
\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\ & (\tty_subsystem_0|or_0|output~combout\ & 
-- \tty_subsystem_0|tto_register|or_5_0|output~0_combout\))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\ & (((\tty_subsystem_0|tto_register|or_5_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|or_5_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X6_Y11_N6
\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (((\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\)))) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y11_N8
\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & ((\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\))) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X6_Y11_N8
\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X6_Y11_N26
\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\ & (!\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\) # (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\ & 
-- (((\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y11_N22
\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y11_N12
\tty_subsystem_0|tto_register|or_4_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_4_0|output~0_combout\ = (\test_logic|and_2|output~1_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\))) # (!\test_logic|and_2|output~1_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_4_0|output~0_combout\);

-- Location: LCCOMB_X2_Y11_N22
\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\ & (\tty_subsystem_0|or_0|output~combout\ & 
-- \tty_subsystem_0|tto_register|or_4_0|output~0_combout\))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\ & (((\tty_subsystem_0|tto_register|or_4_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|or_4_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X6_Y11_N28
\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\)) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & 
-- (\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y11_N24
\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & ((\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\))) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X7_Y11_N4
\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X6_Y11_N30
\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~1_combout\ & (!\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\ & 
-- (\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~1_combout\ & 
-- (((\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\) # (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X7_Y11_N22
\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y11_N2
\tty_subsystem_0|tto_register|or_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_3_0|output~0_combout\ = (\test_logic|and_2|output~1_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\test_logic|and_2|output~1_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_3_0|output~0_combout\);

-- Location: LCCOMB_X2_Y11_N14
\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|or_3_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\ & (((\tty_subsystem_0|or_0|output~combout\ & 
-- \tty_subsystem_0|tto_register|or_3_0|output~0_combout\)) # (!\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|or_3_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X6_Y11_N12
\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (((\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\)))) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N18
\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & (\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X6_Y11_N18
\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N20
\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- (!\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\ & \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\) # (!\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\))))) # (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & 
-- (!\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y11_N30
\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N24
\tty_subsystem_0|tto_register|or_2_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_2_0|output~0_combout\ = (\test_logic|and_2|output~1_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\test_logic|and_2|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \test_logic|and_2|output~1_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_2_0|output~0_combout\);

-- Location: LCCOMB_X3_Y11_N10
\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_subsystem_0|or_0|output~combout\ & 
-- \tty_subsystem_0|tto_register|or_2_0|output~0_combout\))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\ & (((\tty_subsystem_0|tto_register|or_2_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|or_2_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y11_N0
\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & ((\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\)) 
-- # (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\))))) # (!\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & 
-- (\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	datad => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N14
\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & (\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N4
\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N26
\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- (!\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\ & \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\) # (!\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\))))) # (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & 
-- (!\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y11_N8
\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N22
\tty_subsystem_0|tto_register|or_1_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_1_0|output~0_combout\ = (\test_logic|and_2|output~1_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\test_logic|and_2|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \test_logic|and_2|output~1_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_1_0|output~0_combout\);

-- Location: LCCOMB_X3_Y11_N28
\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\ & (\tty_subsystem_0|or_0|output~combout\ & 
-- \tty_subsystem_0|tto_register|or_1_0|output~0_combout\))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\ & (((\tty_subsystem_0|tto_register|or_1_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|or_1_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y11_N2
\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & ((\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\)) 
-- # (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\))))) # (!\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & 
-- (\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	datad => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N16
\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & (\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y12_N18
\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N16
\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\ & \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\) # (!\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\))))) # (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & 
-- (((!\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N18
\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_3|output~0_combout\ = (!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N24
\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_1|output~0_combout\ = (!\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & \test_logic|and_2|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N0
\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_3|output~0_combout\ & ((!\tty_subsystem_0|or_0|output~combout\) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_1|output~0_combout\)))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\ & (((!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_1|output~0_combout\ & 
-- \tty_subsystem_0|or_0|output~combout\)) # (!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_1|output~0_combout\,
	datad => \tty_subsystem_0|or_0|output~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N6
\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\)) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & 
-- (\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datac => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N20
\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y11_N26
\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1_combout\ & (!\RX~combout\ & (\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & 
-- !\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)) # (!\RX~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \RX~combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X5_Y11_N26
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~6_combout\ = (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\not_reset~combout\ & !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~6_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RX~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RX,
	combout => \RX~combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X4_Y13_N4
\tty_subsystem_0|input_clock_divider|prescaler[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler[0]~12_combout\ = \tty_subsystem_0|input_clock_divider|prescaler\(0) $ (VCC)
-- \tty_subsystem_0|input_clock_divider|prescaler[0]~13\ = CARRY(\tty_subsystem_0|input_clock_divider|prescaler\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|input_clock_divider|prescaler\(0),
	datad => VCC,
	combout => \tty_subsystem_0|input_clock_divider|prescaler[0]~12_combout\,
	cout => \tty_subsystem_0|input_clock_divider|prescaler[0]~13\);

-- Location: LCCOMB_X4_Y12_N28
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ & ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\) # 
-- ((\tty_subsystem_0|tti_state_gen|and_5|output~1_combout\) # (\tty_subsystem_0|tti_state_gen|and_9|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\);

-- Location: LCCOMB_X4_Y12_N2
\tty_subsystem_0|tti_state_gen|and_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_5|output~1_combout\ = (\clk~combout\ & (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & \not_reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_5|output~1_combout\);

-- Location: LCCOMB_X5_Y11_N2
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~4_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\)))) # (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\ & ((\tty_subsystem_0|input_clock_divider|clk_out_int~regout\))) # (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\ & 
-- (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~3_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\,
	datad => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~4_combout\);

-- Location: LCCOMB_X5_Y11_N10
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\ = (\not_reset~combout\ & ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~4_combout\ & 
-- ((!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\) # (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~6_combout\))) # 
-- (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~4_combout\ & ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\))))) # (!\not_reset~combout\ & 
-- (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~6_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~4_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\);

-- Location: LCCOMB_X4_Y11_N22
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\)))) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\not_reset~combout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\not_reset~combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y11_N8
\tty_subsystem_0|tti_state_gen|and_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_1|output~0_combout\ = (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ & (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & 
-- !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_1|output~0_combout\);

-- Location: LCCOMB_X4_Y12_N30
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ & ((\tty_subsystem_0|tti_state_gen|and_1|output~0_combout\) # ((\clk~combout\ & 
-- !\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_1|output~0_combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\);

-- Location: LCCOMB_X4_Y12_N0
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\ = (\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ & ((\tty_subsystem_0|tti_state_gen|and_5|output~1_combout\) # 
-- ((!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ & \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X4_Y12_N20
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\ & (\not_reset~combout\ & ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\) # 
-- (\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\);

-- Location: LCCOMB_X4_Y12_N24
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|and_5|output~1_combout\ & (\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\) # (!\tty_subsystem_0|tti_state_gen|and_9|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\,
	datab => \tty_subsystem_0|tti_state_gen|and_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y12_N22
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & !\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\);

-- Location: LCCOMB_X4_Y13_N6
\tty_subsystem_0|input_clock_divider|prescaler[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler[1]~14_combout\ = (\tty_subsystem_0|input_clock_divider|prescaler\(1) & (!\tty_subsystem_0|input_clock_divider|prescaler[0]~13\)) # (!\tty_subsystem_0|input_clock_divider|prescaler\(1) & 
-- ((\tty_subsystem_0|input_clock_divider|prescaler[0]~13\) # (GND)))
-- \tty_subsystem_0|input_clock_divider|prescaler[1]~15\ = CARRY((!\tty_subsystem_0|input_clock_divider|prescaler[0]~13\) # (!\tty_subsystem_0|input_clock_divider|prescaler\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|prescaler\(1),
	datad => VCC,
	cin => \tty_subsystem_0|input_clock_divider|prescaler[0]~13\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler[1]~14_combout\,
	cout => \tty_subsystem_0|input_clock_divider|prescaler[1]~15\);

-- Location: LCFF_X4_Y13_N7
\tty_subsystem_0|input_clock_divider|prescaler[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler[1]~14_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(1));

-- Location: LCCOMB_X4_Y13_N28
\tty_subsystem_0|input_clock_divider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|Equal0~0_combout\ = (\tty_subsystem_0|input_clock_divider|prescaler\(3)) # ((\tty_subsystem_0|input_clock_divider|prescaler\(2)) # ((!\tty_subsystem_0|input_clock_divider|prescaler\(1)) # 
-- (!\tty_subsystem_0|input_clock_divider|prescaler\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|prescaler\(3),
	datab => \tty_subsystem_0|input_clock_divider|prescaler\(2),
	datac => \tty_subsystem_0|input_clock_divider|prescaler\(0),
	datad => \tty_subsystem_0|input_clock_divider|prescaler\(1),
	combout => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y13_N2
\tty_subsystem_0|input_clock_divider|prescaler[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\ = (\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\) # ((!\tty_subsystem_0|input_clock_divider|Equal0~2_combout\ & (!\tty_subsystem_0|input_clock_divider|Equal0~1_combout\ & 
-- !\tty_subsystem_0|input_clock_divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|Equal0~2_combout\,
	datab => \tty_subsystem_0|input_clock_divider|Equal0~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	datad => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\);

-- Location: LCFF_X4_Y13_N5
\tty_subsystem_0|input_clock_divider|prescaler[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler[0]~12_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(0));

-- Location: LCCOMB_X4_Y13_N8
\tty_subsystem_0|input_clock_divider|prescaler[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler[2]~16_combout\ = (\tty_subsystem_0|input_clock_divider|prescaler\(2) & (\tty_subsystem_0|input_clock_divider|prescaler[1]~15\ $ (GND))) # (!\tty_subsystem_0|input_clock_divider|prescaler\(2) & 
-- (!\tty_subsystem_0|input_clock_divider|prescaler[1]~15\ & VCC))
-- \tty_subsystem_0|input_clock_divider|prescaler[2]~17\ = CARRY((\tty_subsystem_0|input_clock_divider|prescaler\(2) & !\tty_subsystem_0|input_clock_divider|prescaler[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|input_clock_divider|prescaler\(2),
	datad => VCC,
	cin => \tty_subsystem_0|input_clock_divider|prescaler[1]~15\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler[2]~16_combout\,
	cout => \tty_subsystem_0|input_clock_divider|prescaler[2]~17\);

-- Location: LCFF_X4_Y13_N9
\tty_subsystem_0|input_clock_divider|prescaler[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler[2]~16_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(2));

-- Location: LCCOMB_X4_Y13_N14
\tty_subsystem_0|input_clock_divider|prescaler[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler[5]~23_combout\ = (\tty_subsystem_0|input_clock_divider|prescaler\(5) & (!\tty_subsystem_0|input_clock_divider|prescaler[4]~22\)) # (!\tty_subsystem_0|input_clock_divider|prescaler\(5) & 
-- ((\tty_subsystem_0|input_clock_divider|prescaler[4]~22\) # (GND)))
-- \tty_subsystem_0|input_clock_divider|prescaler[5]~24\ = CARRY((!\tty_subsystem_0|input_clock_divider|prescaler[4]~22\) # (!\tty_subsystem_0|input_clock_divider|prescaler\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|input_clock_divider|prescaler\(5),
	datad => VCC,
	cin => \tty_subsystem_0|input_clock_divider|prescaler[4]~22\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler[5]~23_combout\,
	cout => \tty_subsystem_0|input_clock_divider|prescaler[5]~24\);

-- Location: LCFF_X4_Y13_N15
\tty_subsystem_0|input_clock_divider|prescaler[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler[5]~23_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(5));

-- Location: LCCOMB_X4_Y13_N16
\tty_subsystem_0|input_clock_divider|prescaler[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler[6]~25_combout\ = (\tty_subsystem_0|input_clock_divider|prescaler\(6) & (\tty_subsystem_0|input_clock_divider|prescaler[5]~24\ $ (GND))) # (!\tty_subsystem_0|input_clock_divider|prescaler\(6) & 
-- (!\tty_subsystem_0|input_clock_divider|prescaler[5]~24\ & VCC))
-- \tty_subsystem_0|input_clock_divider|prescaler[6]~26\ = CARRY((\tty_subsystem_0|input_clock_divider|prescaler\(6) & !\tty_subsystem_0|input_clock_divider|prescaler[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|prescaler\(6),
	datad => VCC,
	cin => \tty_subsystem_0|input_clock_divider|prescaler[5]~24\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler[6]~25_combout\,
	cout => \tty_subsystem_0|input_clock_divider|prescaler[6]~26\);

-- Location: LCFF_X4_Y13_N17
\tty_subsystem_0|input_clock_divider|prescaler[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler[6]~25_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(6));

-- Location: LCFF_X4_Y13_N19
\tty_subsystem_0|input_clock_divider|prescaler[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler[7]~27_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|input_clock_divider|prescaler[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(7));

-- Location: LCCOMB_X4_Y13_N30
\tty_subsystem_0|input_clock_divider|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|Equal0~1_combout\ = (\tty_subsystem_0|input_clock_divider|prescaler\(4)) # ((\tty_subsystem_0|input_clock_divider|prescaler\(5)) # ((\tty_subsystem_0|input_clock_divider|prescaler\(6)) # 
-- (\tty_subsystem_0|input_clock_divider|prescaler\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|prescaler\(4),
	datab => \tty_subsystem_0|input_clock_divider|prescaler\(5),
	datac => \tty_subsystem_0|input_clock_divider|prescaler\(6),
	datad => \tty_subsystem_0|input_clock_divider|prescaler\(7),
	combout => \tty_subsystem_0|input_clock_divider|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y12_N16
\tty_subsystem_0|input_clock_divider|clk_out_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|clk_out_int~0_combout\ = \tty_subsystem_0|input_clock_divider|clk_out_int~regout\ $ (((!\tty_subsystem_0|input_clock_divider|Equal0~2_combout\ & (!\tty_subsystem_0|input_clock_divider|Equal0~1_combout\ & 
-- !\tty_subsystem_0|input_clock_divider|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|Equal0~2_combout\,
	datab => \tty_subsystem_0|input_clock_divider|Equal0~1_combout\,
	datac => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\,
	datad => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|input_clock_divider|clk_out_int~0_combout\);

-- Location: LCCOMB_X4_Y11_N0
\tty_subsystem_0|input_clock_divider|clk_out_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|clk_out_int~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ & \tty_subsystem_0|input_clock_divider|clk_out_int~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~0_combout\,
	combout => \tty_subsystem_0|input_clock_divider|clk_out_int~1_combout\);

-- Location: LCFF_X4_Y11_N1
\tty_subsystem_0|input_clock_divider|clk_out_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \tty_subsystem_0|input_clock_divider|clk_out_int~1_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\);

-- Location: LCCOMB_X5_Y11_N0
\tty_subsystem_0|tti_state_gen|and_9|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\ = (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ & (\not_reset~combout\ & (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & 
-- !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\);

-- Location: LCCOMB_X5_Y11_N12
\tty_subsystem_0|tti_state_gen|and_9|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\ = (\tty_subsystem_0|tti_state_gen|and_9|output~1_combout\ & ((\not_reset~combout\) # ((!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & 
-- \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\)))) # (!\tty_subsystem_0|tti_state_gen|and_9|output~1_combout\ & (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & ((\tty_subsystem_0|tti_state_gen|and_9|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|and_9|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\);

-- Location: LCCOMB_X5_Y11_N4
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\) # 
-- (\tty_subsystem_0|tti_state_gen|and_9|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\);

-- Location: LCCOMB_X4_Y11_N30
\tty_subsystem_0|tti_state_gen|and_6|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_6|output~combout\ = (\not_reset~combout\ & !\tty_subsystem_0|input_clock_divider|clk_out_int~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tti_state_gen|and_6|output~combout\);

-- Location: LCCOMB_X4_Y11_N16
\tty_subsystem_0|tti_state_gen|or_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|or_1|output~combout\ = ((!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ & !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\)) # 
-- (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|or_1|output~combout\);

-- Location: LCCOMB_X4_Y11_N8
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_3|output~0_combout\ = ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ & !\tty_subsystem_0|tti_state_gen|or_1|output~combout\))) # (!\tty_subsystem_0|tti_state_gen|and_6|output~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|and_6|output~combout\,
	datac => \tty_subsystem_0|tti_state_gen|or_1|output~combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X5_Y11_N30
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~4_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3_combout\ & (\not_reset~combout\ & ((\tty_subsystem_0|tti_state_gen|or_1|output~combout\) # 
-- (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3_combout\,
	datab => \tty_subsystem_0|tti_state_gen|or_1|output~combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~4_combout\);

-- Location: LCCOMB_X4_Y12_N26
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~4_combout\ & (((\not_reset~combout\)))) # 
-- (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~4_combout\ & (((!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ & !\tty_subsystem_0|input_clock_divider|clk_out_int~regout\)) # 
-- (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~4_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X4_Y11_N28
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3_combout\)))) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\not_reset~combout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\not_reset~combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y11_N24
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\ = (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (\not_reset~combout\ & 
-- !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X5_Y11_N18
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_6|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_6|output~0_combout\ = ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\) # ((\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & 
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_6|output~0_combout\);

-- Location: LCCOMB_X4_Y11_N2
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|or_1|output~combout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\ & 
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_6|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|or_1|output~combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_6|output~0_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~1_combout\);

-- Location: LCCOMB_X4_Y11_N18
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~1_combout\ & 
-- (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\) # (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_3|output~0_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y11_N20
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\)))) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\not_reset~combout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\not_reset~combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y11_N10
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\ & 
-- (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\ & 
-- !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X4_Y11_N6
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\) # ((\tty_subsystem_0|tti_state_gen|and_1|output~0_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_1|output~0_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y11_N24
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ = (\not_reset~combout\ & ((\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\))) # (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\)))) # 
-- (!\not_reset~combout\ & (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y11_N28
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X1_Y12_N8
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_11|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\))) # 
-- (!\tty_subsystem_0|tto_state_gen|and_11|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y13_N0
\tty_subsystem_0|output_clock_divider|prescaler[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler[0]~12_combout\ = \tty_subsystem_0|output_clock_divider|prescaler\(0) $ (VCC)
-- \tty_subsystem_0|output_clock_divider|prescaler[0]~13\ = CARRY(\tty_subsystem_0|output_clock_divider|prescaler\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(0),
	datad => VCC,
	combout => \tty_subsystem_0|output_clock_divider|prescaler[0]~12_combout\,
	cout => \tty_subsystem_0|output_clock_divider|prescaler[0]~13\);

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

-- Location: LCCOMB_X1_Y6_N28
\tty_subsystem_0|tto_state_gen|and_10|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_10|output~2_combout\ = (\not_reset~combout\ & ((\tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ & (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & \clk~combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ & ((\clk~combout\) # (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\,
	datab => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datac => \not_reset~combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_10|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N30
\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & ((\clk~combout\ & ((\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\clk~combout\ & 
-- (\test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\)))) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datad => \clk~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N4
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_1|output~0_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|and_10|output~2_combout\ & 
-- (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|and_10|output~2_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N20
\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\) # ((!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\ & !\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\,
	datab => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X1_Y12_N10
\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~1_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X1_Y12_N24
\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\ & ((\tty_subsystem_0|output_clock_divider|clk_out_int~regout\) # 
-- ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N12
\tty_subsystem_0|tto_state_gen|and_7|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_7|output~combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & \clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_7|output~combout\);

-- Location: LCCOMB_X2_Y11_N18
\test_logic|ms_jk_ff_0|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\ = (\test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\ & (((!\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\) # (!\clk~combout\)) # (!\test_logic|ms_jk_ff_0|nand_6|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\,
	datab => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \clk~combout\,
	datad => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X2_Y11_N26
\test_logic|ms_jk_ff_0|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|ms_jk_ff_0|nand_6|output~1_combout\ = (\clk~combout\ & (\test_logic|ms_jk_ff_0|nand_6|output~1_combout\)) # (!\clk~combout\ & ((\test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \clk~combout\,
	datad => \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\,
	combout => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N26
\test_logic|counter_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_7|output~combout\ & ((\test_logic|ms_jk_ff_0|nand_6|output~1_combout\ & ((!\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\))) # 
-- (!\test_logic|ms_jk_ff_0|nand_6|output~1_combout\ & (!\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|and_7|output~combout\,
	datac => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N12
\test_logic|counter_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\ & (((!\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- ((\test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N22
\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & ((\clk~combout\ & (\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\clk~combout\ & 
-- ((\test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\))))) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & (((\test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datad => \clk~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N14
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ & (((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\) # 
-- (\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_1|output~0_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N6
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_10|output~2_combout\ & (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|and_10|output~2_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_10|output~2_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y13_N24
\tty_subsystem_0|output_clock_divider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|Equal0~0_combout\ = (\tty_subsystem_0|output_clock_divider|prescaler\(3)) # (((\tty_subsystem_0|output_clock_divider|prescaler\(2)) # (!\tty_subsystem_0|output_clock_divider|prescaler\(0))) # 
-- (!\tty_subsystem_0|output_clock_divider|prescaler\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|prescaler\(3),
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(1),
	datac => \tty_subsystem_0|output_clock_divider|prescaler\(2),
	datad => \tty_subsystem_0|output_clock_divider|prescaler\(0),
	combout => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y13_N30
\tty_subsystem_0|output_clock_divider|prescaler[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\) # ((!\tty_subsystem_0|output_clock_divider|Equal0~1_combout\ & (!\tty_subsystem_0|output_clock_divider|Equal0~2_combout\ 
-- & !\tty_subsystem_0|output_clock_divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|Equal0~1_combout\,
	datab => \tty_subsystem_0|output_clock_divider|Equal0~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\);

-- Location: LCFF_X1_Y13_N1
\tty_subsystem_0|output_clock_divider|prescaler[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler[0]~12_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(0));

-- Location: LCCOMB_X1_Y13_N2
\tty_subsystem_0|output_clock_divider|prescaler[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler[1]~14_combout\ = (\tty_subsystem_0|output_clock_divider|prescaler\(1) & (!\tty_subsystem_0|output_clock_divider|prescaler[0]~13\)) # (!\tty_subsystem_0|output_clock_divider|prescaler\(1) & 
-- ((\tty_subsystem_0|output_clock_divider|prescaler[0]~13\) # (GND)))
-- \tty_subsystem_0|output_clock_divider|prescaler[1]~15\ = CARRY((!\tty_subsystem_0|output_clock_divider|prescaler[0]~13\) # (!\tty_subsystem_0|output_clock_divider|prescaler\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(1),
	datad => VCC,
	cin => \tty_subsystem_0|output_clock_divider|prescaler[0]~13\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler[1]~14_combout\,
	cout => \tty_subsystem_0|output_clock_divider|prescaler[1]~15\);

-- Location: LCFF_X1_Y13_N3
\tty_subsystem_0|output_clock_divider|prescaler[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler[1]~14_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(1));

-- Location: LCCOMB_X1_Y13_N4
\tty_subsystem_0|output_clock_divider|prescaler[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler[2]~16_combout\ = (\tty_subsystem_0|output_clock_divider|prescaler\(2) & (\tty_subsystem_0|output_clock_divider|prescaler[1]~15\ $ (GND))) # (!\tty_subsystem_0|output_clock_divider|prescaler\(2) & 
-- (!\tty_subsystem_0|output_clock_divider|prescaler[1]~15\ & VCC))
-- \tty_subsystem_0|output_clock_divider|prescaler[2]~17\ = CARRY((\tty_subsystem_0|output_clock_divider|prescaler\(2) & !\tty_subsystem_0|output_clock_divider|prescaler[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(2),
	datad => VCC,
	cin => \tty_subsystem_0|output_clock_divider|prescaler[1]~15\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler[2]~16_combout\,
	cout => \tty_subsystem_0|output_clock_divider|prescaler[2]~17\);

-- Location: LCFF_X1_Y13_N5
\tty_subsystem_0|output_clock_divider|prescaler[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler[2]~16_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(2));

-- Location: LCCOMB_X1_Y13_N8
\tty_subsystem_0|output_clock_divider|prescaler[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler[4]~21_combout\ = (\tty_subsystem_0|output_clock_divider|prescaler\(4) & (\tty_subsystem_0|output_clock_divider|prescaler[3]~20\ $ (GND))) # (!\tty_subsystem_0|output_clock_divider|prescaler\(4) & 
-- (!\tty_subsystem_0|output_clock_divider|prescaler[3]~20\ & VCC))
-- \tty_subsystem_0|output_clock_divider|prescaler[4]~22\ = CARRY((\tty_subsystem_0|output_clock_divider|prescaler\(4) & !\tty_subsystem_0|output_clock_divider|prescaler[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(4),
	datad => VCC,
	cin => \tty_subsystem_0|output_clock_divider|prescaler[3]~20\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler[4]~21_combout\,
	cout => \tty_subsystem_0|output_clock_divider|prescaler[4]~22\);

-- Location: LCFF_X1_Y13_N9
\tty_subsystem_0|output_clock_divider|prescaler[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler[4]~21_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(4));

-- Location: LCCOMB_X1_Y13_N10
\tty_subsystem_0|output_clock_divider|prescaler[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler[5]~23_combout\ = (\tty_subsystem_0|output_clock_divider|prescaler\(5) & (!\tty_subsystem_0|output_clock_divider|prescaler[4]~22\)) # (!\tty_subsystem_0|output_clock_divider|prescaler\(5) & 
-- ((\tty_subsystem_0|output_clock_divider|prescaler[4]~22\) # (GND)))
-- \tty_subsystem_0|output_clock_divider|prescaler[5]~24\ = CARRY((!\tty_subsystem_0|output_clock_divider|prescaler[4]~22\) # (!\tty_subsystem_0|output_clock_divider|prescaler\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|prescaler\(5),
	datad => VCC,
	cin => \tty_subsystem_0|output_clock_divider|prescaler[4]~22\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler[5]~23_combout\,
	cout => \tty_subsystem_0|output_clock_divider|prescaler[5]~24\);

-- Location: LCCOMB_X1_Y13_N14
\tty_subsystem_0|output_clock_divider|prescaler[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler[7]~27_combout\ = (\tty_subsystem_0|output_clock_divider|prescaler\(7) & (!\tty_subsystem_0|output_clock_divider|prescaler[6]~26\)) # (!\tty_subsystem_0|output_clock_divider|prescaler\(7) & 
-- ((\tty_subsystem_0|output_clock_divider|prescaler[6]~26\) # (GND)))
-- \tty_subsystem_0|output_clock_divider|prescaler[7]~28\ = CARRY((!\tty_subsystem_0|output_clock_divider|prescaler[6]~26\) # (!\tty_subsystem_0|output_clock_divider|prescaler\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(7),
	datad => VCC,
	cin => \tty_subsystem_0|output_clock_divider|prescaler[6]~26\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler[7]~27_combout\,
	cout => \tty_subsystem_0|output_clock_divider|prescaler[7]~28\);

-- Location: LCFF_X1_Y13_N15
\tty_subsystem_0|output_clock_divider|prescaler[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler[7]~27_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(7));

-- Location: LCCOMB_X1_Y13_N16
\tty_subsystem_0|output_clock_divider|prescaler[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler[8]~29_combout\ = (\tty_subsystem_0|output_clock_divider|prescaler\(8) & (\tty_subsystem_0|output_clock_divider|prescaler[7]~28\ $ (GND))) # (!\tty_subsystem_0|output_clock_divider|prescaler\(8) & 
-- (!\tty_subsystem_0|output_clock_divider|prescaler[7]~28\ & VCC))
-- \tty_subsystem_0|output_clock_divider|prescaler[8]~30\ = CARRY((\tty_subsystem_0|output_clock_divider|prescaler\(8) & !\tty_subsystem_0|output_clock_divider|prescaler[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|prescaler\(8),
	datad => VCC,
	cin => \tty_subsystem_0|output_clock_divider|prescaler[7]~28\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler[8]~29_combout\,
	cout => \tty_subsystem_0|output_clock_divider|prescaler[8]~30\);

-- Location: LCCOMB_X1_Y13_N18
\tty_subsystem_0|output_clock_divider|prescaler[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler[9]~31_combout\ = (\tty_subsystem_0|output_clock_divider|prescaler\(9) & (!\tty_subsystem_0|output_clock_divider|prescaler[8]~30\)) # (!\tty_subsystem_0|output_clock_divider|prescaler\(9) & 
-- ((\tty_subsystem_0|output_clock_divider|prescaler[8]~30\) # (GND)))
-- \tty_subsystem_0|output_clock_divider|prescaler[9]~32\ = CARRY((!\tty_subsystem_0|output_clock_divider|prescaler[8]~30\) # (!\tty_subsystem_0|output_clock_divider|prescaler\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(9),
	datad => VCC,
	cin => \tty_subsystem_0|output_clock_divider|prescaler[8]~30\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler[9]~31_combout\,
	cout => \tty_subsystem_0|output_clock_divider|prescaler[9]~32\);

-- Location: LCFF_X1_Y13_N19
\tty_subsystem_0|output_clock_divider|prescaler[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler[9]~31_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(9));

-- Location: LCCOMB_X1_Y13_N22
\tty_subsystem_0|output_clock_divider|prescaler[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler[11]~35_combout\ = \tty_subsystem_0|output_clock_divider|prescaler[10]~34\ $ (\tty_subsystem_0|output_clock_divider|prescaler\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tty_subsystem_0|output_clock_divider|prescaler\(11),
	cin => \tty_subsystem_0|output_clock_divider|prescaler[10]~34\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler[11]~35_combout\);

-- Location: LCFF_X1_Y13_N23
\tty_subsystem_0|output_clock_divider|prescaler[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler[11]~35_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(11));

-- Location: LCFF_X1_Y13_N17
\tty_subsystem_0|output_clock_divider|prescaler[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler[8]~29_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(8));

-- Location: LCCOMB_X1_Y13_N28
\tty_subsystem_0|output_clock_divider|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|Equal0~2_combout\ = (\tty_subsystem_0|output_clock_divider|prescaler\(10)) # ((\tty_subsystem_0|output_clock_divider|prescaler\(11)) # ((\tty_subsystem_0|output_clock_divider|prescaler\(8)) # 
-- (\tty_subsystem_0|output_clock_divider|prescaler\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|prescaler\(10),
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(11),
	datac => \tty_subsystem_0|output_clock_divider|prescaler\(8),
	datad => \tty_subsystem_0|output_clock_divider|prescaler\(9),
	combout => \tty_subsystem_0|output_clock_divider|Equal0~2_combout\);

-- Location: LCFF_X1_Y13_N11
\tty_subsystem_0|output_clock_divider|prescaler[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler[5]~23_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	sclr => \tty_subsystem_0|output_clock_divider|prescaler[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(5));

-- Location: LCCOMB_X1_Y13_N26
\tty_subsystem_0|output_clock_divider|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|Equal0~1_combout\ = (\tty_subsystem_0|output_clock_divider|prescaler\(6)) # ((\tty_subsystem_0|output_clock_divider|prescaler\(7)) # ((\tty_subsystem_0|output_clock_divider|prescaler\(4)) # 
-- (\tty_subsystem_0|output_clock_divider|prescaler\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|prescaler\(6),
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(7),
	datac => \tty_subsystem_0|output_clock_divider|prescaler\(4),
	datad => \tty_subsystem_0|output_clock_divider|prescaler\(5),
	combout => \tty_subsystem_0|output_clock_divider|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y12_N2
\tty_subsystem_0|output_clock_divider|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|Equal0~3_combout\ = (\tty_subsystem_0|output_clock_divider|Equal0~2_combout\) # (\tty_subsystem_0|output_clock_divider|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|output_clock_divider|Equal0~2_combout\,
	datad => \tty_subsystem_0|output_clock_divider|Equal0~1_combout\,
	combout => \tty_subsystem_0|output_clock_divider|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y12_N6
\tty_subsystem_0|output_clock_divider|clk_out_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|clk_out_int~0_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ $ (((!\tty_subsystem_0|output_clock_divider|Equal0~0_combout\ 
-- & !\tty_subsystem_0|output_clock_divider|Equal0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\,
	datab => \tty_subsystem_0|output_clock_divider|Equal0~3_combout\,
	datac => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|output_clock_divider|clk_out_int~0_combout\);

-- Location: LCFF_X1_Y12_N7
\tty_subsystem_0|output_clock_divider|clk_out_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|clk_out_int~0_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\);

-- Location: LCCOMB_X1_Y12_N12
\tty_subsystem_0|tto_state_gen|and_3|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_3|output~combout\ = (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\) # ((!\not_reset~combout\ & 
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\,
	datab => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_3|output~combout\);

-- Location: LCCOMB_X1_Y12_N28
\tty_subsystem_0|tto_state_gen|and_11|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\ = (\not_reset~combout\ & ((\tty_subsystem_0|tto_state_gen|and_7|output~combout\) # ((!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \tty_subsystem_0|tto_state_gen|and_3|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_7|output~combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\);

-- Location: LCCOMB_X1_Y12_N26
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\) # ((!\tty_subsystem_0|tto_state_gen|and_11|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\,
	datab => \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N8
\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & ((\clk~combout\ & ((\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\clk~combout\ & 
-- (\test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\)))) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datad => \clk~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y11_N0
\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\ = (!\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X2_Y11_N16
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\ = (\not_reset~combout\ & (((\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\) # (!\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\)) # 
-- (!\tty_subsystem_0|tti_state_gen|and_9|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X5_Y11_N16
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\ = (\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\ & ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\) # 
-- ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\ & \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\);

-- Location: LCCOMB_X5_Y11_N22
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & ((\tty_subsystem_0|tti_state_gen|and_9|output~3_combout\) # 
-- (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y12_N20
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\))) # 
-- (!\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y12_N2
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y12_N30
\tty_subsystem_0|tto_state_gen|or_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|or_4|output~combout\ = ((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & !\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\)) # 
-- (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|or_4|output~combout\);

-- Location: LCCOMB_X5_Y12_N26
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & (((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- \tty_subsystem_0|tto_state_gen|or_4|output~combout\)) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & 
-- (((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X5_Y12_N6
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y12_N4
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & (\not_reset~combout\ & \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X5_Y12_N22
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ & (\not_reset~combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\) # (!\tty_subsystem_0|tto_state_gen|and_3|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X5_Y12_N12
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_state_gen|or_4|output~combout\ & 
-- \tty_subsystem_0|tto_state_gen|and_3|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X5_Y12_N20
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\ & 
-- ((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y12_N22
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y12_N0
\tty_subsystem_0|tto_state_gen|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\);

-- Location: LCCOMB_X6_Y11_N10
\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y12_N14
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\ = ((\tty_subsystem_0|output_clock_divider|clk_out_int~regout\) # ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X5_Y12_N14
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\)))) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\) # 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y12_N8
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\) # (!\not_reset~combout\)))) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\) # 
-- ((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X5_Y12_N24
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y12_N16
\tty_subsystem_0|tto_state_gen|and_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- ((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\))) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\))))) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\);

-- Location: LCCOMB_X2_Y11_N28
\test_logic|and_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|and_2|output~0_combout\ = (\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ & ((\test_logic|ms_jk_ff_0|nand_6|output~1_combout\) # ((!\clk~combout\ & \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\,
	combout => \test_logic|and_2|output~0_combout\);

-- Location: LCCOMB_X2_Y11_N6
\test_logic|and_2|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|and_2|output~1_combout\ = (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & \test_logic|and_2|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~0_combout\,
	combout => \test_logic|and_2|output~1_combout\);

-- Location: LCCOMB_X2_Y11_N20
\tty_subsystem_0|or_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|or_0|output~combout\ = (\clk~combout\ & ((\test_logic|and_2|output~1_combout\) # ((\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & \tty_subsystem_0|tto_state_gen|and_3|output~combout\)))) # (!\clk~combout\ & 
-- (\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & (\tty_subsystem_0|tto_state_gen|and_3|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	datad => \test_logic|and_2|output~1_combout\,
	combout => \tty_subsystem_0|or_0|output~combout\);

-- Location: CLKCTRL_G1
\tty_subsystem_0|or_0|output~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tty_subsystem_0|or_0|output~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tty_subsystem_0|or_0|output~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y11_N4
\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & ((\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\))) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y11_N12
\tty_subsystem_0|tti_state_gen|and_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ = \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ $ (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ & \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\);

-- Location: LCCOMB_X6_Y11_N16
\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\)) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & 
-- (\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X6_Y11_N0
\tty_subsystem_0|tto_register|or_6_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_6_0|output~0_combout\ = (\test_logic|and_2|output~1_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\))) # (!\test_logic|and_2|output~1_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_6_0|output~0_combout\);

-- Location: LCCOMB_X6_Y11_N2
\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|or_6_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\ & (((\tty_subsystem_0|or_0|output~combout\ & 
-- \tty_subsystem_0|tto_register|or_6_0|output~0_combout\)) # (!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|or_6_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X6_Y11_N20
\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & (\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N14
\tty_subsystem_0|tto_register|or_7_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_7_0|output~0_combout\ = (\test_logic|and_2|output~1_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\test_logic|and_2|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_7_0|output~0_combout\);

-- Location: LCCOMB_X1_Y11_N0
\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
-- (\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & \tty_subsystem_0|or_0|output~combout\))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\ & (((\tty_subsystem_0|tto_register|or_7_0|output~0_combout\) # 
-- (!\tty_subsystem_0|or_0|output~combout\)) # (!\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|or_7_0|output~0_combout\,
	datad => \tty_subsystem_0|or_0|output~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y11_N4
\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & (\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y12_N4
\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\) # ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\ & 
-- ((\tty_subsystem_0|output_clock_divider|clk_out_int~regout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\,
	datab => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y12_N10
\tty_subsystem_0|tto_state_gen|nand_0|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|nand_0|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\) # (\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|nand_0|output~1_combout\);

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

-- Location: LCCOMB_X2_Y13_N6
\heartbeat_divider|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~0_combout\ = \heartbeat_divider|prescaler\(0) $ (VCC)
-- \heartbeat_divider|Add0~1\ = CARRY(\heartbeat_divider|prescaler\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(0),
	datad => VCC,
	combout => \heartbeat_divider|Add0~0_combout\,
	cout => \heartbeat_divider|Add0~1\);

-- Location: LCCOMB_X2_Y13_N8
\heartbeat_divider|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~2_combout\ = (\heartbeat_divider|prescaler\(1) & (!\heartbeat_divider|Add0~1\)) # (!\heartbeat_divider|prescaler\(1) & ((\heartbeat_divider|Add0~1\) # (GND)))
-- \heartbeat_divider|Add0~3\ = CARRY((!\heartbeat_divider|Add0~1\) # (!\heartbeat_divider|prescaler\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(1),
	datad => VCC,
	cin => \heartbeat_divider|Add0~1\,
	combout => \heartbeat_divider|Add0~2_combout\,
	cout => \heartbeat_divider|Add0~3\);

-- Location: LCFF_X2_Y13_N9
\heartbeat_divider|prescaler[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|Add0~2_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(1));

-- Location: LCCOMB_X2_Y13_N10
\heartbeat_divider|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~4_combout\ = (\heartbeat_divider|prescaler\(2) & (\heartbeat_divider|Add0~3\ $ (GND))) # (!\heartbeat_divider|prescaler\(2) & (!\heartbeat_divider|Add0~3\ & VCC))
-- \heartbeat_divider|Add0~5\ = CARRY((\heartbeat_divider|prescaler\(2) & !\heartbeat_divider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(2),
	datad => VCC,
	cin => \heartbeat_divider|Add0~3\,
	combout => \heartbeat_divider|Add0~4_combout\,
	cout => \heartbeat_divider|Add0~5\);

-- Location: LCCOMB_X2_Y13_N14
\heartbeat_divider|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~8_combout\ = (\heartbeat_divider|prescaler\(4) & (\heartbeat_divider|Add0~7\ $ (GND))) # (!\heartbeat_divider|prescaler\(4) & (!\heartbeat_divider|Add0~7\ & VCC))
-- \heartbeat_divider|Add0~9\ = CARRY((\heartbeat_divider|prescaler\(4) & !\heartbeat_divider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(4),
	datad => VCC,
	cin => \heartbeat_divider|Add0~7\,
	combout => \heartbeat_divider|Add0~8_combout\,
	cout => \heartbeat_divider|Add0~9\);

-- Location: LCFF_X2_Y13_N15
\heartbeat_divider|prescaler[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|Add0~8_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(4));

-- Location: LCCOMB_X2_Y13_N18
\heartbeat_divider|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~12_combout\ = (\heartbeat_divider|prescaler\(6) & (\heartbeat_divider|Add0~11\ $ (GND))) # (!\heartbeat_divider|prescaler\(6) & (!\heartbeat_divider|Add0~11\ & VCC))
-- \heartbeat_divider|Add0~13\ = CARRY((\heartbeat_divider|prescaler\(6) & !\heartbeat_divider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(6),
	datad => VCC,
	cin => \heartbeat_divider|Add0~11\,
	combout => \heartbeat_divider|Add0~12_combout\,
	cout => \heartbeat_divider|Add0~13\);

-- Location: LCFF_X2_Y13_N19
\heartbeat_divider|prescaler[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|Add0~12_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(6));

-- Location: LCCOMB_X2_Y13_N20
\heartbeat_divider|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~14_combout\ = (\heartbeat_divider|prescaler\(7) & (!\heartbeat_divider|Add0~13\)) # (!\heartbeat_divider|prescaler\(7) & ((\heartbeat_divider|Add0~13\) # (GND)))
-- \heartbeat_divider|Add0~15\ = CARRY((!\heartbeat_divider|Add0~13\) # (!\heartbeat_divider|prescaler\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(7),
	datad => VCC,
	cin => \heartbeat_divider|Add0~13\,
	combout => \heartbeat_divider|Add0~14_combout\,
	cout => \heartbeat_divider|Add0~15\);

-- Location: LCCOMB_X2_Y13_N4
\heartbeat_divider|prescaler~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|prescaler~11_combout\ = (\heartbeat_divider|Add0~14_combout\ & !\heartbeat_divider|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \heartbeat_divider|Add0~14_combout\,
	datad => \heartbeat_divider|Equal0~8_combout\,
	combout => \heartbeat_divider|prescaler~11_combout\);

-- Location: LCFF_X2_Y13_N5
\heartbeat_divider|prescaler[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|prescaler~11_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(7));

-- Location: LCCOMB_X2_Y13_N22
\heartbeat_divider|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~16_combout\ = (\heartbeat_divider|prescaler\(8) & (\heartbeat_divider|Add0~15\ $ (GND))) # (!\heartbeat_divider|prescaler\(8) & (!\heartbeat_divider|Add0~15\ & VCC))
-- \heartbeat_divider|Add0~17\ = CARRY((\heartbeat_divider|prescaler\(8) & !\heartbeat_divider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(8),
	datad => VCC,
	cin => \heartbeat_divider|Add0~15\,
	combout => \heartbeat_divider|Add0~16_combout\,
	cout => \heartbeat_divider|Add0~17\);

-- Location: LCFF_X2_Y13_N23
\heartbeat_divider|prescaler[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|Add0~16_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(8));

-- Location: LCCOMB_X2_Y13_N26
\heartbeat_divider|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~20_combout\ = (\heartbeat_divider|prescaler\(10) & (\heartbeat_divider|Add0~19\ $ (GND))) # (!\heartbeat_divider|prescaler\(10) & (!\heartbeat_divider|Add0~19\ & VCC))
-- \heartbeat_divider|Add0~21\ = CARRY((\heartbeat_divider|prescaler\(10) & !\heartbeat_divider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(10),
	datad => VCC,
	cin => \heartbeat_divider|Add0~19\,
	combout => \heartbeat_divider|Add0~20_combout\,
	cout => \heartbeat_divider|Add0~21\);

-- Location: LCFF_X2_Y13_N27
\heartbeat_divider|prescaler[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|Add0~20_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(10));

-- Location: LCCOMB_X2_Y13_N2
\heartbeat_divider|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Equal0~5_combout\ = (!\heartbeat_divider|prescaler\(9) & (!\heartbeat_divider|prescaler\(10) & (!\heartbeat_divider|prescaler\(7) & !\heartbeat_divider|prescaler\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(9),
	datab => \heartbeat_divider|prescaler\(10),
	datac => \heartbeat_divider|prescaler\(7),
	datad => \heartbeat_divider|prescaler\(8),
	combout => \heartbeat_divider|Equal0~5_combout\);

-- Location: LCFF_X2_Y13_N11
\heartbeat_divider|prescaler[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|Add0~4_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(2));

-- Location: LCCOMB_X3_Y13_N16
\heartbeat_divider|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Equal0~7_combout\ = (\heartbeat_divider|prescaler\(1) & \heartbeat_divider|prescaler\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \heartbeat_divider|prescaler\(1),
	datad => \heartbeat_divider|prescaler\(2),
	combout => \heartbeat_divider|Equal0~7_combout\);

-- Location: LCCOMB_X2_Y13_N28
\heartbeat_divider|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~22_combout\ = (\heartbeat_divider|prescaler\(11) & (!\heartbeat_divider|Add0~21\)) # (!\heartbeat_divider|prescaler\(11) & ((\heartbeat_divider|Add0~21\) # (GND)))
-- \heartbeat_divider|Add0~23\ = CARRY((!\heartbeat_divider|Add0~21\) # (!\heartbeat_divider|prescaler\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(11),
	datad => VCC,
	cin => \heartbeat_divider|Add0~21\,
	combout => \heartbeat_divider|Add0~22_combout\,
	cout => \heartbeat_divider|Add0~23\);

-- Location: LCFF_X2_Y13_N29
\heartbeat_divider|prescaler[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|Add0~22_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(11));

-- Location: LCCOMB_X2_Y13_N30
\heartbeat_divider|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~24_combout\ = (\heartbeat_divider|prescaler\(12) & (\heartbeat_divider|Add0~23\ $ (GND))) # (!\heartbeat_divider|prescaler\(12) & (!\heartbeat_divider|Add0~23\ & VCC))
-- \heartbeat_divider|Add0~25\ = CARRY((\heartbeat_divider|prescaler\(12) & !\heartbeat_divider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(12),
	datad => VCC,
	cin => \heartbeat_divider|Add0~23\,
	combout => \heartbeat_divider|Add0~24_combout\,
	cout => \heartbeat_divider|Add0~25\);

-- Location: LCCOMB_X3_Y12_N10
\heartbeat_divider|prescaler~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|prescaler~10_combout\ = (!\heartbeat_divider|Equal0~8_combout\ & \heartbeat_divider|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \heartbeat_divider|Equal0~8_combout\,
	datad => \heartbeat_divider|Add0~24_combout\,
	combout => \heartbeat_divider|prescaler~10_combout\);

-- Location: LCFF_X3_Y12_N11
\heartbeat_divider|prescaler[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|prescaler~10_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(12));

-- Location: LCCOMB_X2_Y12_N0
\heartbeat_divider|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~26_combout\ = (\heartbeat_divider|prescaler\(13) & (!\heartbeat_divider|Add0~25\)) # (!\heartbeat_divider|prescaler\(13) & ((\heartbeat_divider|Add0~25\) # (GND)))
-- \heartbeat_divider|Add0~27\ = CARRY((!\heartbeat_divider|Add0~25\) # (!\heartbeat_divider|prescaler\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(13),
	datad => VCC,
	cin => \heartbeat_divider|Add0~25\,
	combout => \heartbeat_divider|Add0~26_combout\,
	cout => \heartbeat_divider|Add0~27\);

-- Location: LCCOMB_X3_Y12_N24
\heartbeat_divider|prescaler~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|prescaler~9_combout\ = (!\heartbeat_divider|Equal0~8_combout\ & \heartbeat_divider|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|Equal0~8_combout\,
	datac => \heartbeat_divider|Add0~26_combout\,
	combout => \heartbeat_divider|prescaler~9_combout\);

-- Location: LCFF_X3_Y12_N25
\heartbeat_divider|prescaler[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|prescaler~9_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(13));

-- Location: LCCOMB_X2_Y12_N2
\heartbeat_divider|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~28_combout\ = (\heartbeat_divider|prescaler\(14) & (\heartbeat_divider|Add0~27\ $ (GND))) # (!\heartbeat_divider|prescaler\(14) & (!\heartbeat_divider|Add0~27\ & VCC))
-- \heartbeat_divider|Add0~29\ = CARRY((\heartbeat_divider|prescaler\(14) & !\heartbeat_divider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(14),
	datad => VCC,
	cin => \heartbeat_divider|Add0~27\,
	combout => \heartbeat_divider|Add0~28_combout\,
	cout => \heartbeat_divider|Add0~29\);

-- Location: LCCOMB_X3_Y12_N14
\heartbeat_divider|prescaler~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|prescaler~8_combout\ = (!\heartbeat_divider|Equal0~8_combout\ & \heartbeat_divider|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \heartbeat_divider|Equal0~8_combout\,
	datad => \heartbeat_divider|Add0~28_combout\,
	combout => \heartbeat_divider|prescaler~8_combout\);

-- Location: LCFF_X3_Y12_N15
\heartbeat_divider|prescaler[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|prescaler~8_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(14));

-- Location: LCCOMB_X2_Y12_N4
\heartbeat_divider|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~30_combout\ = (\heartbeat_divider|prescaler\(15) & (!\heartbeat_divider|Add0~29\)) # (!\heartbeat_divider|prescaler\(15) & ((\heartbeat_divider|Add0~29\) # (GND)))
-- \heartbeat_divider|Add0~31\ = CARRY((!\heartbeat_divider|Add0~29\) # (!\heartbeat_divider|prescaler\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(15),
	datad => VCC,
	cin => \heartbeat_divider|Add0~29\,
	combout => \heartbeat_divider|Add0~30_combout\,
	cout => \heartbeat_divider|Add0~31\);

-- Location: LCCOMB_X2_Y12_N26
\heartbeat_divider|prescaler~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|prescaler~7_combout\ = (\heartbeat_divider|Add0~30_combout\ & !\heartbeat_divider|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \heartbeat_divider|Add0~30_combout\,
	datad => \heartbeat_divider|Equal0~8_combout\,
	combout => \heartbeat_divider|prescaler~7_combout\);

-- Location: LCFF_X2_Y12_N27
\heartbeat_divider|prescaler[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|prescaler~7_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(15));

-- Location: LCCOMB_X2_Y12_N6
\heartbeat_divider|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~32_combout\ = (\heartbeat_divider|prescaler\(16) & (\heartbeat_divider|Add0~31\ $ (GND))) # (!\heartbeat_divider|prescaler\(16) & (!\heartbeat_divider|Add0~31\ & VCC))
-- \heartbeat_divider|Add0~33\ = CARRY((\heartbeat_divider|prescaler\(16) & !\heartbeat_divider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(16),
	datad => VCC,
	cin => \heartbeat_divider|Add0~31\,
	combout => \heartbeat_divider|Add0~32_combout\,
	cout => \heartbeat_divider|Add0~33\);

-- Location: LCCOMB_X2_Y12_N8
\heartbeat_divider|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~34_combout\ = (\heartbeat_divider|prescaler\(17) & (!\heartbeat_divider|Add0~33\)) # (!\heartbeat_divider|prescaler\(17) & ((\heartbeat_divider|Add0~33\) # (GND)))
-- \heartbeat_divider|Add0~35\ = CARRY((!\heartbeat_divider|Add0~33\) # (!\heartbeat_divider|prescaler\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(17),
	datad => VCC,
	cin => \heartbeat_divider|Add0~33\,
	combout => \heartbeat_divider|Add0~34_combout\,
	cout => \heartbeat_divider|Add0~35\);

-- Location: LCCOMB_X2_Y12_N28
\heartbeat_divider|prescaler~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|prescaler~6_combout\ = (\heartbeat_divider|Add0~34_combout\ & !\heartbeat_divider|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \heartbeat_divider|Add0~34_combout\,
	datad => \heartbeat_divider|Equal0~8_combout\,
	combout => \heartbeat_divider|prescaler~6_combout\);

-- Location: LCFF_X2_Y12_N29
\heartbeat_divider|prescaler[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|prescaler~6_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(17));

-- Location: LCCOMB_X2_Y12_N10
\heartbeat_divider|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~36_combout\ = (\heartbeat_divider|prescaler\(18) & (\heartbeat_divider|Add0~35\ $ (GND))) # (!\heartbeat_divider|prescaler\(18) & (!\heartbeat_divider|Add0~35\ & VCC))
-- \heartbeat_divider|Add0~37\ = CARRY((\heartbeat_divider|prescaler\(18) & !\heartbeat_divider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(18),
	datad => VCC,
	cin => \heartbeat_divider|Add0~35\,
	combout => \heartbeat_divider|Add0~36_combout\,
	cout => \heartbeat_divider|Add0~37\);

-- Location: LCCOMB_X2_Y12_N12
\heartbeat_divider|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~38_combout\ = (\heartbeat_divider|prescaler\(19) & (!\heartbeat_divider|Add0~37\)) # (!\heartbeat_divider|prescaler\(19) & ((\heartbeat_divider|Add0~37\) # (GND)))
-- \heartbeat_divider|Add0~39\ = CARRY((!\heartbeat_divider|Add0~37\) # (!\heartbeat_divider|prescaler\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(19),
	datad => VCC,
	cin => \heartbeat_divider|Add0~37\,
	combout => \heartbeat_divider|Add0~38_combout\,
	cout => \heartbeat_divider|Add0~39\);

-- Location: LCCOMB_X3_Y12_N8
\heartbeat_divider|prescaler~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|prescaler~5_combout\ = (!\heartbeat_divider|Equal0~8_combout\ & \heartbeat_divider|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \heartbeat_divider|Equal0~8_combout\,
	datad => \heartbeat_divider|Add0~38_combout\,
	combout => \heartbeat_divider|prescaler~5_combout\);

-- Location: LCFF_X3_Y12_N9
\heartbeat_divider|prescaler[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|prescaler~5_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(19));

-- Location: LCCOMB_X2_Y12_N16
\heartbeat_divider|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~42_combout\ = (\heartbeat_divider|prescaler\(21) & (!\heartbeat_divider|Add0~41\)) # (!\heartbeat_divider|prescaler\(21) & ((\heartbeat_divider|Add0~41\) # (GND)))
-- \heartbeat_divider|Add0~43\ = CARRY((!\heartbeat_divider|Add0~41\) # (!\heartbeat_divider|prescaler\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(21),
	datad => VCC,
	cin => \heartbeat_divider|Add0~41\,
	combout => \heartbeat_divider|Add0~42_combout\,
	cout => \heartbeat_divider|Add0~43\);

-- Location: LCCOMB_X2_Y12_N30
\heartbeat_divider|prescaler~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|prescaler~3_combout\ = (\heartbeat_divider|Add0~42_combout\ & !\heartbeat_divider|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \heartbeat_divider|Add0~42_combout\,
	datad => \heartbeat_divider|Equal0~8_combout\,
	combout => \heartbeat_divider|prescaler~3_combout\);

-- Location: LCFF_X2_Y12_N31
\heartbeat_divider|prescaler[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|prescaler~3_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(21));

-- Location: LCCOMB_X2_Y12_N18
\heartbeat_divider|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~44_combout\ = (\heartbeat_divider|prescaler\(22) & (\heartbeat_divider|Add0~43\ $ (GND))) # (!\heartbeat_divider|prescaler\(22) & (!\heartbeat_divider|Add0~43\ & VCC))
-- \heartbeat_divider|Add0~45\ = CARRY((\heartbeat_divider|prescaler\(22) & !\heartbeat_divider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(22),
	datad => VCC,
	cin => \heartbeat_divider|Add0~43\,
	combout => \heartbeat_divider|Add0~44_combout\,
	cout => \heartbeat_divider|Add0~45\);

-- Location: LCCOMB_X3_Y12_N28
\heartbeat_divider|prescaler~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|prescaler~2_combout\ = (!\heartbeat_divider|Equal0~8_combout\ & \heartbeat_divider|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \heartbeat_divider|Equal0~8_combout\,
	datad => \heartbeat_divider|Add0~44_combout\,
	combout => \heartbeat_divider|prescaler~2_combout\);

-- Location: LCFF_X3_Y12_N29
\heartbeat_divider|prescaler[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|prescaler~2_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(22));

-- Location: LCCOMB_X3_Y12_N2
\heartbeat_divider|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Equal0~1_combout\ = (\heartbeat_divider|prescaler\(20) & (\heartbeat_divider|prescaler\(19) & (\heartbeat_divider|prescaler\(21) & \heartbeat_divider|prescaler\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(20),
	datab => \heartbeat_divider|prescaler\(19),
	datac => \heartbeat_divider|prescaler\(21),
	datad => \heartbeat_divider|prescaler\(22),
	combout => \heartbeat_divider|Equal0~1_combout\);

-- Location: LCFF_X2_Y12_N7
\heartbeat_divider|prescaler[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|Add0~32_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(16));

-- Location: LCFF_X2_Y12_N11
\heartbeat_divider|prescaler[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|Add0~36_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(18));

-- Location: LCCOMB_X3_Y12_N20
\heartbeat_divider|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Equal0~2_combout\ = (\heartbeat_divider|prescaler\(17) & (\heartbeat_divider|prescaler\(15) & (!\heartbeat_divider|prescaler\(16) & !\heartbeat_divider|prescaler\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(17),
	datab => \heartbeat_divider|prescaler\(15),
	datac => \heartbeat_divider|prescaler\(16),
	datad => \heartbeat_divider|prescaler\(18),
	combout => \heartbeat_divider|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y12_N22
\heartbeat_divider|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~48_combout\ = (\heartbeat_divider|prescaler\(24) & (\heartbeat_divider|Add0~47\ $ (GND))) # (!\heartbeat_divider|prescaler\(24) & (!\heartbeat_divider|Add0~47\ & VCC))
-- \heartbeat_divider|Add0~49\ = CARRY((\heartbeat_divider|prescaler\(24) & !\heartbeat_divider|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|prescaler\(24),
	datad => VCC,
	cin => \heartbeat_divider|Add0~47\,
	combout => \heartbeat_divider|Add0~48_combout\,
	cout => \heartbeat_divider|Add0~49\);

-- Location: LCFF_X2_Y12_N23
\heartbeat_divider|prescaler[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|Add0~48_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(24));

-- Location: LCFF_X2_Y13_N7
\heartbeat_divider|prescaler[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|Add0~0_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(0));

-- Location: LCCOMB_X2_Y12_N24
\heartbeat_divider|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Add0~50_combout\ = \heartbeat_divider|Add0~49\ $ (\heartbeat_divider|prescaler\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \heartbeat_divider|prescaler\(25),
	cin => \heartbeat_divider|Add0~49\,
	combout => \heartbeat_divider|Add0~50_combout\);

-- Location: LCCOMB_X3_Y12_N30
\heartbeat_divider|prescaler~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|prescaler~0_combout\ = (!\heartbeat_divider|Equal0~8_combout\ & \heartbeat_divider|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \heartbeat_divider|Equal0~8_combout\,
	datad => \heartbeat_divider|Add0~50_combout\,
	combout => \heartbeat_divider|prescaler~0_combout\);

-- Location: LCFF_X3_Y12_N31
\heartbeat_divider|prescaler[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|prescaler~0_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|prescaler\(25));

-- Location: LCCOMB_X3_Y12_N22
\heartbeat_divider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Equal0~0_combout\ = (\heartbeat_divider|prescaler\(23) & (!\heartbeat_divider|prescaler\(24) & (\heartbeat_divider|prescaler\(0) & \heartbeat_divider|prescaler\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|prescaler\(23),
	datab => \heartbeat_divider|prescaler\(24),
	datac => \heartbeat_divider|prescaler\(0),
	datad => \heartbeat_divider|prescaler\(25),
	combout => \heartbeat_divider|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y12_N26
\heartbeat_divider|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Equal0~4_combout\ = (\heartbeat_divider|Equal0~3_combout\ & (\heartbeat_divider|Equal0~1_combout\ & (\heartbeat_divider|Equal0~2_combout\ & \heartbeat_divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|Equal0~3_combout\,
	datab => \heartbeat_divider|Equal0~1_combout\,
	datac => \heartbeat_divider|Equal0~2_combout\,
	datad => \heartbeat_divider|Equal0~0_combout\,
	combout => \heartbeat_divider|Equal0~4_combout\);

-- Location: LCCOMB_X3_Y12_N4
\heartbeat_divider|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|Equal0~8_combout\ = (\heartbeat_divider|Equal0~6_combout\ & (\heartbeat_divider|Equal0~5_combout\ & (\heartbeat_divider|Equal0~7_combout\ & \heartbeat_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat_divider|Equal0~6_combout\,
	datab => \heartbeat_divider|Equal0~5_combout\,
	datac => \heartbeat_divider|Equal0~7_combout\,
	datad => \heartbeat_divider|Equal0~4_combout\,
	combout => \heartbeat_divider|Equal0~8_combout\);

-- Location: LCCOMB_X3_Y12_N0
\heartbeat_divider|clk_out_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \heartbeat_divider|clk_out_int~0_combout\ = \heartbeat_divider|Equal0~8_combout\ $ (\heartbeat_divider|clk_out_int~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat_divider|Equal0~8_combout\,
	datac => \heartbeat_divider|clk_out_int~regout\,
	combout => \heartbeat_divider|clk_out_int~0_combout\);

-- Location: LCFF_X3_Y12_N1
\heartbeat_divider|clk_out_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \heartbeat_divider|clk_out_int~0_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \heartbeat_divider|clk_out_int~regout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RX_FLAG~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RX_FLAG);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TX~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \tty_subsystem_0|tto_state_gen|nand_0|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TX);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TX_FLAG~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TX_FLAG);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\in_sample_clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \tty_subsystem_0|input_clock_divider|ALT_INV_clk_out_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_in_sample_clk);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_sample_clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \tty_subsystem_0|output_clock_divider|ALT_INV_clk_out_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_sample_clk);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\heart_beat~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \heartbeat_divider|clk_out_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_heart_beat);
END structure;


