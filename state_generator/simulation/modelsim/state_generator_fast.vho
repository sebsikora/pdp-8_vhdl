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

-- DATE "01/11/2017 21:02:54"

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

ENTITY 	s_state_generator IS
    PORT (
	clk : IN std_logic;
	not_reset : IN std_logic;
	next_state : IN std_logic;
	end_state : IN std_logic;
	load : IN std_logic_vector(1 DOWNTO 0);
	HLT_flag : IN std_logic;
	HLT_indicator : OUT std_logic;
	s_states : OUT std_logic_vector(7 DOWNTO 0)
	);
END s_state_generator;

-- Design Ports Information
-- HLT_indicator	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[0]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[1]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[2]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[3]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[4]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[5]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[6]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[7]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- next_state	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- end_state	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- load[1]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- load[0]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HLT_flag	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF s_state_generator IS
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
SIGNAL ww_next_state : std_logic;
SIGNAL ww_end_state : std_logic;
SIGNAL ww_load : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HLT_flag : std_logic;
SIGNAL ww_HLT_indicator : std_logic;
SIGNAL ww_s_states : std_logic_vector(7 DOWNTO 0);
SIGNAL \ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter|ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter|ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \counter|ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \counter|ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter|ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \counter|ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter|ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \counter|ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \counter|ff_2|nand_1|output~4_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \end_state~combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \HLT_flag~combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \next_state~combout\ : std_logic;
SIGNAL \counter|ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \counter|ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \counter|ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \counter|ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \decoder|and_3_0|output~0_combout\ : std_logic;
SIGNAL \decoder|and_3_1|output~0_combout\ : std_logic;
SIGNAL \decoder|and_3_2|output~0_combout\ : std_logic;
SIGNAL \decoder|and_3_3|output~0_combout\ : std_logic;
SIGNAL \decoder|and_3_4|output~0_combout\ : std_logic;
SIGNAL \decoder|and_3_5|output~0_combout\ : std_logic;
SIGNAL \decoder|and_3_6|output~0_combout\ : std_logic;
SIGNAL \decoder|and_3_7|output~combout\ : std_logic;
SIGNAL \load~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \decoder|and_3_7|ALT_INV_output~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_not_reset <= not_reset;
ww_next_state <= next_state;
ww_end_state <= end_state;
ww_load <= load;
ww_HLT_flag <= HLT_flag;
HLT_indicator <= ww_HLT_indicator;
s_states <= ww_s_states;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_1|nand_5|output~1_combout\;
\decoder|and_3_7|ALT_INV_output~combout\ <= NOT \decoder|and_3_7|output~combout\;

