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

-- DATE "01/04/2017 18:53:40"

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
	clk : IN std_logic;
	s_states : OUT std_logic_vector(3 DOWNTO 0);
	t_states : OUT std_logic_vector(5 DOWNTO 0)
	);
END state_generator;

-- Design Ports Information
-- IR[2]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_states[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[1]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[2]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[3]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[0]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[1]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[2]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[3]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[4]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[5]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- start	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- irq	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_s_states : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_t_states : std_logic_vector(5 DOWNTO 0);
SIGNAL \s_state_generator_0|or_5|output~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|and_2|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|or_5|output~clkctrl_outclk\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \irq~combout\ : std_logic;
SIGNAL \s_state_generator_0|or_3|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|and_4|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|or_4|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|or_2|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|or_2|output~2_combout\ : std_logic;
SIGNAL \t_state_generator_0|or_2|output~3_combout\ : std_logic;
SIGNAL \s_state_generator_0|or_5|output~combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0_combout\ : std_logic;
SIGNAL \IR~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ : std_logic;

BEGIN

ww_irq <= irq;
ww_IR <= IR;
ww_not_reset <= not_reset;
ww_start <= start;
ww_clk <= clk;
s_states <= ww_s_states;
t_states <= ww_t_states;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\s_state_generator_0|or_5|output~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \s_state_generator_0|or_5|output~combout\);
\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\;
\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\;
\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\;
\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|ALT_INV_output~1_combout\ <= NOT \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\;

