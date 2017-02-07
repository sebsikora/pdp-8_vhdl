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

-- DATE "02/07/2017 22:16:07"

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
	TX_FLAG : OUT std_logic
	);
END tty_subsystem_test;

-- Design Ports Information
-- RX_FLAG	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TX	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TX_FLAG	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- not_reset	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \tty_subsystem_0|or_0|output~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|Add0~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|Add0~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|Add0~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_3_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_2_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_1_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~4_combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_10|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|Equal0~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|clk_out_int~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|clk_out_int~regout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_3|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_9|output~1_combout\ : std_logic;
SIGNAL \test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \test_logic|ms_jk_ff_0|nand_6|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_7|output~combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|Add0~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|Equal0~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|clk_out_int~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|clk_out_int~regout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_6|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_6|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|or_1|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~4_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~6_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|or_4|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \test_logic|and_2|output~0_combout\ : std_logic;
SIGNAL \test_logic|and_2|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|or_0|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|or_0|output~clkctrl_outclk\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \RX~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_4_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_5_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_6_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_7_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|nand_0|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|nand_0|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ALT_INV_not_reset~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_not_reset <= not_reset;
ww_RX <= RX;
RX_FLAG <= ww_RX_FLAG;
TX <= ww_TX;
TX_FLAG <= ww_TX_FLAG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\tty_subsystem_0|or_0|output~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \tty_subsystem_0|or_0|output~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\;
\tty_subsystem_0|tto_state_gen|nand_0|ALT_INV_output~1_combout\ <= NOT \tty_subsystem_0|tto_state_gen|nand_0|output~1_combout\;
\ALT_INV_not_reset~combout\ <= NOT \not_reset~combout\;

-- Location: LCFF_X12_Y13_N11
\tty_subsystem_0|output_clock_divider|prescaler[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler~1_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(3));

