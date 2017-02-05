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

-- DATE "02/05/2017 14:42:27"

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

ENTITY 	tty_input_state_gen IS
    PORT (
	clk : IN std_logic;
	SLOW_clk : IN std_logic;
	SLOW_clk_RUN : OUT std_logic;
	not_reset : IN std_logic;
	ser_clk : OUT std_logic;
	CLR_RX_FLAG : IN std_logic;
	RX_FLAG : OUT std_logic;
	RX : IN std_logic
	);
END tty_input_state_gen;

-- Design Ports Information
-- SLOW_clk_RUN	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ser_clk	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RX_FLAG	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SLOW_clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RX	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLR_RX_FLAG	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF tty_input_state_gen IS
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
SIGNAL ww_CLR_RX_FLAG : std_logic;
SIGNAL ww_RX_FLAG : std_logic;
SIGNAL ww_RX : std_logic;
SIGNAL \SLOW_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \or_0|output~combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \CLR_RX_FLAG~combout\ : std_logic;
SIGNAL \SLOW_clk~combout\ : std_logic;
SIGNAL \SLOW_clk~clkctrl_outclk\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \and_4|output~combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_2|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_2|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \and_3|output~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \RX~combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_6|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_3_3|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \and_0|output~2_combout\ : std_logic;
SIGNAL \and_0|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_SLOW_clk <= SLOW_clk;
SLOW_clk_RUN <= ww_SLOW_clk_RUN;
ww_not_reset <= not_reset;
ser_clk <= ww_ser_clk;
ww_CLR_RX_FLAG <= CLR_RX_FLAG;
RX_FLAG <= ww_RX_FLAG;
ww_RX <= RX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\SLOW_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SLOW_clk~combout\);
\ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_1|nand_5|output~1_combout\;
\ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_0|nand_5|output~1_combout\;

-- Location: LCCOMB_X1_Y5_N6
\or_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_0|output~combout\ = (\and_3|output~combout\) # ((!\ms_jk_ff_0|nand_6|output~1_combout\ & \clk~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and_3|output~combout\,
	datac => \ms_jk_ff_0|nand_6|output~1_combout\,
	datad => \clk~combout\,
	combout => \or_0|output~combout\);

