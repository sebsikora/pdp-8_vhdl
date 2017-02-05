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

-- DATE "02/05/2017 23:39:27"

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
-- RX_FLAG	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TX	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TX_FLAG	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- not_reset	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|Equal0~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|ms_jk_ff_0|nand_3_2|output~0_combout\ : std_logic;
SIGNAL \test_logic|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \test_logic|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|Add0~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|Add0~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_6_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
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
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\ : std_logic;
SIGNAL \RX~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|or_1|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_1|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_1|output~12_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|or_0|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|Add0~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|Add0~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|Equal0~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|clk_out_int~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|input_clock_divider|clk_out_int~regout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_8|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_11|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|or_4|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|clk_out_int~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|clk_out_int~regout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~4_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|nor_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_3|output~1_combout\ : std_logic;
SIGNAL \test_logic|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_11|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ : std_logic;
SIGNAL \test_logic|and_0|output~combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \test_logic|and_2|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|and_0|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|or_0|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_7_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|output_clock_divider|prescaler\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tty_subsystem_0|input_clock_divider|prescaler\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_not_reset~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|nand_0|ALT_INV_output~0_combout\ : std_logic;

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

\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_not_reset~combout\ <= NOT \not_reset~combout\;
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\;
\tty_subsystem_0|tto_state_gen|nand_0|ALT_INV_output~0_combout\ <= NOT \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\;

