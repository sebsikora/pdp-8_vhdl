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

-- DATE "01/03/2017 20:03:38"

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

ENTITY 	alu_shifter IS
    PORT (
	input : IN std_logic_vector(11 DOWNTO 0);
	link_input : IN std_logic;
	output : OUT std_logic_vector(11 DOWNTO 0);
	link_output : OUT std_logic;
	alu_rot_1 : IN std_logic;
	alu_rot_2 : IN std_logic
	);
END alu_shifter;

-- Design Ports Information
-- output[0]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[1]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[2]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[3]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[4]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[5]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[6]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[7]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[8]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[9]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[10]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[11]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- link_output	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- link_input	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_rot_2	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[0]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_rot_1	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[1]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[2]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[3]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[4]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[5]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[6]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[7]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[8]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[9]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[10]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[11]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF alu_shifter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_link_input : std_logic;
SIGNAL ww_output : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_link_output : std_logic;
SIGNAL ww_alu_rot_1 : std_logic;
SIGNAL ww_alu_rot_2 : std_logic;
SIGNAL \alu_rot_2~combout\ : std_logic;
SIGNAL \link_input~combout\ : std_logic;
SIGNAL \or_3_0|output~0_combout\ : std_logic;
SIGNAL \alu_rot_1~combout\ : std_logic;
SIGNAL \or_3_0|output~combout\ : std_logic;
SIGNAL \or_3_1|output~0_combout\ : std_logic;
SIGNAL \or_3_1|output~combout\ : std_logic;
SIGNAL \or_3_2|output~0_combout\ : std_logic;
SIGNAL \or_3_2|output~combout\ : std_logic;
SIGNAL \or_3_3|output~0_combout\ : std_logic;
SIGNAL \or_3_3|output~combout\ : std_logic;
SIGNAL \or_3_4|output~0_combout\ : std_logic;
SIGNAL \or_3_4|output~combout\ : std_logic;
SIGNAL \or_3_5|output~0_combout\ : std_logic;
SIGNAL \or_3_5|output~combout\ : std_logic;
SIGNAL \or_3_6|output~0_combout\ : std_logic;
SIGNAL \or_3_6|output~combout\ : std_logic;
SIGNAL \or_3_7|output~0_combout\ : std_logic;
SIGNAL \or_3_7|output~combout\ : std_logic;
SIGNAL \or_3_8|output~0_combout\ : std_logic;
SIGNAL \or_3_8|output~combout\ : std_logic;
SIGNAL \or_3_9|output~0_combout\ : std_logic;
SIGNAL \or_3_9|output~combout\ : std_logic;
SIGNAL \or_3_10|output~0_combout\ : std_logic;
SIGNAL \or_3_10|output~combout\ : std_logic;
SIGNAL \or_3_11|output~0_combout\ : std_logic;
SIGNAL \or_3_11|output~combout\ : std_logic;
SIGNAL \or_3_link|output~0_combout\ : std_logic;
SIGNAL \or_3_link|output~combout\ : std_logic;
SIGNAL \input~combout\ : std_logic_vector(11 DOWNTO 0);

BEGIN

ww_input <= input;
ww_link_input <= link_input;
output <= ww_output;
link_output <= ww_link_output;
ww_alu_rot_1 <= alu_rot_1;
ww_alu_rot_2 <= alu_rot_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[0]~I\ : cycloneii_io
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
	padio => ww_input(0),
	combout => \input~combout\(0));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_rot_2~I\ : cycloneii_io
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
	padio => ww_alu_rot_2,
	combout => \alu_rot_2~combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\link_input~I\ : cycloneii_io
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
	padio => ww_link_input,
	combout => \link_input~combout\);

-- Location: LCCOMB_X20_Y9_N0
\or_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_0|output~0_combout\ = (\alu_rot_2~combout\ & (((\link_input~combout\)))) # (!\alu_rot_2~combout\ & (!\alu_rot_1~combout\ & (\input~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_1~combout\,
	datab => \input~combout\(0),
	datac => \alu_rot_2~combout\,
	datad => \link_input~combout\,
	combout => \or_3_0|output~0_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[1]~I\ : cycloneii_io
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
	padio => ww_input(1),
	combout => \input~combout\(1));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_rot_1~I\ : cycloneii_io
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
	padio => ww_alu_rot_1,
	combout => \alu_rot_1~combout\);