-- Location: LCCOMB_X1_Y6_N4
\tty_output_counter|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ = (!\tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ & (\not_reset~combout\ & ((\and_4|output~combout\) # (!\SLOW_clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \not_reset~combout\,
	datac => \and_4|output~combout\,
	datad => \SLOW_clk~combout\,
	combout => \tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLR_RX_FLAG~I\ : cycloneii_io
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
	padio => ww_CLR_RX_FLAG,
	combout => \CLR_RX_FLAG~combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G2
\SLOW_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SLOW_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SLOW_clk~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y6_N2
\tty_output_counter|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & (!\tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ & ((\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\) # (!\SLOW_clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \SLOW_clk~combout\,
	combout => \tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N12
\and_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \and_4|output~combout\ = (\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\) # (\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \and_4|output~combout\);

-- Location: LCCOMB_X1_Y6_N16
\tty_output_counter|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\ = (!\tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\and_4|output~combout\) # (!\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\SLOW_clk~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLOW_clk~combout\,
	datab => \tty_output_counter|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \and_4|output~combout\,
	combout => \tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N24
\tty_output_counter|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\SLOW_clk~clkctrl_outclk\) & (\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\)) # (!GLOBAL(\SLOW_clk~clkctrl_outclk\) & ((\tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \SLOW_clk~clkctrl_outclk\,
	datad => \tty_output_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N20
\tty_output_counter|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ = (\SLOW_clk~combout\ & (((!\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & !\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\)) # 
-- (!\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \SLOW_clk~combout\,
	combout => \tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N18
\tty_output_counter|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\ = (\tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ & (((!\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- (((\tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \tty_output_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N28
\tty_output_counter|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\SLOW_clk~clkctrl_outclk\) & (\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\)) # (!GLOBAL(\SLOW_clk~clkctrl_outclk\) & ((\tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \SLOW_clk~clkctrl_outclk\,
	datad => \tty_output_counter|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N26
\tty_output_counter|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\ = (\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\) # (((\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\)) # 
-- (!\SLOW_clk~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \SLOW_clk~combout\,
	combout => \tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N8
\tty_output_counter|ms_jk_ff_2|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_2|nand_3_3|output~1_combout\ = (\not_reset~combout\ & (!\tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ & ((\tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (\tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_2|nand_3_3|output~0_combout\,
	combout => \tty_output_counter|ms_jk_ff_2|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N6
\tty_output_counter|ms_jk_ff_2|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_2|nand_3_1|output~0_combout\ = (!\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & (!\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\ & \SLOW_clk~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \SLOW_clk~combout\,
	combout => \tty_output_counter|ms_jk_ff_2|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N22
\tty_output_counter|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\ = (!\tty_output_counter|ms_jk_ff_2|nand_3_3|output~1_combout\ & (((!\tty_output_counter|ms_jk_ff_2|nand_3_1|output~0_combout\) # (!\tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\and_4|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and_4|output~combout\,
	datab => \tty_output_counter|ms_jk_ff_2|nand_3_3|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N30
\tty_output_counter|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\SLOW_clk~clkctrl_outclk\) & (\tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\)) # (!GLOBAL(\SLOW_clk~clkctrl_outclk\) & ((\tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \SLOW_clk~clkctrl_outclk\,
	datad => \tty_output_counter|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N0
\tty_output_counter|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\ = (!\tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\ & (((\tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\) # (!\tty_output_counter|ms_jk_ff_2|nand_3_1|output~0_combout\)) # 
-- (!\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N14
\tty_output_counter|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\SLOW_clk~clkctrl_outclk\) & (\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\)) # (!GLOBAL(\SLOW_clk~clkctrl_outclk\) & ((\tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \SLOW_clk~clkctrl_outclk\,
	datad => \tty_output_counter|ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N16
\and_3|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \and_3|output~combout\ = (\SLOW_clk~combout\ & (!\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & (!\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & !\ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLOW_clk~combout\,
	datab => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \and_3|output~combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y5_N24
\ms_jk_ff_0|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_6|output~1_combout\ = (!\ms_jk_ff_0|nand_5|output~1_combout\ & ((\or_0|output~combout\) # (\ms_jk_ff_0|nand_3_3|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \or_0|output~combout\,
	datab => \ms_jk_ff_0|nand_3_3|output~3_combout\,
	datad => \ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \ms_jk_ff_0|nand_6|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N26
\ms_jk_ff_0|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_3_3|output~1_combout\ = (!\RX~combout\ & !\ms_jk_ff_0|nand_6|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX~combout\,
	datac => \ms_jk_ff_0|nand_6|output~1_combout\,
	combout => \ms_jk_ff_0|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N8
\ms_jk_ff_0|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_3_3|output~2_combout\ = (\ms_jk_ff_0|nand_3_3|output~3_combout\) # ((\ms_jk_ff_0|nand_3_3|output~1_combout\ & ((\and_3|output~combout\) # (\clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and_3|output~combout\,
	datab => \ms_jk_ff_0|nand_3_3|output~3_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_0|nand_3_3|output~1_combout\,
	combout => \ms_jk_ff_0|nand_3_3|output~2_combout\);

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

-- Location: LCCOMB_X1_Y5_N2
\ms_jk_ff_0|nand_3_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_3_3|output~3_combout\ = (\ms_jk_ff_0|nand_3_3|output~2_combout\ & (\not_reset~combout\ & ((\ms_jk_ff_0|nand_5|output~1_combout\) # (!\or_0|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \or_0|output~combout\,
	datab => \ms_jk_ff_0|nand_3_3|output~2_combout\,
	datac => \not_reset~combout\,
	datad => \ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \ms_jk_ff_0|nand_3_3|output~3_combout\);

-- Location: LCCOMB_X1_Y5_N22
\ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~1_combout\ = (!\ms_jk_ff_0|nand_6|output~1_combout\ & ((\and_3|output~combout\) # ((\clk~combout\) # (!\ms_jk_ff_0|nand_3_3|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and_3|output~combout\,
	datab => \ms_jk_ff_0|nand_3_3|output~3_combout\,
	datac => \ms_jk_ff_0|nand_6|output~1_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N10
\and_0|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \and_0|output~2_combout\ = (((!\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\) # (!\tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\)) # 
-- (!\tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_output_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \and_0|output~2_combout\);

-- Location: LCCOMB_X1_Y5_N10
\and_0|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \and_0|output~3_combout\ = (\SLOW_clk~combout\ & (\and_0|output~2_combout\ & ((\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\) # (\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLOW_clk~combout\,
	datab => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \and_0|output~2_combout\,
	combout => \and_0|output~3_combout\);

-- Location: LCCOMB_X1_Y5_N28
\ms_jk_ff_1|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_3_1|output~0_combout\ = (\clk~combout\ & (!\tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\ & (!\tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\ & \ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \tty_output_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_output_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \ms_jk_ff_1|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X1_Y5_N18
\ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~1_combout\ = (\not_reset~combout\ & (((\ms_jk_ff_1|nand_5|output~1_combout\) # (!\clk~combout\)) # (!\CLR_RX_FLAG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR_RX_FLAG~combout\,
	datab => \not_reset~combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N12
\ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~2_combout\ = (!\ms_jk_ff_1|nand_3_1|output~0_combout\ & ((\ms_jk_ff_1|nand_1|output~2_combout\) # (!\ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \ms_jk_ff_1|nand_3_1|output~0_combout\,
	datad => \ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y5_N0
\ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_5|output~1_combout\ = (\clk~combout\ & ((\ms_jk_ff_1|nand_5|output~1_combout\))) # (!\clk~combout\ & (\ms_jk_ff_1|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SLOW_clk_RUN);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \and_0|output~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ser_clk);

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
	datain => \ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RX_FLAG);
END structure;


