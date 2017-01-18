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

-- DATE "01/18/2017 16:13:12"

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
-- clk	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HLT_INDICATOR	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RUN_INDICATOR	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FP_ADDR_LOAD_out	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FP_EXAMINE_out	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FP_DEPOSIT_out	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STEP	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- END_STATE	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FP_ADDR_LOAD_in	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FP_EXAMINE_in	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FP_DEPOSIT_in	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- not_reset	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HLT_flag	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \HLT_flag~input_o\ : std_logic;
SIGNAL \clk~output_o\ : std_logic;
SIGNAL \HLT_INDICATOR~output_o\ : std_logic;
SIGNAL \RUN_INDICATOR~output_o\ : std_logic;
SIGNAL \FP_ADDR_LOAD_out~output_o\ : std_logic;
SIGNAL \FP_EXAMINE_out~output_o\ : std_logic;
SIGNAL \FP_DEPOSIT_out~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \FP_ADDR_LOAD_in~input_o\ : std_logic;
SIGNAL \END_STATE~input_o\ : std_logic;
SIGNAL \fp_latch_bank|and_3_0|output~0_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \FP_DEPOSIT_in~input_o\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \STEP~input_o\ : std_logic;
SIGNAL \not_reset~input_o\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~3_combout\ : std_logic;
SIGNAL \and_1|output~1_combout\ : std_logic;
SIGNAL \and_1|output~2_combout\ : std_logic;
SIGNAL \FP_EXAMINE_in~input_o\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \fp_latch_bank|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|ALT_INV_output~3_combout\ : std_logic;

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
\fp_latch_bank|ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ <= NOT \fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\;
\fp_latch_bank|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\;
\fp_latch_bank|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\;
\ms_jk_ff_0|nand_5|ALT_INV_output~3_combout\ <= NOT \ms_jk_ff_0|nand_5|output~3_combout\;

-- Location: LCCOMB_X25_Y30_N20
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