-- Location: LCCOMB_X20_Y9_N10
\or_3_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_0|output~combout\ = (\or_3_0|output~0_combout\) # ((\input~combout\(1) & \alu_rot_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \or_3_0|output~0_combout\,
	datac => \input~combout\(1),
	datad => \alu_rot_1~combout\,
	combout => \or_3_0|output~combout\);

-- Location: LCCOMB_X20_Y9_N28
\or_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_1|output~0_combout\ = (\alu_rot_2~combout\ & (((\input~combout\(0))))) # (!\alu_rot_2~combout\ & (\input~combout\(1) & ((!\alu_rot_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(1),
	datab => \input~combout\(0),
	datac => \alu_rot_2~combout\,
	datad => \alu_rot_1~combout\,
	combout => \or_3_1|output~0_combout\);

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[2]~I\ : cycloneii_io
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
	padio => ww_input(2),
	combout => \input~combout\(2));

-- Location: LCCOMB_X20_Y9_N30
\or_3_1|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_1|output~combout\ = (\or_3_1|output~0_combout\) # ((\alu_rot_1~combout\ & \input~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_1~combout\,
	datab => \or_3_1|output~0_combout\,
	datad => \input~combout\(2),
	combout => \or_3_1|output~combout\);

-- Location: LCCOMB_X20_Y9_N8
\or_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_2|output~0_combout\ = (\alu_rot_2~combout\ & (((\input~combout\(1))))) # (!\alu_rot_2~combout\ & (!\alu_rot_1~combout\ & ((\input~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_1~combout\,
	datab => \alu_rot_2~combout\,
	datac => \input~combout\(1),
	datad => \input~combout\(2),
	combout => \or_3_2|output~0_combout\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[3]~I\ : cycloneii_io
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
	padio => ww_input(3),
	combout => \input~combout\(3));

-- Location: LCCOMB_X20_Y9_N26
\or_3_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_2|output~combout\ = (\or_3_2|output~0_combout\) # ((\input~combout\(3) & \alu_rot_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \or_3_2|output~0_combout\,
	datac => \input~combout\(3),
	datad => \alu_rot_1~combout\,
	combout => \or_3_2|output~combout\);

-- Location: LCCOMB_X20_Y9_N12
\or_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_3|output~0_combout\ = (\alu_rot_2~combout\ & (((\input~combout\(2))))) # (!\alu_rot_2~combout\ & (\input~combout\(3) & ((!\alu_rot_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(3),
	datab => \input~combout\(2),
	datac => \alu_rot_2~combout\,
	datad => \alu_rot_1~combout\,
	combout => \or_3_3|output~0_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[4]~I\ : cycloneii_io
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
	padio => ww_input(4),
	combout => \input~combout\(4));

-- Location: LCCOMB_X20_Y9_N22
\or_3_3|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_3|output~combout\ = (\or_3_3|output~0_combout\) # ((\input~combout\(4) & \alu_rot_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \or_3_3|output~0_combout\,
	datac => \input~combout\(4),
	datad => \alu_rot_1~combout\,
	combout => \or_3_3|output~combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[5]~I\ : cycloneii_io
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
	padio => ww_input(5),
	combout => \input~combout\(5));

-- Location: LCCOMB_X20_Y9_N24
\or_3_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_4|output~0_combout\ = (\alu_rot_2~combout\ & (\input~combout\(3))) # (!\alu_rot_2~combout\ & (((\input~combout\(4) & !\alu_rot_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(3),
	datab => \alu_rot_2~combout\,
	datac => \input~combout\(4),
	datad => \alu_rot_1~combout\,
	combout => \or_3_4|output~0_combout\);

