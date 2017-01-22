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

-- DATE "01/22/2017 14:41:26"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clock_generator IS
    PORT (
	START : IN std_logic;
	STEP : IN std_logic;
	clk_in : IN std_logic;
	END_STATE : IN std_logic;
	clk : OUT std_logic;
	not_reset : IN std_logic;
	HLT_flag : IN std_logic;
	HLT_INDICATOR : OUT std_logic;
	RUN_INDICATOR : OUT std_logic;
	FP_ADDR_LOAD_in : IN std_logic;
	FP_ADDR_LOAD_out : OUT std_logic;
	FP_EXAMINE_in : IN std_logic;
	FP_EXAMINE_out : OUT std_logic;
	FP_DEPOSIT_in : IN std_logic;
	FP_DEPOSIT_out : OUT std_logic
	);
END clock_generator;

-- Design Ports Information
-- clk	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HLT_INDICATOR	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RUN_INDICATOR	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FP_ADDR_LOAD_out	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FP_EXAMINE_out	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FP_DEPOSIT_out	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- END_STATE	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STEP	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FP_ADDR_LOAD_in	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FP_EXAMINE_in	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FP_DEPOSIT_in	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- not_reset	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HLT_flag	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clock_generator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_STEP : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_END_STATE : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_HLT_flag : std_logic;
SIGNAL ww_HLT_INDICATOR : std_logic;
SIGNAL ww_RUN_INDICATOR : std_logic;
SIGNAL ww_FP_ADDR_LOAD_in : std_logic;
SIGNAL ww_FP_ADDR_LOAD_out : std_logic;
SIGNAL ww_FP_EXAMINE_in : std_logic;
SIGNAL ww_FP_EXAMINE_out : std_logic;
SIGNAL ww_FP_DEPOSIT_in : std_logic;
SIGNAL ww_FP_DEPOSIT_out : std_logic;
SIGNAL \ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \clk~output_o\ : std_logic;
SIGNAL \HLT_INDICATOR~output_o\ : std_logic;
SIGNAL \RUN_INDICATOR~output_o\ : std_logic;
SIGNAL \FP_ADDR_LOAD_out~output_o\ : std_logic;
SIGNAL \FP_EXAMINE_out~output_o\ : std_logic;
SIGNAL \FP_DEPOSIT_out~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \not_reset~input_o\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \FP_ADDR_LOAD_in~input_o\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \FP_EXAMINE_in~input_o\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \STEP~input_o\ : std_logic;
SIGNAL \HLT_flag~input_o\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \END_STATE~input_o\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~2_combout\ : std_logic;
SIGNAL \or_1|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \and_2|output~combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_3_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \FP_DEPOSIT_in~input_o\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|ALT_INV_output~2_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ : std_logic;

BEGIN

ww_START <= START;
ww_STEP <= STEP;
ww_clk_in <= clk_in;
ww_END_STATE <= END_STATE;
clk <= ww_clk;
ww_not_reset <= not_reset;
ww_HLT_flag <= HLT_flag;
HLT_INDICATOR <= ww_HLT_INDICATOR;
RUN_INDICATOR <= ww_RUN_INDICATOR;
ww_FP_ADDR_LOAD_in <= FP_ADDR_LOAD_in;
FP_ADDR_LOAD_out <= ww_FP_ADDR_LOAD_out;
ww_FP_EXAMINE_in <= FP_EXAMINE_in;
FP_EXAMINE_out <= ww_FP_EXAMINE_out;
ww_FP_DEPOSIT_in <= FP_DEPOSIT_in;
FP_DEPOSIT_out <= ww_FP_DEPOSIT_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_2|nand_5|output~1_combout\;
\fp_latch_bank|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\;
\fp_latch_bank|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\;
\ms_jk_ff_0|nand_5|ALT_INV_output~2_combout\ <= NOT \ms_jk_ff_0|nand_5|output~2_combout\;
\fp_latch_bank|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ <= NOT \fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\;

