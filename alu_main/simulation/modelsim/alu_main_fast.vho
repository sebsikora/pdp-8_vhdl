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

-- DATE "01/07/2017 22:09:02"

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

ENTITY 	alu_main IS
    PORT (
	alu_out_select : IN std_logic_vector(2 DOWNTO 0);
	inputA : IN std_logic_vector(11 DOWNTO 0);
	inputB : IN std_logic_vector(11 DOWNTO 0);
	output : OUT std_logic_vector(11 DOWNTO 0);
	add_carry : OUT std_logic
	);
END alu_main;

-- Design Ports Information
-- output[0]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[1]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[2]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[3]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[4]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[5]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[6]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[7]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[8]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[9]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[10]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[11]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- add_carry	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_select[2]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_out_select[0]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_out_select[1]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputB[0]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputA[0]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputB[1]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputA[1]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputB[2]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputA[2]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputB[3]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputA[3]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputB[4]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputA[4]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputB[5]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputA[5]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputB[6]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputA[6]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputB[7]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputA[7]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputB[8]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputA[8]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputB[9]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputA[9]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputB[10]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputA[10]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputB[11]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputA[11]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF alu_main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_alu_out_select : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_inputA : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_inputB : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_add_carry : std_logic;
SIGNAL \alu_mux_0|Equal1~0_combout\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~0_combout\ : std_logic;
SIGNAL \alu_mux_0|Equal2~0_combout\ : std_logic;
SIGNAL \alu_mux_0|Equal0~0_combout\ : std_logic;
SIGNAL \alu_mux_0|output[0]~0_combout\ : std_logic;
SIGNAL \alu_mux_0|output[0]~1_combout\ : std_logic;
SIGNAL \alu_mux_0|output[1]~2_combout\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~1\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~2_combout\ : std_logic;
SIGNAL \alu_mux_0|output[1]~3_combout\ : std_logic;
SIGNAL \alu_mux_0|output[2]~4_combout\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~3\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~4_combout\ : std_logic;
SIGNAL \alu_mux_0|output[2]~5_combout\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~5\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~6_combout\ : std_logic;
SIGNAL \alu_mux_0|output[3]~6_combout\ : std_logic;
SIGNAL \alu_mux_0|output[3]~7_combout\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~7\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~8_combout\ : std_logic;
SIGNAL \alu_mux_0|output[4]~8_combout\ : std_logic;
SIGNAL \alu_mux_0|output[4]~9_combout\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~9\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~10_combout\ : std_logic;
SIGNAL \alu_mux_0|output[5]~10_combout\ : std_logic;
SIGNAL \alu_mux_0|output[5]~11_combout\ : std_logic;
SIGNAL \alu_mux_0|output[6]~12_combout\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~11\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~12_combout\ : std_logic;
SIGNAL \alu_mux_0|output[6]~13_combout\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~13\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~14_combout\ : std_logic;
SIGNAL \alu_mux_0|output[7]~15_combout\ : std_logic;
SIGNAL \alu_mux_0|output[7]~14_combout\ : std_logic;
SIGNAL \alu_mux_0|output[7]~16_combout\ : std_logic;
SIGNAL \alu_mux_0|output[8]~17_combout\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~15\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~16_combout\ : std_logic;
SIGNAL \alu_mux_0|output[8]~18_combout\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~17\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~18_combout\ : std_logic;
SIGNAL \alu_mux_0|output[9]~19_combout\ : std_logic;
SIGNAL \alu_mux_0|output[9]~20_combout\ : std_logic;
SIGNAL \alu_mux_0|output[10]~21_combout\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~19\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~20_combout\ : std_logic;
SIGNAL \alu_mux_0|output[10]~22_combout\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~21\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~22_combout\ : std_logic;
SIGNAL \alu_mux_0|output[11]~23_combout\ : std_logic;
SIGNAL \alu_mux_0|output[11]~24_combout\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~23\ : std_logic;
SIGNAL \alu_add_0|adder_1|nand_7|output~24_combout\ : std_logic;
SIGNAL \inputB~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inputA~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \alu_out_select~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_alu_out_select <= alu_out_select;
ww_inputA <= inputA;
ww_inputB <= inputB;
output <= ww_output;
add_carry <= ww_add_carry;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputB[6]~I\ : cycloneii_io
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
	padio => ww_inputB(6),
	combout => \inputB~combout\(6));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputA[8]~I\ : cycloneii_io
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
	padio => ww_inputA(8),
	combout => \inputA~combout\(8));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputB[9]~I\ : cycloneii_io
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
	padio => ww_inputB(9),
	combout => \inputB~combout\(9));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputA[10]~I\ : cycloneii_io
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
	padio => ww_inputA(10),
	combout => \inputA~combout\(10));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_out_select[1]~I\ : cycloneii_io
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
	padio => ww_alu_out_select(1),
	combout => \alu_out_select~combout\(1));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_out_select[0]~I\ : cycloneii_io
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
	padio => ww_alu_out_select(0),
	combout => \alu_out_select~combout\(0));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_out_select[2]~I\ : cycloneii_io
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
	padio => ww_alu_out_select(2),
	combout => \alu_out_select~combout\(2));