-- Location: LCCOMB_X20_Y9_N2
\or_3_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_4|output~combout\ = (\or_3_4|output~0_combout\) # ((\input~combout\(5) & \alu_rot_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(5),
	datac => \or_3_4|output~0_combout\,
	datad => \alu_rot_1~combout\,
	combout => \or_3_4|output~combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[6]~I\ : cycloneii_io
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
	padio => ww_input(6),
	combout => \input~combout\(6));

-- Location: LCCOMB_X20_Y9_N4
\or_3_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_5|output~0_combout\ = (\alu_rot_2~combout\ & (((\input~combout\(4))))) # (!\alu_rot_2~combout\ & (\input~combout\(5) & ((!\alu_rot_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(5),
	datab => \input~combout\(4),
	datac => \alu_rot_2~combout\,
	datad => \alu_rot_1~combout\,
	combout => \or_3_5|output~0_combout\);

-- Location: LCCOMB_X20_Y9_N6
\or_3_5|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_5|output~combout\ = (\or_3_5|output~0_combout\) # ((\input~combout\(6) & \alu_rot_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(6),
	datac => \or_3_5|output~0_combout\,
	datad => \alu_rot_1~combout\,
	combout => \or_3_5|output~combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[7]~I\ : cycloneii_io
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
	padio => ww_input(7),
	combout => \input~combout\(7));

-- Location: LCCOMB_X20_Y9_N16
\or_3_6|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_6|output~0_combout\ = (\alu_rot_2~combout\ & (\input~combout\(5))) # (!\alu_rot_2~combout\ & (((\input~combout\(6) & !\alu_rot_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(5),
	datab => \input~combout\(6),
	datac => \alu_rot_2~combout\,
	datad => \alu_rot_1~combout\,
	combout => \or_3_6|output~0_combout\);

-- Location: LCCOMB_X20_Y9_N18
\or_3_6|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_6|output~combout\ = (\or_3_6|output~0_combout\) # ((\input~combout\(7) & \alu_rot_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(7),
	datac => \or_3_6|output~0_combout\,
	datad => \alu_rot_1~combout\,
	combout => \or_3_6|output~combout\);

-- Location: LCCOMB_X27_Y8_N0
\or_3_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_7|output~0_combout\ = (\alu_rot_2~combout\ & (((\input~combout\(6))))) # (!\alu_rot_2~combout\ & (\input~combout\(7) & ((!\alu_rot_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(7),
	datab => \alu_rot_2~combout\,
	datac => \input~combout\(6),
	datad => \alu_rot_1~combout\,
	combout => \or_3_7|output~0_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[8]~I\ : cycloneii_io
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
	padio => ww_input(8),
	combout => \input~combout\(8));

-- Location: LCCOMB_X27_Y8_N26
\or_3_7|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_7|output~combout\ = (\or_3_7|output~0_combout\) # ((\input~combout\(8) & \alu_rot_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \or_3_7|output~0_combout\,
	datac => \input~combout\(8),
	datad => \alu_rot_1~combout\,
	combout => \or_3_7|output~combout\);

-- Location: LCCOMB_X27_Y8_N12
\or_3_8|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_8|output~0_combout\ = (\alu_rot_2~combout\ & (\input~combout\(7))) # (!\alu_rot_2~combout\ & (((\input~combout\(8) & !\alu_rot_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(7),
	datab => \alu_rot_2~combout\,
	datac => \input~combout\(8),
	datad => \alu_rot_1~combout\,
	combout => \or_3_8|output~0_combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[9]~I\ : cycloneii_io
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
	padio => ww_input(9),
	combout => \input~combout\(9));

-- Location: LCCOMB_X27_Y8_N6
\or_3_8|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_8|output~combout\ = (\or_3_8|output~0_combout\) # ((\input~combout\(9) & \alu_rot_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \or_3_8|output~0_combout\,
	datab => \input~combout\(9),
	datad => \alu_rot_1~combout\,
	combout => \or_3_8|output~combout\);

