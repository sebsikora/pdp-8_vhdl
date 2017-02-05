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

-- DATE "02/05/2017 18:01:22"

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

ENTITY 	tty_subsystem IS
    PORT (
	clk : IN std_logic;
	not_reset : IN std_logic;
	AC_DATA_IN : IN std_logic_vector(7 DOWNTO 0);
	AC_DATA_OUT : OUT std_logic_vector(7 DOWNTO 0);
	SEND : IN std_logic;
	CLR_RX_FLAG : IN std_logic;
	RX_FLAG : OUT std_logic;
	RX : IN std_logic;
	CLR_TX_FLAG : IN std_logic;
	TX_FLAG : OUT std_logic;
	TX_s_not_p : IN std_logic;
	TX : OUT std_logic
	);
END tty_subsystem;

-- Design Ports Information
-- AC_DATA_OUT[0]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AC_DATA_OUT[1]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AC_DATA_OUT[2]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AC_DATA_OUT[3]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AC_DATA_OUT[4]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AC_DATA_OUT[5]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AC_DATA_OUT[6]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AC_DATA_OUT[7]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RX_FLAG	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TX_FLAG	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TX	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RX	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_DATA_IN[7]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TX_s_not_p	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_DATA_IN[6]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_DATA_IN[5]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SEND	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_DATA_IN[4]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_DATA_IN[3]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_DATA_IN[2]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_DATA_IN[1]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AC_DATA_IN[0]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLR_RX_FLAG	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLR_TX_FLAG	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF tty_subsystem IS
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
SIGNAL ww_AC_DATA_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_AC_DATA_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SEND : std_logic;
SIGNAL ww_CLR_RX_FLAG : std_logic;
SIGNAL ww_RX_FLAG : std_logic;
SIGNAL ww_RX : std_logic;
SIGNAL ww_CLR_TX_FLAG : std_logic;
SIGNAL ww_TX_FLAG : std_logic;
SIGNAL ww_TX_s_not_p : std_logic;
SIGNAL ww_TX : std_logic;
SIGNAL \tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \CLR_RX_FLAG~combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_2|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_3|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_4|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_5|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_6|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_7|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \tti_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \CLR_TX_FLAG~combout\ : std_logic;
SIGNAL \tto_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tto_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \tto_state_gen|or_3|output~1_combout\ : std_logic;
SIGNAL \tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ : std_logic;
SIGNAL \tti_state_gen|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_7|nand_3_3|ALT_INV_output~0_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_6|nand_3_3|ALT_INV_output~0_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_5|nand_3_3|ALT_INV_output~0_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_4|nand_3_3|ALT_INV_output~0_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_3|nand_3_3|ALT_INV_output~0_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_2|nand_3_3|ALT_INV_output~0_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_1|nand_3_3|ALT_INV_output~0_combout\ : std_logic;
SIGNAL \tti_register|ms_jk_ff_0|nand_3_3|ALT_INV_output~0_combout\ : std_logic;
SIGNAL \tto_state_gen|ms_jk_ff_1|nand_6|ALT_INV_output~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_not_reset <= not_reset;
ww_AC_DATA_IN <= AC_DATA_IN;
AC_DATA_OUT <= ww_AC_DATA_OUT;
ww_SEND <= SEND;
ww_CLR_RX_FLAG <= CLR_RX_FLAG;
RX_FLAG <= ww_RX_FLAG;
ww_RX <= RX;
ww_CLR_TX_FLAG <= CLR_TX_FLAG;
TX_FLAG <= ww_TX_FLAG;
ww_TX_s_not_p <= TX_s_not_p;
TX <= ww_TX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\tti_state_gen|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\;
\tti_register|ms_jk_ff_7|nand_3_3|ALT_INV_output~0_combout\ <= NOT \tti_register|ms_jk_ff_7|nand_3_3|output~0_combout\;
\tti_register|ms_jk_ff_6|nand_3_3|ALT_INV_output~0_combout\ <= NOT \tti_register|ms_jk_ff_6|nand_3_3|output~0_combout\;
\tti_register|ms_jk_ff_5|nand_3_3|ALT_INV_output~0_combout\ <= NOT \tti_register|ms_jk_ff_5|nand_3_3|output~0_combout\;
\tti_register|ms_jk_ff_4|nand_3_3|ALT_INV_output~0_combout\ <= NOT \tti_register|ms_jk_ff_4|nand_3_3|output~0_combout\;
\tti_register|ms_jk_ff_3|nand_3_3|ALT_INV_output~0_combout\ <= NOT \tti_register|ms_jk_ff_3|nand_3_3|output~0_combout\;
\tti_register|ms_jk_ff_2|nand_3_3|ALT_INV_output~0_combout\ <= NOT \tti_register|ms_jk_ff_2|nand_3_3|output~0_combout\;
\tti_register|ms_jk_ff_1|nand_3_3|ALT_INV_output~0_combout\ <= NOT \tti_register|ms_jk_ff_1|nand_3_3|output~0_combout\;
\tti_register|ms_jk_ff_0|nand_3_3|ALT_INV_output~0_combout\ <= NOT \tti_register|ms_jk_ff_0|nand_3_3|output~0_combout\;
\tto_state_gen|ms_jk_ff_1|nand_6|ALT_INV_output~1_combout\ <= NOT \tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\;