-- Location: LCCOMB_X26_Y1_N14
\ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~1_combout\ = (\not_reset~combout\ & !\ms_jk_ff_1|nand_1|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y1_N8
\counter|ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|ff_1|nand_1|output~1_combout\ = (\counter|ff_1|nand_5|output~1_combout\ & (!\load~combout\(1) & ((\end_state~combout\) # (\counter|ff_0|nand_5|output~1_combout\)))) # (!\counter|ff_1|nand_5|output~1_combout\ & (!\end_state~combout\ & 
-- ((\counter|ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|ff_1|nand_5|output~1_combout\,
	datab => \end_state~combout\,
	datac => \load~combout\(1),
	datad => \counter|ff_0|nand_5|output~1_combout\,
	combout => \counter|ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y1_N2
\counter|ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|ff_1|nand_1|output~2_combout\ = (\next_state~combout\ & (!\counter|ff_1|nand_1|output~1_combout\ & \clk~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~combout\,
	datab => \counter|ff_1|nand_1|output~1_combout\,
	datac => \clk~combout\,
	combout => \counter|ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y1_N24
\counter|ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|ff_1|nand_1|output~3_combout\ = (\counter|ff_1|nand_1|output~2_combout\ & (((!\counter|ff_1|nand_5|output~1_combout\)))) # (!\counter|ff_1|nand_1|output~2_combout\ & ((\counter|ff_1|nand_1|output~3_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|ff_1|nand_1|output~3_combout\,
	datab => \not_reset~combout\,
	datac => \counter|ff_1|nand_5|output~1_combout\,
	datad => \counter|ff_1|nand_1|output~2_combout\,
	combout => \counter|ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X27_Y1_N6
\counter|ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|ff_0|nand_1|output~1_combout\ = (\end_state~combout\ & ((!\load~combout\(0)) # (!\load~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~combout\(1),
	datac => \load~combout\(0),
	datad => \end_state~combout\,
	combout => \counter|ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y1_N16
\counter|ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|ff_0|nand_1|output~2_combout\ = (\next_state~combout\ & (\clk~combout\ & ((!\counter|ff_0|nand_5|output~1_combout\) # (!\counter|ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~combout\,
	datab => \counter|ff_0|nand_1|output~1_combout\,
	datac => \counter|ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \counter|ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y1_N0
\counter|ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|ff_2|nand_1|output~1_combout\ = (\counter|ff_0|nand_5|output~1_combout\) # (\counter|ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|ff_0|nand_5|output~1_combout\,
	datad => \counter|ff_1|nand_5|output~1_combout\,
	combout => \counter|ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X27_Y1_N14
\counter|ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|ff_2|nand_1|output~2_combout\ = (\end_state~combout\ & (((\counter|ff_2|nand_5|output~1_combout\)))) # (!\end_state~combout\ & (\counter|ff_2|nand_1|output~1_combout\ & ((\counter|ff_2|nand_5|output~1_combout\) # (!\load~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~combout\(1),
	datab => \end_state~combout\,
	datac => \counter|ff_2|nand_5|output~1_combout\,
	datad => \counter|ff_2|nand_1|output~1_combout\,
	combout => \counter|ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y1_N20
\counter|ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|ff_2|nand_1|output~3_combout\ = (\clk~combout\ & (!\counter|ff_2|nand_1|output~2_combout\ & \next_state~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk~combout\,
	datac => \counter|ff_2|nand_1|output~2_combout\,
	datad => \next_state~combout\,
	combout => \counter|ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X27_Y1_N10
\counter|ff_2|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|ff_2|nand_1|output~4_combout\ = (\counter|ff_2|nand_1|output~3_combout\ & (((!\counter|ff_2|nand_5|output~1_combout\)))) # (!\counter|ff_2|nand_1|output~3_combout\ & ((\counter|ff_2|nand_1|output~4_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|ff_2|nand_1|output~4_combout\,
	datab => \counter|ff_2|nand_5|output~1_combout\,
	datac => \counter|ff_2|nand_1|output~3_combout\,
	datad => \not_reset~combout\,
	combout => \counter|ff_2|nand_1|output~4_combout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\load[1]~I\ : cycloneii_io
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
	padio => ww_load(1),
	combout => \load~combout\(1));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\load[0]~I\ : cycloneii_io
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
	padio => ww_load(0),
	combout => \load~combout\(0));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\end_state~I\ : cycloneii_io
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
	padio => ww_end_state,
	combout => \end_state~combout\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\HLT_flag~I\ : cycloneii_io
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
	padio => ww_HLT_flag,
	combout => \HLT_flag~combout\);

-- Location: LCCOMB_X26_Y1_N28
\ms_jk_ff_0|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_3_1|output~0_combout\ = (\HLT_flag~combout\ & (\ms_jk_ff_0|nand_5|output~1_combout\ & \clk~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HLT_flag~combout\,
	datac => \ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_0|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X26_Y1_N30
\ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_1|output~1_combout\ = (!\ms_jk_ff_0|nand_3_1|output~0_combout\ & ((\ms_jk_ff_0|nand_1|output~1_combout\) # ((\ms_jk_ff_1|nand_3_1|output~0_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \ms_jk_ff_1|nand_3_1|output~0_combout\,
	datad => \ms_jk_ff_0|nand_3_1|output~0_combout\,
	combout => \ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X26_Y1_N20
\ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_0|nand_5|output~1_combout\ = (\clk~combout\ & (\ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk~combout\ & ((\ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X26_Y1_N16
\ms_jk_ff_1|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_3_1|output~0_combout\ = (\end_state~combout\ & (!\ms_jk_ff_0|nand_5|output~1_combout\ & \clk~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \end_state~combout\,
	datac => \ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \ms_jk_ff_1|nand_3_1|output~0_combout\);

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\next_state~I\ : cycloneii_io
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
	padio => ww_next_state,
	combout => \next_state~combout\);

-- Location: LCCOMB_X27_Y1_N30
\counter|ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|ff_1|nand_5|output~1_combout\ = (\next_state~combout\ & ((\clk~combout\ & ((\counter|ff_1|nand_5|output~1_combout\))) # (!\clk~combout\ & (\counter|ff_1|nand_1|output~3_combout\)))) # (!\next_state~combout\ & 
-- (\counter|ff_1|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|ff_1|nand_1|output~3_combout\,
	datab => \next_state~combout\,
	datac => \counter|ff_1|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \counter|ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y1_N18
\counter|ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|ff_2|nand_5|output~1_combout\ = (\clk~combout\ & ((\next_state~combout\ & ((\counter|ff_2|nand_5|output~1_combout\))) # (!\next_state~combout\ & (\counter|ff_2|nand_1|output~4_combout\)))) # (!\clk~combout\ & 
-- (\counter|ff_2|nand_1|output~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|ff_2|nand_1|output~4_combout\,
	datab => \counter|ff_2|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \next_state~combout\,
	combout => \counter|ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y1_N12
\ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~2_combout\ = (((!\counter|ff_2|nand_5|output~1_combout\) # (!\clk~combout\)) # (!\counter|ff_1|nand_5|output~1_combout\)) # (!\counter|ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|ff_0|nand_5|output~1_combout\,
	datab => \counter|ff_1|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \counter|ff_2|nand_5|output~1_combout\,
	combout => \ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X27_Y1_N22
\ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_1|output~3_combout\ = (\ms_jk_ff_1|nand_1|output~1_combout\ & (((!\ms_jk_ff_1|nand_5|output~1_combout\ & !\ms_jk_ff_1|nand_1|output~2_combout\)))) # (!\ms_jk_ff_1|nand_1|output~1_combout\ & (((!\ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\ms_jk_ff_1|nand_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \ms_jk_ff_1|nand_3_1|output~0_combout\,
	datac => \ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X27_Y1_N4
\ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_5|output~1_combout\ = (\clk~combout\ & (\ms_jk_ff_1|nand_5|output~1_combout\)) # (!\clk~combout\ & ((\ms_jk_ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X27_Y1_N26
\counter|ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|ff_0|nand_1|output~3_combout\ = (\counter|ff_0|nand_1|output~2_combout\ & (((!\counter|ff_0|nand_5|output~1_combout\)))) # (!\counter|ff_0|nand_1|output~2_combout\ & (((\counter|ff_0|nand_1|output~3_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|ff_0|nand_1|output~2_combout\,
	datab => \not_reset~combout\,
	datac => \counter|ff_0|nand_5|output~1_combout\,
	datad => \counter|ff_0|nand_1|output~3_combout\,
	combout => \counter|ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X27_Y1_N28
\counter|ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|ff_0|nand_5|output~1_combout\ = (\next_state~combout\ & ((\clk~combout\ & ((\counter|ff_0|nand_5|output~1_combout\))) # (!\clk~combout\ & (\counter|ff_0|nand_1|output~3_combout\)))) # (!\next_state~combout\ & 
-- (\counter|ff_0|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~combout\,
	datab => \counter|ff_0|nand_1|output~3_combout\,
	datac => \counter|ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \counter|ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X15_Y1_N20
\decoder|and_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|and_3_0|output~0_combout\ = (\counter|ff_0|nand_5|output~1_combout\ & (\counter|ff_2|nand_5|output~1_combout\ & \counter|ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|ff_0|nand_5|output~1_combout\,
	datac => \counter|ff_2|nand_5|output~1_combout\,
	datad => \counter|ff_1|nand_5|output~1_combout\,
	combout => \decoder|and_3_0|output~0_combout\);

-- Location: LCCOMB_X15_Y1_N10
\decoder|and_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|and_3_1|output~0_combout\ = (!\counter|ff_0|nand_5|output~1_combout\ & (\counter|ff_2|nand_5|output~1_combout\ & \counter|ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|ff_0|nand_5|output~1_combout\,
	datac => \counter|ff_2|nand_5|output~1_combout\,
	datad => \counter|ff_1|nand_5|output~1_combout\,
	combout => \decoder|and_3_1|output~0_combout\);

-- Location: LCCOMB_X15_Y1_N28
\decoder|and_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|and_3_2|output~0_combout\ = (\counter|ff_0|nand_5|output~1_combout\ & (\counter|ff_2|nand_5|output~1_combout\ & !\counter|ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|ff_0|nand_5|output~1_combout\,
	datac => \counter|ff_2|nand_5|output~1_combout\,
	datad => \counter|ff_1|nand_5|output~1_combout\,
	combout => \decoder|and_3_2|output~0_combout\);

-- Location: LCCOMB_X15_Y1_N22
\decoder|and_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|and_3_3|output~0_combout\ = (!\counter|ff_0|nand_5|output~1_combout\ & (\counter|ff_2|nand_5|output~1_combout\ & !\counter|ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|ff_0|nand_5|output~1_combout\,
	datac => \counter|ff_2|nand_5|output~1_combout\,
	datad => \counter|ff_1|nand_5|output~1_combout\,
	combout => \decoder|and_3_3|output~0_combout\);

-- Location: LCCOMB_X15_Y1_N16
\decoder|and_3_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|and_3_4|output~0_combout\ = (\counter|ff_0|nand_5|output~1_combout\ & (!\counter|ff_2|nand_5|output~1_combout\ & \counter|ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|ff_0|nand_5|output~1_combout\,
	datac => \counter|ff_2|nand_5|output~1_combout\,
	datad => \counter|ff_1|nand_5|output~1_combout\,
	combout => \decoder|and_3_4|output~0_combout\);

-- Location: LCCOMB_X15_Y1_N2
\decoder|and_3_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|and_3_5|output~0_combout\ = (!\counter|ff_0|nand_5|output~1_combout\ & (!\counter|ff_2|nand_5|output~1_combout\ & \counter|ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|ff_0|nand_5|output~1_combout\,
	datac => \counter|ff_2|nand_5|output~1_combout\,
	datad => \counter|ff_1|nand_5|output~1_combout\,
	combout => \decoder|and_3_5|output~0_combout\);

-- Location: LCCOMB_X15_Y1_N12
\decoder|and_3_6|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|and_3_6|output~0_combout\ = (\counter|ff_0|nand_5|output~1_combout\ & (!\counter|ff_2|nand_5|output~1_combout\ & !\counter|ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|ff_0|nand_5|output~1_combout\,
	datac => \counter|ff_2|nand_5|output~1_combout\,
	datad => \counter|ff_1|nand_5|output~1_combout\,
	combout => \decoder|and_3_6|output~0_combout\);

-- Location: LCCOMB_X15_Y1_N18
\decoder|and_3_7|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|and_3_7|output~combout\ = (\counter|ff_0|nand_5|output~1_combout\) # ((\counter|ff_2|nand_5|output~1_combout\) # (\counter|ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|ff_0|nand_5|output~1_combout\,
	datac => \counter|ff_2|nand_5|output~1_combout\,
	datad => \counter|ff_1|nand_5|output~1_combout\,
	combout => \decoder|and_3_7|output~combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HLT_indicator);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \decoder|and_3_0|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(0));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \decoder|and_3_1|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \decoder|and_3_2|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(2));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \decoder|and_3_3|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(3));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_states[4]~I\ : cycloneii_io
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
	datain => \decoder|and_3_4|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(4));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_states[5]~I\ : cycloneii_io
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
	datain => \decoder|and_3_5|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(5));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_states[6]~I\ : cycloneii_io
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
	datain => \decoder|and_3_6|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(6));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_states[7]~I\ : cycloneii_io
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
	datain => \decoder|and_3_7|ALT_INV_output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(7));
END structure;