-- Location: LCCOMB_X25_Y30_N2
\fp_latch_bank|ms_jk_ff_0|nand_1|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\ = (\FP_ADDR_LOAD_in~input_o\ & (((!\fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\FP_ADDR_LOAD_in~input_o\ & (((!\fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \fp_latch_bank|and_3_0|output~0_combout\)) # (!\fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fp_latch_bank|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \FP_ADDR_LOAD_in~input_o\,
	datad => \fp_latch_bank|and_3_0|output~0_combout\,
	combout => \fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X25_Y30_N24
\fp_latch_bank|ms_jk_ff_1|nand_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\ = (!\fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\ & \not_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \not_reset~input_o\,
	combout => \fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X25_Y30_N12
\fp_latch_bank|ms_jk_ff_2|nand_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\ = (!\fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\ & \not_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \not_reset~input_o\,
	combout => \fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X25_Y30_N26
\fp_latch_bank|ms_jk_ff_2|nand_1|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\ = (\FP_DEPOSIT_in~input_o\ & (((!\fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\FP_DEPOSIT_in~input_o\ & (((!\fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- \fp_latch_bank|and_3_0|output~0_combout\)) # (!\fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FP_DEPOSIT_in~input_o\,
	datab => \fp_latch_bank|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \fp_latch_bank|and_3_0|output~0_combout\,
	combout => \fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: IOIBUF_X31_Y31_N8
\HLT_flag~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HLT_flag,
	o => \HLT_flag~input_o\);

-- Location: IOOBUF_X14_Y31_N9
\clk~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and_1|output~2_combout\,
	devoe => ww_devoe,
	o => \clk~output_o\);

-- Location: IOOBUF_X24_Y31_N9
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

-- Location: IOOBUF_X20_Y31_N9
\RUN_INDICATOR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ms_jk_ff_0|nand_5|ALT_INV_output~3_combout\,
	devoe => ww_devoe,
	o => \RUN_INDICATOR~output_o\);

-- Location: IOOBUF_X20_Y31_N2
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

-- Location: IOOBUF_X24_Y31_N2
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

-- Location: IOOBUF_X33_Y28_N9
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

-- Location: IOIBUF_X26_Y31_N1
\clk_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\FP_ADDR_LOAD_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FP_ADDR_LOAD_in,
	o => \FP_ADDR_LOAD_in~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\END_STATE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_END_STATE,
	o => \END_STATE~input_o\);

-- Location: LCCOMB_X25_Y30_N28
\fp_latch_bank|and_3_0|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|and_3_0|output~0_combout\ = (\clk_in~input_o\ & \END_STATE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_in~input_o\,
	datad => \END_STATE~input_o\,
	combout => \fp_latch_bank|and_3_0|output~0_combout\);

-- Location: LCCOMB_X25_Y30_N14
\fp_latch_bank|ms_jk_ff_0|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\ = (\FP_ADDR_LOAD_in~input_o\ & (((\fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\FP_ADDR_LOAD_in~input_o\ & (\fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\ & 
-- ((\fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\) # (!\fp_latch_bank|and_3_0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fp_latch_bank|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \FP_ADDR_LOAD_in~input_o\,
	datac => \fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \fp_latch_bank|and_3_0|output~0_combout\,
	combout => \fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: IOIBUF_X29_Y31_N1
\FP_DEPOSIT_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FP_DEPOSIT_in,
	o => \FP_DEPOSIT_in~input_o\);

-- Location: LCCOMB_X25_Y30_N8
\fp_latch_bank|ms_jk_ff_2|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\ = (\FP_DEPOSIT_in~input_o\ & (((\fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\FP_DEPOSIT_in~input_o\ & (\fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\ & 
-- ((\fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\) # (!\fp_latch_bank|and_3_0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fp_latch_bank|ms_jk_ff_2|nand_1|output~2_combout\,
	datab => \FP_DEPOSIT_in~input_o\,
	datac => \fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \fp_latch_bank|and_3_0|output~0_combout\,
	combout => \fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: IOIBUF_X31_Y31_N1
\START~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\STEP~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STEP,
	o => \STEP~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\not_reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_not_reset,
	o => \not_reset~input_o\);

-- Location: LCCOMB_X26_Y30_N12
\ms_jk_ff_2|nand_3_1|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_3_1|output~0_combout\ = (\END_STATE~input_o\ & (\ms_jk_ff_2|nand_5|output~1_combout\ & (\and_1|output~2_combout\ & !\ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \END_STATE~input_o\,
	datab => \ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \and_1|output~2_combout\,
	datad => \ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \ms_jk_ff_2|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X26_Y30_N8
\ms_jk_ff_2|nand_1|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~2_combout\ = (!\ms_jk_ff_2|nand_3_1|output~0_combout\ & (((\ms_jk_ff_2|nand_1|output~2_combout\) # (\ms_jk_ff_2|nand_1|output~1_combout\)) # (!\not_reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~input_o\,
	datab => \ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \ms_jk_ff_2|nand_3_1|output~0_combout\,
	combout => \ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X25_Y30_N18
\ms_jk_ff_2|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_5|output~1_combout\ = (\clk_in~input_o\ & ((\and_1|output~1_combout\ & (\ms_jk_ff_2|nand_5|output~1_combout\)) # (!\and_1|output~1_combout\ & ((\ms_jk_ff_2|nand_1|output~2_combout\))))) # (!\clk_in~input_o\ & 
-- (((\ms_jk_ff_2|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \clk_in~input_o\,
	datac => \ms_jk_ff_2|nand_1|output~2_combout\,
	datad => \and_1|output~1_combout\,
	combout => \ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X25_Y30_N6
\ms_jk_ff_2|nand_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~1_combout\ = (\and_1|output~1_combout\ & (\clk_in~input_o\ & !\ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \and_1|output~1_combout\,
	datac => \clk_in~input_o\,
	datad => \ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X25_Y30_N22
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

-- Location: LCCOMB_X26_Y30_N4
\ms_jk_ff_1|nand_1|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~2_combout\ = (!\ms_jk_ff_1|nand_1|output~1_combout\ & (((!\ms_jk_ff_1|nand_5|output~1_combout\) # (!\and_1|output~2_combout\)) # (!\HLT_flag~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HLT_flag~input_o\,
	datab => \ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \and_1|output~2_combout\,
	datad => \ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X26_Y30_N6
\ms_jk_ff_1|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_5|output~1_combout\ = (\clk_in~input_o\ & ((\and_1|output~1_combout\ & ((\ms_jk_ff_1|nand_5|output~1_combout\))) # (!\and_1|output~1_combout\ & (\ms_jk_ff_1|nand_1|output~2_combout\)))) # (!\clk_in~input_o\ & 
-- (\ms_jk_ff_1|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~input_o\,
	datab => \ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \and_1|output~1_combout\,
	datad => \ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X26_Y30_N16
\ms_jk_ff_0|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~1_combout\ = (\STEP~input_o\) # (!\ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STEP~input_o\,
	datad => \ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X26_Y30_N30
\ms_jk_ff_0|nand_5|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~2_combout\ = (\START~input_o\) # ((\END_STATE~input_o\ & (\and_1|output~2_combout\ & \ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \END_STATE~input_o\,
	datab => \START~input_o\,
	datac => \and_1|output~2_combout\,
	datad => \ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \ms_jk_ff_0|nand_5|output~2_combout\);

-- Location: LCCOMB_X25_Y30_N16
\ms_jk_ff_0|nand_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_1|output~1_combout\ = (\ms_jk_ff_0|nand_5|output~2_combout\ & (((!\ms_jk_ff_0|nand_5|output~3_combout\)))) # (!\ms_jk_ff_0|nand_5|output~2_combout\ & ((\ms_jk_ff_0|nand_1|output~1_combout\) # ((!\not_reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \not_reset~input_o\,
	datac => \ms_jk_ff_0|nand_5|output~2_combout\,
	datad => \ms_jk_ff_0|nand_5|output~3_combout\,
	combout => \ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X25_Y30_N10
\ms_jk_ff_0|nand_5|output~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~3_combout\ = (\ms_jk_ff_0|nand_5|output~2_combout\ & (\ms_jk_ff_0|nand_5|output~3_combout\)) # (!\ms_jk_ff_0|nand_5|output~2_combout\ & ((\ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_0|nand_5|output~3_combout\,
	datac => \ms_jk_ff_0|nand_5|output~2_combout\,
	datad => \ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \ms_jk_ff_0|nand_5|output~3_combout\);

-- Location: LCCOMB_X25_Y30_N0
\and_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and_1|output~1_combout\ = (((!\ms_jk_ff_0|nand_5|output~3_combout\) # (!\fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \fp_latch_bank|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \fp_latch_bank|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \ms_jk_ff_0|nand_5|output~3_combout\,
	combout => \and_1|output~1_combout\);

-- Location: LCCOMB_X26_Y30_N26
\and_1|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and_1|output~2_combout\ = (\clk_in~input_o\ & \and_1|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~input_o\,
	datac => \and_1|output~1_combout\,
	combout => \and_1|output~2_combout\);

-- Location: IOIBUF_X22_Y31_N8
\FP_EXAMINE_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FP_EXAMINE_in,
	o => \FP_EXAMINE_in~input_o\);

-- Location: LCCOMB_X25_Y30_N30
\fp_latch_bank|ms_jk_ff_1|nand_1|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\ = (\FP_EXAMINE_in~input_o\ & (((!\fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\FP_EXAMINE_in~input_o\ & (((!\fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \fp_latch_bank|and_3_0|output~0_combout\)) # (!\fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fp_latch_bank|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \FP_EXAMINE_in~input_o\,
	datad => \fp_latch_bank|and_3_0|output~0_combout\,
	combout => \fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X25_Y30_N4
\fp_latch_bank|ms_jk_ff_1|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\ = (\FP_EXAMINE_in~input_o\ & (((\fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\FP_EXAMINE_in~input_o\ & (\fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\ & 
-- ((\fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\) # (!\fp_latch_bank|and_3_0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fp_latch_bank|ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \FP_EXAMINE_in~input_o\,
	datad => \fp_latch_bank|and_3_0|output~0_combout\,
	combout => \fp_latch_bank|ms_jk_ff_1|nand_5|output~1_combout\);

ww_clk <= \clk~output_o\;

ww_HLT_INDICATOR <= \HLT_INDICATOR~output_o\;

ww_RUN_INDICATOR <= \RUN_INDICATOR~output_o\;

ww_FP_ADDR_LOAD_out <= \FP_ADDR_LOAD_out~output_o\;

ww_FP_EXAMINE_out <= \FP_EXAMINE_out~output_o\;

ww_FP_DEPOSIT_out <= \FP_DEPOSIT_out~output_o\;
END structure;