-- Location: LCCOMB_X1_Y11_N12
\tti_state_gen|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ = (\not_reset~combout\ & (!\tti_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ & ((!\clk~combout\) # (!\CLR_RX_FLAG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \CLR_RX_FLAG~combout\,
	datac => \tti_state_gen|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \clk~combout\,
	combout => \tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y11_N20
\tti_register|ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tti_register|ms_jk_ff_0|nand_3_3|output~0_combout\ = (\tti_register|ms_jk_ff_0|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tti_register|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \tti_register|ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y13_N28
\tti_register|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tti_register|ms_jk_ff_1|nand_3_3|output~0_combout\ = (\tti_register|ms_jk_ff_1|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tti_register|ms_jk_ff_1|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \tti_register|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y13_N2
\tti_register|ms_jk_ff_2|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tti_register|ms_jk_ff_2|nand_3_3|output~0_combout\ = (\tti_register|ms_jk_ff_2|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tti_register|ms_jk_ff_2|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \tti_register|ms_jk_ff_2|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y11_N28
\tti_register|ms_jk_ff_3|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tti_register|ms_jk_ff_3|nand_3_3|output~0_combout\ = (\tti_register|ms_jk_ff_3|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tti_register|ms_jk_ff_3|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \tti_register|ms_jk_ff_3|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y13_N0
\tti_register|ms_jk_ff_4|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tti_register|ms_jk_ff_4|nand_3_3|output~0_combout\ = (\tti_register|ms_jk_ff_4|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tti_register|ms_jk_ff_4|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \tti_register|ms_jk_ff_4|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y13_N10
\tti_register|ms_jk_ff_5|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tti_register|ms_jk_ff_5|nand_3_3|output~0_combout\ = (\tti_register|ms_jk_ff_5|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tti_register|ms_jk_ff_5|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \tti_register|ms_jk_ff_5|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y13_N20
\tti_register|ms_jk_ff_6|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tti_register|ms_jk_ff_6|nand_3_3|output~0_combout\ = (\tti_register|ms_jk_ff_6|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tti_register|ms_jk_ff_6|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \tti_register|ms_jk_ff_6|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y13_N22
\tti_register|ms_jk_ff_7|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tti_register|ms_jk_ff_7|nand_3_3|output~0_combout\ = (\tti_register|ms_jk_ff_7|nand_3_3|output~0_combout\) # (!\not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tti_register|ms_jk_ff_7|nand_3_3|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \tti_register|ms_jk_ff_7|nand_3_3|output~0_combout\);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y11_N14
\tti_state_gen|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tti_state_gen|ms_jk_ff_1|nand_1|output~2_combout\ = (!\tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\ & ((!\tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\) # (!\clk~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tti_state_gen|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \clk~combout\,
	datad => \tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tti_state_gen|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y11_N26
\tti_state_gen|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\ = (\clk~combout\ & (\tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\clk~combout\ & ((\tti_state_gen|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tti_state_gen|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \clk~combout\,
	combout => \tti_state_gen|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y11_N22
\tto_state_gen|ms_jk_ff_1|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tto_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\ = (\tto_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\) # ((\CLR_TX_FLAG~combout\ & (\tto_state_gen|or_3|output~1_combout\ & !\tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tto_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\,
	datab => \CLR_TX_FLAG~combout\,
	datac => \tto_state_gen|or_3|output~1_combout\,
	datad => \tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	combout => \tto_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N18
\tto_state_gen|ms_jk_ff_1|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tto_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\ = (\not_reset~combout\ & (\tto_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\ & ((!\tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\) # (!\tto_state_gen|or_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tto_state_gen|ms_jk_ff_1|nand_3_3|output~1_combout\,
	datac => \tto_state_gen|or_3|output~1_combout\,
	datad => \tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	combout => \tto_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X1_Y11_N24
\tto_state_gen|or_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tto_state_gen|or_3|output~1_combout\ = (\tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\) # ((\clk~combout\) # ((!\tto_state_gen|or_3|output~1_combout\ & \tto_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tto_state_gen|or_3|output~1_combout\,
	datab => \tto_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\,
	datac => \tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datad => \clk~combout\,
	combout => \tto_state_gen|or_3|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N16
\tto_state_gen|ms_jk_ff_1|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\ = (\tto_state_gen|or_3|output~1_combout\ & (\tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\)) # (!\tto_state_gen|or_3|output~1_combout\ & ((\tto_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\,
	datac => \tto_state_gen|or_3|output~1_combout\,
	datad => \tto_state_gen|ms_jk_ff_1|nand_3_3|output~2_combout\,
	combout => \tto_state_gen|ms_jk_ff_1|nand_6|output~1_combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AC_DATA_OUT[0]~I\ : cycloneii_io
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
	datain => \tti_register|ms_jk_ff_0|nand_3_3|ALT_INV_output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AC_DATA_OUT(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AC_DATA_OUT[1]~I\ : cycloneii_io
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
	datain => \tti_register|ms_jk_ff_1|nand_3_3|ALT_INV_output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AC_DATA_OUT(1));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AC_DATA_OUT[2]~I\ : cycloneii_io
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
	datain => \tti_register|ms_jk_ff_2|nand_3_3|ALT_INV_output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AC_DATA_OUT(2));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AC_DATA_OUT[3]~I\ : cycloneii_io
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
	datain => \tti_register|ms_jk_ff_3|nand_3_3|ALT_INV_output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AC_DATA_OUT(3));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AC_DATA_OUT[4]~I\ : cycloneii_io
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
	datain => \tti_register|ms_jk_ff_4|nand_3_3|ALT_INV_output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AC_DATA_OUT(4));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AC_DATA_OUT[5]~I\ : cycloneii_io
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
	datain => \tti_register|ms_jk_ff_5|nand_3_3|ALT_INV_output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AC_DATA_OUT(5));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AC_DATA_OUT[6]~I\ : cycloneii_io
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
	datain => \tti_register|ms_jk_ff_6|nand_3_3|ALT_INV_output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AC_DATA_OUT(6));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AC_DATA_OUT[7]~I\ : cycloneii_io
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
	datain => \tti_register|ms_jk_ff_7|nand_3_3|ALT_INV_output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AC_DATA_OUT(7));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \tti_state_gen|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RX_FLAG);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \tto_state_gen|ms_jk_ff_1|nand_6|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TX_FLAG);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TX);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_DATA_IN[7]~I\ : cycloneii_io
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
	padio => ww_AC_DATA_IN(7));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TX_s_not_p~I\ : cycloneii_io
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
	padio => ww_TX_s_not_p);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_DATA_IN[6]~I\ : cycloneii_io
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
	padio => ww_AC_DATA_IN(6));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_DATA_IN[5]~I\ : cycloneii_io
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
	padio => ww_AC_DATA_IN(5));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SEND);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_DATA_IN[4]~I\ : cycloneii_io
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
	padio => ww_AC_DATA_IN(4));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_DATA_IN[3]~I\ : cycloneii_io
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
	padio => ww_AC_DATA_IN(3));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_DATA_IN[2]~I\ : cycloneii_io
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
	padio => ww_AC_DATA_IN(2));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_DATA_IN[1]~I\ : cycloneii_io
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
	padio => ww_AC_DATA_IN(1));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AC_DATA_IN[0]~I\ : cycloneii_io
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
	padio => ww_AC_DATA_IN(0));
END structure;


