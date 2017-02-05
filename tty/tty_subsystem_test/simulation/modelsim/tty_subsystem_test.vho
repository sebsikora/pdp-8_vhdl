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

-- DATE "02/05/2017 20:19:20"

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
-- RX_FLAG	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TX	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TX_FLAG	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RX	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_3_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_2_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_1_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \test_logic|ms_jk_ff_0|nand_6|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl_outclk\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|or_4|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \test_logic|ms_jk_ff_0|nand_5|output~0_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_1|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~4_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_11|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ : std_logic;
SIGNAL \test_logic|and_0|output~combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|and_4|output~combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_7_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_4_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_5_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_6_0|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|or_7_0|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|nand_0|output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \tty_subsystem_0|tto_state_gen|nand_0|ALT_INV_output~1_combout\ : std_logic;

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

\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\);
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\;
\tty_subsystem_0|tto_state_gen|nand_0|ALT_INV_output~1_combout\ <= NOT \tty_subsystem_0|tto_state_gen|nand_0|output~1_combout\;

-- Location: LCCOMB_X1_Y6_N6
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ = (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N10
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ & (\not_reset~combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\) # (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N30
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- ((\tty_subsystem_0|tto_state_gen|or_4|output~combout\) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X5_Y6_N2
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N28
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\) # ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\) # (!\clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N20
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\ = (\not_reset~combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\) # (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\);

-- Location: LCCOMB_X2_Y6_N12
\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_3_3|output~0_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_3_3|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N6
\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N22
\tty_subsystem_0|tto_register|or_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_3_0|output~0_combout\ = (\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & ((\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_3_3|output~0_combout\))))) # (!\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \test_logic|ms_jk_ff_0|nand_5|output~0_combout\,
	datac => \tty_subsystem_0|tto_register|or_7_0|output~0_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_3_3|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|or_3_0|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N16
\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\ & (\tty_subsystem_0|tto_register|or_3_0|output~0_combout\ & (!\tty_subsystem_0|tto_state_gen|and_4|output~combout\ & 
-- !\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\ & ((\tty_subsystem_0|tto_register|or_3_0|output~0_combout\) # 
-- ((\tty_subsystem_0|tto_state_gen|and_4|output~combout\) # (!\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|or_3_0|output~0_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_4|output~combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N2
\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_3_3|output~0_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_3|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_3_3|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_3|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N20
\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\)) # (!\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tto_state_gen|or_0|output~0_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N10
\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N22
\tty_subsystem_0|tto_register|or_2_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_2_0|output~0_combout\ = (\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & 
-- ((\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_3_3|output~0_combout\))) # (!\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|or_7_0|output~0_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datad => \test_logic|ms_jk_ff_0|nand_5|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|or_2_0|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N24
\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|and_4|output~combout\) # (\tty_subsystem_0|tto_register|or_2_0|output~0_combout\)))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\ & (((!\tty_subsystem_0|tto_state_gen|and_4|output~combout\ & 
-- \tty_subsystem_0|tto_register|or_2_0|output~0_combout\)) # (!\tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_4|output~combout\,
	datad => \tty_subsystem_0|tto_register|or_2_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X6_Y6_N16
