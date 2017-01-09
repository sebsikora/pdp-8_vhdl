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

-- DATE "01/09/2017 19:45:42"

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

ENTITY 	state_generator IS
    PORT (
	irq : IN std_logic;
	IR : IN std_logic_vector(4 DOWNTO 0);
	step : IN std_logic;
	FP_CMD : IN std_logic;
	not_reset : IN std_logic;
	start : IN std_logic;
	clk : IN std_logic;
	state_clk : OUT std_logic;
	HLT : IN std_logic;
	HLT_indicator : OUT std_logic;
	s_states : OUT std_logic_vector(3 DOWNTO 0);
	t_states : OUT std_logic_vector(5 DOWNTO 0)
	);
END state_generator;

-- Design Ports Information
-- IR[2]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- state_clk	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HLT_indicator	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[0]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[1]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[2]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[3]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[0]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[1]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[2]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[3]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[4]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[5]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FP_CMD	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- irq	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- step	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HLT	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF state_generator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_irq : std_logic;
SIGNAL ww_IR : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_step : std_logic;
SIGNAL ww_FP_CMD : std_logic;
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_state_clk : std_logic;
SIGNAL ww_HLT : std_logic;
SIGNAL ww_HLT_indicator : std_logic;
SIGNAL ww_s_states : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_t_states : std_logic_vector(5 DOWNTO 0);
SIGNAL \t_state_generator_0|and_4|output~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|or_1|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \irq~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \s_state_generator_0|or_2|output~0_combout\ : std_logic;
SIGNAL \HLT~combout\ : std_logic;
SIGNAL \step~combout\ : std_logic;
SIGNAL \s_state_generator_0|or_1|output~0_combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|and_8|output~combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|and_0|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|and_10|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|and_10|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \HLT_indicator~0_combout\ : std_logic;
SIGNAL \FP_CMD~combout\ : std_logic;
SIGNAL \t_state_generator_0|and_4|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|and_4|output~0clkctrl_outclk\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~4_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|or_4|output~combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|or_2|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|or_2|output~2_combout\ : std_logic;
SIGNAL \t_state_generator_0|or_2|output~3_combout\ : std_logic;
SIGNAL \register_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \register_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \HLT_indicator~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_2|output~combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\ : std_logic;
SIGNAL \IR~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ALT_INV_HLT_indicator~1_combout\ : std_logic;

BEGIN

ww_irq <= irq;
ww_IR <= IR;
ww_step <= step;
ww_FP_CMD <= FP_CMD;
ww_not_reset <= not_reset;
ww_start <= start;
ww_clk <= clk;
state_clk <= ww_state_clk;
ww_HLT <= HLT;
HLT_indicator <= ww_HLT_indicator;
s_states <= ww_s_states;
t_states <= ww_t_states;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\t_state_generator_0|and_4|output~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \t_state_generator_0|and_4|output~0_combout\);
\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\;
\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\;
\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\;
\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\;
\ALT_INV_HLT_indicator~1_combout\ <= NOT \HLT_indicator~1_combout\;