-- Location: LCCOMB_X32_Y11_N30
\ms_jk_ff_3|nand_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_1|output~1_combout\ = (\not_reset~input_o\ & !\ms_jk_ff_3|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~input_o\,
	datad => \ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X32_Y11_N22
\ms_jk_ff_1|nand_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~1_combout\ = (!\ms_jk_ff_1|nand_1|output~2_combout\ & (\not_reset~input_o\ & ((\ms_jk_ff_1|nand_5|output~1_combout\) # (!\ms_jk_ff_2|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \not_reset~input_o\,
	datac => \ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: IOIBUF_X33_Y10_N8
\START~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: IOOBUF_X31_Y0_N9
\clk~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and_2|output~combout\,
	devoe => ww_devoe,
	o => \clk~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\HLT_INDICATOR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\,
	devoe => ww_devoe,
	o => \HLT_INDICATOR~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\RUN_INDICATOR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ms_jk_ff_0|nand_5|ALT_INV_output~2_combout\,
	devoe => ww_devoe,
	o => \RUN_INDICATOR~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\FP_ADDR_LOAD_out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fp_latch_bank|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\,
	devoe => ww_devoe,
	o => \FP_ADDR_LOAD_out~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\FP_EXAMINE_out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fp_latch_bank|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\,
	devoe => ww_devoe,
	o => \FP_EXAMINE_out~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\FP_DEPOSIT_out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fp_latch_bank|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\,
	devoe => ww_devoe,
	o => \FP_DEPOSIT_out~output_o\);

-- Location: IOIBUF_X33_Y11_N1
\clk_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\not_reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_not_reset,
	o => \not_reset~input_o\);

-- Location: LCCOMB_X32_Y14_N22
\fp_latch_bank|ms_jk_ff_0|nand_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\ = (!\fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~input_o\,
	combout => \fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: IOIBUF_X33_Y14_N1
\FP_ADDR_LOAD_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FP_ADDR_LOAD_in,
	o => \FP_ADDR_LOAD_in~input_o\);

-- Location: LCCOMB_X32_Y14_N4
\fp_latch_bank|ms_jk_ff_0|nand_1|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\ = (\FP_ADDR_LOAD_in~input_o\ & (((!\fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\FP_ADDR_LOAD_in~input_o\ & (((\ms_jk_ff_2|nand_3_1|output~0_combout\ & 
-- !\fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_3_1|output~0_combout\,
	datab => \fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \FP_ADDR_LOAD_in~input_o\,
	combout => \fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X32_Y14_N0
\fp_latch_bank|ms_jk_ff_0|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\ = (\FP_ADDR_LOAD_in~input_o\ & (((\fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\FP_ADDR_LOAD_in~input_o\ & (\fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\ & 
-- ((\fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\) # (!\ms_jk_ff_2|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_3_1|output~0_combout\,
	datab => \fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \FP_ADDR_LOAD_in~input_o\,
	combout => \fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: IOIBUF_X33_Y22_N8
\FP_EXAMINE_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FP_EXAMINE_in,
	o => \FP_EXAMINE_in~input_o\);

-- Location: LCCOMB_X32_Y14_N10
\fp_latch_bank|ms_jk_ff_1|nand_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\ = (!\fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\ & \not_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \not_reset~input_o\,
	combout => \fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X32_Y14_N24
\fp_latch_bank|ms_jk_ff_1|nand_1|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\ = (\FP_EXAMINE_in~input_o\ & (((!\fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\FP_EXAMINE_in~input_o\ & (((\ms_jk_ff_2|nand_3_1|output~0_combout\ & 
-- !\fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_3_1|output~0_combout\,
	datab => \fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \FP_EXAMINE_in~input_o\,
	datad => \fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X32_Y14_N14
\fp_latch_bank|ms_jk_ff_1|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\ = (\FP_EXAMINE_in~input_o\ & (((\fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\FP_EXAMINE_in~input_o\ & (\fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\ & 
-- ((\fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\) # (!\ms_jk_ff_2|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_3_1|output~0_combout\,
	datab => \fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \FP_EXAMINE_in~input_o\,
	datad => \fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: IOIBUF_X33_Y10_N1
\STEP~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STEP,
	o => \STEP~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\HLT_flag~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HLT_flag,
	o => \HLT_flag~input_o\);

-- Location: LCCOMB_X32_Y11_N20
\ms_jk_ff_1|nand_1|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~2_combout\ = (!\ms_jk_ff_1|nand_1|output~1_combout\ & (((!\and_2|output~combout\) # (!\ms_jk_ff_1|nand_5|output~1_combout\)) # (!\HLT_flag~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \HLT_flag~input_o\,
	datac => \ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \and_2|output~combout\,
	combout => \ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X32_Y11_N4
\ms_jk_ff_1|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_5|output~1_combout\ = (\and_2|output~combout\ & (\ms_jk_ff_1|nand_5|output~1_combout\)) # (!\and_2|output~combout\ & ((\ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \and_2|output~combout\,
	datac => \ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: IOIBUF_X33_Y11_N8
\END_STATE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_END_STATE,
	o => \END_STATE~input_o\);

-- Location: LCCOMB_X32_Y11_N18
\ms_jk_ff_2|nand_3_1|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_3_1|output~0_combout\ = (\clk_in~input_o\ & (\or_1|output~0_combout\ & (!\ms_jk_ff_3|nand_5|output~1_combout\ & \END_STATE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~input_o\,
	datab => \or_1|output~0_combout\,
	datac => \ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \END_STATE~input_o\,
	combout => \ms_jk_ff_2|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X32_Y11_N10
\ms_jk_ff_0|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~1_combout\ = (\START~input_o\) # ((\ms_jk_ff_2|nand_3_1|output~0_combout\ & ((\STEP~input_o\) # (!\ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \STEP~input_o\,
	datac => \ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X32_Y11_N12
\ms_jk_ff_0|nand_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_1|output~1_combout\ = (\ms_jk_ff_0|nand_5|output~1_combout\ & (((!\ms_jk_ff_0|nand_5|output~2_combout\)))) # (!\ms_jk_ff_0|nand_5|output~1_combout\ & ((\ms_jk_ff_0|nand_1|output~1_combout\) # ((!\not_reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \not_reset~input_o\,
	datac => \ms_jk_ff_0|nand_5|output~2_combout\,
	datad => \ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X32_Y11_N0
\ms_jk_ff_0|nand_5|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~2_combout\ = (\ms_jk_ff_0|nand_5|output~1_combout\ & (\ms_jk_ff_0|nand_5|output~2_combout\)) # (!\ms_jk_ff_0|nand_5|output~1_combout\ & ((\ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \ms_jk_ff_0|nand_5|output~2_combout\,
	datad => \ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \ms_jk_ff_0|nand_5|output~2_combout\);

-- Location: LCCOMB_X32_Y11_N2
\or_1|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \or_1|output~0_combout\ = (((!\ms_jk_ff_0|nand_5|output~2_combout\) # (!\fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \ms_jk_ff_0|nand_5|output~2_combout\,
	combout => \or_1|output~0_combout\);

-- Location: LCCOMB_X32_Y11_N26
\ms_jk_ff_3|nand_1|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_1|output~2_combout\ = (\ms_jk_ff_3|nand_1|output~1_combout\ & (!\ms_jk_ff_3|nand_5|output~1_combout\ & (\clk_in~input_o\ & !\or_1|output~0_combout\))) # (!\ms_jk_ff_3|nand_1|output~1_combout\ & (((!\or_1|output~0_combout\) # 
-- (!\clk_in~input_o\)) # (!\ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \clk_in~input_o\,
	datad => \or_1|output~0_combout\,
	combout => \ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X32_Y11_N8
\ms_jk_ff_3|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_5|output~1_combout\ = (\clk_in~input_o\ & (\ms_jk_ff_3|nand_5|output~1_combout\)) # (!\clk_in~input_o\ & ((\ms_jk_ff_3|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \clk_in~input_o\,
	datad => \ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X32_Y11_N16
\and_2|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and_2|output~combout\ = (\clk_in~input_o\ & (!\ms_jk_ff_3|nand_5|output~1_combout\ & \or_1|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~input_o\,
	datac => \ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \or_1|output~0_combout\,
	combout => \and_2|output~combout\);

-- Location: LCCOMB_X32_Y11_N24
\ms_jk_ff_2|nand_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~1_combout\ = (\clk_in~input_o\ & (!\ms_jk_ff_3|nand_5|output~1_combout\ & (!\ms_jk_ff_2|nand_5|output~1_combout\ & \or_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~input_o\,
	datab => \ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \or_1|output~0_combout\,
	combout => \ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X32_Y11_N6
\ms_jk_ff_2|nand_3_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_3_1|output~1_combout\ = (\END_STATE~input_o\ & (\ms_jk_ff_2|nand_5|output~1_combout\ & (!\ms_jk_ff_1|nand_5|output~1_combout\ & \and_2|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \END_STATE~input_o\,
	datab => \ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \and_2|output~combout\,
	combout => \ms_jk_ff_2|nand_3_1|output~1_combout\);

-- Location: LCCOMB_X32_Y11_N28
\ms_jk_ff_2|nand_1|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~2_combout\ = (!\ms_jk_ff_2|nand_3_1|output~1_combout\ & ((\ms_jk_ff_2|nand_1|output~2_combout\) # ((\ms_jk_ff_2|nand_1|output~1_combout\) # (!\not_reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_1|output~2_combout\,
	datab => \not_reset~input_o\,
	datac => \ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \ms_jk_ff_2|nand_3_1|output~1_combout\,
	combout => \ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X32_Y11_N14
\ms_jk_ff_2|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_5|output~1_combout\ = (\and_2|output~combout\ & (\ms_jk_ff_2|nand_5|output~1_combout\)) # (!\and_2|output~combout\ & ((\ms_jk_ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \and_2|output~combout\,
	datad => \ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X32_Y14_N2
\fp_latch_bank|ms_jk_ff_2|nand_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\ = (!\fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~input_o\,
	combout => \fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: IOIBUF_X33_Y22_N1
\FP_DEPOSIT_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FP_DEPOSIT_in,
	o => \FP_DEPOSIT_in~input_o\);

-- Location: LCCOMB_X32_Y14_N12
\fp_latch_bank|ms_jk_ff_2|nand_1|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\ = (\FP_DEPOSIT_in~input_o\ & (((!\fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\FP_DEPOSIT_in~input_o\ & (((\ms_jk_ff_2|nand_3_1|output~0_combout\ & 
-- !\fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_3_1|output~0_combout\,
	datab => \fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \FP_DEPOSIT_in~input_o\,
	combout => \fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X32_Y14_N8
\fp_latch_bank|ms_jk_ff_2|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\ = (\FP_DEPOSIT_in~input_o\ & (((\fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\FP_DEPOSIT_in~input_o\ & (\fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\ & 
-- ((\fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\) # (!\ms_jk_ff_2|nand_3_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\,
	datab => \fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \ms_jk_ff_2|nand_3_1|output~0_combout\,
	datad => \FP_DEPOSIT_in~input_o\,
	combout => \fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\);

ww_clk <= \clk~output_o\;

ww_HLT_INDICATOR <= \HLT_INDICATOR~output_o\;

ww_RUN_INDICATOR <= \RUN_INDICATOR~output_o\;

ww_FP_ADDR_LOAD_out <= \FP_ADDR_LOAD_out~output_o\;

ww_FP_EXAMINE_out <= \FP_EXAMINE_out~output_o\;

ww_FP_DEPOSIT_out <= \FP_DEPOSIT_out~output_o\;
END structure;