-- Location: LCCOMB_X2_Y5_N0
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~3_combout\)) # 
-- (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~3_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~3_combout\,
	datab => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y11_N10
\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCFF_X1_Y5_N13
\tty_subsystem_0|output_clock_divider|prescaler[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler~0_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(0));

-- Location: LCFF_X1_Y5_N25
\tty_subsystem_0|output_clock_divider|prescaler[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler~1_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(3));

-- Location: LCFF_X1_Y5_N7
\tty_subsystem_0|output_clock_divider|prescaler[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler~2_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(2));

-- Location: LCFF_X1_Y5_N15
\tty_subsystem_0|output_clock_divider|prescaler[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|output_clock_divider|prescaler~3_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|prescaler\(1));

-- Location: LCCOMB_X2_Y5_N2
\tty_subsystem_0|output_clock_divider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|Equal0~0_combout\ = (\tty_subsystem_0|output_clock_divider|prescaler\(0)) # (((!\tty_subsystem_0|output_clock_divider|prescaler\(2)) # (!\tty_subsystem_0|output_clock_divider|prescaler\(1))) # 
-- (!\tty_subsystem_0|output_clock_divider|prescaler\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|prescaler\(0),
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(3),
	datac => \tty_subsystem_0|output_clock_divider|prescaler\(1),
	datad => \tty_subsystem_0|output_clock_divider|prescaler\(2),
	combout => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y5_N2
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ & (\not_reset~combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\) # (!\tty_subsystem_0|tto_state_gen|and_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N20
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|or_4|output~combout\) # 
-- ((!\tty_subsystem_0|tto_state_gen|and_3|output~1_combout\) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y5_N8
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_3|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|or_4|output~combout\ & 
-- ((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tto_state_gen|or_4|output~combout\ & (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y5_N24
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y5_N10
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ & (\not_reset~combout\ & 
-- ((!\tty_subsystem_0|tto_state_gen|and_3|output~1_combout\) # (!\tty_subsystem_0|tto_state_gen|or_4|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_3|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N4
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ = (!\tty_subsystem_0|tto_state_gen|or_4|output~combout\ & (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & \tty_subsystem_0|tto_state_gen|and_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_3|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X2_Y5_N16
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y5_N6
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\) # ((\tty_subsystem_0|output_clock_divider|clk_out_int~regout\) # 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y5_N4
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~3_combout\)))) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~3_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\) # (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~3_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y5_N8
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~3_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\) # (!\not_reset~combout\)))) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ & (((!\not_reset~combout\)) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X2_Y6_N30
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N8
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\) # ((\tty_subsystem_0|input_clock_divider|clk_out_int~regout\) # 
-- ((!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~3_combout\ & \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~3_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y11_N10
\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & (((\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\)))) # 
-- (!\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & ((\tty_subsystem_0|and_0|output~combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\))) # (!\tty_subsystem_0|and_0|output~combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|and_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N8
\test_logic|counter_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\ = (\not_reset~combout\ & !\test_logic|counter_0|ms_jk_ff_2|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N22
\test_logic|ms_jk_ff_0|nand_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|ms_jk_ff_0|nand_3_2|output~0_combout\ = (!\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\test_logic|ms_jk_ff_0|nand_5|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & \clk~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \test_logic|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \test_logic|ms_jk_ff_0|nand_3_2|output~0_combout\);

-- Location: LCCOMB_X5_Y6_N16
\test_logic|ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|ms_jk_ff_0|nand_3_3|output~0_combout\ = (!\test_logic|ms_jk_ff_0|nand_1|output~1_combout\ & (\not_reset~combout\ & ((\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\test_logic|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \test_logic|ms_jk_ff_0|nand_3_2|output~0_combout\,
	combout => \test_logic|ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X5_Y6_N26
\test_logic|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|ms_jk_ff_0|nand_1|output~1_combout\ = (!\test_logic|ms_jk_ff_0|nand_3_3|output~0_combout\ & ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\) # ((!\clk~combout\) # (!\test_logic|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \test_logic|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \test_logic|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N12
\tty_subsystem_0|output_clock_divider|prescaler~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler~0_combout\ = (\tty_subsystem_0|output_clock_divider|Equal0~0_combout\ & (!\tty_subsystem_0|output_clock_divider|prescaler\(0) & !\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\,
	datac => \tty_subsystem_0|output_clock_divider|prescaler\(0),
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler~0_combout\);

-- Location: LCCOMB_X2_Y5_N26
\tty_subsystem_0|output_clock_divider|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|Add0~0_combout\ = \tty_subsystem_0|output_clock_divider|prescaler\(3) $ (((\tty_subsystem_0|output_clock_divider|prescaler\(0) & (\tty_subsystem_0|output_clock_divider|prescaler\(1) & 
-- \tty_subsystem_0|output_clock_divider|prescaler\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|prescaler\(0),
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(3),
	datac => \tty_subsystem_0|output_clock_divider|prescaler\(1),
	datad => \tty_subsystem_0|output_clock_divider|prescaler\(2),
	combout => \tty_subsystem_0|output_clock_divider|Add0~0_combout\);

-- Location: LCCOMB_X1_Y5_N24
\tty_subsystem_0|output_clock_divider|prescaler~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler~1_combout\ = (\tty_subsystem_0|output_clock_divider|Equal0~0_combout\ & (\tty_subsystem_0|output_clock_divider|Add0~0_combout\ & !\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\,
	datac => \tty_subsystem_0|output_clock_divider|Add0~0_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler~1_combout\);

-- Location: LCCOMB_X2_Y5_N8
\tty_subsystem_0|output_clock_divider|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|Add0~1_combout\ = \tty_subsystem_0|output_clock_divider|prescaler\(2) $ (((\tty_subsystem_0|output_clock_divider|prescaler\(1) & \tty_subsystem_0|output_clock_divider|prescaler\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|prescaler\(1),
	datac => \tty_subsystem_0|output_clock_divider|prescaler\(0),
	datad => \tty_subsystem_0|output_clock_divider|prescaler\(2),
	combout => \tty_subsystem_0|output_clock_divider|Add0~1_combout\);

-- Location: LCCOMB_X1_Y5_N6
\tty_subsystem_0|output_clock_divider|prescaler~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler~2_combout\ = (\tty_subsystem_0|output_clock_divider|Equal0~0_combout\ & (\tty_subsystem_0|output_clock_divider|Add0~1_combout\ & !\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\,
	datab => \tty_subsystem_0|output_clock_divider|Add0~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler~2_combout\);

-- Location: LCCOMB_X1_Y5_N14
\tty_subsystem_0|output_clock_divider|prescaler~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|prescaler~3_combout\ = (\tty_subsystem_0|output_clock_divider|Equal0~0_combout\ & (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_subsystem_0|output_clock_divider|prescaler\(0) $ 
-- (\tty_subsystem_0|output_clock_divider|prescaler\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\,
	datab => \tty_subsystem_0|output_clock_divider|prescaler\(0),
	datac => \tty_subsystem_0|output_clock_divider|prescaler\(1),
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|output_clock_divider|prescaler~3_combout\);

-- Location: LCCOMB_X3_Y11_N24
\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N2
\tty_subsystem_0|tto_register|or_6_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_6_0|output~0_combout\ = (\test_logic|and_2|output~0_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\))) # (!\test_logic|and_2|output~0_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|or_6_0|output~0_combout\);

-- Location: LCCOMB_X3_Y11_N0
\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\tty_subsystem_0|or_0|output~combout\ & ((\tty_subsystem_0|tto_register|or_6_0|output~0_combout\ & ((!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\))) # (!\tty_subsystem_0|tto_register|or_6_0|output~0_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\ & 
-- !\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\)))) # (!\tty_subsystem_0|or_0|output~combout\ & (((!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|or_0|output~combout\,
	datab => \tty_subsystem_0|tto_register|or_6_0|output~0_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X5_Y6_N8
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X3_Y6_N24
\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & (\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & ((\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y11_N30
\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\ = (\tty_subsystem_0|and_0|output~combout\ & (((\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\)))) # (!\tty_subsystem_0|and_0|output~combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|and_0|output~combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N26
\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N14
\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\ & \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\) # ((!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\) # (!\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y11_N28
\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N14
\tty_subsystem_0|tto_register|or_5_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_5_0|output~0_combout\ = (\test_logic|and_2|output~0_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\))) # (!\test_logic|and_2|output~0_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|or_5_0|output~0_combout\);

-- Location: LCCOMB_X4_Y11_N2
\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|or_5_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\ & (((\tty_subsystem_0|or_0|output~combout\ & 
-- \tty_subsystem_0|tto_register|or_5_0|output~0_combout\)) # (!\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|or_5_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y6_N0
\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & (\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & ((\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N28
\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & 
-- ((\tty_subsystem_0|and_0|output~combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\tty_subsystem_0|and_0|output~combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|and_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N10
\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N8
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

-- Location: LCCOMB_X3_Y11_N26
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

-- Location: LCCOMB_X3_Y11_N8
\tty_subsystem_0|tto_register|or_4_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_4_0|output~0_combout\ = (\test_logic|and_2|output~0_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\test_logic|and_2|output~0_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datab => \test_logic|and_2|output~0_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_4_0|output~0_combout\);

-- Location: LCCOMB_X3_Y11_N30
\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\tty_subsystem_0|or_0|output~combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_register|or_4_0|output~0_combout\ & 
-- !\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\)) # (!\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_register|or_4_0|output~0_combout\) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\))))) # (!\tty_subsystem_0|or_0|output~combout\ & (((!\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|or_0|output~combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|or_4_0|output~0_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y6_N22
\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & ((\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & (\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N12
\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\ = (\tty_subsystem_0|and_0|output~combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\tty_subsystem_0|and_0|output~combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|and_0|output~combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N4
\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N26
\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~1_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\ & \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\) # ((!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\) # (!\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y11_N22
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

-- Location: LCCOMB_X3_Y11_N20
\tty_subsystem_0|tto_register|or_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_3_0|output~0_combout\ = (\test_logic|and_2|output~0_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\test_logic|and_2|output~0_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|or_3_0|output~0_combout\);

-- Location: LCCOMB_X3_Y11_N18
\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|or_3_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\ & (((\tty_subsystem_0|tto_register|or_3_0|output~0_combout\ & 
-- \tty_subsystem_0|or_0|output~combout\)) # (!\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|or_3_0|output~0_combout\,
	datad => \tty_subsystem_0|or_0|output~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y6_N18
\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & (\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & ((\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y11_N4
\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|and_0|output~combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\tty_subsystem_0|and_0|output~combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|and_0|output~combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N20
\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N12
\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\ & (!\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- (\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\ & \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- (((\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\) # (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y11_N26
\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N26
\tty_subsystem_0|tto_register|or_2_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_2_0|output~0_combout\ = (\test_logic|and_2|output~0_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\test_logic|and_2|output~0_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|or_2_0|output~0_combout\);

-- Location: LCCOMB_X4_Y11_N24
\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|or_2_0|output~0_combout\ & (((!\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\ & \tty_subsystem_0|or_0|output~combout\)) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\))) # (!\tty_subsystem_0|tto_register|or_2_0|output~0_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\ & ((!\tty_subsystem_0|or_0|output~combout\) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|or_2_0|output~0_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y5_N0
\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & (\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & ((\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N30
\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|and_0|output~combout\ & (((\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\tty_subsystem_0|and_0|output~combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|and_0|output~combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y5_N24
\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N24
\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\ & (!\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\ & \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- (((\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\) # (!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y5_N22
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

-- Location: LCCOMB_X3_Y5_N10
\tty_subsystem_0|tto_register|or_1_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_1_0|output~0_combout\ = (\test_logic|and_2|output~0_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\test_logic|and_2|output~0_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|or_1_0|output~0_combout\);

-- Location: LCCOMB_X2_Y5_N12
\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|or_1_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\ & (((\tty_subsystem_0|tto_register|or_1_0|output~0_combout\ & 
-- \tty_subsystem_0|or_0|output~combout\)) # (!\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|or_1_0|output~0_combout\,
	datac => \tty_subsystem_0|or_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y5_N16
\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & ((\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & (\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N14
\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\tty_subsystem_0|and_0|output~combout\ & (((\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\tty_subsystem_0|and_0|output~combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|and_0|output~combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y5_N14
\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N20
\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\ & (((!\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\ & ((!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\) # (!\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y5_N18
\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\ = (\tty_subsystem_0|or_0|output~combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\ $ (((\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\test_logic|and_2|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|or_0|output~combout\,
	datab => \test_logic|and_2|output~0_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y5_N28
\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\)))) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\ & (((\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y5_N30
\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & (\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & ((\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y5_N20
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

-- Location: LCCOMB_X2_Y5_N14
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

-- Location: LCCOMB_X6_Y6_N2
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & ((\tty_subsystem_0|tti_state_gen|and_3|output~0_combout\) # 
-- ((!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & \clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|and_3|output~0_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\);

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

-- Location: LCCOMB_X6_Y6_N20
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & (!\RX~combout\ & ((\tty_subsystem_0|tti_state_gen|and_3|output~0_combout\) # (\clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|and_3|output~0_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \RX~combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N24
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\ = (\not_reset~combout\ & (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\ & ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\) # 
-- (\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\);

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

-- Location: LCCOMB_X1_Y6_N14
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\ = ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\) # ((\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & 
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N10
\tty_subsystem_0|tti_state_gen|or_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|or_1|output~combout\ = ((!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ & !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|or_1|output~combout\);

-- Location: LCCOMB_X2_Y6_N14
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~1_combout\ = (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (!\tty_subsystem_0|tti_state_gen|or_1|output~combout\ & 
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datac => \tty_subsystem_0|tti_state_gen|or_1|output~combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N20
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~2_combout\ = ((!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~2_combout\) # (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\)))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N22
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ = (\not_reset~combout\ & ((\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~2_combout\))) # (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\)))) # 
-- (!\not_reset~combout\ & (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N28
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\ = (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ & (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & 
-- \not_reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N4
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~3_combout\ = (\not_reset~combout\ & (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~3_combout\ & 
-- !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\)) # (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~2_combout\))) # (!\not_reset~combout\ & 
-- (((!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~3_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X2_Y6_N6
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\ = (\not_reset~combout\ & ((\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~3_combout\))) # (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\)))) # 
-- (!\not_reset~combout\ & (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_1|output~3_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N0
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_3|output~0_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N28
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_3|output~1_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\) # ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_3|output~0_combout\) # (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datad => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N16
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_1|output~3_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\ & \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N12
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_1|output~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_1|output~12_combout\ = (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (\not_reset~combout\ & 
-- (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ & \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_1|output~3_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_1|output~12_combout\);

-- Location: LCCOMB_X1_Y6_N18
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_1|output~12_combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~1_combout\) # ((!\not_reset~combout\) # (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_3|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_1|output~12_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N0
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~1_combout\)))) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\not_reset~combout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\not_reset~combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N30
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ = (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\ & 
-- (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\ & (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_3_1|output~0_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_6|output~0_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N18
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\) # ((\tty_subsystem_0|tti_state_gen|and_8|output~0_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_8|output~0_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N24
\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ = (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\)))) # 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\not_reset~combout\ & (\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\not_reset~combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N28
\tty_subsystem_0|tti_state_gen|and_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_3|output~0_combout\ = (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\ & (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_3|output~0_combout\);

-- Location: LCCOMB_X6_Y6_N12
\tty_subsystem_0|tti_state_gen|or_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|or_0|output~combout\ = (\tty_subsystem_0|tti_state_gen|and_3|output~0_combout\) # ((!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & \clk~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_3|output~0_combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tti_state_gen|or_0|output~combout\);

-- Location: LCCOMB_X6_Y6_N22
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\) # ((\not_reset~combout\ & 
-- \tty_subsystem_0|tti_state_gen|or_0|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|or_0|output~combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N6
\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & (((\tty_subsystem_0|tti_state_gen|or_0|output~combout\ & \not_reset~combout\)) # 
-- (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|or_0|output~combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N24
\tty_subsystem_0|input_clock_divider|prescaler~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler~3_combout\ = (\tty_subsystem_0|input_clock_divider|Equal0~0_combout\ & (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_subsystem_0|input_clock_divider|prescaler\(0) $ 
-- (\tty_subsystem_0|input_clock_divider|prescaler\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|prescaler\(0),
	datab => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\,
	datac => \tty_subsystem_0|input_clock_divider|prescaler\(1),
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler~3_combout\);

-- Location: LCFF_X1_Y6_N25
\tty_subsystem_0|input_clock_divider|prescaler[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler~3_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(1));

-- Location: LCCOMB_X1_Y6_N10
\tty_subsystem_0|input_clock_divider|prescaler~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler~0_combout\ = (\tty_subsystem_0|input_clock_divider|Equal0~0_combout\ & (!\tty_subsystem_0|input_clock_divider|prescaler\(0) & !\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\,
	datac => \tty_subsystem_0|input_clock_divider|prescaler\(0),
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler~0_combout\);

-- Location: LCFF_X1_Y6_N11
\tty_subsystem_0|input_clock_divider|prescaler[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler~0_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(0));

-- Location: LCCOMB_X1_Y6_N8
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

-- Location: LCCOMB_X1_Y6_N22
\tty_subsystem_0|input_clock_divider|prescaler~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler~2_combout\ = (\tty_subsystem_0|input_clock_divider|Equal0~0_combout\ & (\tty_subsystem_0|input_clock_divider|Add0~1_combout\ & !\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\,
	datac => \tty_subsystem_0|input_clock_divider|Add0~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler~2_combout\);

-- Location: LCFF_X1_Y6_N23
\tty_subsystem_0|input_clock_divider|prescaler[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler~2_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(2));

-- Location: LCCOMB_X1_Y6_N20
\tty_subsystem_0|input_clock_divider|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|Add0~0_combout\ = \tty_subsystem_0|input_clock_divider|prescaler\(3) $ (((\tty_subsystem_0|input_clock_divider|prescaler\(1) & (\tty_subsystem_0|input_clock_divider|prescaler\(2) & 
-- \tty_subsystem_0|input_clock_divider|prescaler\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|prescaler\(1),
	datab => \tty_subsystem_0|input_clock_divider|prescaler\(2),
	datac => \tty_subsystem_0|input_clock_divider|prescaler\(3),
	datad => \tty_subsystem_0|input_clock_divider|prescaler\(0),
	combout => \tty_subsystem_0|input_clock_divider|Add0~0_combout\);

-- Location: LCCOMB_X1_Y6_N4
\tty_subsystem_0|input_clock_divider|prescaler~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|prescaler~1_combout\ = (\tty_subsystem_0|input_clock_divider|Equal0~0_combout\ & (\tty_subsystem_0|input_clock_divider|Add0~0_combout\ & !\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\,
	datac => \tty_subsystem_0|input_clock_divider|Add0~0_combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|input_clock_divider|prescaler~1_combout\);

-- Location: LCFF_X1_Y6_N5
\tty_subsystem_0|input_clock_divider|prescaler[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tty_subsystem_0|input_clock_divider|prescaler~1_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|prescaler\(3));

-- Location: LCCOMB_X1_Y6_N26
\tty_subsystem_0|input_clock_divider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|Equal0~0_combout\ = (((\tty_subsystem_0|input_clock_divider|prescaler\(0)) # (!\tty_subsystem_0|input_clock_divider|prescaler\(3))) # (!\tty_subsystem_0|input_clock_divider|prescaler\(2))) # 
-- (!\tty_subsystem_0|input_clock_divider|prescaler\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|input_clock_divider|prescaler\(1),
	datab => \tty_subsystem_0|input_clock_divider|prescaler\(2),
	datac => \tty_subsystem_0|input_clock_divider|prescaler\(3),
	datad => \tty_subsystem_0|input_clock_divider|prescaler\(0),
	combout => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y6_N2
\tty_subsystem_0|input_clock_divider|clk_out_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|input_clock_divider|clk_out_int~0_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ $ (!\tty_subsystem_0|input_clock_divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|input_clock_divider|Equal0~0_combout\,
	combout => \tty_subsystem_0|input_clock_divider|clk_out_int~0_combout\);

-- Location: LCFF_X2_Y6_N3
\tty_subsystem_0|input_clock_divider|clk_out_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \tty_subsystem_0|input_clock_divider|clk_out_int~0_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\);

-- Location: LCCOMB_X2_Y6_N26
\tty_subsystem_0|tti_state_gen|and_8|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_8|output~0_combout\ = (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- !\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_8|output~0_combout\);

-- Location: LCCOMB_X5_Y6_N24
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ = ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ & ((!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (!\tty_subsystem_0|tti_state_gen|and_8|output~0_combout\)))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_8|output~0_combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N0
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|tti_state_gen|and_8|output~0_combout\ & ((\not_reset~combout\ & (\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\not_reset~combout\ & 
-- ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\))))) # (!\tty_subsystem_0|tti_state_gen|and_8|output~0_combout\ & (((\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|and_8|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N6
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|and_10|output~1_combout\) # 
-- (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N30
\tty_subsystem_0|tto_state_gen|and_11|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_11|output~2_combout\ = (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & (\not_reset~combout\ & !\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_11|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N6
\tty_subsystem_0|tto_state_gen|and_11|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\ = (\not_reset~combout\ & \clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N16
\tty_subsystem_0|tto_state_gen|and_10|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|and_11|output~1_combout\)))) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|and_11|output~2_combout\) # 
-- ((!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_11|output~2_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N2
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\ = (\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & (\clk~combout\))) # 
-- (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & (((!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & \clk~combout\)) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \clk~combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\);

-- Location: LCCOMB_X3_Y5_N6
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & ((\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\)) # 
-- (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N10
\tty_subsystem_0|tto_state_gen|or_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|or_4|output~combout\ = ((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & !\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|or_4|output~combout\);

-- Location: LCCOMB_X5_Y6_N2
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ = (\not_reset~combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\) # ((!\tty_subsystem_0|tto_state_gen|or_4|output~combout\) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_2|output~0_combout\,
	datad => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N16
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\) # 
-- ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\ & \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\);

-- Location: LCCOMB_X1_Y5_N28
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|and_10|output~1_combout\) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N0
\tty_subsystem_0|output_clock_divider|clk_out_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|output_clock_divider|clk_out_int~0_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_subsystem_0|output_clock_divider|Equal0~0_combout\ $ (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|Equal0~0_combout\,
	datac => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|output_clock_divider|clk_out_int~0_combout\);

-- Location: LCFF_X1_Y5_N1
\tty_subsystem_0|output_clock_divider|clk_out_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \tty_subsystem_0|output_clock_divider|clk_out_int~0_combout\,
	aclr => \ALT_INV_not_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\);

-- Location: LCCOMB_X1_Y5_N26
\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~3_combout\ = (\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~4_combout\)) # 
-- (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & ((!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~4_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y5_N16
\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~4_combout\ = ((!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~3_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~4_combout\) # 
-- (\tty_subsystem_0|tto_state_gen|or_4|output~combout\)))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~4_combout\,
	datac => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~3_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~4_combout\);

-- Location: LCCOMB_X1_Y5_N22
\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & (((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~4_combout\)))) # 
-- (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & ((\not_reset~combout\ & (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\not_reset~combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~4_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N10
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & ((\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\)) # 
-- (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N18
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ = (\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\)) # 
-- (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N18
\tty_subsystem_0|tto_state_gen|nor_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|nor_0|output~0_combout\ = (((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|nor_0|output~0_combout\);

-- Location: LCCOMB_X1_Y5_N30
\tty_subsystem_0|tto_state_gen|and_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_3|output~1_combout\ = (!\tty_subsystem_0|output_clock_divider|clk_out_int~regout\ & !\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_3|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N14
\test_logic|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk~combout\ & ((\test_logic|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\clk~combout\ & (\test_logic|ms_jk_ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \test_logic|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \test_logic|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N20
\tty_subsystem_0|tto_state_gen|and_11|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_11|output~3_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|and_11|output~1_combout\)))) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|and_11|output~2_combout\) # 
-- ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_11|output~2_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_11|output~3_combout\);

-- Location: LCCOMB_X4_Y6_N12
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_11|output~3_combout\ & (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|and_11|output~3_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_11|output~3_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N28
\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\ = (\clk~combout\ & (!\test_logic|ms_jk_ff_0|nand_5|output~1_combout\ & (!\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \test_logic|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X4_Y6_N22
\test_logic|counter_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\ & (((!\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\ & 
-- (((\test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N24
\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\test_logic|and_0|output~combout\ & (\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\test_logic|and_0|output~combout\ & 
-- ((\test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \test_logic|and_0|output~combout\,
	datad => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N10
\test_logic|counter_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_1|output~2_combout\ = (\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\)) # (!\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- ((\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\ & ((!\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\ & 
-- (!\test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N14
\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\test_logic|and_0|output~combout\ & (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\test_logic|and_0|output~combout\ & 
-- ((\test_logic|counter_0|ms_jk_ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \test_logic|and_0|output~combout\,
	datad => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N30
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ = (!\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ & \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N30
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|and_11|output~3_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\)) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|or_4|output~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_11|output~3_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N0
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ & (((!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\)))) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X4_Y6_N26
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\) # ((!\tty_subsystem_0|tto_state_gen|and_11|output~3_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|and_11|output~3_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N18
\test_logic|and_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|and_0|output~combout\ = (\clk~combout\ & (!\test_logic|ms_jk_ff_0|nand_5|output~1_combout\ & \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk~combout\,
	datac => \test_logic|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	combout => \test_logic|and_0|output~combout\);

-- Location: LCCOMB_X4_Y6_N2
\test_logic|counter_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\test_logic|and_0|output~combout\ & (((!\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\test_logic|and_0|output~combout\ & 
-- (((\test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \test_logic|and_0|output~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N4
\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\test_logic|and_0|output~combout\ & (\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\test_logic|and_0|output~combout\ & 
-- ((\test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \test_logic|and_0|output~combout\,
	datad => \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N4
\test_logic|and_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|and_2|output~0_combout\ = (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\test_logic|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \test_logic|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \test_logic|and_2|output~0_combout\);

-- Location: LCCOMB_X3_Y5_N4
\tty_subsystem_0|and_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|and_0|output~combout\ = (\clk~combout\ & \test_logic|and_2|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datad => \test_logic|and_2|output~0_combout\,
	combout => \tty_subsystem_0|and_0|output~combout\);

-- Location: LCCOMB_X5_Y6_N12
\tty_subsystem_0|or_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|or_0|output~combout\ = (\tty_subsystem_0|and_0|output~combout\) # ((!\tty_subsystem_0|tto_state_gen|and_1|output~0_combout\ & (\tty_subsystem_0|tto_state_gen|nor_0|output~0_combout\ & 
-- \tty_subsystem_0|tto_state_gen|and_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_1|output~0_combout\,
	datab => \tty_subsystem_0|tto_state_gen|nor_0|output~0_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_3|output~1_combout\,
	datad => \tty_subsystem_0|and_0|output~combout\,
	combout => \tty_subsystem_0|or_0|output~combout\);

-- Location: LCCOMB_X3_Y6_N2
\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N12
\tty_subsystem_0|tti_state_gen|and_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ = (!\tty_subsystem_0|input_clock_divider|clk_out_int~regout\ & ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\) # 
-- ((\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\ & \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|input_clock_divider|clk_out_int~regout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N16
\tty_subsystem_0|tti_state_gen|and_0|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\ = (\tty_subsystem_0|tti_state_gen|and_0|output~0_combout\ & (((!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_3|output~0_combout\)) # (!\tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datac => \tty_subsystem_0|tti_state_gen|tty_input_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~0_combout\,
	combout => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N6
\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\ & (((!\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
-- \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\)) # (!\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\))) # (!\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\ & ((!\tty_subsystem_0|tti_state_gen|and_0|output~1_combout\) # (!\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: CLKCTRL_G1
\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\);

-- Location: LCCOMB_X3_Y6_N16
\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & (\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\) & ((\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tti_state_gen|and_0|output~1clkctrl_outclk\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y11_N16
\tty_subsystem_0|tto_register|or_7_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_7_0|output~0_combout\ = (\test_logic|and_2|output~0_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\))) # (!\test_logic|and_2|output~0_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \test_logic|and_2|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|or_7_0|output~0_combout\);

-- Location: LCCOMB_X4_Y11_N16
\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ & (\tty_subsystem_0|or_0|output~combout\ & 
-- \tty_subsystem_0|tto_register|or_7_0|output~0_combout\))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\ & (((\tty_subsystem_0|tto_register|or_7_0|output~0_combout\) # (!\tty_subsystem_0|or_0|output~combout\)) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|or_0|output~combout\,
	datad => \tty_subsystem_0|tto_register|or_7_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X5_Y6_N28
\tty_subsystem_0|tto_state_gen|and_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ = (!\tty_subsystem_0|tto_state_gen|and_1|output~0_combout\ & (\tty_subsystem_0|tto_state_gen|nor_0|output~0_combout\ & (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\tty_subsystem_0|output_clock_divider|clk_out_int~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_1|output~0_combout\,
	datab => \tty_subsystem_0|tto_state_gen|nor_0|output~0_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|output_clock_divider|clk_out_int~regout\,
	combout => \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\);

-- Location: LCCOMB_X4_Y11_N0
\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ = (\tty_subsystem_0|and_0|output~combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\tty_subsystem_0|and_0|output~combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tto_state_gen|and_4|output~0_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|and_0|output~combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_4|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N6
\tty_subsystem_0|tto_state_gen|and_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_1|output~0_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & ((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_1|output~0_combout\);

-- Location: LCCOMB_X5_Y6_N20
\tty_subsystem_0|tto_state_gen|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & (((\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ & 
-- !\tty_subsystem_0|tto_state_gen|and_1|output~0_combout\)) # (!\tty_subsystem_0|tto_state_gen|nor_0|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|nor_0|output~0_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|and_1|output~0_combout\,
	combout => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \tty_subsystem_0|tto_state_gen|nand_0|ALT_INV_output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TX);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