-- Location: LCCOMB_X27_Y8_N16
\or_3_9|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_9|output~0_combout\ = (\alu_rot_2~combout\ & (((\input~combout\(8))))) # (!\alu_rot_2~combout\ & (!\alu_rot_1~combout\ & ((\input~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_1~combout\,
	datab => \alu_rot_2~combout\,
	datac => \input~combout\(8),
	datad => \input~combout\(9),
	combout => \or_3_9|output~0_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[10]~I\ : cycloneii_io
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
	padio => ww_input(10),
	combout => \input~combout\(10));

-- Location: LCCOMB_X27_Y8_N10
\or_3_9|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_9|output~combout\ = (\or_3_9|output~0_combout\) # ((\alu_rot_1~combout\ & \input~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_1~combout\,
	datac => \or_3_9|output~0_combout\,
	datad => \input~combout\(10),
	combout => \or_3_9|output~combout\);

-- Location: LCCOMB_X27_Y8_N28
\or_3_10|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_10|output~0_combout\ = (\alu_rot_2~combout\ & (((\input~combout\(9))))) # (!\alu_rot_2~combout\ & (!\alu_rot_1~combout\ & (\input~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_1~combout\,
	datab => \input~combout\(10),
	datac => \alu_rot_2~combout\,
	datad => \input~combout\(9),
	combout => \or_3_10|output~0_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[11]~I\ : cycloneii_io
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
	padio => ww_input(11),
	combout => \input~combout\(11));

-- Location: LCCOMB_X27_Y8_N14
\or_3_10|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_10|output~combout\ = (\or_3_10|output~0_combout\) # ((\alu_rot_1~combout\ & \input~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_1~combout\,
	datab => \or_3_10|output~0_combout\,
	datad => \input~combout\(11),
	combout => \or_3_10|output~combout\);

-- Location: LCCOMB_X27_Y8_N24
\or_3_11|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_11|output~0_combout\ = (\alu_rot_1~combout\ & (((\link_input~combout\)))) # (!\alu_rot_1~combout\ & (!\alu_rot_2~combout\ & ((\input~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_1~combout\,
	datab => \alu_rot_2~combout\,
	datac => \link_input~combout\,
	datad => \input~combout\(11),
	combout => \or_3_11|output~0_combout\);

-- Location: LCCOMB_X27_Y8_N18
\or_3_11|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_11|output~combout\ = (\or_3_11|output~0_combout\) # ((\alu_rot_2~combout\ & \input~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_rot_2~combout\,
	datac => \or_3_11|output~0_combout\,
	datad => \input~combout\(10),
	combout => \or_3_11|output~combout\);

-- Location: LCCOMB_X27_Y8_N20
\or_3_link|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_link|output~0_combout\ = (\alu_rot_1~combout\ & (((\input~combout\(0))))) # (!\alu_rot_1~combout\ & (!\alu_rot_2~combout\ & (\link_input~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_rot_1~combout\,
	datab => \alu_rot_2~combout\,
	datac => \link_input~combout\,
	datad => \input~combout\(0),
	combout => \or_3_link|output~0_combout\);

-- Location: LCCOMB_X27_Y8_N22
\or_3_link|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3_link|output~combout\ = (\or_3_link|output~0_combout\) # ((\alu_rot_2~combout\ & \input~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_rot_2~combout\,
	datac => \or_3_link|output~0_combout\,
	datad => \input~combout\(11),
	combout => \or_3_link|output~combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \or_3_0|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \or_3_1|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(1));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \or_3_2|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(2));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \or_3_3|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(3));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[4]~I\ : cycloneii_io
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
	datain => \or_3_4|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(4));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[5]~I\ : cycloneii_io
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
	datain => \or_3_5|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(5));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[6]~I\ : cycloneii_io
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
	datain => \or_3_6|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(6));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[7]~I\ : cycloneii_io
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
	datain => \or_3_7|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(7));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[8]~I\ : cycloneii_io
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
	datain => \or_3_8|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(8));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[9]~I\ : cycloneii_io
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
	datain => \or_3_9|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(9));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[10]~I\ : cycloneii_io
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
	datain => \or_3_10|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(10));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[11]~I\ : cycloneii_io
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
	datain => \or_3_11|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(11));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\link_output~I\ : cycloneii_io
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
	datain => \or_3_link|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_link_output);
END structure;