-- Location: LCCOMB_X8_Y11_N26
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ = (!\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X9_Y10_N20
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

-- Location: LCCOMB_X12_Y12_N8
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\ = (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ & (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & 
-- !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\);

-- Location: LCFF_X12_Y10_N13
\tty_subsystem_0|input_clock_divider|prescaler[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler~1_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(3));

-- Location: LCCOMB_X12_Y13_N26
\tty_subsystem_0|output_clock_divider|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|Add0~0_combout\ = \tty_subsystem_0|output_clock_divider|prescaler\(3) $ (((\tty_subsystem_0|output_clock_divider|prescaler\(1) & (\tty_subsystem_0|output_clock_divider|prescaler\(0) & 
-- \tty_subsystem_0|output_clock_divider|prescaler\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|prescaler\(3),
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(1),
	datac => \tty_subsystem_0|output_clock_divider|prescaler\(0),
	datad => \tty_subsystem_0|output_clock_divider|prescaler\(2),
	combout => \tty_subsystem_0|output_clock_divider|Add0~0_combout\);

-- Location: LCCOMB_X12_Y13_N10
\tty_subsystem_0|output_clock_divider|prescaler~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler~1_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_subsystem_0|output_clock_divider|Add0~0_combout\ & \tty_subsystem_0|output_clock_divider|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|output_clock_divider|Add0~0_combout\,
	datad => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler~1_combout\);

-- Location: LCCOMB_X12_Y13_N12
\tty_subsystem_0|output_clock_divider|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|Add0~1_combout\ = \tty_subsystem_0|output_clock_divider|prescaler\(2) $ (((\tty_subsystem_0|output_clock_divider|prescaler\(1) & \tty_subsystem_0|output_clock_divider|prescaler\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(1),
	datac => \tty_subsystem_0|output_clock_divider|prescaler\(0),
	datad => \tty_subsystem_0|output_clock_divider|prescaler\(2),
	combout => \tty_subsystem_0|output_clock_divider|Add0~1_combout\);

-- Location: LCCOMB_X9_Y10_N2
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ = (\not_reset~combout\ & (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ & 
-- ((!\tty_subsystem_0|tto_state_gen|and_3|output~combout\) # (!\tty_subsystem_0|tto_state_gen|or_4|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X10_Y10_N30
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\) # ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X10_Y10_N4
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X10_Y10_N20
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\ = ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & !\tty_subsystem_0|tto_state_gen|or_4|output~combout\))) # (!\tty_subsystem_0|tto_state_gen|and_3|output~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X10_Y10_N2
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X10_Y10_N16
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\ & 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\ & ((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\ & 
-- (((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\)) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X10_Y10_N6
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\ = ((\tty_subsystem_0|output_clock_divider|clk_out_int~regout\) # ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X12_Y10_N26
\tty_subsystem_0|input_clock_divider|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|Add0~0_combout\ = \tty_subsystem_0|input_clock_divider|prescaler\(3) $ (((\tty_subsystem_0|input_clock_divider|prescaler\(2) & (\tty_subsystem_0|input_clock_divider|prescaler\(1) & 
-- \tty_subsystem_0|input_clock_divider|prescaler\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|prescaler\(3),
	datab => \tty_subsystem_0|input_clock_divider|prescaler\(2),
	datac => \tty_subsystem_0|input_clock_divider|prescaler\(1),
	datad => \tty_subsystem_0|input_clock_divider|prescaler\(0),
	combout => \tty_subsystem_0|input_clock_divider|Add0~0_combout\);

-- Location: LCCOMB_X12_Y10_N12
\tty_subsystem_0|input_clock_divider|prescaler~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ & (\tty_subsystem_0|input_clock_divider|Add0~0_combout\ & \tty_subsystem_0|input_clock_divider|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	datab => \tty_subsystem_0|input_clock_divider|Add0~0_combout\,
	datac => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler~1_combout\);

-- Location: LCCOMB_X12_Y12_N14
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\ = ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\) # ((\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & 
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\);

-- Location: LCCOMB_X8_Y11_N20
\test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~0_combout\ = (\not_reset~combout\ & !\test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X8_Y11_N16
\test_logic|counter_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_7|output~combout\ & ((\test_logic|ms_jk_ff_0|nand_6|output~1_combout\ & (!\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\test_logic|ms_jk_ff_0|nand_6|output~1_combout\ & ((!\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_7|output~combout\,
	datad => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X8_Y10_N26
\test_logic|counter_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\ & (((!\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- ((\test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X9_Y10_N6
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~0_combout\ = ((\not_reset~combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\) # 
-- (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\tty_subsystem_0|tto_state_gen|and_10|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_10|output~2_combout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X8_Y10_N10
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

-- Location: LCCOMB_X8_Y10_N14
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_1|output~0_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|and_10|output~2_combout\ & 
-- (\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|and_10|output~2_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X8_Y10_N12
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

-- Location: LCCOMB_X8_Y10_N8
\tty_subsystem_0|tto_state_gen|and_10|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (((!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\)))) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tto_state_gen|and_10|output~2_combout\) # 
-- (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|and_10|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\,
	datad => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\);

-- Location: LCCOMB_X12_Y12_N28
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ = (!\RX~combout\ & !\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX~combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X12_Y12_N18
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\ = (\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ & ((\tty_subsystem_0|tti_state_gen|and_5|output~1_combout\) # 
-- ((\tty_subsystem_0|tti_state_gen|and_9|output~2_combout\ & !\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|and_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X12_Y12_N24
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ & ((\tty_subsystem_0|tti_state_gen|and_1|output~0_combout\) # 
-- ((!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & \clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_1|output~0_combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\);

-- Location: LCCOMB_X12_Y12_N10
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\ = (\not_reset~combout\ & (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\ & ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\) # 
-- (\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\);

-- Location: LCCOMB_X10_Y10_N24
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

-- Location: LCCOMB_X10_Y11_N28
\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\ & (!\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
-- (\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\ & 
-- (((\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\) # (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X10_Y10_N22
\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datab => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X13_Y11_N2
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~4_combout\ & (((\not_reset~combout\)))) # 
-- (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~4_combout\ & (((!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ & !\tty_subsystem_0|input_clock_divider|clk_out_int~regout\)) # 
-- (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~4_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X14_Y11_N4
\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X14_Y11_N6
\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X14_Y11_N24
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

-- Location: LCCOMB_X8_Y11_N4
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

-- Location: LCCOMB_X9_Y11_N2
\tty_subsystem_0|tto_register|or_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_3_0|output~0_combout\ = (\test_logic|and_2|output~1_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\test_logic|and_2|output~1_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \test_logic|and_2|output~1_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_3_0|output~0_combout\);

-- Location: LCCOMB_X9_Y11_N6
\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\ & (\tty_subsystem_0|or_0|output~combout\ & 
-- \tty_subsystem_0|tto_register|or_3_0|output~0_combout\))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\ & (((\tty_subsystem_0|tto_register|or_3_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|or_3_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X9_Y11_N18
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

-- Location: LCCOMB_X9_Y11_N30
\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X9_Y11_N28
\tty_subsystem_0|tto_register|or_2_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_2_0|output~0_combout\ = (\test_logic|and_2|output~1_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\test_logic|and_2|output~1_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \test_logic|and_2|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_2_0|output~0_combout\);

-- Location: LCCOMB_X9_Y11_N4
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

-- Location: LCCOMB_X9_Y11_N12
\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & (\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X8_Y11_N30
\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X9_Y11_N8
\tty_subsystem_0|tto_register|or_1_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_1_0|output~0_combout\ = (\test_logic|and_2|output~1_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\test_logic|and_2|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \test_logic|and_2|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_1_0|output~0_combout\);

-- Location: LCCOMB_X9_Y11_N10
\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|or_1_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\ & (((\tty_subsystem_0|tto_register|or_1_0|output~0_combout\ & 
-- \tty_subsystem_0|or_0|output~combout\)) # (!\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|or_1_0|output~0_combout\,
	datad => \tty_subsystem_0|or_0|output~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X9_Y11_N26
\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & (\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X9_Y11_N0
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

-- Location: LCCOMB_X9_Y11_N14
\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_1|output~0_combout\ = (!\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & \test_logic|and_2|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X9_Y11_N22
\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_3|output~0_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_1|output~0_combout\ & \tty_subsystem_0|or_0|output~combout\))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_3|output~0_combout\ & (((!\tty_subsystem_0|or_0|output~combout\) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_1|output~0_combout\)) # (!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_3_1|output~0_combout\,
	datad => \tty_subsystem_0|or_0|output~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X13_Y11_N18
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

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X9_Y10_N14
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ & (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ & (((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X9_Y10_N26
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_11|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|and_11|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\);

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

-- Location: LCCOMB_X8_Y10_N22
\tty_subsystem_0|tto_state_gen|and_10|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_10|output~2_combout\ = (\not_reset~combout\ & ((\tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ & (\clk~combout\ & !\tty_subsystem_0|output_clock_divider|clk_out_int~regout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ & ((\clk~combout\) # (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\,
	datab => \clk~combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tto_state_gen|and_10|output~2_combout\);

-- Location: LCCOMB_X8_Y10_N6
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_10|output~2_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\))) # 
-- (!\tty_subsystem_0|tto_state_gen|and_10|output~2_combout\ & (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_10|output~2_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X12_Y13_N2
\tty_subsystem_0|output_clock_divider|prescaler~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler~3_combout\ = (\tty_subsystem_0|output_clock_divider|Equal0~0_combout\ & (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_subsystem_0|output_clock_divider|prescaler\(0) $ 
-- (\tty_subsystem_0|output_clock_divider|prescaler\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|prescaler\(0),
	datab => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\,
	datac => \tty_subsystem_0|output_clock_divider|prescaler\(1),
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler~3_combout\);

-- Location: LCFF_X12_Y13_N3
\tty_subsystem_0|output_clock_divider|prescaler[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler~3_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(1));

-- Location: LCCOMB_X12_Y13_N24
\tty_subsystem_0|output_clock_divider|prescaler~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler~0_combout\ = (\tty_subsystem_0|output_clock_divider|Equal0~0_combout\ & (!\tty_subsystem_0|output_clock_divider|prescaler\(0) & !\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\,
	datac => \tty_subsystem_0|output_clock_divider|prescaler\(0),
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler~0_combout\);

-- Location: LCFF_X12_Y13_N25
\tty_subsystem_0|output_clock_divider|prescaler[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler~0_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(0));

-- Location: LCCOMB_X12_Y13_N0
\tty_subsystem_0|output_clock_divider|prescaler~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler~2_combout\ = (\tty_subsystem_0|output_clock_divider|Add0~1_combout\ & (\tty_subsystem_0|output_clock_divider|Equal0~0_combout\ & !\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|Add0~1_combout\,
	datab => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler~2_combout\);

-- Location: LCFF_X12_Y13_N1
\tty_subsystem_0|output_clock_divider|prescaler[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler~2_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(2));

-- Location: LCCOMB_X12_Y13_N28
\tty_subsystem_0|output_clock_divider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|Equal0~0_combout\ = (((\tty_subsystem_0|output_clock_divider|prescaler\(0)) # (!\tty_subsystem_0|output_clock_divider|prescaler\(2))) # (!\tty_subsystem_0|output_clock_divider|prescaler\(1))) # 
-- (!\tty_subsystem_0|output_clock_divider|prescaler\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|prescaler\(3),
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(1),
	datac => \tty_subsystem_0|output_clock_divider|prescaler\(0),
	datad => \tty_subsystem_0|output_clock_divider|prescaler\(2),
	combout => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y10_N28
\tty_subsystem_0|output_clock_divider|clk_out_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|clk_out_int~0_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ $ (!\tty_subsystem_0|output_clock_divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\,
	combout => \tty_subsystem_0|output_clock_divider|clk_out_int~0_combout\);

-- Location: LCFF_X8_Y10_N29
\tty_subsystem_0|output_clock_divider|clk_out_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|clk_out_int~0_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\);

-- Location: LCCOMB_X8_Y10_N16
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

-- Location: LCCOMB_X8_Y10_N30
\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~1_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X8_Y10_N4
\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\) # 
-- ((\tty_subsystem_0|output_clock_divider|clk_out_int~regout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\,
	datab => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\);

-- Location: LCCOMB_X8_Y10_N18
\tty_subsystem_0|tto_state_gen|and_3|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_3|output~combout\ = (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\) # ((!\not_reset~combout\ & 
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_3|output~combout\);

-- Location: LCCOMB_X8_Y10_N24
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

-- Location: LCCOMB_X9_Y10_N4
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\) # ((!\tty_subsystem_0|tto_state_gen|and_11|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\);

-- Location: LCCOMB_X8_Y10_N0
\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & ((\clk~combout\ & ((\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\clk~combout\ & 
-- (\test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\)))) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datad => \clk~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X8_Y11_N0
\tty_subsystem_0|tti_state_gen|and_9|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_9|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & \clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_9|output~1_combout\);

-- Location: LCCOMB_X8_Y11_N8
\test_logic|ms_jk_ff_0|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\ = (\not_reset~combout\ & ((\test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\) # ((!\test_logic|ms_jk_ff_0|nand_6|output~1_combout\ & \tty_subsystem_0|tti_state_gen|and_9|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\,
	datac => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_9|output~1_combout\,
	combout => \test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X8_Y11_N10
\test_logic|ms_jk_ff_0|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\ = (\test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\ & (((!\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\) # (!\clk~combout\)) # (!\test_logic|ms_jk_ff_0|nand_6|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datab => \test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\,
	datac => \clk~combout\,
	datad => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X8_Y11_N6
\test_logic|ms_jk_ff_0|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|ms_jk_ff_0|nand_6|output~1_combout\ = (\clk~combout\ & (\test_logic|ms_jk_ff_0|nand_6|output~1_combout\)) # (!\clk~combout\ & ((\test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \clk~combout\,
	datad => \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\,
	combout => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\);

-- Location: LCCOMB_X8_Y11_N12
\test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~1_combout\ = (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\) # ((\test_logic|ms_jk_ff_0|nand_6|output~1_combout\ & ((\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N16
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

-- Location: LCCOMB_X8_Y11_N28
\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\ & (\test_logic|ms_jk_ff_0|nand_6|output~1_combout\ & 
-- \clk~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datac => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datad => \clk~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~1_combout\);

-- Location: LCCOMB_X8_Y11_N24
\test_logic|counter_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\ = (!\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~1_combout\ & (((!\test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~1_combout\ & \tty_subsystem_0|tto_state_gen|and_7|output~combout\)) # 
-- (!\test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_3_3|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_7|output~combout\,
	datad => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X8_Y10_N2
\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & ((\clk~combout\ & (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\clk~combout\ & 
-- ((\test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\))))) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & (((\test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \clk~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X8_Y11_N18
\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\ = (!\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X8_Y11_N22
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\ = (\not_reset~combout\ & (((\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\) # (!\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\)) # 
-- (!\tty_subsystem_0|tti_state_gen|and_9|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X12_Y12_N20
\tty_subsystem_0|tti_state_gen|and_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_5|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & (\not_reset~combout\ & \clk~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_5|output~1_combout\);

-- Location: LCCOMB_X12_Y12_N26
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ = (\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\ & (!\tty_subsystem_0|tti_state_gen|and_5|output~1_combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\) # (!\tty_subsystem_0|tti_state_gen|and_9|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\,
	datab => \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X12_Y12_N6
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ & ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\) # 
-- ((\tty_subsystem_0|tti_state_gen|and_9|output~2_combout\) # (\tty_subsystem_0|tti_state_gen|and_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\,
	datab => \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\);

-- Location: LCCOMB_X12_Y12_N30
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & !\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\);

-- Location: LCCOMB_X12_Y13_N6
\tty_subsystem_0|input_clock_divider|prescaler~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler~0_combout\ = (\tty_subsystem_0|input_clock_divider|Equal0~0_combout\ & (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ & !\tty_subsystem_0|input_clock_divider|prescaler\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \tty_subsystem_0|input_clock_divider|prescaler\(0),
	combout => \tty_subsystem_0|input_clock_divider|prescaler~0_combout\);

-- Location: LCFF_X12_Y13_N7
\tty_subsystem_0|input_clock_divider|prescaler[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler~0_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(0));

-- Location: LCCOMB_X12_Y13_N8
\tty_subsystem_0|input_clock_divider|prescaler~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler~3_combout\ = (\tty_subsystem_0|input_clock_divider|Equal0~0_combout\ & (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ & (\tty_subsystem_0|input_clock_divider|prescaler\(1) $ 
-- (\tty_subsystem_0|input_clock_divider|prescaler\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \tty_subsystem_0|input_clock_divider|prescaler\(1),
	datad => \tty_subsystem_0|input_clock_divider|prescaler\(0),
	combout => \tty_subsystem_0|input_clock_divider|prescaler~3_combout\);

-- Location: LCFF_X12_Y13_N9
\tty_subsystem_0|input_clock_divider|prescaler[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler~3_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(1));

-- Location: LCCOMB_X12_Y10_N28
\tty_subsystem_0|input_clock_divider|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|Add0~1_combout\ = \tty_subsystem_0|input_clock_divider|prescaler\(2) $ (((\tty_subsystem_0|input_clock_divider|prescaler\(1) & \tty_subsystem_0|input_clock_divider|prescaler\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|input_clock_divider|prescaler\(2),
	datac => \tty_subsystem_0|input_clock_divider|prescaler\(1),
	datad => \tty_subsystem_0|input_clock_divider|prescaler\(0),
	combout => \tty_subsystem_0|input_clock_divider|Add0~1_combout\);

-- Location: LCCOMB_X12_Y10_N2
\tty_subsystem_0|input_clock_divider|prescaler~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler~2_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ & (\tty_subsystem_0|input_clock_divider|Add0~1_combout\ & \tty_subsystem_0|input_clock_divider|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	datab => \tty_subsystem_0|input_clock_divider|Add0~1_combout\,
	datac => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler~2_combout\);

-- Location: LCFF_X12_Y10_N3
\tty_subsystem_0|input_clock_divider|prescaler[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler~2_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(2));

-- Location: LCCOMB_X12_Y10_N0
\tty_subsystem_0|input_clock_divider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|Equal0~0_combout\ = (((\tty_subsystem_0|input_clock_divider|prescaler\(0)) # (!\tty_subsystem_0|input_clock_divider|prescaler\(1))) # (!\tty_subsystem_0|input_clock_divider|prescaler\(2))) # 
-- (!\tty_subsystem_0|input_clock_divider|prescaler\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|prescaler\(3),
	datab => \tty_subsystem_0|input_clock_divider|prescaler\(2),
	datac => \tty_subsystem_0|input_clock_divider|prescaler\(1),
	datad => \tty_subsystem_0|input_clock_divider|prescaler\(0),
	combout => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y11_N20
\tty_subsystem_0|input_clock_divider|clk_out_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|clk_out_int~0_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\ & (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ $ (!\tty_subsystem_0|input_clock_divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\,
	combout => \tty_subsystem_0|input_clock_divider|clk_out_int~0_combout\);

-- Location: LCFF_X12_Y11_N21
\tty_subsystem_0|input_clock_divider|clk_out_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \tty_subsystem_0|input_clock_divider|clk_out_int~0_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\);

-- Location: LCCOMB_X12_Y11_N6
\tty_subsystem_0|tti_state_gen|and_6|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_6|output~combout\ = (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_6|output~combout\);

-- Location: LCCOMB_X12_Y11_N24
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_3|output~0_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ & !\tty_subsystem_0|tti_state_gen|or_1|output~combout\)) # (!\tty_subsystem_0|tti_state_gen|and_6|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|or_1|output~combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_6|output~combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X12_Y12_N12
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_6|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_6|output~0_combout\ = ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\) # ((\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & 
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_6|output~0_combout\);

-- Location: LCCOMB_X12_Y11_N12
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3_combout\)) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\not_reset~combout\ & ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\not_reset~combout\ & 
-- (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~3_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X12_Y11_N18
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\ = (\not_reset~combout\ & (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & 
-- !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X12_Y11_N28
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~1_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_6|output~0_combout\ & (!\tty_subsystem_0|tti_state_gen|or_1|output~combout\ & 
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_6|output~0_combout\,
	datac => \tty_subsystem_0|tti_state_gen|or_1|output~combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~1_combout\);

-- Location: LCCOMB_X12_Y11_N26
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

-- Location: LCCOMB_X12_Y11_N8
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\ = (\not_reset~combout\ & ((\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\))) # (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\)))) # 
-- (!\not_reset~combout\ & (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X12_Y11_N16
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\ & 
-- (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ & (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X13_Y11_N30
\tty_subsystem_0|tti_state_gen|and_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_1|output~0_combout\ = (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ & (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\tty_subsystem_0|input_clock_divider|clk_out_int~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tti_state_gen|and_1|output~0_combout\);

-- Location: LCCOMB_X12_Y11_N4
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ & 
-- (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\) # (\tty_subsystem_0|tti_state_gen|and_1|output~0_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_1|output~0_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X12_Y11_N30
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

-- Location: LCCOMB_X12_Y11_N22
\tty_subsystem_0|tti_state_gen|or_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|or_1|output~combout\ = ((!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ & !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\)) # 
-- (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|or_1|output~combout\);

-- Location: LCCOMB_X12_Y11_N10
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~3_combout\ = (\tty_subsystem_0|tti_state_gen|and_6|output~combout\ & ((\tty_subsystem_0|tti_state_gen|or_1|output~combout\) # 
-- ((!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ & !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|or_1|output~combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_6|output~combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X12_Y12_N2
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~4_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\) # ((\tty_subsystem_0|input_clock_divider|clk_out_int~regout\)))) # (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\ & 
-- (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~3_combout\,
	datad => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~4_combout\);

-- Location: LCCOMB_X12_Y11_N2
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~6_combout\ = (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\ & \not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~6_combout\);

-- Location: LCCOMB_X12_Y12_N0
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\ = (\not_reset~combout\ & ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\ & 
-- ((!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~6_combout\) # (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~4_combout\))) # 
-- (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~4_combout\)))) # (!\not_reset~combout\ & 
-- (((!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~4_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~6_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\);

-- Location: LCCOMB_X12_Y11_N0
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\)))) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\not_reset~combout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\not_reset~combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~5_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X12_Y12_N4
\tty_subsystem_0|tti_state_gen|and_9|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\ = (\not_reset~combout\ & (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ & (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & 
-- !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\);

-- Location: LCCOMB_X12_Y12_N16
\tty_subsystem_0|tti_state_gen|and_9|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\ = (\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & (\tty_subsystem_0|tti_state_gen|and_9|output~1_combout\ & ((\not_reset~combout\)))) # 
-- (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & ((\tty_subsystem_0|tti_state_gen|and_9|output~2_combout\) # ((\tty_subsystem_0|tti_state_gen|and_9|output~1_combout\ & \not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|and_9|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_9|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\);

-- Location: LCCOMB_X10_Y12_N0
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\ = (\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\ & ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\) # 
-- ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\ & \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\);

-- Location: LCCOMB_X10_Y12_N26
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\) # 
-- (\tty_subsystem_0|tti_state_gen|and_9|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\);

-- Location: LCCOMB_X10_Y12_N20
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & ((\tty_subsystem_0|tti_state_gen|and_9|output~3_combout\) # 
-- (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_3_3|output~3_combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_9|output~3_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X9_Y10_N8
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\))) # 
-- (!\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X9_Y10_N28
\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\) # ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\ & 
-- ((\tty_subsystem_0|output_clock_divider|clk_out_int~regout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_3_3|output~2_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_6|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X9_Y10_N22
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\))) # 
-- (!\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X9_Y10_N18
\tty_subsystem_0|tto_state_gen|or_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|or_4|output~combout\ = ((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & !\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|or_4|output~combout\);

-- Location: LCCOMB_X10_Y10_N14
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & (((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- \tty_subsystem_0|tto_state_gen|or_4|output~combout\)) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	datad => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X9_Y10_N10
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X10_Y10_N12
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ = (!\tty_subsystem_0|tto_state_gen|or_4|output~combout\ & (\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & 
-- !\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X10_Y10_N28
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\))) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X10_Y10_N26
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\) # (!\not_reset~combout\)))) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ & (((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X9_Y10_N30
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X9_Y10_N0
\tty_subsystem_0|tto_state_gen|and_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- ((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\))) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\)))) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & (((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\);

-- Location: LCCOMB_X12_Y12_N22
\test_logic|counter_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X8_Y11_N2
\test_logic|counter_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|and_7|output~combout\ & (((!\test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\ & !\test_logic|ms_jk_ff_0|nand_6|output~1_combout\)) # 
-- (!\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tto_state_gen|and_7|output~combout\ & (((!\test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_7|output~combout\,
	datad => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X8_Y10_N20
\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & ((\clk~combout\ & (\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk~combout\ & 
-- ((\test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\))))) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & (((\test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datad => \clk~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X8_Y11_N14
\test_logic|and_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|and_2|output~0_combout\ = (\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ & ((\test_logic|ms_jk_ff_0|nand_6|output~1_combout\) # ((!\clk~combout\ & \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\,
	combout => \test_logic|and_2|output~0_combout\);

-- Location: LCCOMB_X9_Y11_N16
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

-- Location: LCCOMB_X9_Y11_N20
\tty_subsystem_0|or_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|or_0|output~combout\ = (\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & ((\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\) # ((\test_logic|and_2|output~1_combout\ & \clk~combout\)))) # 
-- (!\tty_subsystem_0|tto_state_gen|and_3|output~combout\ & (((\test_logic|and_2|output~1_combout\ & \clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_3|output~combout\,
	datab => \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\,
	datac => \test_logic|and_2|output~1_combout\,
	datad => \clk~combout\,
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

-- Location: LCCOMB_X10_Y11_N6
\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X10_Y11_N2
\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X12_Y11_N14
\tty_subsystem_0|tti_state_gen|and_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ = \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ $ (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\ & \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\);

-- Location: LCCOMB_X13_Y11_N24
\tty_subsystem_0|tti_state_gen|and_0|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ = (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\);

-- Location: LCCOMB_X14_Y11_N18
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

-- Location: LCCOMB_X14_Y11_N12
\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X14_Y11_N14
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

-- Location: LCCOMB_X13_Y11_N12
\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1_combout\);

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

-- Location: LCCOMB_X13_Y11_N8
\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\ & (!\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1_combout\ & ((!\RX~combout\) # 
-- (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\ & (((\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & !\RX~combout\)) # 
-- (!\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	datad => \RX~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X13_Y11_N4
\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (((\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\)))) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X13_Y11_N6
\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\ & (!\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\) # (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (((\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\ & \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X13_Y11_N28
\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (((\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\)))) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X13_Y11_N14
\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\ & (!\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\) # (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (((\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X13_Y11_N26
\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (((\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\)))) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X13_Y11_N20
\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\ & (!\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\) # (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (((\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ & \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X13_Y11_N22
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

-- Location: LCCOMB_X13_Y11_N0
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

-- Location: LCCOMB_X13_Y11_N16
\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (((\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\)))) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X13_Y11_N10
\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1_combout\ & (!\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\ & 
-- (\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\ & \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1_combout\ & 
-- (((\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\) # (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X10_Y11_N18
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

-- Location: LCCOMB_X10_Y11_N0
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

-- Location: LCCOMB_X10_Y11_N22
\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (((\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\)))) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X10_Y10_N8
\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X9_Y11_N24
\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & ((\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\))) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X9_Y10_N16
\tty_subsystem_0|tto_register|or_4_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_4_0|output~0_combout\ = (\test_logic|and_2|output~1_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\test_logic|and_2|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \test_logic|and_2|output~1_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_4_0|output~0_combout\);

-- Location: LCCOMB_X9_Y10_N12
\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|or_4_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\ & (((\tty_subsystem_0|or_0|output~combout\ & 
-- \tty_subsystem_0|tto_register|or_4_0|output~0_combout\)) # (!\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|or_4_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X9_Y10_N24
\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & (\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X10_Y11_N10
\tty_subsystem_0|tto_register|or_5_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_5_0|output~0_combout\ = (\test_logic|and_2|output~1_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\)) # (!\test_logic|and_2|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_5_0|output~0_combout\);

-- Location: LCCOMB_X10_Y11_N4
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

-- Location: LCCOMB_X10_Y11_N8
\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & (\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\)) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X10_Y11_N26
\tty_subsystem_0|tto_register|or_6_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_6_0|output~0_combout\ = (\test_logic|and_2|output~1_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!\test_logic|and_2|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_6_0|output~0_combout\);

-- Location: LCCOMB_X10_Y11_N24
\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\ & (\tty_subsystem_0|or_0|output~combout\ & 
-- \tty_subsystem_0|tto_register|or_6_0|output~0_combout\))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\ & (((\tty_subsystem_0|tto_register|or_6_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|or_6_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X10_Y11_N30
\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & (\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X10_Y11_N20
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

-- Location: LCCOMB_X10_Y11_N12
\tty_subsystem_0|tto_register|or_7_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_7_0|output~0_combout\ = (\test_logic|and_2|output~1_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\))) # (!\test_logic|and_2|output~1_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_7_0|output~0_combout\);

-- Location: LCCOMB_X10_Y11_N14
\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|or_7_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ & (((\tty_subsystem_0|or_0|output~combout\ & 
-- \tty_subsystem_0|tto_register|or_7_0|output~0_combout\)) # (!\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|or_7_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X10_Y11_N16
\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & (\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!GLOBAL(\tty_subsystem_0|or_0|output~clkctrl_outclk\) & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~clkctrl_outclk\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X10_Y10_N0
\tty_subsystem_0|tto_state_gen|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\);

-- Location: LCCOMB_X10_Y10_N10
\tty_subsystem_0|tto_state_gen|nand_0|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|nand_0|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\) # (\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\))) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ & \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_state_gen|nand_0|output~1_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
END structure;