-- Location: LCCOMB_X26_Y10_N24
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\clk~combout\ & ((\FP_CMD~combout\) # (!\HLT_indicator~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datac => \FP_CMD~combout\,
	datad => \HLT_indicator~0_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X26_Y10_N10
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ & (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- (\t_state_generator_0|and_4|output~0_combout\))) # (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- ((\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \t_state_generator_0|and_4|output~0_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X27_Y7_N2
\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0_combout\ = (!\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X27_Y7_N12
\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_1|output~0_combout\ = (\IR~combout\(3) & (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((!\IR~combout\(0)) # (!\IR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(3),
	datab => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \IR~combout\(1),
	datad => \IR~combout\(0),
	combout => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X27_Y7_N20
\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\ = (\s_state_generator_0|and_8|output~combout\ & ((\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0_combout\ & !\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_1|output~0_combout\)) # (!\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- ((!\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_1|output~0_combout\) # (!\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0_combout\))))) # (!\s_state_generator_0|and_8|output~combout\ & 
-- (((!\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|and_8|output~combout\,
	datab => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_3|output~0_combout\,
	datad => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_3_1|output~0_combout\,
	combout => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y7_N16
\s_state_generator_0|or_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|or_1|output~1_combout\ = (\irq~combout\ & ((\s_state_generator_0|or_1|output~0_combout\) # (!\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \irq~combout\,
	datad => \s_state_generator_0|or_1|output~0_combout\,
	combout => \s_state_generator_0|or_1|output~1_combout\);

-- Location: LCCOMB_X27_Y7_N24
\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[3]~I\ : cycloneii_io
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
	padio => ww_IR(3),
	combout => \IR~combout\(3));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\irq~I\ : cycloneii_io
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
	padio => ww_irq,
	combout => \irq~combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y10_N20
\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ = (\t_state_generator_0|or_2|output~3_combout\ & ((\clk~combout\ & ((\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\clk~combout\ & 
-- (\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\)))) # (!\t_state_generator_0|or_2|output~3_combout\ & (\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \t_state_generator_0|or_2|output~3_combout\,
	datac => \clk~combout\,
	datad => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
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
	padio => ww_start,
	combout => \start~combout\);

-- Location: LCCOMB_X27_Y7_N22
\s_state_generator_0|or_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|or_2|output~0_combout\ = (\clk~combout\ & ((\start~combout\) # (\t_state_generator_0|or_2|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datac => \start~combout\,
	datad => \t_state_generator_0|or_2|output~3_combout\,
	combout => \s_state_generator_0|or_2|output~0_combout\);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\HLT~I\ : cycloneii_io
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
	padio => ww_HLT,
	combout => \HLT~combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\step~I\ : cycloneii_io
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
	padio => ww_step,
	combout => \step~combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[1]~I\ : cycloneii_io
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
	padio => ww_IR(1),
	combout => \IR~combout\(1));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[0]~I\ : cycloneii_io
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
	padio => ww_IR(0),
	combout => \IR~combout\(0));

-- Location: LCCOMB_X27_Y7_N26
\s_state_generator_0|or_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|or_1|output~0_combout\ = (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\IR~combout\(1) & \IR~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \IR~combout\(1),
	datad => \IR~combout\(0),
	combout => \s_state_generator_0|or_1|output~0_combout\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X26_Y10_N20
\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\ = (!\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y9_N16
\s_state_generator_0|and_8|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|and_8|output~combout\ = (\clk~combout\ & \t_state_generator_0|or_2|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datac => \t_state_generator_0|or_2|output~3_combout\,
	combout => \s_state_generator_0|and_8|output~combout\);

-- Location: LCCOMB_X26_Y10_N14
\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\ = (\s_state_generator_0|or_1|output~1_combout\ & (!\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\ & ((!\s_state_generator_0|and_8|output~combout\) # 
-- (!\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\s_state_generator_0|or_1|output~1_combout\ & (((!\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ & \s_state_generator_0|and_8|output~combout\)) # 
-- (!\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|or_1|output~1_combout\,
	datab => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \s_state_generator_0|and_8|output~combout\,
	combout => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y10_N14
\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ = (\t_state_generator_0|or_2|output~3_combout\ & ((\clk~combout\ & (\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk~combout\ & 
-- ((\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\))))) # (!\t_state_generator_0|or_2|output~3_combout\ & (((\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \t_state_generator_0|or_2|output~3_combout\,
	datac => \clk~combout\,
	datad => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y7_N10
\s_state_generator_0|and_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|and_0|output~0_combout\ = (!\IR~combout\(3) & (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((!\IR~combout\(0)) # (!\IR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(3),
	datab => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \IR~combout\(1),
	datad => \IR~combout\(0),
	combout => \s_state_generator_0|and_0|output~0_combout\);

-- Location: LCCOMB_X27_Y7_N0
\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ = (\s_state_generator_0|and_8|output~combout\ & (\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ $ 
-- (((\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & !\s_state_generator_0|and_0|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|and_8|output~combout\,
	datad => \s_state_generator_0|and_0|output~0_combout\,
	combout => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X26_Y10_N16
\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\ = (\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\)))) # 
-- (!\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ & ((\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y10_N22
\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ = (\t_state_generator_0|or_2|output~3_combout\ & ((\clk~combout\ & (\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk~combout\ & 
-- ((\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\))))) # (!\t_state_generator_0|or_2|output~3_combout\ & (((\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \t_state_generator_0|or_2|output~3_combout\,
	datac => \clk~combout\,
	datad => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y10_N18
\s_state_generator_0|and_10|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|and_10|output~0_combout\ = ((!\irq~combout\ & ((\s_state_generator_0|or_1|output~0_combout\) # (!\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\)))) # 
-- (!\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq~combout\,
	datab => \s_state_generator_0|or_1|output~0_combout\,
	datac => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|and_10|output~0_combout\);

-- Location: LCCOMB_X27_Y7_N6
\s_state_generator_0|and_10|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|and_10|output~1_combout\ = (!\HLT~combout\ & ((\start~combout\) # ((!\step~combout\ & \s_state_generator_0|and_10|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \HLT~combout\,
	datac => \step~combout\,
	datad => \s_state_generator_0|and_10|output~0_combout\,
	combout => \s_state_generator_0|and_10|output~1_combout\);

-- Location: LCCOMB_X27_Y7_N30
\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & (\s_state_generator_0|or_2|output~0_combout\ & 
-- (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & !\s_state_generator_0|and_10|output~1_combout\))) # (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\s_state_generator_0|and_10|output~1_combout\) # 
-- (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\s_state_generator_0|or_2|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \s_state_generator_0|or_2|output~0_combout\,
	datac => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|and_10|output~1_combout\,
	combout => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y7_N18
\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\s_state_generator_0|or_2|output~0_combout\ & (\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\s_state_generator_0|or_2|output~0_combout\ & 
-- ((\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \s_state_generator_0|or_2|output~0_combout\,
	combout => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y10_N4
\HLT_indicator~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HLT_indicator~0_combout\ = (\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & (\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \HLT_indicator~0_combout\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FP_CMD~I\ : cycloneii_io
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
	padio => ww_FP_CMD,
	combout => \FP_CMD~combout\);

-- Location: LCCOMB_X27_Y10_N28
\t_state_generator_0|and_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|and_4|output~0_combout\ = (\clk~combout\ & ((\FP_CMD~combout\) # (!\HLT_indicator~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk~combout\,
	datac => \HLT_indicator~0_combout\,
	datad => \FP_CMD~combout\,
	combout => \t_state_generator_0|and_4|output~0_combout\);

-- Location: LCCOMB_X26_Y10_N30
\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: CLKCTRL_G4
\t_state_generator_0|and_4|output~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \t_state_generator_0|and_4|output~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \t_state_generator_0|and_4|output~0clkctrl_outclk\);

-- Location: LCCOMB_X26_Y10_N6
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~4_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~4_combout\,
	datad => \not_reset~combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y10_N8
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~4_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\ & ((\t_state_generator_0|or_4|output~combout\) # 
-- (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ $ (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\ & 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \t_state_generator_0|or_4|output~combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~4_combout\);

-- Location: LCCOMB_X27_Y10_N12
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\t_state_generator_0|and_4|output~0clkctrl_outclk\) & (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\t_state_generator_0|and_4|output~0clkctrl_outclk\) & ((\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \t_state_generator_0|and_4|output~0clkctrl_outclk\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~4_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X26_Y10_N12
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\) # ((!\t_state_generator_0|or_4|output~combout\ & 
-- ((\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\) # (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \t_state_generator_0|or_4|output~combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y10_N10
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ & (\not_reset~combout\ & ((\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\) # 
-- (!\t_state_generator_0|and_4|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\,
	datab => \not_reset~combout\,
	datac => \t_state_generator_0|and_4|output~0_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X26_Y10_N4
\t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\);

-- Location: LCCOMB_X27_Y10_N26
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ & ((\t_state_generator_0|or_4|output~combout\) # ((!\t_state_generator_0|and_4|output~0_combout\) # 
-- (!\t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|or_4|output~combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\,
	datad => \t_state_generator_0|and_4|output~0_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X27_Y10_N0
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\t_state_generator_0|and_4|output~0clkctrl_outclk\) & (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\t_state_generator_0|and_4|output~0clkctrl_outclk\) & ((\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \t_state_generator_0|and_4|output~0clkctrl_outclk\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X26_Y10_N28
\t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0_combout\);

-- Location: LCCOMB_X27_Y10_N16
\t_state_generator_0|or_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|or_4|output~combout\ = (\t_state_generator_0|or_2|output~3_combout\) # ((\t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0_combout\ & \FP_CMD~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0_combout\,
	datac => \t_state_generator_0|or_2|output~3_combout\,
	datad => \FP_CMD~combout\,
	combout => \t_state_generator_0|or_4|output~combout\);

-- Location: LCCOMB_X27_Y10_N2
\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\t_state_generator_0|and_4|output~0_combout\ & (((!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ & \t_state_generator_0|or_4|output~combout\)) # 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\t_state_generator_0|and_4|output~0_combout\ & (((!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \t_state_generator_0|or_4|output~combout\,
	datad => \t_state_generator_0|and_4|output~0_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y10_N24
\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\t_state_generator_0|and_4|output~0_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\t_state_generator_0|and_4|output~0_combout\ & 
-- ((\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \t_state_generator_0|and_4|output~0_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y10_N6
\t_state_generator_0|or_2|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|or_2|output~1_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- ((!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \t_state_generator_0|or_2|output~1_combout\);

-- Location: LCCOMB_X27_Y7_N14
\t_state_generator_0|or_2|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|or_2|output~2_combout\ = (\t_state_generator_0|or_2|output~1_combout\ & ((\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\t_state_generator_0|or_2|output~1_combout\ & 
-- (\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \t_state_generator_0|or_2|output~1_combout\,
	datad => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|or_2|output~2_combout\);

-- Location: LCCOMB_X27_Y10_N30
\t_state_generator_0|or_2|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|or_2|output~3_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\t_state_generator_0|or_2|output~2_combout\ & ((!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))) # 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (((!\t_state_generator_0|or_2|output~1_combout\ & \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|or_2|output~2_combout\,
	datab => \t_state_generator_0|or_2|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \t_state_generator_0|or_2|output~3_combout\);

-- Location: LCCOMB_X27_Y7_N28
\register_1_bit_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\start~combout\ & (\HLT~combout\ $ ((!\register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\start~combout\ & (\HLT~combout\ & (\register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \clk~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \HLT~combout\,
	datac => \register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \register_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y7_N8
\register_1_bit_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\register_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\register_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- (((\register_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \register_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \register_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y7_N4
\register_1_bit_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\start~combout\ & (((\register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\start~combout\ & ((\clk~combout\ & (\register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk~combout\ & 
-- ((\register_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \clk~combout\,
	datac => \register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \register_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X26_Y10_N8
\HLT_indicator~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \HLT_indicator~1_combout\ = (\register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\HLT_indicator~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HLT_indicator~0_combout\,
	datad => \register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \HLT_indicator~1_combout\);

-- Location: LCCOMB_X26_Y10_N2
\t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\);

-- Location: LCCOMB_X26_Y10_N0
\t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\);

-- Location: LCCOMB_X26_Y10_N26
\t_state_generator_0|decoder_3_to_6_0|and_3_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_2|output~combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_2|output~combout\);

-- Location: LCCOMB_X26_Y10_N18
\t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[2]~I\ : cycloneii_io
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
	padio => ww_IR(2));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[4]~I\ : cycloneii_io
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
	padio => ww_IR(4));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\state_clk~I\ : cycloneii_io
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
	datain => \t_state_generator_0|or_2|output~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_state_clk);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HLT_indicator~I\ : cycloneii_io
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
	datain => \ALT_INV_HLT_indicator~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HLT_indicator);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_states[0]~I\ : cycloneii_io
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
	datain => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(0));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_states[1]~I\ : cycloneii_io
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
	datain => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(1));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_states[2]~I\ : cycloneii_io
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
	datain => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(2));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_states[3]~I\ : cycloneii_io
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
	datain => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(3));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\t_states[0]~I\ : cycloneii_io
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
	datain => \t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(0));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\t_states[1]~I\ : cycloneii_io
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
	datain => \t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(1));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\t_states[2]~I\ : cycloneii_io
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
	datain => \t_state_generator_0|decoder_3_to_6_0|and_3_2|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(2));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\t_states[3]~I\ : cycloneii_io
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
	datain => \t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(3));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\t_states[4]~I\ : cycloneii_io
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
	datain => \t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(4));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\t_states[5]~I\ : cycloneii_io
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
	datain => \t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(5));
END structure;


