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

-- DATE "01/08/2017 23:22:11"

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
	not_reset : IN std_logic;
	start : IN std_logic;
	RUN_indicator : OUT std_logic;
	clk : IN std_logic;
	state_clk : OUT std_logic;
	HLT : IN std_logic;
	HLT_indicator : OUT std_logic;
	s_states : OUT std_logic_vector(3 DOWNTO 0);
	t_states : OUT std_logic_vector(5 DOWNTO 0)
	);
END state_generator;

-- Design Ports Information
-- IR[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RUN_indicator	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state_clk	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HLT_indicator	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[0]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[1]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[2]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[3]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[0]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[1]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[2]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[3]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[4]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[5]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- irq	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HLT	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_RUN_indicator : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_state_clk : std_logic;
SIGNAL ww_HLT : std_logic;
SIGNAL ww_HLT_indicator : std_logic;
SIGNAL ww_s_states : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_t_states : std_logic_vector(5 DOWNTO 0);
SIGNAL \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~4_combout\ : std_logic;
SIGNAL \register_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \HLT~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \s_state_generator_0|or_2|output~combout\ : std_logic;
SIGNAL \irq~combout\ : std_logic;
SIGNAL \s_state_generator_0|or_1|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|and_9|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|and_9|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \HLT_indicator~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|and_4|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|or_2|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|or_2|output~2_combout\ : std_logic;
SIGNAL \t_state_generator_0|or_2|output~3_combout\ : std_logic;
SIGNAL \register_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \HLT_indicator~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0_combout\ : std_logic;
SIGNAL \IR~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ALT_INV_HLT_indicator~1_combout\ : std_logic;

BEGIN

ww_irq <= irq;
ww_IR <= IR;
ww_not_reset <= not_reset;
ww_start <= start;
RUN_indicator <= ww_RUN_indicator;
ww_clk <= clk;
state_clk <= ww_state_clk;
ww_HLT <= HLT;
HLT_indicator <= ww_HLT_indicator;
s_states <= ww_s_states;
t_states <= ww_t_states;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\;
\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\;
\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\;
\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\;
\ALT_INV_HLT_indicator~1_combout\ <= NOT \HLT_indicator~1_combout\;

-- Location: LCCOMB_X27_Y6_N4
\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\ = (\irq~combout\ & ((\s_state_generator_0|or_1|output~0_combout\) # (!\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irq~combout\,
	datac => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|or_1|output~0_combout\,
	combout => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y5_N2
\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y5_N12
\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ = (!\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~4_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~4_combout\,
	datad => \not_reset~combout\,
	combout => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y6_N28
\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\ = (!\IR~combout\(3) & (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((!\IR~combout\(0)) # (!\IR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(1),
	datab => \IR~combout\(3),
	datac => \IR~combout\(0),
	datad => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y6_N24
\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~3_combout\ = (\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ & (\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (!\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & !\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\))) # (!\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- (\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & ((\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\) # (!\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X27_Y5_N30
\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~4_combout\ = \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ $ ((((!\clk~combout\) # (!\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~3_combout\)) # 
-- (!\t_state_generator_0|or_2|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \t_state_generator_0|or_2|output~3_combout\,
	datac => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \clk~combout\,
	combout => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~4_combout\);

-- Location: LCCOMB_X27_Y5_N20
\register_1_bit_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\HLT~combout\ & ((\clk~combout\) # (\start~combout\)))) # (!\register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & (((\start~combout\ & 
-- !\HLT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \start~combout\,
	datad => \HLT~combout\,
	combout => \register_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y4_N12
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y4_N26
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ = (!\HLT_indicator~0_combout\ & (\clk~combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ $ 
-- (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HLT_indicator~0_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y5_N24
\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y6_N20
\s_state_generator_0|or_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|or_2|output~combout\ = (\start~combout\) # ((\clk~combout\ & \t_state_generator_0|or_2|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk~combout\,
	datac => \start~combout\,
	datad => \t_state_generator_0|or_2|output~3_combout\,
	combout => \s_state_generator_0|or_2|output~combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y6_N0
\s_state_generator_0|or_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|or_1|output~0_combout\ = (\IR~combout\(1) & (\IR~combout\(0) & !\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(1),
	datac => \IR~combout\(0),
	datad => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|or_1|output~0_combout\);

-- Location: LCCOMB_X27_Y6_N8
\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk~combout\ & ((\t_state_generator_0|or_2|output~3_combout\ & ((\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\))) # 
-- (!\t_state_generator_0|or_2|output~3_combout\ & (\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~4_combout\)))) # (!\clk~combout\ & (\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~4_combout\,
	datab => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \t_state_generator_0|or_2|output~3_combout\,
	combout => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y5_N10
\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\ = (\t_state_generator_0|or_2|output~3_combout\ & (\clk~combout\ & (\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\ $ 
-- (!\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \t_state_generator_0|or_2|output~3_combout\,
	datac => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y5_N8
\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~3_combout\ = (\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\ & (!\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\ & (((\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~3_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~3_combout\,
	datac => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X27_Y6_N6
\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk~combout\ & ((\t_state_generator_0|or_2|output~3_combout\ & (\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\t_state_generator_0|or_2|output~3_combout\ 
-- & ((\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~3_combout\))))) # (!\clk~combout\ & (((\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~3_combout\,
	datac => \clk~combout\,
	datad => \t_state_generator_0|or_2|output~3_combout\,
	combout => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y6_N30
\s_state_generator_0|and_9|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|and_9|output~0_combout\ = (\start~combout\) # (((!\irq~combout\ & !\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \irq~combout\,
	datac => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|and_9|output~0_combout\);

-- Location: LCCOMB_X27_Y6_N2
\s_state_generator_0|and_9|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|and_9|output~1_combout\ = (!\HLT~combout\ & ((\s_state_generator_0|and_9|output~0_combout\) # ((!\irq~combout\ & \s_state_generator_0|or_1|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HLT~combout\,
	datab => \irq~combout\,
	datac => \s_state_generator_0|or_1|output~0_combout\,
	datad => \s_state_generator_0|and_9|output~0_combout\,
	combout => \s_state_generator_0|and_9|output~1_combout\);

-- Location: LCCOMB_X27_Y6_N26
\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\s_state_generator_0|or_2|output~combout\ & !\s_state_generator_0|and_9|output~1_combout\))) # (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\s_state_generator_0|and_9|output~1_combout\) # 
-- (!\s_state_generator_0|or_2|output~combout\)) # (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|or_2|output~combout\,
	datad => \s_state_generator_0|and_9|output~1_combout\,
	combout => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y6_N22
\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\s_state_generator_0|or_2|output~combout\ & (\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\s_state_generator_0|or_2|output~combout\ & 
-- ((\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|or_2|output~combout\,
	datad => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y6_N12
\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\ = (\IR~combout\(3) & (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((!\IR~combout\(0)) # (!\IR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(1),
	datab => \IR~combout\(3),
	datac => \IR~combout\(0),
	datad => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y6_N10
\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2_combout\ = (\t_state_generator_0|or_2|output~3_combout\ & (\clk~combout\ & (\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ $ 
-- (!\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|or_2|output~3_combout\,
	datab => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y5_N4
\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~3_combout\ = (\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2_combout\ & (!\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2_combout\ & (((\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~3_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~3_combout\,
	datac => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X27_Y5_N6
\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ = (\t_state_generator_0|or_2|output~3_combout\ & ((\clk~combout\ & (\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk~combout\ & 
-- ((\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~3_combout\))))) # (!\t_state_generator_0|or_2|output~3_combout\ & (((\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \t_state_generator_0|or_2|output~3_combout\,
	datac => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \clk~combout\,
	combout => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y6_N16
\HLT_indicator~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HLT_indicator~0_combout\ = (\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ & (\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & (\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \HLT_indicator~0_combout\);

-- Location: LCCOMB_X27_Y5_N18
\t_state_generator_0|and_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|and_4|output~0_combout\ = (!\HLT_indicator~0_combout\ & \clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HLT_indicator~0_combout\,
	datad => \clk~combout\,
	combout => \t_state_generator_0|and_4|output~0_combout\);

-- Location: LCCOMB_X27_Y5_N26
\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\t_state_generator_0|and_4|output~0_combout\ & (((\t_state_generator_0|or_2|output~3_combout\ & !\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\)) # 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\t_state_generator_0|and_4|output~0_combout\ & (((!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \t_state_generator_0|or_2|output~3_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \t_state_generator_0|and_4|output~0_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y5_N16
\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk~combout\ & ((\HLT_indicator~0_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\)) # (!\HLT_indicator~0_combout\ & 
-- ((\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))))) # (!\clk~combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \HLT_indicator~0_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y4_N8
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ & ((\t_state_generator_0|or_2|output~3_combout\) # 
-- (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ $ (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ & 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \t_state_generator_0|or_2|output~3_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X27_Y4_N0
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\HLT_indicator~0_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\)) # (!\HLT_indicator~0_combout\ & ((\clk~combout\ & 
-- ((\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))) # (!\clk~combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HLT_indicator~0_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\,
	datac => \clk~combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y4_N30
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\ & (\not_reset~combout\ & ((\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y4_N28
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ = (!\t_state_generator_0|or_2|output~3_combout\ & ((\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\) # 
-- ((\t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\ & \t_state_generator_0|and_4|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \t_state_generator_0|and_4|output~0_combout\,
	datad => \t_state_generator_0|or_2|output~3_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y4_N14
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\,
	datad => \not_reset~combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X27_Y4_N16
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ & (((\t_state_generator_0|and_4|output~0_combout\ & 
-- !\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|and_4|output~0_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\);

-- Location: LCCOMB_X27_Y4_N2
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\HLT_indicator~0_combout\ & (((\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\)))) # (!\HLT_indicator~0_combout\ & ((\clk~combout\ & 
-- ((\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))) # (!\clk~combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HLT_indicator~0_combout\,
	datab => \clk~combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y5_N0
\t_state_generator_0|or_2|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|or_2|output~1_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & ((\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- (\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\))))) # 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (((\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|or_2|output~1_combout\);

-- Location: LCCOMB_X27_Y6_N14
\t_state_generator_0|or_2|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|or_2|output~2_combout\ = (\t_state_generator_0|or_2|output~1_combout\ & ((\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\t_state_generator_0|or_2|output~1_combout\ & 
-- (\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|or_2|output~1_combout\,
	datac => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|or_2|output~2_combout\);

-- Location: LCCOMB_X27_Y6_N18
\t_state_generator_0|or_2|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|or_2|output~3_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\t_state_generator_0|or_2|output~2_combout\ & (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))) # 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (((\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\t_state_generator_0|or_2|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|or_2|output~2_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|or_2|output~1_combout\,
	combout => \t_state_generator_0|or_2|output~3_combout\);

-- Location: LCCOMB_X27_Y5_N22
\register_1_bit_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\register_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & (!\register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\register_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- (((\register_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \register_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \register_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y5_N28
\register_1_bit_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk~combout\ & (((\register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\clk~combout\ & ((\start~combout\ & ((\register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\start~combout\ & 
-- (\register_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \register_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \start~combout\,
	datad => \register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y5_N14
\HLT_indicator~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \HLT_indicator~1_combout\ = (\register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\HLT_indicator~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HLT_indicator~0_combout\,
	datad => \register_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \HLT_indicator~1_combout\);

-- Location: LCCOMB_X27_Y4_N24
\t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\);

-- Location: LCCOMB_X27_Y4_N22
\t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\);

-- Location: LCCOMB_X27_Y4_N4
\t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- !\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\);

-- Location: LCCOMB_X27_Y4_N10
\t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- !\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\);

-- Location: LCCOMB_X27_Y4_N20
\t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\);

-- Location: LCCOMB_X27_Y4_N18
\t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RUN_indicator~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RUN_indicator);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(2));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


