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

-- DATE "01/17/2017 23:42:07"

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
	RUN_INDICATOR : OUT std_logic
	);
END clock_generator;

-- Design Ports Information
-- clk	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HLT_INDICATOR	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RUN_INDICATOR	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STEP	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- END_STATE	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- not_reset	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HLT_flag	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \not_reset~input_o\ : std_logic;
SIGNAL \HLT_flag~input_o\ : std_logic;
SIGNAL \clk~output_o\ : std_logic;
SIGNAL \HLT_INDICATOR~output_o\ : std_logic;
SIGNAL \RUN_INDICATOR~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \STEP~input_o\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \and_0|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~4_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~5_combout\ : std_logic;
SIGNAL \and_1|output~combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \END_STATE~input_o\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|ALT_INV_output~5_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ms_jk_ff_0|nand_5|ALT_INV_output~5_combout\ <= NOT \ms_jk_ff_0|nand_5|output~5_combout\;
\ms_jk_ff_2|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_2|nand_5|output~1_combout\;

-- Location: LCCOMB_X13_Y1_N24
\ms_jk_ff_1|nand_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~1_combout\ = (!\ms_jk_ff_1|nand_1|output~2_combout\ & (\not_reset~input_o\ & ((\ms_jk_ff_1|nand_5|output~1_combout\) # (!\ms_jk_ff_2|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \not_reset~input_o\,
	combout => \ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X13_Y1_N26
\ms_jk_ff_1|nand_1|output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~2_combout\ = (!\ms_jk_ff_1|nand_1|output~1_combout\ & (((!\HLT_flag~input_o\) # (!\and_1|output~combout\)) # (!\ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \and_1|output~combout\,
	datad => \HLT_flag~input_o\,
	combout => \ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: IOIBUF_X14_Y0_N8
\not_reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_not_reset,
	o => \not_reset~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\HLT_flag~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HLT_flag,
	o => \HLT_flag~input_o\);

-- Location: IOOBUF_X8_Y0_N9
\clk~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and_1|output~combout\,
	devoe => ww_devoe,
	o => \clk~output_o\);

-- Location: IOOBUF_X8_Y0_N2
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

-- Location: IOOBUF_X12_Y0_N2
\RUN_INDICATOR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ms_jk_ff_0|nand_5|ALT_INV_output~5_combout\,
	devoe => ww_devoe,
	o => \RUN_INDICATOR~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\clk_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\START~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\STEP~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STEP,
	o => \STEP~input_o\);

-- Location: LCCOMB_X13_Y1_N12
\ms_jk_ff_1|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_5|output~1_combout\ = (\clk_in~input_o\ & ((\ms_jk_ff_0|nand_5|output~5_combout\ & (\ms_jk_ff_1|nand_1|output~2_combout\)) # (!\ms_jk_ff_0|nand_5|output~5_combout\ & ((\ms_jk_ff_1|nand_5|output~1_combout\))))) # (!\clk_in~input_o\ & 
-- (\ms_jk_ff_1|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk_in~input_o\,
	datad => \ms_jk_ff_0|nand_5|output~5_combout\,
	combout => \ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X13_Y1_N28
\and_0|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and_0|output~0_combout\ = (\STEP~input_o\) # (!\ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STEP~input_o\,
	datad => \ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \and_0|output~0_combout\);

-- Location: LCCOMB_X13_Y1_N8
\ms_jk_ff_0|nand_5|output~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~4_combout\ = (!\START~input_o\ & (((!\and_0|output~0_combout\) # (!\and_1|output~combout\)) # (!\END_STATE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \END_STATE~input_o\,
	datab => \START~input_o\,
	datac => \and_1|output~combout\,
	datad => \and_0|output~0_combout\,
	combout => \ms_jk_ff_0|nand_5|output~4_combout\);

-- Location: LCCOMB_X13_Y1_N6
\ms_jk_ff_0|nand_5|output~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~3_combout\ = (\START~input_o\ & \ms_jk_ff_0|nand_5|output~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \START~input_o\,
	datad => \ms_jk_ff_0|nand_5|output~5_combout\,
	combout => \ms_jk_ff_0|nand_5|output~3_combout\);

-- Location: LCCOMB_X13_Y1_N2
\ms_jk_ff_0|nand_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_1|output~1_combout\ = (!\ms_jk_ff_0|nand_5|output~3_combout\ & (((\ms_jk_ff_0|nand_1|output~1_combout\) # (!\ms_jk_ff_0|nand_5|output~4_combout\)) # (!\not_reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~input_o\,
	datab => \ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \ms_jk_ff_0|nand_5|output~4_combout\,
	datad => \ms_jk_ff_0|nand_5|output~3_combout\,
	combout => \ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X13_Y1_N18
\ms_jk_ff_0|nand_5|output~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~5_combout\ = (\ms_jk_ff_0|nand_5|output~5_combout\ & ((\START~input_o\) # ((\ms_jk_ff_0|nand_5|output~4_combout\ & \ms_jk_ff_0|nand_1|output~1_combout\)))) # (!\ms_jk_ff_0|nand_5|output~5_combout\ & 
-- (\ms_jk_ff_0|nand_5|output~4_combout\ & ((\ms_jk_ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_5|output~5_combout\,
	datab => \ms_jk_ff_0|nand_5|output~4_combout\,
	datac => \START~input_o\,
	datad => \ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \ms_jk_ff_0|nand_5|output~5_combout\);

-- Location: LCCOMB_X13_Y1_N16
\and_1|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and_1|output~combout\ = (\clk_in~input_o\ & !\ms_jk_ff_0|nand_5|output~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_in~input_o\,
	datad => \ms_jk_ff_0|nand_5|output~5_combout\,
	combout => \and_1|output~combout\);

-- Location: LCCOMB_X13_Y1_N14
\ms_jk_ff_2|nand_1|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~1_combout\ = (\clk_in~input_o\ & (!\ms_jk_ff_2|nand_5|output~1_combout\ & !\ms_jk_ff_0|nand_5|output~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_in~input_o\,
	datac => \ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \ms_jk_ff_0|nand_5|output~5_combout\,
	combout => \ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: IOIBUF_X20_Y0_N1
\END_STATE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_END_STATE,
	o => \END_STATE~input_o\);

-- Location: LCCOMB_X13_Y1_N10
\ms_jk_ff_2|nand_3_1|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_3_1|output~0_combout\ = (!\ms_jk_ff_1|nand_5|output~1_combout\ & (\END_STATE~input_o\ & (\ms_jk_ff_2|nand_5|output~1_combout\ & \and_1|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \END_STATE~input_o\,
	datac => \ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \and_1|output~combout\,
	combout => \ms_jk_ff_2|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X13_Y1_N20
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

-- Location: LCCOMB_X13_Y1_N4
\ms_jk_ff_2|nand_5|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_5|output~1_combout\ = (\ms_jk_ff_0|nand_5|output~5_combout\ & (((\ms_jk_ff_2|nand_1|output~2_combout\)))) # (!\ms_jk_ff_0|nand_5|output~5_combout\ & ((\clk_in~input_o\ & (\ms_jk_ff_2|nand_5|output~1_combout\)) # (!\clk_in~input_o\ & 
-- ((\ms_jk_ff_2|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_5|output~5_combout\,
	datab => \clk_in~input_o\,
	datac => \ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \ms_jk_ff_2|nand_5|output~1_combout\);

ww_clk <= \clk~output_o\;

ww_HLT_INDICATOR <= \HLT_INDICATOR~output_o\;

ww_RUN_INDICATOR <= \RUN_INDICATOR~output_o\;
END structure;