-- Location: LCCOMB_X20_Y12_N4
\alu_mux_0|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|Equal1~0_combout\ = (\alu_out_select~combout\(1) & (!\alu_out_select~combout\(0) & !\alu_out_select~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_out_select~combout\(1),
	datac => \alu_out_select~combout\(0),
	datad => \alu_out_select~combout\(2),
	combout => \alu_mux_0|Equal1~0_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputA[0]~I\ : cycloneii_io
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
	padio => ww_inputA(0),
	combout => \inputA~combout\(0));

-- Location: LCCOMB_X19_Y12_N6
\alu_add_0|adder_1|nand_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_add_0|adder_1|nand_7|output~0_combout\ = (\inputB~combout\(0) & (\inputA~combout\(0) $ (VCC))) # (!\inputB~combout\(0) & (\inputA~combout\(0) & VCC))
-- \alu_add_0|adder_1|nand_7|output~1\ = CARRY((\inputB~combout\(0) & \inputA~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputB~combout\(0),
	datab => \inputA~combout\(0),
	datad => VCC,
	combout => \alu_add_0|adder_1|nand_7|output~0_combout\,
	cout => \alu_add_0|adder_1|nand_7|output~1\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputB[0]~I\ : cycloneii_io
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
	padio => ww_inputB(0),
	combout => \inputB~combout\(0));

-- Location: LCCOMB_X20_Y12_N24
\alu_mux_0|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|Equal2~0_combout\ = (!\alu_out_select~combout\(1) & (!\alu_out_select~combout\(0) & \alu_out_select~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_out_select~combout\(1),
	datac => \alu_out_select~combout\(0),
	datad => \alu_out_select~combout\(2),
	combout => \alu_mux_0|Equal2~0_combout\);

-- Location: LCCOMB_X20_Y12_N10
\alu_mux_0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|Equal0~0_combout\ = (!\alu_out_select~combout\(1) & (\alu_out_select~combout\(0) & !\alu_out_select~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_out_select~combout\(1),
	datac => \alu_out_select~combout\(0),
	datad => \alu_out_select~combout\(2),
	combout => \alu_mux_0|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y11_N24
\alu_mux_0|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[0]~0_combout\ = (\inputA~combout\(0) & ((\alu_mux_0|Equal2~0_combout\) # ((\inputB~combout\(0) & \alu_mux_0|Equal0~0_combout\)))) # (!\inputA~combout\(0) & (\inputB~combout\(0) & (\alu_mux_0|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputA~combout\(0),
	datab => \inputB~combout\(0),
	datac => \alu_mux_0|Equal2~0_combout\,
	datad => \alu_mux_0|Equal0~0_combout\,
	combout => \alu_mux_0|output[0]~0_combout\);

-- Location: LCCOMB_X19_Y11_N2
\alu_mux_0|output[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[0]~1_combout\ = (\alu_mux_0|output[0]~0_combout\) # ((\alu_mux_0|Equal1~0_combout\ & \alu_add_0|adder_1|nand_7|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_mux_0|Equal1~0_combout\,
	datab => \alu_add_0|adder_1|nand_7|output~0_combout\,
	datac => \alu_mux_0|output[0]~0_combout\,
	combout => \alu_mux_0|output[0]~1_combout\);

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputA[1]~I\ : cycloneii_io
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
	padio => ww_inputA(1),
	combout => \inputA~combout\(1));

-- Location: LCCOMB_X20_Y12_N22
\alu_mux_0|output[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[1]~2_combout\ = (\inputB~combout\(1) & ((\alu_mux_0|Equal2~0_combout\) # ((\inputA~combout\(1) & \alu_mux_0|Equal0~0_combout\)))) # (!\inputB~combout\(1) & (\inputA~combout\(1) & (\alu_mux_0|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputB~combout\(1),
	datab => \inputA~combout\(1),
	datac => \alu_mux_0|Equal2~0_combout\,
	datad => \alu_mux_0|Equal0~0_combout\,
	combout => \alu_mux_0|output[1]~2_combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputB[1]~I\ : cycloneii_io
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
	padio => ww_inputB(1),
	combout => \inputB~combout\(1));

-- Location: LCCOMB_X19_Y12_N8
\alu_add_0|adder_1|nand_7|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_add_0|adder_1|nand_7|output~2_combout\ = (\inputA~combout\(1) & ((\inputB~combout\(1) & (\alu_add_0|adder_1|nand_7|output~1\ & VCC)) # (!\inputB~combout\(1) & (!\alu_add_0|adder_1|nand_7|output~1\)))) # (!\inputA~combout\(1) & ((\inputB~combout\(1) & 
-- (!\alu_add_0|adder_1|nand_7|output~1\)) # (!\inputB~combout\(1) & ((\alu_add_0|adder_1|nand_7|output~1\) # (GND)))))
-- \alu_add_0|adder_1|nand_7|output~3\ = CARRY((\inputA~combout\(1) & (!\inputB~combout\(1) & !\alu_add_0|adder_1|nand_7|output~1\)) # (!\inputA~combout\(1) & ((!\alu_add_0|adder_1|nand_7|output~1\) # (!\inputB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inputA~combout\(1),
	datab => \inputB~combout\(1),
	datad => VCC,
	cin => \alu_add_0|adder_1|nand_7|output~1\,
	combout => \alu_add_0|adder_1|nand_7|output~2_combout\,
	cout => \alu_add_0|adder_1|nand_7|output~3\);

-- Location: LCCOMB_X20_Y12_N8
\alu_mux_0|output[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[1]~3_combout\ = (\alu_mux_0|output[1]~2_combout\) # ((\alu_mux_0|Equal1~0_combout\ & \alu_add_0|adder_1|nand_7|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_mux_0|output[1]~2_combout\,
	datac => \alu_mux_0|Equal1~0_combout\,
	datad => \alu_add_0|adder_1|nand_7|output~2_combout\,
	combout => \alu_mux_0|output[1]~3_combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputA[2]~I\ : cycloneii_io
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
	padio => ww_inputA(2),
	combout => \inputA~combout\(2));

-- Location: LCCOMB_X19_Y11_N28
\alu_mux_0|output[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[2]~4_combout\ = (\inputB~combout\(2) & ((\alu_mux_0|Equal2~0_combout\) # ((\alu_mux_0|Equal0~0_combout\ & \inputA~combout\(2))))) # (!\inputB~combout\(2) & (((\alu_mux_0|Equal2~0_combout\ & \inputA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputB~combout\(2),
	datab => \alu_mux_0|Equal0~0_combout\,
	datac => \alu_mux_0|Equal2~0_combout\,
	datad => \inputA~combout\(2),
	combout => \alu_mux_0|output[2]~4_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputB[2]~I\ : cycloneii_io
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
	padio => ww_inputB(2),
	combout => \inputB~combout\(2));

-- Location: LCCOMB_X19_Y12_N10
\alu_add_0|adder_1|nand_7|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_add_0|adder_1|nand_7|output~4_combout\ = ((\inputA~combout\(2) $ (\inputB~combout\(2) $ (!\alu_add_0|adder_1|nand_7|output~3\)))) # (GND)
-- \alu_add_0|adder_1|nand_7|output~5\ = CARRY((\inputA~combout\(2) & ((\inputB~combout\(2)) # (!\alu_add_0|adder_1|nand_7|output~3\))) # (!\inputA~combout\(2) & (\inputB~combout\(2) & !\alu_add_0|adder_1|nand_7|output~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inputA~combout\(2),
	datab => \inputB~combout\(2),
	datad => VCC,
	cin => \alu_add_0|adder_1|nand_7|output~3\,
	combout => \alu_add_0|adder_1|nand_7|output~4_combout\,
	cout => \alu_add_0|adder_1|nand_7|output~5\);

-- Location: LCCOMB_X19_Y11_N6
\alu_mux_0|output[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[2]~5_combout\ = (\alu_mux_0|output[2]~4_combout\) # ((\alu_mux_0|Equal1~0_combout\ & \alu_add_0|adder_1|nand_7|output~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_mux_0|Equal1~0_combout\,
	datab => \alu_mux_0|output[2]~4_combout\,
	datad => \alu_add_0|adder_1|nand_7|output~4_combout\,
	combout => \alu_mux_0|output[2]~5_combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputB[3]~I\ : cycloneii_io
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
	padio => ww_inputB(3),
	combout => \inputB~combout\(3));

-- Location: LCCOMB_X19_Y12_N12
\alu_add_0|adder_1|nand_7|output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_add_0|adder_1|nand_7|output~6_combout\ = (\inputA~combout\(3) & ((\inputB~combout\(3) & (\alu_add_0|adder_1|nand_7|output~5\ & VCC)) # (!\inputB~combout\(3) & (!\alu_add_0|adder_1|nand_7|output~5\)))) # (!\inputA~combout\(3) & ((\inputB~combout\(3) & 
-- (!\alu_add_0|adder_1|nand_7|output~5\)) # (!\inputB~combout\(3) & ((\alu_add_0|adder_1|nand_7|output~5\) # (GND)))))
-- \alu_add_0|adder_1|nand_7|output~7\ = CARRY((\inputA~combout\(3) & (!\inputB~combout\(3) & !\alu_add_0|adder_1|nand_7|output~5\)) # (!\inputA~combout\(3) & ((!\alu_add_0|adder_1|nand_7|output~5\) # (!\inputB~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inputA~combout\(3),
	datab => \inputB~combout\(3),
	datad => VCC,
	cin => \alu_add_0|adder_1|nand_7|output~5\,
	combout => \alu_add_0|adder_1|nand_7|output~6_combout\,
	cout => \alu_add_0|adder_1|nand_7|output~7\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputA[3]~I\ : cycloneii_io
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
	padio => ww_inputA(3),
	combout => \inputA~combout\(3));

-- Location: LCCOMB_X20_Y12_N2
\alu_mux_0|output[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[3]~6_combout\ = (\alu_mux_0|Equal2~0_combout\ & ((\inputA~combout\(3)) # ((\inputB~combout\(3))))) # (!\alu_mux_0|Equal2~0_combout\ & (\inputA~combout\(3) & (\inputB~combout\(3) & \alu_mux_0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_mux_0|Equal2~0_combout\,
	datab => \inputA~combout\(3),
	datac => \inputB~combout\(3),
	datad => \alu_mux_0|Equal0~0_combout\,
	combout => \alu_mux_0|output[3]~6_combout\);

-- Location: LCCOMB_X19_Y12_N0
\alu_mux_0|output[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[3]~7_combout\ = (\alu_mux_0|output[3]~6_combout\) # ((\alu_add_0|adder_1|nand_7|output~6_combout\ & \alu_mux_0|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_add_0|adder_1|nand_7|output~6_combout\,
	datac => \alu_mux_0|Equal1~0_combout\,
	datad => \alu_mux_0|output[3]~6_combout\,
	combout => \alu_mux_0|output[3]~7_combout\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputB[4]~I\ : cycloneii_io
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
	padio => ww_inputB(4),
	combout => \inputB~combout\(4));

-- Location: LCCOMB_X19_Y12_N14
\alu_add_0|adder_1|nand_7|output~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_add_0|adder_1|nand_7|output~8_combout\ = ((\inputA~combout\(4) $ (\inputB~combout\(4) $ (!\alu_add_0|adder_1|nand_7|output~7\)))) # (GND)
-- \alu_add_0|adder_1|nand_7|output~9\ = CARRY((\inputA~combout\(4) & ((\inputB~combout\(4)) # (!\alu_add_0|adder_1|nand_7|output~7\))) # (!\inputA~combout\(4) & (\inputB~combout\(4) & !\alu_add_0|adder_1|nand_7|output~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inputA~combout\(4),
	datab => \inputB~combout\(4),
	datad => VCC,
	cin => \alu_add_0|adder_1|nand_7|output~7\,
	combout => \alu_add_0|adder_1|nand_7|output~8_combout\,
	cout => \alu_add_0|adder_1|nand_7|output~9\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputA[4]~I\ : cycloneii_io
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
	padio => ww_inputA(4),
	combout => \inputA~combout\(4));

-- Location: LCCOMB_X19_Y11_N16
\alu_mux_0|output[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[4]~8_combout\ = (\inputB~combout\(4) & ((\alu_mux_0|Equal2~0_combout\) # ((\alu_mux_0|Equal0~0_combout\ & \inputA~combout\(4))))) # (!\inputB~combout\(4) & (((\alu_mux_0|Equal2~0_combout\ & \inputA~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputB~combout\(4),
	datab => \alu_mux_0|Equal0~0_combout\,
	datac => \alu_mux_0|Equal2~0_combout\,
	datad => \inputA~combout\(4),
	combout => \alu_mux_0|output[4]~8_combout\);

-- Location: LCCOMB_X19_Y11_N10
\alu_mux_0|output[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[4]~9_combout\ = (\alu_mux_0|output[4]~8_combout\) # ((\alu_add_0|adder_1|nand_7|output~8_combout\ & \alu_mux_0|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_add_0|adder_1|nand_7|output~8_combout\,
	datac => \alu_mux_0|Equal1~0_combout\,
	datad => \alu_mux_0|output[4]~8_combout\,
	combout => \alu_mux_0|output[4]~9_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputA[5]~I\ : cycloneii_io
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
	padio => ww_inputA(5),
	combout => \inputA~combout\(5));

-- Location: LCCOMB_X19_Y12_N16
\alu_add_0|adder_1|nand_7|output~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_add_0|adder_1|nand_7|output~10_combout\ = (\inputB~combout\(5) & ((\inputA~combout\(5) & (\alu_add_0|adder_1|nand_7|output~9\ & VCC)) # (!\inputA~combout\(5) & (!\alu_add_0|adder_1|nand_7|output~9\)))) # (!\inputB~combout\(5) & ((\inputA~combout\(5) 
-- & (!\alu_add_0|adder_1|nand_7|output~9\)) # (!\inputA~combout\(5) & ((\alu_add_0|adder_1|nand_7|output~9\) # (GND)))))
-- \alu_add_0|adder_1|nand_7|output~11\ = CARRY((\inputB~combout\(5) & (!\inputA~combout\(5) & !\alu_add_0|adder_1|nand_7|output~9\)) # (!\inputB~combout\(5) & ((!\alu_add_0|adder_1|nand_7|output~9\) # (!\inputA~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inputB~combout\(5),
	datab => \inputA~combout\(5),
	datad => VCC,
	cin => \alu_add_0|adder_1|nand_7|output~9\,
	combout => \alu_add_0|adder_1|nand_7|output~10_combout\,
	cout => \alu_add_0|adder_1|nand_7|output~11\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputB[5]~I\ : cycloneii_io
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
	padio => ww_inputB(5),
	combout => \inputB~combout\(5));

-- Location: LCCOMB_X20_Y12_N28
\alu_mux_0|output[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[5]~10_combout\ = (\alu_mux_0|Equal2~0_combout\ & ((\inputB~combout\(5)) # ((\inputA~combout\(5))))) # (!\alu_mux_0|Equal2~0_combout\ & (\inputB~combout\(5) & (\inputA~combout\(5) & \alu_mux_0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_mux_0|Equal2~0_combout\,
	datab => \inputB~combout\(5),
	datac => \inputA~combout\(5),
	datad => \alu_mux_0|Equal0~0_combout\,
	combout => \alu_mux_0|output[5]~10_combout\);

-- Location: LCCOMB_X20_Y12_N6
\alu_mux_0|output[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[5]~11_combout\ = (\alu_mux_0|output[5]~10_combout\) # ((\alu_add_0|adder_1|nand_7|output~10_combout\ & \alu_mux_0|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_add_0|adder_1|nand_7|output~10_combout\,
	datac => \alu_mux_0|Equal1~0_combout\,
	datad => \alu_mux_0|output[5]~10_combout\,
	combout => \alu_mux_0|output[5]~11_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputA[6]~I\ : cycloneii_io
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
	padio => ww_inputA(6),
	combout => \inputA~combout\(6));

-- Location: LCCOMB_X19_Y11_N12
\alu_mux_0|output[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[6]~12_combout\ = (\inputB~combout\(6) & ((\alu_mux_0|Equal2~0_combout\) # ((\alu_mux_0|Equal0~0_combout\ & \inputA~combout\(6))))) # (!\inputB~combout\(6) & (((\alu_mux_0|Equal2~0_combout\ & \inputA~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputB~combout\(6),
	datab => \alu_mux_0|Equal0~0_combout\,
	datac => \alu_mux_0|Equal2~0_combout\,
	datad => \inputA~combout\(6),
	combout => \alu_mux_0|output[6]~12_combout\);

-- Location: LCCOMB_X19_Y12_N18
\alu_add_0|adder_1|nand_7|output~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_add_0|adder_1|nand_7|output~12_combout\ = ((\inputB~combout\(6) $ (\inputA~combout\(6) $ (!\alu_add_0|adder_1|nand_7|output~11\)))) # (GND)
-- \alu_add_0|adder_1|nand_7|output~13\ = CARRY((\inputB~combout\(6) & ((\inputA~combout\(6)) # (!\alu_add_0|adder_1|nand_7|output~11\))) # (!\inputB~combout\(6) & (\inputA~combout\(6) & !\alu_add_0|adder_1|nand_7|output~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inputB~combout\(6),
	datab => \inputA~combout\(6),
	datad => VCC,
	cin => \alu_add_0|adder_1|nand_7|output~11\,
	combout => \alu_add_0|adder_1|nand_7|output~12_combout\,
	cout => \alu_add_0|adder_1|nand_7|output~13\);

-- Location: LCCOMB_X19_Y11_N22
\alu_mux_0|output[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[6]~13_combout\ = (\alu_mux_0|output[6]~12_combout\) # ((\alu_add_0|adder_1|nand_7|output~12_combout\ & \alu_mux_0|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_mux_0|output[6]~12_combout\,
	datab => \alu_add_0|adder_1|nand_7|output~12_combout\,
	datac => \alu_mux_0|Equal1~0_combout\,
	combout => \alu_mux_0|output[6]~13_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputB[7]~I\ : cycloneii_io
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
	padio => ww_inputB(7),
	combout => \inputB~combout\(7));

-- Location: LCCOMB_X19_Y12_N20
\alu_add_0|adder_1|nand_7|output~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_add_0|adder_1|nand_7|output~14_combout\ = (\inputA~combout\(7) & ((\inputB~combout\(7) & (\alu_add_0|adder_1|nand_7|output~13\ & VCC)) # (!\inputB~combout\(7) & (!\alu_add_0|adder_1|nand_7|output~13\)))) # (!\inputA~combout\(7) & 
-- ((\inputB~combout\(7) & (!\alu_add_0|adder_1|nand_7|output~13\)) # (!\inputB~combout\(7) & ((\alu_add_0|adder_1|nand_7|output~13\) # (GND)))))
-- \alu_add_0|adder_1|nand_7|output~15\ = CARRY((\inputA~combout\(7) & (!\inputB~combout\(7) & !\alu_add_0|adder_1|nand_7|output~13\)) # (!\inputA~combout\(7) & ((!\alu_add_0|adder_1|nand_7|output~13\) # (!\inputB~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inputA~combout\(7),
	datab => \inputB~combout\(7),
	datad => VCC,
	cin => \alu_add_0|adder_1|nand_7|output~13\,
	combout => \alu_add_0|adder_1|nand_7|output~14_combout\,
	cout => \alu_add_0|adder_1|nand_7|output~15\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputA[7]~I\ : cycloneii_io
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
	padio => ww_inputA(7),
	combout => \inputA~combout\(7));

-- Location: LCCOMB_X20_Y12_N26
\alu_mux_0|output[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[7]~15_combout\ = (\inputA~combout\(7) & ((\alu_mux_0|Equal2~0_combout\) # ((\alu_mux_0|Equal0~0_combout\ & \inputB~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_mux_0|Equal0~0_combout\,
	datab => \inputA~combout\(7),
	datac => \alu_mux_0|Equal2~0_combout\,
	datad => \inputB~combout\(7),
	combout => \alu_mux_0|output[7]~15_combout\);

-- Location: LCCOMB_X20_Y12_N0
\alu_mux_0|output[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[7]~14_combout\ = (\alu_out_select~combout\(2) & (\inputB~combout\(7) & (!\alu_out_select~combout\(0) & !\alu_out_select~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out_select~combout\(2),
	datab => \inputB~combout\(7),
	datac => \alu_out_select~combout\(0),
	datad => \alu_out_select~combout\(1),
	combout => \alu_mux_0|output[7]~14_combout\);

-- Location: LCCOMB_X20_Y12_N12
\alu_mux_0|output[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[7]~16_combout\ = (\alu_mux_0|output[7]~15_combout\) # ((\alu_mux_0|output[7]~14_combout\) # ((\alu_add_0|adder_1|nand_7|output~14_combout\ & \alu_mux_0|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_add_0|adder_1|nand_7|output~14_combout\,
	datab => \alu_mux_0|output[7]~15_combout\,
	datac => \alu_mux_0|Equal1~0_combout\,
	datad => \alu_mux_0|output[7]~14_combout\,
	combout => \alu_mux_0|output[7]~16_combout\);

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputB[8]~I\ : cycloneii_io
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
	padio => ww_inputB(8),
	combout => \inputB~combout\(8));

-- Location: LCCOMB_X19_Y11_N0
\alu_mux_0|output[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[8]~17_combout\ = (\inputA~combout\(8) & ((\alu_mux_0|Equal2~0_combout\) # ((\alu_mux_0|Equal0~0_combout\ & \inputB~combout\(8))))) # (!\inputA~combout\(8) & (((\alu_mux_0|Equal2~0_combout\ & \inputB~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputA~combout\(8),
	datab => \alu_mux_0|Equal0~0_combout\,
	datac => \alu_mux_0|Equal2~0_combout\,
	datad => \inputB~combout\(8),
	combout => \alu_mux_0|output[8]~17_combout\);

-- Location: LCCOMB_X19_Y12_N22
\alu_add_0|adder_1|nand_7|output~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_add_0|adder_1|nand_7|output~16_combout\ = ((\inputA~combout\(8) $ (\inputB~combout\(8) $ (!\alu_add_0|adder_1|nand_7|output~15\)))) # (GND)
-- \alu_add_0|adder_1|nand_7|output~17\ = CARRY((\inputA~combout\(8) & ((\inputB~combout\(8)) # (!\alu_add_0|adder_1|nand_7|output~15\))) # (!\inputA~combout\(8) & (\inputB~combout\(8) & !\alu_add_0|adder_1|nand_7|output~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inputA~combout\(8),
	datab => \inputB~combout\(8),
	datad => VCC,
	cin => \alu_add_0|adder_1|nand_7|output~15\,
	combout => \alu_add_0|adder_1|nand_7|output~16_combout\,
	cout => \alu_add_0|adder_1|nand_7|output~17\);

-- Location: LCCOMB_X19_Y12_N2
\alu_mux_0|output[8]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[8]~18_combout\ = (\alu_mux_0|output[8]~17_combout\) # ((\alu_mux_0|Equal1~0_combout\ & \alu_add_0|adder_1|nand_7|output~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_mux_0|output[8]~17_combout\,
	datac => \alu_mux_0|Equal1~0_combout\,
	datad => \alu_add_0|adder_1|nand_7|output~16_combout\,
	combout => \alu_mux_0|output[8]~18_combout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputA[9]~I\ : cycloneii_io
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
	padio => ww_inputA(9),
	combout => \inputA~combout\(9));

-- Location: LCCOMB_X19_Y12_N24
\alu_add_0|adder_1|nand_7|output~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_add_0|adder_1|nand_7|output~18_combout\ = (\inputB~combout\(9) & ((\inputA~combout\(9) & (\alu_add_0|adder_1|nand_7|output~17\ & VCC)) # (!\inputA~combout\(9) & (!\alu_add_0|adder_1|nand_7|output~17\)))) # (!\inputB~combout\(9) & 
-- ((\inputA~combout\(9) & (!\alu_add_0|adder_1|nand_7|output~17\)) # (!\inputA~combout\(9) & ((\alu_add_0|adder_1|nand_7|output~17\) # (GND)))))
-- \alu_add_0|adder_1|nand_7|output~19\ = CARRY((\inputB~combout\(9) & (!\inputA~combout\(9) & !\alu_add_0|adder_1|nand_7|output~17\)) # (!\inputB~combout\(9) & ((!\alu_add_0|adder_1|nand_7|output~17\) # (!\inputA~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inputB~combout\(9),
	datab => \inputA~combout\(9),
	datad => VCC,
	cin => \alu_add_0|adder_1|nand_7|output~17\,
	combout => \alu_add_0|adder_1|nand_7|output~18_combout\,
	cout => \alu_add_0|adder_1|nand_7|output~19\);

-- Location: LCCOMB_X19_Y11_N26
\alu_mux_0|output[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[9]~19_combout\ = (\inputB~combout\(9) & ((\alu_mux_0|Equal2~0_combout\) # ((\inputA~combout\(9) & \alu_mux_0|Equal0~0_combout\)))) # (!\inputB~combout\(9) & (\alu_mux_0|Equal2~0_combout\ & (\inputA~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputB~combout\(9),
	datab => \alu_mux_0|Equal2~0_combout\,
	datac => \inputA~combout\(9),
	datad => \alu_mux_0|Equal0~0_combout\,
	combout => \alu_mux_0|output[9]~19_combout\);

-- Location: LCCOMB_X19_Y11_N20
\alu_mux_0|output[9]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[9]~20_combout\ = (\alu_mux_0|output[9]~19_combout\) # ((\alu_add_0|adder_1|nand_7|output~18_combout\ & \alu_mux_0|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_add_0|adder_1|nand_7|output~18_combout\,
	datab => \alu_mux_0|output[9]~19_combout\,
	datac => \alu_mux_0|Equal1~0_combout\,
	combout => \alu_mux_0|output[9]~20_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputB[10]~I\ : cycloneii_io
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
	padio => ww_inputB(10),
	combout => \inputB~combout\(10));

-- Location: LCCOMB_X19_Y11_N30
\alu_mux_0|output[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[10]~21_combout\ = (\inputA~combout\(10) & ((\alu_mux_0|Equal2~0_combout\) # ((\inputB~combout\(10) & \alu_mux_0|Equal0~0_combout\)))) # (!\inputA~combout\(10) & (\inputB~combout\(10) & (\alu_mux_0|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputA~combout\(10),
	datab => \inputB~combout\(10),
	datac => \alu_mux_0|Equal2~0_combout\,
	datad => \alu_mux_0|Equal0~0_combout\,
	combout => \alu_mux_0|output[10]~21_combout\);

-- Location: LCCOMB_X19_Y12_N26
\alu_add_0|adder_1|nand_7|output~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_add_0|adder_1|nand_7|output~20_combout\ = ((\inputA~combout\(10) $ (\inputB~combout\(10) $ (!\alu_add_0|adder_1|nand_7|output~19\)))) # (GND)
-- \alu_add_0|adder_1|nand_7|output~21\ = CARRY((\inputA~combout\(10) & ((\inputB~combout\(10)) # (!\alu_add_0|adder_1|nand_7|output~19\))) # (!\inputA~combout\(10) & (\inputB~combout\(10) & !\alu_add_0|adder_1|nand_7|output~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inputA~combout\(10),
	datab => \inputB~combout\(10),
	datad => VCC,
	cin => \alu_add_0|adder_1|nand_7|output~19\,
	combout => \alu_add_0|adder_1|nand_7|output~20_combout\,
	cout => \alu_add_0|adder_1|nand_7|output~21\);

-- Location: LCCOMB_X19_Y11_N8
\alu_mux_0|output[10]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[10]~22_combout\ = (\alu_mux_0|output[10]~21_combout\) # ((\alu_mux_0|Equal1~0_combout\ & \alu_add_0|adder_1|nand_7|output~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_mux_0|Equal1~0_combout\,
	datab => \alu_mux_0|output[10]~21_combout\,
	datac => \alu_add_0|adder_1|nand_7|output~20_combout\,
	combout => \alu_mux_0|output[10]~22_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputB[11]~I\ : cycloneii_io
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
	padio => ww_inputB(11),
	combout => \inputB~combout\(11));

-- Location: LCCOMB_X19_Y12_N28
\alu_add_0|adder_1|nand_7|output~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_add_0|adder_1|nand_7|output~22_combout\ = (\inputA~combout\(11) & ((\inputB~combout\(11) & (\alu_add_0|adder_1|nand_7|output~21\ & VCC)) # (!\inputB~combout\(11) & (!\alu_add_0|adder_1|nand_7|output~21\)))) # (!\inputA~combout\(11) & 
-- ((\inputB~combout\(11) & (!\alu_add_0|adder_1|nand_7|output~21\)) # (!\inputB~combout\(11) & ((\alu_add_0|adder_1|nand_7|output~21\) # (GND)))))
-- \alu_add_0|adder_1|nand_7|output~23\ = CARRY((\inputA~combout\(11) & (!\inputB~combout\(11) & !\alu_add_0|adder_1|nand_7|output~21\)) # (!\inputA~combout\(11) & ((!\alu_add_0|adder_1|nand_7|output~21\) # (!\inputB~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inputA~combout\(11),
	datab => \inputB~combout\(11),
	datad => VCC,
	cin => \alu_add_0|adder_1|nand_7|output~21\,
	combout => \alu_add_0|adder_1|nand_7|output~22_combout\,
	cout => \alu_add_0|adder_1|nand_7|output~23\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputA[11]~I\ : cycloneii_io
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
	padio => ww_inputA(11),
	combout => \inputA~combout\(11));

-- Location: LCCOMB_X20_Y12_N30
\alu_mux_0|output[11]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[11]~23_combout\ = (\alu_mux_0|Equal2~0_combout\ & ((\inputB~combout\(11)) # ((\inputA~combout\(11))))) # (!\alu_mux_0|Equal2~0_combout\ & (\inputB~combout\(11) & (\inputA~combout\(11) & \alu_mux_0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_mux_0|Equal2~0_combout\,
	datab => \inputB~combout\(11),
	datac => \inputA~combout\(11),
	datad => \alu_mux_0|Equal0~0_combout\,
	combout => \alu_mux_0|output[11]~23_combout\);

-- Location: LCCOMB_X20_Y12_N16
\alu_mux_0|output[11]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_mux_0|output[11]~24_combout\ = (\alu_mux_0|output[11]~23_combout\) # ((\alu_add_0|adder_1|nand_7|output~22_combout\ & \alu_mux_0|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_add_0|adder_1|nand_7|output~22_combout\,
	datac => \alu_mux_0|Equal1~0_combout\,
	datad => \alu_mux_0|output[11]~23_combout\,
	combout => \alu_mux_0|output[11]~24_combout\);

-- Location: LCCOMB_X19_Y12_N30
\alu_add_0|adder_1|nand_7|output~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu_add_0|adder_1|nand_7|output~24_combout\ = !\alu_add_0|adder_1|nand_7|output~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \alu_add_0|adder_1|nand_7|output~23\,
	combout => \alu_add_0|adder_1|nand_7|output~24_combout\);

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
	datain => \alu_mux_0|output[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \alu_mux_0|output[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(1));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \alu_mux_0|output[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(2));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \alu_mux_0|output[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(3));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \alu_mux_0|output[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(4));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \alu_mux_0|output[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(5));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \alu_mux_0|output[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(6));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \alu_mux_0|output[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(7));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \alu_mux_0|output[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(8));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \alu_mux_0|output[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(9));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \alu_mux_0|output[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(10));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \alu_mux_0|output[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(11));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\add_carry~I\ : cycloneii_io
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
	datain => \alu_add_0|adder_1|nand_7|output~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_add_carry);
END structure;


