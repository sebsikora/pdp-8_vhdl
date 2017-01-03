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

-- DATE "01/03/2017 19:17:58"

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

ENTITY 	register_12_bit IS
    PORT (
	input : IN std_logic_vector(11 DOWNTO 0);
	output : OUT std_logic_vector(11 DOWNTO 0);
	load : IN std_logic;
	clear : IN std_logic;
	clk : IN std_logic;
	not_reset : IN std_logic
	);
END register_12_bit;

-- Design Ports Information
-- output[0]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[1]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[3]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[4]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[5]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[6]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[7]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[8]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[9]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[10]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[11]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[0]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- load	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clear	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[1]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[2]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[4]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[5]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[6]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[7]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[8]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[9]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[10]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[11]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF register_12_bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_load : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_not_reset : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_9|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_11|nand_1|output~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \load~combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \clear~combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_4|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_4|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_5|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_5|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_5|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_6|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_6|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_6|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_7|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_7|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_7|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_8|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_8|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_8|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_8|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_9|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_9|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_9|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_10|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_10|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_10|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_10|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_11|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_11|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_11|nand_5|output~1_combout\ : std_logic;
SIGNAL \input~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;

BEGIN

ww_input <= input;
output <= ww_output;
ww_load <= load;
ww_clear <= clear;
ww_clk <= clk;
ww_not_reset <= not_reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_11|nand_5|output~1_combout\;
\ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_10|nand_5|output~1_combout\;
\ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_9|nand_5|output~1_combout\;
\ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_8|nand_5|output~1_combout\;
\ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_7|nand_5|output~1_combout\;
\ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_6|nand_5|output~1_combout\;
\ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_5|nand_5|output~1_combout\;
\ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_4|nand_5|output~1_combout\;
\ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_3|nand_5|output~1_combout\;
\ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_2|nand_5|output~1_combout\;
\ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_1|nand_5|output~1_combout\;
\ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_0|nand_5|output~1_combout\;

