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

-- DATE "02/05/2017 13:57:49"

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

ENTITY 	tty_output_state_gen IS
    PORT (
	clk : IN std_logic;
	SLOW_clk : IN std_logic;
	SLOW_clk_RUN : OUT std_logic;
	not_reset : IN std_logic;
	ser_clk : OUT std_logic;
	ser_data_in : IN std_logic;
	SEND : IN std_logic;
	CLR_TX_FLAG : IN std_logic;
	TX_FLAG : OUT std_logic;
	TX : OUT std_logic
	);
END tty_output_state_gen;

-- Design Ports Information
-- SLOW_clk_RUN	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ser_clk	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TX_FLAG	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TX	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SLOW_clk	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ser_data_in	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SEND	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLR_TX_FLAG	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF tty_output_state_gen IS
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
SIGNAL ww_SLOW_clk : std_logic;
SIGNAL ww_SLOW_clk_RUN : std_logic;
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_ser_clk : std_logic;
SIGNAL ww_ser_data_in : std_logic;
SIGNAL ww_SEND : std_logic;
SIGNAL ww_CLR_TX_FLAG : std_logic;
SIGNAL ww_TX_FLAG : std_logic;
SIGNAL ww_TX : std_logic;
SIGNAL \ms_jk_ff_0|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \or_2|output~combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \and_2|output~combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \or_3|output~1_combout\ : std_logic;
SIGNAL \SEND~combout\ : std_logic;
SIGNAL \CLR_TX_FLAG~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \SLOW_clk~combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \and_3|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_6|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_6|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~2_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_1|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_2|nand_3_1|output~2_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_2|nand_3_1|output~3_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \nor_0|output~0_combout\ : std_logic;
SIGNAL \and_1|output~0_combout\ : std_logic;
SIGNAL \and_4|output~2_combout\ : std_logic;
SIGNAL \or_3|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_3_2|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_6|output~1_combout\ : std_logic;
SIGNAL \ser_data_in~combout\ : std_logic;
SIGNAL \nand_0|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_6|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|ALT_INV_output~2_combout\ : std_logic;
SIGNAL \nand_0|ALT_INV_output~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_SLOW_clk <= SLOW_clk;
SLOW_clk_RUN <= ww_SLOW_clk_RUN;
ww_not_reset <= not_reset;
ser_clk <= ww_ser_clk;
ww_ser_data_in <= ser_data_in;
ww_SEND <= SEND;
ww_CLR_TX_FLAG <= CLR_TX_FLAG;
TX_FLAG <= ww_TX_FLAG;
TX <= ww_TX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ms_jk_ff_1|nand_6|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_1|nand_6|output~1_combout\;
\ms_jk_ff_0|nand_5|ALT_INV_output~2_combout\ <= NOT \ms_jk_ff_0|nand_5|output~2_combout\;
\nand_0|ALT_INV_output~0_combout\ <= NOT \nand_0|output~0_combout\;

-- Location: LCCOMB_X25_Y11_N12
\ms_jk_ff_0|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_3_1|output~0_combout\ = (\SEND~combout\ & !\ms_jk_ff_0|nand_6|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEND~combout\,
	datad => \ms_jk_ff_0|nand_6|output~2_combout\,
	combout => \ms_jk_ff_0|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X25_Y11_N2
\or_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_2|output~combout\ = (\ms_jk_ff_0|nand_5|output~2_combout\ & (\clk~combout\ & ((!\ms_jk_ff_0|nand_6|output~2_combout\)))) # (!\ms_jk_ff_0|nand_5|output~2_combout\ & ((\and_3|output~0_combout\) # ((\clk~combout\ & 
-- !\ms_jk_ff_0|nand_6|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_5|output~2_combout\,
	datab => \clk~combout\,
	datac => \and_3|output~0_combout\,
	datad => \ms_jk_ff_0|nand_6|output~2_combout\,
	combout => \or_2|output~combout\);