-- Location: LCCOMB_X2_Y2_N16
\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ & ((\irq~combout\) # ((\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- !\s_state_generator_0|and_4|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq~combout\,
	datab => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|and_4|output~0_combout\,
	combout => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y2_N24
\s_state_generator_0|and_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|and_2|output~0_combout\ = (\IR~combout\(3) & (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((!\IR~combout\(0)) # (!\IR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(3),
	datab => \IR~combout\(1),
	datac => \IR~combout\(0),
	datad => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|and_2|output~0_combout\);

-- Location: LCCOMB_X2_Y2_N18
\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\ = (\not_reset~combout\ & !\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y2_N18
\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ & (\not_reset~combout\ & ((\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \clk~combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y2_N22
\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ & (((\t_state_generator_0|or_2|output~3_combout\) # (!\clk~combout\)) # 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \t_state_generator_0|or_2|output~3_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y2_N4
\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk~combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk~combout\ & ((\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y2_N22
\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\ = (!\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2_combout\ & \not_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	combout => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y2_N30
\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2_combout\ = (\s_state_generator_0|and_2|output~0_combout\ & (!\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- ((!\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\) # (!\s_state_generator_0|or_5|output~combout\)))) # (!\s_state_generator_0|and_2|output~0_combout\ & (((\s_state_generator_0|or_5|output~combout\ & 
-- !\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|and_2|output~0_combout\,
	datab => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \s_state_generator_0|or_5|output~combout\,
	datad => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: CLKCTRL_G1
\s_state_generator_0|or_5|output~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \s_state_generator_0|or_5|output~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \s_state_generator_0|or_5|output~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y2_N24
\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\s_state_generator_0|or_5|output~clkctrl_outclk\) & (\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\s_state_generator_0|or_5|output~clkctrl_outclk\) & ((\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \s_state_generator_0|or_5|output~clkctrl_outclk\,
	combout => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y2_N0
\s_state_generator_0|or_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|or_3|output~0_combout\ = (!\IR~combout\(3) & (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((!\IR~combout\(0)) # (!\IR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(3),
	datab => \IR~combout\(1),
	datac => \IR~combout\(0),
	datad => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|or_3|output~0_combout\);

-- Location: LCCOMB_X2_Y2_N2
\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ = (\s_state_generator_0|or_5|output~combout\ & (\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ $ 
-- (((\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\ & !\s_state_generator_0|or_3|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|or_5|output~combout\,
	datad => \s_state_generator_0|or_3|output~0_combout\,
	combout => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y2_N20
\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\ = (\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\)))) # 
-- (!\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\ & ((\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \not_reset~combout\,
	datac => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y2_N8
\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\s_state_generator_0|or_5|output~clkctrl_outclk\) & (\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\s_state_generator_0|or_5|output~clkctrl_outclk\) & ((\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \s_state_generator_0|or_5|output~clkctrl_outclk\,
	combout => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y2_N10
\s_state_generator_0|and_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|and_4|output~0_combout\ = (\IR~combout\(1) & (\IR~combout\(0) & !\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR~combout\(1),
	datac => \IR~combout\(0),
	datad => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|and_4|output~0_combout\);

-- Location: LCCOMB_X2_Y2_N4
\s_state_generator_0|or_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|or_4|output~0_combout\ = (\irq~combout\ & ((\s_state_generator_0|and_4|output~0_combout\) # (!\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irq~combout\,
	datac => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|and_4|output~0_combout\,
	combout => \s_state_generator_0|or_4|output~0_combout\);

-- Location: LCCOMB_X2_Y2_N6
\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\ = (\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\ & (!\s_state_generator_0|or_4|output~0_combout\ & (\s_state_generator_0|or_5|output~combout\ & 
-- !\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\s_state_generator_0|or_5|output~combout\)) # (!\s_state_generator_0|or_4|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \s_state_generator_0|or_4|output~0_combout\,
	datac => \s_state_generator_0|or_5|output~combout\,
	datad => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y2_N28
\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\s_state_generator_0|or_5|output~clkctrl_outclk\) & ((\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\))) # 
-- (!GLOBAL(\s_state_generator_0|or_5|output~clkctrl_outclk\) & (\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|or_5|output~clkctrl_outclk\,
	combout => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y2_N26
\t_state_generator_0|or_2|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|or_2|output~1_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & ((\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- ((\s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\)))) # 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|reg_1_bit_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|reg_1_bit_3|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|or_2|output~1_combout\);

-- Location: LCCOMB_X1_Y2_N2
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\clk~combout\ & ((\t_state_generator_0|or_2|output~3_combout\ & (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\t_state_generator_0|or_2|output~3_combout\ & ((!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \t_state_generator_0|or_2|output~3_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y2_N12
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ & (((!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ & (((\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y2_N16
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\clk~combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\clk~combout\ & ((\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N16
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\) # (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y2_N0
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ = (\clk~combout\ & ((\t_state_generator_0|or_2|output~3_combout\ & (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\t_state_generator_0|or_2|output~3_combout\ & ((!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \clk~combout\,
	datad => \t_state_generator_0|or_2|output~3_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y2_N6
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ & (((!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))) # 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ & (((\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y2_N20
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\clk~combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\clk~combout\ & ((\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y2_N30
\t_state_generator_0|or_2|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|or_2|output~2_combout\ = (\t_state_generator_0|or_2|output~1_combout\ & (\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\t_state_generator_0|or_2|output~1_combout\ & 
-- ((\s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|reg_1_bit_2|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \t_state_generator_0|or_2|output~1_combout\,
	combout => \t_state_generator_0|or_2|output~2_combout\);

-- Location: LCCOMB_X1_Y2_N10
\t_state_generator_0|or_2|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|or_2|output~3_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (((!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\t_state_generator_0|or_2|output~2_combout\)))) # 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\t_state_generator_0|or_2|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \t_state_generator_0|or_2|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|or_2|output~2_combout\,
	combout => \t_state_generator_0|or_2|output~3_combout\);

-- Location: LCCOMB_X1_Y2_N8
\s_state_generator_0|or_5|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|or_5|output~combout\ = (\start~combout\) # ((\clk~combout\ & \t_state_generator_0|or_2|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datac => \clk~combout\,
	datad => \t_state_generator_0|or_2|output~3_combout\,
	combout => \s_state_generator_0|or_5|output~combout\);

-- Location: LCCOMB_X2_Y2_N14
\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\s_state_generator_0|or_5|output~combout\ & (\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ $ 
-- (((\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\ & !\start~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \start~combout\,
	datac => \s_state_generator_0|or_5|output~combout\,
	datad => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y2_N12
\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~3_combout\ = (\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ & (((!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # 
-- (!\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\ & ((\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~3_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~3_combout\,
	datab => \not_reset~combout\,
	datac => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y2_N14
\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\s_state_generator_0|or_5|output~clkctrl_outclk\) & (\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\)) # 
-- (!GLOBAL(\s_state_generator_0|or_5|output~clkctrl_outclk\) & ((\s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_1|output~3_combout\,
	datad => \s_state_generator_0|or_5|output~clkctrl_outclk\,
	combout => \s_state_generator_0|reg_1_bit_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N28
\t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_0|output~0_combout\);

-- Location: LCCOMB_X1_Y5_N22
\t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_1|output~0_combout\);

-- Location: LCCOMB_X1_Y5_N12
\t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_2|output~0_combout\);

-- Location: LCCOMB_X1_Y5_N26
\t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y5_N8
\t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- !\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_4|output~0_combout\);

-- Location: LCCOMB_X1_Y5_N10
\t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- !\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_6_0|and_3_5|output~0_combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