-- Location: LCCOMB_X4_Y6_N20
\ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_1|output~1_combout\ = (!\ms_jk_ff_0|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N6
\ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~1_combout\ = (!\ms_jk_ff_2|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ms_jk_ff_2|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N30
\ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_4|nand_1|output~1_combout\ = (!\ms_jk_ff_4|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ms_jk_ff_4|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N20
\ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_5|nand_1|output~1_combout\ = (!\ms_jk_ff_5|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ms_jk_ff_5|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N16
\ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_6|nand_1|output~1_combout\ = (!\ms_jk_ff_6|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ms_jk_ff_6|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N2
\ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_7|nand_1|output~1_combout\ = (!\ms_jk_ff_7|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ms_jk_ff_7|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N10
\ms_jk_ff_9|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_9|nand_1|output~1_combout\ = (\not_reset~combout\ & !\ms_jk_ff_9|nand_1|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \ms_jk_ff_9|nand_1|output~3_combout\,
	combout => \ms_jk_ff_9|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N6
\ms_jk_ff_11|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_11|nand_1|output~1_combout\ = (\not_reset~combout\ & !\ms_jk_ff_11|nand_1|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \ms_jk_ff_11|nand_1|output~3_combout\,
	combout => \ms_jk_ff_11|nand_1|output~1_combout\);

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

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_input(0),
	combout => \input~combout\(0));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\load~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_load,
	combout => \load~combout\);

-- Location: LCCOMB_X4_Y6_N26
\ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_1|output~2_combout\ = (\ms_jk_ff_0|nand_5|output~1_combout\ & (((\input~combout\(0) & \load~combout\)))) # (!\ms_jk_ff_0|nand_5|output~1_combout\ & ((\clear~combout\) # ((!\input~combout\(0) & \load~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~combout\,
	datab => \input~combout\(0),
	datac => \ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \load~combout\,
	combout => \ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N8
\ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_1|output~3_combout\ = (\clk~combout\ & ((\ms_jk_ff_0|nand_1|output~2_combout\ & ((!\ms_jk_ff_0|nand_5|output~1_combout\))) # (!\ms_jk_ff_0|nand_1|output~2_combout\ & (!\ms_jk_ff_0|nand_1|output~1_combout\)))) # (!\clk~combout\ & 
-- (!\ms_jk_ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \ms_jk_ff_0|nand_1|output~3_combout\);

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

-- Location: LCCOMB_X4_Y6_N4
\ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_0|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_0|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N16
\ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~1_combout\ = (\not_reset~combout\ & !\ms_jk_ff_1|nand_1|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datac => \ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_input(1),
	combout => \input~combout\(1));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clear~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_clear,
	combout => \clear~combout\);

-- Location: LCCOMB_X1_Y6_N2
\ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~2_combout\ = (\ms_jk_ff_1|nand_5|output~1_combout\ & (\load~combout\ & (\input~combout\(1)))) # (!\ms_jk_ff_1|nand_5|output~1_combout\ & ((\clear~combout\) # ((\load~combout\ & !\input~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~combout\,
	datab => \input~combout\(1),
	datac => \ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \clear~combout\,
	combout => \ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N28
\ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~3_combout\ = (\clk~combout\ & ((\ms_jk_ff_1|nand_1|output~2_combout\ & ((!\ms_jk_ff_1|nand_5|output~1_combout\))) # (!\ms_jk_ff_1|nand_1|output~2_combout\ & (!\ms_jk_ff_1|nand_1|output~1_combout\)))) # (!\clk~combout\ & 
-- (!\ms_jk_ff_1|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N24
\ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_1|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_input(2),
	combout => \input~combout\(2));

-- Location: LCCOMB_X4_Y6_N24
\ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~2_combout\ = (\ms_jk_ff_2|nand_5|output~1_combout\ & (((\input~combout\(2) & \load~combout\)))) # (!\ms_jk_ff_2|nand_5|output~1_combout\ & ((\clear~combout\) # ((!\input~combout\(2) & \load~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~combout\,
	datab => \input~combout\(2),
	datac => \load~combout\,
	datad => \ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N30
\ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~3_combout\ = (\ms_jk_ff_2|nand_1|output~2_combout\ & ((\clk~combout\ & ((!\ms_jk_ff_2|nand_5|output~1_combout\))) # (!\clk~combout\ & (!\ms_jk_ff_2|nand_1|output~1_combout\)))) # (!\ms_jk_ff_2|nand_1|output~2_combout\ & 
-- (!\ms_jk_ff_2|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X4_Y6_N22
\ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_2|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_2|nand_1|output~3_combout\,
	combout => \ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y6_N26
\ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_1|output~1_combout\ = (!\ms_jk_ff_3|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ms_jk_ff_3|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_input(3),
	combout => \input~combout\(3));

-- Location: LCCOMB_X2_Y6_N28
\ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_1|output~2_combout\ = (\ms_jk_ff_3|nand_5|output~1_combout\ & (\load~combout\ & (\input~combout\(3)))) # (!\ms_jk_ff_3|nand_5|output~1_combout\ & ((\clear~combout\) # ((\load~combout\ & !\input~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~combout\,
	datab => \input~combout\(3),
	datac => \ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \clear~combout\,
	combout => \ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N18
\ms_jk_ff_3|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_1|output~3_combout\ = (\clk~combout\ & ((\ms_jk_ff_3|nand_1|output~2_combout\ & (!\ms_jk_ff_3|nand_5|output~1_combout\)) # (!\ms_jk_ff_3|nand_1|output~2_combout\ & ((!\ms_jk_ff_3|nand_1|output~1_combout\))))) # (!\clk~combout\ & 
-- (((!\ms_jk_ff_3|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \ms_jk_ff_3|nand_1|output~3_combout\);

-- Location: LCCOMB_X2_Y6_N16
\ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_3|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_3|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_3|nand_1|output~3_combout\,
	combout => \ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_input(4),
	combout => \input~combout\(4));

-- Location: LCCOMB_X3_Y6_N12
\ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_4|nand_1|output~2_combout\ = (\ms_jk_ff_4|nand_5|output~1_combout\ & (\load~combout\ & ((\input~combout\(4))))) # (!\ms_jk_ff_4|nand_5|output~1_combout\ & ((\clear~combout\) # ((\load~combout\ & !\input~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~combout\,
	datab => \clear~combout\,
	datac => \input~combout\(4),
	datad => \ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y6_N26
\ms_jk_ff_4|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_4|nand_1|output~3_combout\ = (\clk~combout\ & ((\ms_jk_ff_4|nand_1|output~2_combout\ & ((!\ms_jk_ff_4|nand_5|output~1_combout\))) # (!\ms_jk_ff_4|nand_1|output~2_combout\ & (!\ms_jk_ff_4|nand_1|output~1_combout\)))) # (!\clk~combout\ & 
-- (!\ms_jk_ff_4|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_4|nand_1|output~1_combout\,
	datab => \ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \ms_jk_ff_4|nand_1|output~3_combout\);

-- Location: LCCOMB_X3_Y6_N28
\ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_4|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_4|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_4|nand_1|output~3_combout\,
	combout => \ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_input(5),
	combout => \input~combout\(5));

-- Location: LCCOMB_X2_Y6_N6
\ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_5|nand_1|output~2_combout\ = (\ms_jk_ff_5|nand_5|output~1_combout\ & (\load~combout\ & (\input~combout\(5)))) # (!\ms_jk_ff_5|nand_5|output~1_combout\ & ((\clear~combout\) # ((\load~combout\ & !\input~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~combout\,
	datab => \input~combout\(5),
	datac => \clear~combout\,
	datad => \ms_jk_ff_5|nand_5|output~1_combout\,
	combout => \ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N0
\ms_jk_ff_5|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_5|nand_1|output~3_combout\ = (\clk~combout\ & ((\ms_jk_ff_5|nand_1|output~2_combout\ & ((!\ms_jk_ff_5|nand_5|output~1_combout\))) # (!\ms_jk_ff_5|nand_1|output~2_combout\ & (!\ms_jk_ff_5|nand_1|output~1_combout\)))) # (!\clk~combout\ & 
-- (!\ms_jk_ff_5|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_5|nand_1|output~1_combout\,
	datab => \ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_5|nand_1|output~2_combout\,
	combout => \ms_jk_ff_5|nand_1|output~3_combout\);

-- Location: LCCOMB_X2_Y6_N2
\ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_5|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_5|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_5|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_5|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_5|nand_1|output~3_combout\,
	combout => \ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_input(6),
	combout => \input~combout\(6));

-- Location: LCCOMB_X4_Y6_N10
\ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_6|nand_1|output~2_combout\ = (\ms_jk_ff_6|nand_5|output~1_combout\ & (((\input~combout\(6) & \load~combout\)))) # (!\ms_jk_ff_6|nand_5|output~1_combout\ & ((\clear~combout\) # ((!\input~combout\(6) & \load~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~combout\,
	datab => \input~combout\(6),
	datac => \load~combout\,
	datad => \ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N0
\ms_jk_ff_6|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_6|nand_1|output~3_combout\ = (\clk~combout\ & ((\ms_jk_ff_6|nand_1|output~2_combout\ & ((!\ms_jk_ff_6|nand_5|output~1_combout\))) # (!\ms_jk_ff_6|nand_1|output~2_combout\ & (!\ms_jk_ff_6|nand_1|output~1_combout\)))) # (!\clk~combout\ & 
-- (!\ms_jk_ff_6|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_6|nand_1|output~1_combout\,
	datab => \ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_6|nand_1|output~2_combout\,
	combout => \ms_jk_ff_6|nand_1|output~3_combout\);

-- Location: LCCOMB_X4_Y6_N28
\ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_6|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_6|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_6|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_6|nand_1|output~3_combout\,
	combout => \ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_input(7),
	combout => \input~combout\(7));

-- Location: LCCOMB_X4_Y6_N12
\ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_7|nand_1|output~2_combout\ = (\ms_jk_ff_7|nand_5|output~1_combout\ & (((\input~combout\(7) & \load~combout\)))) # (!\ms_jk_ff_7|nand_5|output~1_combout\ & ((\clear~combout\) # ((!\input~combout\(7) & \load~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~combout\,
	datab => \input~combout\(7),
	datac => \ms_jk_ff_7|nand_5|output~1_combout\,
	datad => \load~combout\,
	combout => \ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N18
\ms_jk_ff_7|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_7|nand_1|output~3_combout\ = (\clk~combout\ & ((\ms_jk_ff_7|nand_1|output~2_combout\ & ((!\ms_jk_ff_7|nand_5|output~1_combout\))) # (!\ms_jk_ff_7|nand_1|output~2_combout\ & (!\ms_jk_ff_7|nand_1|output~1_combout\)))) # (!\clk~combout\ & 
-- (!\ms_jk_ff_7|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_7|nand_1|output~1_combout\,
	datab => \ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_7|nand_1|output~2_combout\,
	combout => \ms_jk_ff_7|nand_1|output~3_combout\);

-- Location: LCCOMB_X4_Y6_N14
\ms_jk_ff_7|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_7|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_7|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_7|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_7|nand_1|output~3_combout\,
	combout => \ms_jk_ff_7|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N22
\ms_jk_ff_8|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_8|nand_1|output~1_combout\ = (!\ms_jk_ff_8|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ms_jk_ff_8|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \ms_jk_ff_8|nand_1|output~1_combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_input(8),
	combout => \input~combout\(8));

-- Location: LCCOMB_X2_Y6_N12
\ms_jk_ff_8|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_8|nand_1|output~2_combout\ = (\ms_jk_ff_8|nand_5|output~1_combout\ & (\load~combout\ & (\input~combout\(8)))) # (!\ms_jk_ff_8|nand_5|output~1_combout\ & ((\clear~combout\) # ((\load~combout\ & !\input~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~combout\,
	datab => \input~combout\(8),
	datac => \ms_jk_ff_8|nand_5|output~1_combout\,
	datad => \clear~combout\,
	combout => \ms_jk_ff_8|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N30
\ms_jk_ff_8|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_8|nand_1|output~3_combout\ = (\clk~combout\ & ((\ms_jk_ff_8|nand_1|output~2_combout\ & (!\ms_jk_ff_8|nand_5|output~1_combout\)) # (!\ms_jk_ff_8|nand_1|output~2_combout\ & ((!\ms_jk_ff_8|nand_1|output~1_combout\))))) # (!\clk~combout\ & 
-- (((!\ms_jk_ff_8|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_8|nand_5|output~1_combout\,
	datab => \ms_jk_ff_8|nand_1|output~1_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_8|nand_1|output~2_combout\,
	combout => \ms_jk_ff_8|nand_1|output~3_combout\);

-- Location: LCCOMB_X2_Y6_N24
\ms_jk_ff_8|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_8|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_8|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_8|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_8|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_8|nand_1|output~3_combout\,
	combout => \ms_jk_ff_8|nand_5|output~1_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_input(9),
	combout => \input~combout\(9));

-- Location: LCCOMB_X1_Y6_N4
\ms_jk_ff_9|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_9|nand_1|output~2_combout\ = (\ms_jk_ff_9|nand_5|output~1_combout\ & (\load~combout\ & (\input~combout\(9)))) # (!\ms_jk_ff_9|nand_5|output~1_combout\ & ((\clear~combout\) # ((\load~combout\ & !\input~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~combout\,
	datab => \input~combout\(9),
	datac => \ms_jk_ff_9|nand_5|output~1_combout\,
	datad => \clear~combout\,
	combout => \ms_jk_ff_9|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N30
\ms_jk_ff_9|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_9|nand_1|output~3_combout\ = (\ms_jk_ff_9|nand_1|output~2_combout\ & ((\clk~combout\ & ((!\ms_jk_ff_9|nand_5|output~1_combout\))) # (!\clk~combout\ & (!\ms_jk_ff_9|nand_1|output~1_combout\)))) # (!\ms_jk_ff_9|nand_1|output~2_combout\ & 
-- (!\ms_jk_ff_9|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_9|nand_1|output~1_combout\,
	datab => \ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \ms_jk_ff_9|nand_1|output~2_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_9|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N14
\ms_jk_ff_9|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_9|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_9|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_9|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_9|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_9|nand_1|output~3_combout\,
	combout => \ms_jk_ff_9|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N8
\ms_jk_ff_10|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_10|nand_1|output~1_combout\ = (\not_reset~combout\ & !\ms_jk_ff_10|nand_1|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datac => \ms_jk_ff_10|nand_1|output~3_combout\,
	combout => \ms_jk_ff_10|nand_1|output~1_combout\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_input(10),
	combout => \input~combout\(10));

-- Location: LCCOMB_X1_Y6_N26
\ms_jk_ff_10|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_10|nand_1|output~2_combout\ = (\ms_jk_ff_10|nand_5|output~1_combout\ & (\load~combout\ & ((\input~combout\(10))))) # (!\ms_jk_ff_10|nand_5|output~1_combout\ & ((\clear~combout\) # ((\load~combout\ & !\input~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~combout\,
	datab => \clear~combout\,
	datac => \input~combout\(10),
	datad => \ms_jk_ff_10|nand_5|output~1_combout\,
	combout => \ms_jk_ff_10|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N12
\ms_jk_ff_10|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_10|nand_1|output~3_combout\ = (\clk~combout\ & ((\ms_jk_ff_10|nand_1|output~2_combout\ & (!\ms_jk_ff_10|nand_5|output~1_combout\)) # (!\ms_jk_ff_10|nand_1|output~2_combout\ & ((!\ms_jk_ff_10|nand_1|output~1_combout\))))) # (!\clk~combout\ & 
-- (((!\ms_jk_ff_10|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \ms_jk_ff_10|nand_1|output~1_combout\,
	datad => \ms_jk_ff_10|nand_1|output~2_combout\,
	combout => \ms_jk_ff_10|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N0
\ms_jk_ff_10|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_10|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_10|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_10|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_10|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_10|nand_1|output~3_combout\,
	combout => \ms_jk_ff_10|nand_5|output~1_combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_input(11),
	combout => \input~combout\(11));

-- Location: LCCOMB_X1_Y6_N20
\ms_jk_ff_11|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_11|nand_1|output~2_combout\ = (\ms_jk_ff_11|nand_5|output~1_combout\ & (\load~combout\ & (\input~combout\(11)))) # (!\ms_jk_ff_11|nand_5|output~1_combout\ & ((\clear~combout\) # ((\load~combout\ & !\input~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~combout\,
	datab => \input~combout\(11),
	datac => \clear~combout\,
	datad => \ms_jk_ff_11|nand_5|output~1_combout\,
	combout => \ms_jk_ff_11|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N18
\ms_jk_ff_11|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_11|nand_1|output~3_combout\ = (\ms_jk_ff_11|nand_1|output~2_combout\ & ((\clk~combout\ & ((!\ms_jk_ff_11|nand_5|output~1_combout\))) # (!\clk~combout\ & (!\ms_jk_ff_11|nand_1|output~1_combout\)))) # (!\ms_jk_ff_11|nand_1|output~2_combout\ & 
-- (!\ms_jk_ff_11|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_11|nand_1|output~1_combout\,
	datab => \ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \ms_jk_ff_11|nand_1|output~2_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_11|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N22
\ms_jk_ff_11|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_11|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_11|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_11|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_11|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_11|nand_1|output~3_combout\,
	combout => \ms_jk_ff_11|nand_5|output~1_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(2));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(3));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(4));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ms_jk_ff_5|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(5));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ms_jk_ff_6|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(6));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(7));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[8]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ms_jk_ff_8|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(8));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[9]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ms_jk_ff_9|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(9));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[10]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ms_jk_ff_10|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(10));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[11]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ms_jk_ff_11|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(11));
END structure;