\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_3_3|output~0_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_2|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datac => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X5_Y6_N28
\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ & (((\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\)))) # (!\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ 
-- & ((\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|or_0|output~0_combout\,
	datad => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N6
\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\ = (\not_reset~combout\ & !\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N24
\tty_subsystem_0|tto_register|or_1_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_1_0|output~0_combout\ = (\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & ((\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\))) # 
-- (!\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_3_3|output~0_combout\)))) # (!\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & 
-- (((\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datab => \test_logic|ms_jk_ff_0|nand_5|output~0_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_register|or_7_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|or_1_0|output~0_combout\);

-- Location: LCCOMB_X5_Y6_N26
\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|or_1_0|output~0_combout\ & (((!\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\ & !\tty_subsystem_0|tto_state_gen|and_4|output~combout\)) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\))) # (!\tty_subsystem_0|tto_register|or_1_0|output~0_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|and_4|output~combout\) # (!\tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|or_1_0|output~0_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_4|output~combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X5_Y6_N20
\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_3_3|output~0_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_1|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X5_Y6_N14
\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & ((\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~3_combout\))) 
-- # (!\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & 
-- (((\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\,
	datab => \tty_subsystem_0|tto_state_gen|or_0|output~0_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~3_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N12
\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\ = (\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- !\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_3_3|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N30
\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|and_4|output~combout\ & (((!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\tty_subsystem_0|tto_state_gen|and_4|output~combout\ 
-- & (\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\ & ((\test_logic|ms_jk_ff_0|nand_5|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_4|output~combout\,
	datad => \test_logic|ms_jk_ff_0|nand_5|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X5_Y6_N0
\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~3_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~3_combout\) # (!\not_reset~combout\)))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2_combout\ & (((\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~3_combout\) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~3_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X5_Y6_N22
\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_3_3|output~0_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_0|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_3_3|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y6_N22
\test_logic|ms_jk_ff_0|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\ = (\clk~combout\ & ((\test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\ & (\test_logic|ms_jk_ff_0|nand_6|output~1_combout\)) # (!\test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\ & 
-- (!\test_logic|ms_jk_ff_0|nand_6|output~1_combout\ & !\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\,
	datac => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datad => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y6_N2
\test_logic|ms_jk_ff_0|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\ = (\not_reset~combout\ & ((\test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\ & ((!\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\) # (!\test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\))) # 
-- (!\test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\ & (\test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\,
	datab => \test_logic|ms_jk_ff_0|nand_3_3|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N30
\test_logic|ms_jk_ff_0|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|ms_jk_ff_0|nand_6|output~1_combout\ = (\clk~combout\ & ((\test_logic|ms_jk_ff_0|nand_6|output~1_combout\))) # (!\clk~combout\ & (\test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\,
	datac => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datad => \clk~combout\,
	combout => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N18
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ & (\not_reset~combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\) # (!\tty_subsystem_0|tto_state_gen|or_4|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \not_reset~combout\,
	datac => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: CLKCTRL_G1
\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl_outclk\);

-- Location: LCCOMB_X4_Y6_N4
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl_outclk\) & 
-- (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\)) # (!GLOBAL(\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl_outclk\) & 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl_outclk\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N6
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\) # (!\tty_subsystem_0|tto_state_gen|or_4|output~combout\)))) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N8
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\ = ((GLOBAL(\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl_outclk\) & 
-- (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\)) # (!GLOBAL(\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl_outclk\) & 
-- ((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\)))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl_outclk\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N20
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\))) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N2
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\) # ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N26
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & !\tty_subsystem_0|tto_state_gen|or_4|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X4_Y6_N12
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\ & 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~1_combout\ & (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\))) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\ & (((!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\) # 
-- (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_3_3|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N24
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl_outclk\) & 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\))) # (!GLOBAL(\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl_outclk\) & 
-- (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1clkctrl_outclk\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N28
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ = (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\) # (!\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N14
\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\))) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N22
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

-- Location: LCCOMB_X1_Y6_N24
\tty_subsystem_0|tto_state_gen|and_10|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & ((\clk~combout\)))) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & (((!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & \clk~combout\)) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N10
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

-- Location: LCCOMB_X3_Y6_N16
\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\test_logic|and_0|output~combout\ & (\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\test_logic|and_0|output~combout\ & 
-- ((\test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \test_logic|and_0|output~combout\,
	datad => \test_logic|counter_0|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N24
\test_logic|ms_jk_ff_0|nand_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|ms_jk_ff_0|nand_5|output~0_combout\ = (\test_logic|ms_jk_ff_0|nand_6|output~1_combout\) # ((\test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\ & !\clk~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|ms_jk_ff_0|nand_3_3|output~2_combout\,
	datac => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datad => \clk~combout\,
	combout => \test_logic|ms_jk_ff_0|nand_5|output~0_combout\);

-- Location: LCCOMB_X3_Y6_N0
\test_logic|counter_0|ms_jk_ff_1|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_1|nand_3_1|output~0_combout\ = (!\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\clk~combout\ & (\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & 
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \clk~combout\,
	datac => \test_logic|ms_jk_ff_0|nand_5|output~0_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_1|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X3_Y6_N26
\test_logic|counter_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\test_logic|counter_0|ms_jk_ff_1|nand_3_1|output~0_combout\ & (((!\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\test_logic|counter_0|ms_jk_ff_1|nand_3_1|output~0_combout\ & 
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
	datad => \test_logic|counter_0|ms_jk_ff_1|nand_3_1|output~0_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N12
\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\test_logic|and_0|output~combout\ & (\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\test_logic|and_0|output~combout\ & 
-- ((\test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_logic|and_0|output~combout\,
	datac => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N20
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N8
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~4_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~4_combout\) # 
-- ((\tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ & \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~3_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~4_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~4_combout\);

-- Location: LCCOMB_X1_Y6_N18
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~4_combout\) # 
-- ((\tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ & \not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~4_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N10
\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\ & (((\tty_subsystem_0|tto_state_gen|and_10|output~1_combout\ & \not_reset~combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_10|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_6|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_3_3|output~4_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N26
\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & ((!\tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N16
\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~2_combout\ = ((!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~2_combout\) # 
-- (\tty_subsystem_0|tto_state_gen|or_4|output~combout\)))) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N14
\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ = (\not_reset~combout\ & (\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\not_reset~combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N6
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ = (!\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N28
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|and_11|output~2_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\))) # (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|or_4|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|and_11|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|or_4|output~combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N2
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

-- Location: LCCOMB_X2_Y6_N14
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|and_11|output~2_combout\ & (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|and_11|output~2_combout\ & ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_11|output~2_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N4
\tty_subsystem_0|tto_state_gen|and_11|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & \not_reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N30
\tty_subsystem_0|tto_state_gen|and_11|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_11|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|and_11|output~1_combout\) # ((\not_reset~combout\ & (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ & \clk~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_11|output~1_combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_11|output~2_combout\);

-- Location: LCCOMB_X3_Y6_N18
\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\) # ((!\tty_subsystem_0|tto_state_gen|and_11|output~2_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_1|output~3_combout\,
	datab => \tty_subsystem_0|tto_state_gen|and_11|output~2_combout\,
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N22
\test_logic|and_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|and_0|output~combout\ = (\clk~combout\ & (\test_logic|ms_jk_ff_0|nand_6|output~1_combout\ & \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk~combout\,
	datac => \test_logic|ms_jk_ff_0|nand_6|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	combout => \test_logic|and_0|output~combout\);

-- Location: LCCOMB_X2_Y6_N18
\test_logic|counter_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\ = (!\test_logic|counter_0|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N14
\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~1_combout\ = (\clk~combout\ & (\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\ & (\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & 
-- \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datac => \test_logic|ms_jk_ff_0|nand_5|output~0_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N30
\test_logic|counter_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_1|output~2_combout\ = (!\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~1_combout\ & (((!\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\ & \test_logic|counter_0|ms_jk_ff_1|nand_3_1|output~0_combout\)) # 
-- (!\test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_1|nand_3_1|output~0_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y6_N4
\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\test_logic|and_0|output~combout\ & (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\test_logic|and_0|output~combout\ & 
-- ((\test_logic|counter_0|ms_jk_ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \test_logic|and_0|output~combout\,
	datad => \test_logic|counter_0|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N8
\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\ = (\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N12
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ = (\clk~combout\ & (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ & ((\test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\) # 
-- (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\)))) # (!\clk~combout\ & (!\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_2|nand_3_1|output~0_combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N0
\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ = (\clk~combout\ & (\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\clk~combout\ & ((\tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \clk~combout\,
	combout => \tty_subsystem_0|tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N16
\tty_subsystem_0|tto_state_gen|nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ = (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\) # 
-- ((\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\);

-- Location: LCCOMB_X4_Y6_N0
\tty_subsystem_0|tto_state_gen|or_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ = (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_state_gen|tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|or_0|output~0_combout\);

-- Location: LCCOMB_X5_Y6_N8
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

-- Location: LCCOMB_X6_Y6_N0
\tty_subsystem_0|tto_state_gen|and_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|and_4|output~combout\ = (\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\) # (!\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\,
	datac => \tty_subsystem_0|tto_state_gen|or_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_state_gen|and_4|output~combout\);

-- Location: LCCOMB_X2_Y6_N28
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

-- Location: LCCOMB_X2_Y6_N0
\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\)) # (!\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & 
-- (\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|or_0|output~0_combout\,
	datad => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N18
\tty_subsystem_0|tto_register|or_7_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_7_0|output~0_combout\ = ((!\test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\) # (!\test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_logic|counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \test_logic|counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \test_logic|counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|or_7_0|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N8
\tty_subsystem_0|tto_register|or_4_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_4_0|output~0_combout\ = (\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & (((\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\)))) # (!\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & 
-- ((\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & (\tty_subsystem_0|tti_register|ms_jk_ff_4|nand_3_3|output~0_combout\)) # (!\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_4|nand_3_3|output~0_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|or_7_0|output~0_combout\,
	datad => \test_logic|ms_jk_ff_0|nand_5|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|or_4_0|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N26
\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|and_4|output~combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\)) # (!\tty_subsystem_0|tto_state_gen|and_4|output~combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\ & (\tty_subsystem_0|tto_register|or_4_0|output~0_combout\ & !\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\ & ((\tty_subsystem_0|tto_register|or_4_0|output~0_combout\) # (!\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_4|output~combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|or_4_0|output~0_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N4
\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & ((\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\))) 
-- # (!\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\)))) # (!\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & 
-- (((\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|or_0|output~0_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N20
\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_3_3|output~0_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_3_3|output~0_combout\,
	datac => \not_reset~combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X6_Y6_N24
\tty_subsystem_0|tto_register|or_5_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_5_0|output~0_combout\ = (\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & 
-- ((\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_5|nand_3_3|output~0_combout\))) # (!\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|or_7_0|output~0_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tti_register|ms_jk_ff_5|nand_3_3|output~0_combout\,
	datad => \test_logic|ms_jk_ff_0|nand_5|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|or_5_0|output~0_combout\);

-- Location: LCCOMB_X6_Y6_N2
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

-- Location: LCCOMB_X6_Y6_N10
\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|and_4|output~combout\ & (((!\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\)))) # (!\tty_subsystem_0|tto_state_gen|and_4|output~combout\ 
-- & ((\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_register|or_5_0|output~0_combout\ & !\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_register|or_5_0|output~0_combout\) # (!\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_4|output~combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|or_5_0|output~0_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X6_Y6_N8
\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & ((\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\))) 
-- # (!\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\)))) # (!\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & 
-- (((\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\,
	datab => \tty_subsystem_0|tto_state_gen|or_0|output~0_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_1|output~2_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N18
\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_3_3|output~0_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_3_3|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X6_Y6_N14
\tty_subsystem_0|tto_register|or_6_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_6_0|output~0_combout\ = (\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & 
-- ((\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_6|nand_3_3|output~0_combout\))) # (!\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|or_7_0|output~0_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \test_logic|ms_jk_ff_0|nand_5|output~0_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_6|nand_3_3|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|or_6_0|output~0_combout\);

-- Location: LCCOMB_X6_Y6_N28
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

-- Location: LCCOMB_X6_Y6_N4
\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_state_gen|and_4|output~combout\ & (((!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\)))) # (!\tty_subsystem_0|tto_state_gen|and_4|output~combout\ 
-- & ((\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_register|or_6_0|output~0_combout\ & !\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\)) # 
-- (!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\ & ((\tty_subsystem_0|tto_register|or_6_0|output~0_combout\) # (!\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|and_4|output~combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_register|or_6_0|output~0_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X6_Y6_N26
\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & ((\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\)) # 
-- (!\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\))))) # (!\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & 
-- (((\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\,
	datab => \tty_subsystem_0|tto_state_gen|or_0|output~0_combout\,
	datac => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_1|output~2_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N12
\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_3_3|output~0_combout\ = (\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_3_3|output~0_combout\,
	combout => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X6_Y6_N30
\tty_subsystem_0|tto_register|or_7_0|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|or_7_0|output~1_combout\ = (\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tto_register|or_7_0|output~0_combout\ & 
-- ((\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & ((\tty_subsystem_0|tti_register|ms_jk_ff_7|nand_3_3|output~0_combout\))) # (!\test_logic|ms_jk_ff_0|nand_5|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|or_7_0|output~0_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \test_logic|ms_jk_ff_0|nand_5|output~0_combout\,
	datad => \tty_subsystem_0|tti_register|ms_jk_ff_7|nand_3_3|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|or_7_0|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N4
\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\ = (\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ & (!\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\ & 
-- ((\tty_subsystem_0|tto_state_gen|and_4|output~combout\) # (\tty_subsystem_0|tto_register|or_7_0|output~1_combout\)))) # (!\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ & (((!\tty_subsystem_0|tto_state_gen|and_4|output~combout\ & 
-- \tty_subsystem_0|tto_register|or_7_0|output~1_combout\)) # (!\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|and_4|output~combout\,
	datad => \tty_subsystem_0|tto_register|or_7_0|output~1_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X5_Y6_N10
\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ & (((\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\)))) # (!\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\ 
-- & ((\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & (\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\)) # (!\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & 
-- ((\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\,
	datab => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_1|output~2_combout\,
	datac => \tty_subsystem_0|tto_state_gen|or_0|output~0_combout\,
	datad => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\,
	combout => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N16
\tty_subsystem_0|tto_state_gen|nand_0|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_subsystem_0|tto_state_gen|nand_0|output~1_combout\ = (\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & ((\tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\) # 
-- ((!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & \tty_subsystem_0|tto_state_gen|or_0|output~0_combout\)))) # (!\tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\ & 
-- (!\tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_subsystem_0|tto_state_gen|or_0|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_subsystem_0|tto_state_gen|nand_0|output~0_combout\,
	datab => \tty_subsystem_0|tto_state_gen|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_subsystem_0|tto_state_gen|or_0|output~0_combout\,
	datad => \tty_subsystem_0|tto_register|ms_jk_ff_7|nand_5|output~1_combout\,
	combout => \tty_subsystem_0|tto_state_gen|nand_0|output~1_combout\);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_RX);
END structure;


