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

-- DATE "01/31/2017 19:57:00"

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

ENTITY 	shift_register_8_ps IS
    PORT (
	not_reset : IN std_logic;
	clk : IN std_logic;
	p_in : IN std_logic_vector(7 DOWNTO 0);
	s_in : IN std_logic;
	s_out : OUT std_logic;
	s_not_p : IN std_logic
	);
END shift_register_8_ps;

-- Design Ports Information
-- s_out	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p_in[7]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_not_p	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p_in[6]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p_in[5]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p_in[4]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p_in[3]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p_in[2]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p_in[1]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_in	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p_in[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF shift_register_8_ps IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_p_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s_in : std_logic;
SIGNAL ww_s_out : std_logic;
SIGNAL ww_s_not_p : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ms_jk_ff_7|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_6|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_in~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \s_not_p~combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \ms_jk_ff_5|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
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
SIGNAL \p_in~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\ : std_logic;

BEGIN

ww_not_reset <= not_reset;
ww_clk <= clk;
ww_p_in <= p_in;
ww_s_in <= s_in;
s_out <= ww_s_out;
ww_s_not_p <= s_not_p;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ms_jk_ff_7|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_7|nand_5|output~1_combout\;

-- Location: LCCOMB_X1_Y6_N14
\ms_jk_ff_7|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_7|nand_1|output~1_combout\ = (\not_reset~combout\ & !\ms_jk_ff_7|nand_1|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_reset~combout\,
	datad => \ms_jk_ff_7|nand_1|output~3_combout\,
	combout => \ms_jk_ff_7|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N6
\ms_jk_ff_6|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_6|nand_1|output~1_combout\ = (\not_reset~combout\ & !\ms_jk_ff_6|nand_1|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \ms_jk_ff_6|nand_1|output~3_combout\,
	combout => \ms_jk_ff_6|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N10
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

-- Location: LCCOMB_X1_Y4_N12
\ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_1|output~2_combout\ = (\s_not_p~combout\ & (\s_in~combout\)) # (!\s_not_p~combout\ & ((\p_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_not_p~combout\,
	datac => \s_in~combout\,
	datad => \p_in~combout\(0),
	combout => \ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s_in~I\ : cycloneii_io
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
	padio => ww_s_in,
	combout => \s_in~combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p_in[0]~I\ : cycloneii_io
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
	padio => ww_p_in(0),
	combout => \p_in~combout\(0));

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

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p_in[7]~I\ : cycloneii_io
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
	padio => ww_p_in(7),
	combout => \p_in~combout\(7));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s_not_p~I\ : cycloneii_io
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
	padio => ww_s_not_p,
	combout => \s_not_p~combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y6_N22
\ms_jk_ff_5|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_5|nand_1|output~1_combout\ = (\not_reset~combout\ & !\ms_jk_ff_5|nand_1|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \ms_jk_ff_5|nand_1|output~3_combout\,
	combout => \ms_jk_ff_5|nand_1|output~1_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p_in[5]~I\ : cycloneii_io
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
	padio => ww_p_in(5),
	combout => \p_in~combout\(5));

-- Location: LCCOMB_X1_Y6_N2
\ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_4|nand_1|output~1_combout\ = (!\ms_jk_ff_4|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_4|nand_1|output~3_combout\,
	datac => \not_reset~combout\,
	combout => \ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p_in[4]~I\ : cycloneii_io
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
	padio => ww_p_in(4),
	combout => \p_in~combout\(4));

-- Location: LCCOMB_X2_Y6_N14
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

-- Location: LCCOMB_X2_Y6_N30
\ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~1_combout\ = (!\ms_jk_ff_1|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_1|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N22
\ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_1|output~1_combout\ = (!\ms_jk_ff_0|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N0
\ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_1|output~3_combout\ = (\ms_jk_ff_0|nand_1|output~2_combout\ & (!\ms_jk_ff_0|nand_1|output~1_combout\ & ((!\ms_jk_ff_0|nand_5|output~1_combout\) # (!\clk~combout\)))) # (!\ms_jk_ff_0|nand_1|output~2_combout\ & (((\clk~combout\ & 
-- !\ms_jk_ff_0|nand_5|output~1_combout\)) # (!\ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X2_Y6_N8
\ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_0|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_0|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_0|nand_1|output~3_combout\,
	combout => \ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p_in[1]~I\ : cycloneii_io
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
	padio => ww_p_in(1),
	combout => \p_in~combout\(1));

-- Location: LCCOMB_X2_Y6_N20
\ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~2_combout\ = (\s_not_p~combout\ & (!\ms_jk_ff_0|nand_5|output~1_combout\)) # (!\s_not_p~combout\ & ((\p_in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_not_p~combout\,
	datac => \ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \p_in~combout\(1),
	combout => \ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N26
\ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~3_combout\ = (\ms_jk_ff_1|nand_5|output~1_combout\ & (!\ms_jk_ff_1|nand_1|output~1_combout\ & ((!\ms_jk_ff_1|nand_1|output~2_combout\) # (!\clk~combout\)))) # (!\ms_jk_ff_1|nand_5|output~1_combout\ & (((\clk~combout\ & 
-- !\ms_jk_ff_1|nand_1|output~2_combout\)) # (!\ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X2_Y6_N24
\ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_1|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p_in[2]~I\ : cycloneii_io
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
	padio => ww_p_in(2),
	combout => \p_in~combout\(2));

-- Location: LCCOMB_X2_Y6_N28
\ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~2_combout\ = (\s_not_p~combout\ & (!\ms_jk_ff_1|nand_5|output~1_combout\)) # (!\s_not_p~combout\ & ((\p_in~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_not_p~combout\,
	datac => \ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \p_in~combout\(2),
	combout => \ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N6
\ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~3_combout\ = (\ms_jk_ff_2|nand_5|output~1_combout\ & (!\ms_jk_ff_2|nand_1|output~1_combout\ & ((!\ms_jk_ff_2|nand_1|output~2_combout\) # (!\clk~combout\)))) # (!\ms_jk_ff_2|nand_5|output~1_combout\ & (((\clk~combout\ & 
-- !\ms_jk_ff_2|nand_1|output~2_combout\)) # (!\ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X2_Y6_N16
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

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p_in[3]~I\ : cycloneii_io
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
	padio => ww_p_in(3),
	combout => \p_in~combout\(3));

-- Location: LCCOMB_X2_Y6_N12
\ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_1|output~2_combout\ = (\s_not_p~combout\ & (!\ms_jk_ff_2|nand_5|output~1_combout\)) # (!\s_not_p~combout\ & ((\p_in~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_not_p~combout\,
	datac => \ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \p_in~combout\(3),
	combout => \ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N18
\ms_jk_ff_3|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_1|output~3_combout\ = (\ms_jk_ff_3|nand_1|output~1_combout\ & (!\ms_jk_ff_3|nand_5|output~1_combout\ & (\clk~combout\ & !\ms_jk_ff_3|nand_1|output~2_combout\))) # (!\ms_jk_ff_3|nand_1|output~1_combout\ & 
-- (((!\ms_jk_ff_3|nand_1|output~2_combout\) # (!\clk~combout\)) # (!\ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \ms_jk_ff_3|nand_1|output~3_combout\);

-- Location: LCCOMB_X2_Y6_N4
\ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_3|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_3|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_3|nand_1|output~3_combout\,
	combout => \ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N12
\ms_jk_ff_4|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_4|nand_1|output~2_combout\ = (\s_not_p~combout\ & ((!\ms_jk_ff_3|nand_5|output~1_combout\))) # (!\s_not_p~combout\ & (\p_in~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p_in~combout\(4),
	datac => \s_not_p~combout\,
	datad => \ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \ms_jk_ff_4|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N10
\ms_jk_ff_4|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_4|nand_1|output~3_combout\ = (\clk~combout\ & ((\ms_jk_ff_4|nand_1|output~1_combout\ & (!\ms_jk_ff_4|nand_5|output~1_combout\ & !\ms_jk_ff_4|nand_1|output~2_combout\)) # (!\ms_jk_ff_4|nand_1|output~1_combout\ & 
-- ((!\ms_jk_ff_4|nand_1|output~2_combout\) # (!\ms_jk_ff_4|nand_5|output~1_combout\))))) # (!\clk~combout\ & (!\ms_jk_ff_4|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \ms_jk_ff_4|nand_1|output~1_combout\,
	datac => \ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \ms_jk_ff_4|nand_1|output~2_combout\,
	combout => \ms_jk_ff_4|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N4
\ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_4|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_4|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_4|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \ms_jk_ff_4|nand_1|output~3_combout\,
	combout => \ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N16
\ms_jk_ff_5|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_5|nand_1|output~2_combout\ = (\s_not_p~combout\ & ((!\ms_jk_ff_4|nand_5|output~1_combout\))) # (!\s_not_p~combout\ & (\p_in~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_not_p~combout\,
	datab => \p_in~combout\(5),
	datac => \ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \ms_jk_ff_5|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N26
\ms_jk_ff_5|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_5|nand_1|output~3_combout\ = (\ms_jk_ff_5|nand_5|output~1_combout\ & (!\ms_jk_ff_5|nand_1|output~1_combout\ & ((!\clk~combout\) # (!\ms_jk_ff_5|nand_1|output~2_combout\)))) # (!\ms_jk_ff_5|nand_5|output~1_combout\ & 
-- (((!\ms_jk_ff_5|nand_1|output~2_combout\ & \clk~combout\)) # (!\ms_jk_ff_5|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \ms_jk_ff_5|nand_1|output~1_combout\,
	datac => \ms_jk_ff_5|nand_1|output~2_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_5|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N24
\ms_jk_ff_5|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_5|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_5|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_5|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_5|nand_5|output~1_combout\,
	datab => \ms_jk_ff_5|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \ms_jk_ff_5|nand_5|output~1_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p_in[6]~I\ : cycloneii_io
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
	padio => ww_p_in(6),
	combout => \p_in~combout\(6));

-- Location: LCCOMB_X1_Y6_N8
\ms_jk_ff_6|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_6|nand_1|output~2_combout\ = (\s_not_p~combout\ & (!\ms_jk_ff_5|nand_5|output~1_combout\)) # (!\s_not_p~combout\ & ((\p_in~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_not_p~combout\,
	datac => \ms_jk_ff_5|nand_5|output~1_combout\,
	datad => \p_in~combout\(6),
	combout => \ms_jk_ff_6|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N30
\ms_jk_ff_6|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_6|nand_1|output~3_combout\ = (\ms_jk_ff_6|nand_1|output~1_combout\ & (!\ms_jk_ff_6|nand_5|output~1_combout\ & (!\ms_jk_ff_6|nand_1|output~2_combout\ & \clk~combout\))) # (!\ms_jk_ff_6|nand_1|output~1_combout\ & (((!\clk~combout\) # 
-- (!\ms_jk_ff_6|nand_1|output~2_combout\)) # (!\ms_jk_ff_6|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_6|nand_1|output~1_combout\,
	datab => \ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \ms_jk_ff_6|nand_1|output~2_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_6|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N28
\ms_jk_ff_6|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_6|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_6|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_6|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_6|nand_5|output~1_combout\,
	datac => \ms_jk_ff_6|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \ms_jk_ff_6|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N20
\ms_jk_ff_7|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_7|nand_1|output~2_combout\ = (\s_not_p~combout\ & ((!\ms_jk_ff_6|nand_5|output~1_combout\))) # (!\s_not_p~combout\ & (\p_in~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p_in~combout\(7),
	datac => \s_not_p~combout\,
	datad => \ms_jk_ff_6|nand_5|output~1_combout\,
	combout => \ms_jk_ff_7|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N18
\ms_jk_ff_7|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_7|nand_1|output~3_combout\ = (\ms_jk_ff_7|nand_1|output~1_combout\ & (!\ms_jk_ff_7|nand_5|output~1_combout\ & (!\ms_jk_ff_7|nand_1|output~2_combout\ & \clk~combout\))) # (!\ms_jk_ff_7|nand_1|output~1_combout\ & (((!\clk~combout\) # 
-- (!\ms_jk_ff_7|nand_1|output~2_combout\)) # (!\ms_jk_ff_7|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_7|nand_1|output~1_combout\,
	datab => \ms_jk_ff_7|nand_5|output~1_combout\,
	datac => \ms_jk_ff_7|nand_1|output~2_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_7|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N0
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

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_out~I\ : cycloneii_io
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
	padio => ww_s_out);
END structure;