-- Location: LCCOMB_X27_Y11_N16
\ms_jk_ff_0|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_3_3|output~1_combout\ = (\ms_jk_ff_0|nand_5|output~2_combout\) # ((\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\) # (\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \ms_jk_ff_0|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X25_Y11_N20
\ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_1|output~1_combout\ = (\or_2|output~combout\ & (!\ms_jk_ff_0|nand_3_1|output~0_combout\ & ((!\ms_jk_ff_0|nand_3_3|output~1_combout\) # (!\ms_jk_ff_0|nand_3_3|output~0_combout\)))) # (!\or_2|output~combout\ & 
-- (((!\ms_jk_ff_0|nand_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_3_1|output~0_combout\,
	datab => \ms_jk_ff_0|nand_3_3|output~0_combout\,
	datac => \ms_jk_ff_0|nand_3_3|output~1_combout\,
	datad => \or_2|output~combout\,
	combout => \ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X26_Y11_N8
\and_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \and_2|output~combout\ = (\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\) # (\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \and_2|output~combout\);

-- Location: LCCOMB_X27_Y11_N18
\tty_output_counter|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ = (!\ms_jk_ff_2|nand_5|output~1_combout\ & (\SLOW_clk~combout\ & ((\and_2|output~combout\) # (!\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \and_2|output~combout\,
	datac => \ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \SLOW_clk~combout\,
	combout => \tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y11_N20
\tty_output_counter|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ = (\not_reset~combout\ & (!\tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ & ((\and_2|output~combout\) # (!\and_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \and_2|output~combout\,
	datac => \tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \and_3|output~0_combout\,
	combout => \tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y11_N6
\tty_output_counter|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ = (!\tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ & (((\tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\) # (!\tty_output_counter|ms_jk_ff_2|nand_3_1|output~2_combout\)) # 
-- (!\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_2|nand_3_1|output~2_combout\,
	datad => \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y11_N24
\tty_output_counter|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ = (!\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & (\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & (!\ms_jk_ff_2|nand_5|output~1_combout\ & \SLOW_clk~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \SLOW_clk~combout\,
	combout => \tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X26_Y11_N6
\tty_output_counter|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\ = (\not_reset~combout\ & !\tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X26_Y11_N20
\tty_output_counter|ms_jk_ff_1|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\ = (\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & ((\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\) # (\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X26_Y11_N18
\tty_output_counter|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\ = (!\tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ & (((\tty_output_counter|ms_jk_ff_1|nand_3_3|output~2_combout\ & !\tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\)) # 
-- (!\tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datab => \tty_output_counter|ms_jk_ff_1|nand_3_3|output~2_combout\,
	datac => \tty_output_counter|ms_jk_ff_1|nand_3_3|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X26_Y11_N2
\ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~1_combout\ = (\not_reset~combout\ & (!\ms_jk_ff_2|nand_1|output~2_combout\ & ((\and_2|output~combout\) # (!\and_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and_3|output~0_combout\,
	datab => \not_reset~combout\,
	datac => \ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \and_2|output~combout\,
	combout => \ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X25_Y11_N14
\ms_jk_ff_1|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_3_3|output~1_combout\ = (\ms_jk_ff_1|nand_3_3|output~2_combout\) # ((\or_3|output~2_combout\ & (\CLR_TX_FLAG~combout\ & !\ms_jk_ff_1|nand_6|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \or_3|output~2_combout\,
	datab => \CLR_TX_FLAG~combout\,
	datac => \ms_jk_ff_1|nand_3_3|output~2_combout\,
	datad => \ms_jk_ff_1|nand_6|output~1_combout\,
	combout => \ms_jk_ff_1|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X25_Y11_N0
\or_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3|output~1_combout\ = (\ms_jk_ff_1|nand_6|output~1_combout\) # ((!\or_3|output~2_combout\ & \ms_jk_ff_1|nand_3_3|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \or_3|output~2_combout\,
	datac => \ms_jk_ff_1|nand_3_3|output~2_combout\,
	datad => \ms_jk_ff_1|nand_6|output~1_combout\,
	combout => \or_3|output~1_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SEND~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SEND,
	combout => \SEND~combout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLR_TX_FLAG~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_CLR_TX_FLAG,
	combout => \CLR_TX_FLAG~combout\);

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

-- Location: LCCOMB_X25_Y11_N16
\ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~1_combout\ = (!\ms_jk_ff_0|nand_1|output~1_combout\ & !\clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \clk~combout\,
	combout => \ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X25_Y11_N22
\ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_3_3|output~0_combout\ = (!\ms_jk_ff_0|nand_1|output~1_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \not_reset~combout\,
	combout => \ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SLOW_clk~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SLOW_clk,
	combout => \SLOW_clk~combout\);

-- Location: LCCOMB_X27_Y11_N2
\ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~2_combout\ = (!\ms_jk_ff_2|nand_1|output~1_combout\ & (((\ms_jk_ff_0|nand_5|output~2_combout\) # (!\SLOW_clk~combout\)) # (!\ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \SLOW_clk~combout\,
	datad => \ms_jk_ff_0|nand_5|output~2_combout\,
	combout => \ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y11_N4
\ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_5|output~1_combout\ = (\SLOW_clk~combout\ & (\ms_jk_ff_2|nand_5|output~1_combout\)) # (!\SLOW_clk~combout\ & ((\ms_jk_ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \SLOW_clk~combout\,
	datad => \ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y11_N30
\and_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \and_3|output~0_combout\ = (!\ms_jk_ff_2|nand_5|output~1_combout\ & \SLOW_clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \SLOW_clk~combout\,
	combout => \and_3|output~0_combout\);

-- Location: LCCOMB_X25_Y11_N28
\ms_jk_ff_0|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_6|output~1_combout\ = (\ms_jk_ff_0|nand_6|output~2_combout\) # (!\clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~combout\,
	datad => \ms_jk_ff_0|nand_6|output~2_combout\,
	combout => \ms_jk_ff_0|nand_6|output~1_combout\);

-- Location: LCCOMB_X25_Y11_N26
\ms_jk_ff_0|nand_6|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_6|output~2_combout\ = (!\ms_jk_ff_0|nand_5|output~2_combout\ & ((\ms_jk_ff_0|nand_3_3|output~0_combout\) # ((\and_3|output~0_combout\) # (!\ms_jk_ff_0|nand_6|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_5|output~2_combout\,
	datab => \ms_jk_ff_0|nand_3_3|output~0_combout\,
	datac => \and_3|output~0_combout\,
	datad => \ms_jk_ff_0|nand_6|output~1_combout\,
	combout => \ms_jk_ff_0|nand_6|output~2_combout\);

-- Location: LCCOMB_X27_Y11_N0
\ms_jk_ff_0|nand_5|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~2_combout\ = (!\ms_jk_ff_0|nand_6|output~2_combout\ & (((!\ms_jk_ff_0|nand_5|output~2_combout\ & \and_3|output~0_combout\)) # (!\ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \ms_jk_ff_0|nand_5|output~2_combout\,
	datac => \ms_jk_ff_0|nand_6|output~2_combout\,
	datad => \and_3|output~0_combout\,
	combout => \ms_jk_ff_0|nand_5|output~2_combout\);

-- Location: LCCOMB_X27_Y11_N12
\tty_output_counter|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ = (\ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\)) # (!\ms_jk_ff_2|nand_5|output~1_combout\ & ((\SLOW_clk~combout\ & 
-- ((\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\SLOW_clk~combout\ & (\tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \SLOW_clk~combout\,
	combout => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X26_Y11_N28
\tty_output_counter|ms_jk_ff_1|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_1|nand_3_3|output~2_combout\ = (!\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & (\SLOW_clk~combout\ & !\ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \SLOW_clk~combout\,
	datad => \ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_output_counter|ms_jk_ff_1|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X27_Y11_N14
\tty_output_counter|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ = (\ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\)) # (!\ms_jk_ff_2|nand_5|output~1_combout\ & ((\SLOW_clk~combout\ & 
-- ((\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\SLOW_clk~combout\ & (\tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \SLOW_clk~combout\,
	combout => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X26_Y11_N30
\tty_output_counter|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\ = ((\tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\) # ((\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\))) # 
-- (!\tty_output_counter|ms_jk_ff_1|nand_3_3|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_output_counter|ms_jk_ff_1|nand_3_3|output~2_combout\,
	datac => \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X27_Y11_N22
\tty_output_counter|ms_jk_ff_2|nand_3_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_2|nand_3_1|output~2_combout\ = (!\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & (!\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & (!\ms_jk_ff_2|nand_5|output~1_combout\ & \SLOW_clk~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \SLOW_clk~combout\,
	combout => \tty_output_counter|ms_jk_ff_2|nand_3_1|output~2_combout\);

-- Location: LCCOMB_X27_Y11_N28
\tty_output_counter|ms_jk_ff_2|nand_3_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_2|nand_3_1|output~3_combout\ = (\tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_output_counter|ms_jk_ff_2|nand_3_1|output~2_combout\ & ((\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_2|nand_3_1|output~2_combout\,
	combout => \tty_output_counter|ms_jk_ff_2|nand_3_1|output~3_combout\);

-- Location: LCCOMB_X27_Y11_N26
\tty_output_counter|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ = (!\tty_output_counter|ms_jk_ff_2|nand_3_1|output~3_combout\ & (((\tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\) # (!\tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\)) # 
-- (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datad => \tty_output_counter|ms_jk_ff_2|nand_3_1|output~3_combout\,
	combout => \tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y11_N10
\tty_output_counter|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ = (\ms_jk_ff_2|nand_5|output~1_combout\ & (((\tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\)))) # (!\ms_jk_ff_2|nand_5|output~1_combout\ & ((\SLOW_clk~combout\ & 
-- (\tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\SLOW_clk~combout\ & ((\tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \SLOW_clk~combout\,
	datad => \tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X26_Y11_N4
\tty_output_counter|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ = (\tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- (((\tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X26_Y11_N10
\tty_output_counter|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ = (\SLOW_clk~combout\ & ((\ms_jk_ff_2|nand_5|output~1_combout\ & ((\tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\))) # (!\ms_jk_ff_2|nand_5|output~1_combout\ & 
-- (\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\SLOW_clk~combout\ & (((\tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \SLOW_clk~combout\,
	datad => \ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X26_Y11_N24
\nor_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nor_0|output~0_combout\ = (((!\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\) # (!\tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \nor_0|output~0_combout\);

-- Location: LCCOMB_X26_Y11_N22
\and_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \and_1|output~0_combout\ = (!\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & ((!\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\) # (!\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \and_1|output~0_combout\);

-- Location: LCCOMB_X26_Y11_N0
\and_4|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \and_4|output~2_combout\ = (\nor_0|output~0_combout\ & (!\ms_jk_ff_2|nand_5|output~1_combout\ & (\SLOW_clk~combout\ & !\and_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nor_0|output~0_combout\,
	datab => \ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \SLOW_clk~combout\,
	datad => \and_1|output~0_combout\,
	combout => \and_4|output~2_combout\);

-- Location: LCCOMB_X26_Y11_N16
\or_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3|output~2_combout\ = (\or_3|output~1_combout\ & ((\and_3|output~0_combout\) # ((!\ms_jk_ff_1|nand_6|output~1_combout\ & \clk~combout\)))) # (!\or_3|output~1_combout\ & (!\ms_jk_ff_1|nand_6|output~1_combout\ & (\clk~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \or_3|output~1_combout\,
	datab => \ms_jk_ff_1|nand_6|output~1_combout\,
	datac => \clk~combout\,
	datad => \and_3|output~0_combout\,
	combout => \or_3|output~2_combout\);

-- Location: LCCOMB_X27_Y11_N8
\ms_jk_ff_1|nand_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_3_2|output~0_combout\ = (\ms_jk_ff_1|nand_6|output~1_combout\ & (\or_3|output~2_combout\ & (!\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & !\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_6|output~1_combout\,
	datab => \or_3|output~2_combout\,
	datac => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \ms_jk_ff_1|nand_3_2|output~0_combout\);

-- Location: LCCOMB_X26_Y11_N26
\ms_jk_ff_1|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_3_3|output~2_combout\ = (\ms_jk_ff_1|nand_3_3|output~1_combout\ & (!\ms_jk_ff_1|nand_3_2|output~0_combout\ & \not_reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_3_3|output~1_combout\,
	datac => \ms_jk_ff_1|nand_3_2|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \ms_jk_ff_1|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X26_Y11_N14
\ms_jk_ff_1|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_6|output~1_combout\ = (\or_3|output~2_combout\ & (\ms_jk_ff_1|nand_6|output~1_combout\)) # (!\or_3|output~2_combout\ & ((\ms_jk_ff_1|nand_3_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_1|nand_6|output~1_combout\,
	datac => \or_3|output~2_combout\,
	datad => \ms_jk_ff_1|nand_3_3|output~2_combout\,
	combout => \ms_jk_ff_1|nand_6|output~1_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ser_data_in~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ser_data_in,
	combout => \ser_data_in~combout\);

-- Location: LCCOMB_X26_Y11_N12
\nand_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nand_0|output~0_combout\ = (!\ms_jk_ff_2|nand_5|output~1_combout\ & (((!\ser_data_in~combout\ & !\and_1|output~0_combout\)) # (!\nor_0|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nor_0|output~0_combout\,
	datab => \ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \ser_data_in~combout\,
	datad => \and_1|output~0_combout\,
	combout => \nand_0|output~0_combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SLOW_clk_RUN~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ms_jk_ff_0|nand_5|ALT_INV_output~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SLOW_clk_RUN);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ser_clk~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \and_4|output~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ser_clk);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ms_jk_ff_1|nand_6|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TX_FLAG);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \nand_0|ALT_INV_output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TX);
END structure;


