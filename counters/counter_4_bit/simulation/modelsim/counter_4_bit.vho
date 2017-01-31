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

-- DATE "01/31/2017 18:13:05"

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

ENTITY 	counter_4_bit IS
    PORT (
	clr : IN std_logic;
	not_reset : IN std_logic;
	clk : IN std_logic;
	output : OUT std_logic_vector(3 DOWNTO 0)
	);
END counter_4_bit;

-- Design Ports Information
-- output[0]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[1]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[2]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[3]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clr	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF counter_4_bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_3_2|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;

BEGIN

ww_clr <= clr;
ww_not_reset <= not_reset;
ww_clk <= clk;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ms_jk_ff_3|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_3|nand_5|output~1_combout\;
\ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_2|nand_5|output~1_combout\;
\ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_1|nand_5|output~1_combout\;
\ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_0|nand_5|output~1_combout\;

-- Location: LCCOMB_X1_Y6_N0
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

-- Location: LCCOMB_X1_Y6_N4
\ms_jk_ff_3|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_3_3|output~0_combout\ = (\not_reset~combout\ & ((\ms_jk_ff_3|nand_5|output~1_combout\) # ((!\clk~combout\) # (!\clr~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \clr~combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_3|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N2
\ms_jk_ff_3|nand_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_3_2|output~0_combout\ = (!\ms_jk_ff_0|nand_5|output~1_combout\ & (!\ms_jk_ff_2|nand_5|output~1_combout\ & (!\ms_jk_ff_1|nand_5|output~1_combout\ & \clk~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_3|nand_3_2|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N12
\ms_jk_ff_3|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_3_3|output~1_combout\ = (!\ms_jk_ff_3|nand_1|output~1_combout\ & (\ms_jk_ff_3|nand_3_3|output~0_combout\ & ((\ms_jk_ff_3|nand_5|output~1_combout\) # (!\ms_jk_ff_3|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \ms_jk_ff_3|nand_3_3|output~0_combout\,
	datad => \ms_jk_ff_3|nand_3_2|output~0_combout\,
	combout => \ms_jk_ff_3|nand_3_3|output~1_combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_clr,
	combout => \clr~combout\);

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

-- Location: LCCOMB_X1_Y6_N8
\ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & (!\ms_jk_ff_0|nand_1|output~2_combout\ & ((\ms_jk_ff_0|nand_5|output~1_combout\) # (!\clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N10
\ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_1|output~2_combout\ = (!\ms_jk_ff_0|nand_1|output~1_combout\ & ((\clr~combout\) # ((!\clk~combout\) # (!\ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datab => \ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N20
\ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_0|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N16
\ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~1_combout\ = (\clk~combout\ & ((\clr~combout\ & (!\ms_jk_ff_1|nand_5|output~1_combout\)) # (!\clr~combout\ & ((!\ms_jk_ff_0|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datab => \ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N22
\ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~2_combout\ = (\ms_jk_ff_1|nand_1|output~1_combout\ & (((!\ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\ms_jk_ff_1|nand_1|output~1_combout\ & (((\ms_jk_ff_1|nand_1|output~2_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N14
\ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_1|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N24
\ms_jk_ff_3|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_3_1|output~0_combout\ = (!\clr~combout\ & (!\ms_jk_ff_1|nand_5|output~1_combout\ & (!\ms_jk_ff_0|nand_5|output~1_combout\ & \clk~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datab => \ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_3|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N30
\ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~2_combout\ = ((!\clr~combout\ & ((\ms_jk_ff_1|nand_5|output~1_combout\) # (\ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datab => \ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N6
\ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~3_combout\ = (\ms_jk_ff_2|nand_1|output~1_combout\ & (!\ms_jk_ff_2|nand_5|output~1_combout\ & ((!\ms_jk_ff_2|nand_1|output~2_combout\)))) # (!\ms_jk_ff_2|nand_1|output~1_combout\ & (((!\ms_jk_ff_3|nand_3_1|output~0_combout\)) # 
-- (!\ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \ms_jk_ff_3|nand_3_1|output~0_combout\,
	datad => \ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N28
\ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_2|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \ms_jk_ff_2|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N18
\ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_1|output~1_combout\ = (!\ms_jk_ff_3|nand_3_3|output~1_combout\ & ((\ms_jk_ff_2|nand_5|output~1_combout\) # ((!\ms_jk_ff_3|nand_5|output~1_combout\) # (!\ms_jk_ff_3|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_3|nand_3_3|output~1_combout\,
	datab => \ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \ms_jk_ff_3|nand_3_1|output~0_combout\,
	datad => \ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N26
\ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_3|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_3|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_3|nand_1|output~1_combout\,
	combout => \ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
END structure;


