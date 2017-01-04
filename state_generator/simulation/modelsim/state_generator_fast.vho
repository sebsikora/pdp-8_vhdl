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

-- DATE "01/04/2017 17:49:35"

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

ENTITY 	t_state_generator IS
    PORT (
	not_reset : IN std_logic;
	clr : IN std_logic;
	next_state : OUT std_logic;
	clk : IN std_logic;
	s_states : IN std_logic_vector(3 DOWNTO 0);
	t_states : OUT std_logic_vector(5 DOWNTO 0)
	);
END t_state_generator;

-- Design Ports Information
-- next_state	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[0]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[1]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[2]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[3]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[4]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[5]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_states[1]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_states[3]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_states[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_states[2]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clr	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF t_state_generator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_next_state : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_s_states : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_t_states : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \or_3|output~1_combout\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \decoder_3_to_6_0|and_3_3|output~0_combout\ : std_logic;
SIGNAL \counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\ : std_logic;
SIGNAL \counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \or_3|output~2_combout\ : std_logic;
SIGNAL \or_3|output~3_combout\ : std_logic;
SIGNAL \counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \decoder_3_to_6_0|and_3_0|output~0_combout\ : std_logic;
SIGNAL \decoder_3_to_6_0|and_3_1|output~0_combout\ : std_logic;
SIGNAL \decoder_3_to_6_0|and_3_2|output~combout\ : std_logic;
SIGNAL \decoder_3_to_6_0|and_3_4|output~0_combout\ : std_logic;
SIGNAL \decoder_3_to_6_0|and_3_5|output~0_combout\ : std_logic;
SIGNAL \s_states~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_not_reset <= not_reset;
ww_clr <= clr;
next_state <= ww_next_state;
ww_clk <= clk;
ww_s_states <= s_states;
t_states <= ww_t_states;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X1_Y6_N12
\counter_3_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ = (\not_reset~combout\ & (!\counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\ & ((\counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\) # (!\clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\,
	datac => \counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N10
\counter_3_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ = (\not_reset~combout\ & (!\counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\ & ((\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # (\counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\,
	datac => \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_s_states(3),
	combout => \s_states~combout\(3));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_s_states(2),
	combout => \s_states~combout\(2));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_s_states(1),
	combout => \s_states~combout\(1));

-- Location: LCCOMB_X1_Y6_N8
\or_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3|output~1_combout\ = (\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\s_states~combout\(3))) # (!\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\s_states~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_states~combout\(3),
	datac => \s_states~combout\(1),
	datad => \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \or_3|output~1_combout\);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr~I\ : cycloneii_io
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
	padio => ww_clr,
	combout => \clr~combout\);

-- Location: LCCOMB_X1_Y6_N30
\counter_3_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\clr~combout\ & (\counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\clr~combout\ & ((\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~combout\,
	datac => \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N16
\counter_3_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\clk~combout\ & ((\or_3|output~3_combout\ & (!\counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\or_3|output~3_combout\ & ((!\counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \or_3|output~3_combout\,
	datad => \clk~combout\,
	combout => \counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N18
\counter_3_0|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\ = (\counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ & (((!\counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\ & 
-- (((\counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\,
	datac => \counter_3_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N6
\counter_3_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \counter_3_0|ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N28
\decoder_3_to_6_0|and_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_3_to_6_0|and_3_3|output~0_combout\ = (!\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \decoder_3_to_6_0|and_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N0
\counter_3_0|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ = (\counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\) # ((\decoder_3_to_6_0|and_3_3|output~0_combout\ & \clk~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datab => \decoder_3_to_6_0|and_3_3|output~0_combout\,
	datad => \clk~combout\,
	combout => \counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N2
\counter_3_0|ms_jk_ff_2|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\ = (!\counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ & (((\or_3|output~3_combout\) # (\clr~combout\)) # (!\counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\,
	datac => \or_3|output~3_combout\,
	datad => \clr~combout\,
	combout => \counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\);

-- Location: LCCOMB_X1_Y6_N20
\counter_3_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \counter_3_0|ms_jk_ff_2|nand_1|output~4_combout\,
	combout => \counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_s_states(0),
	combout => \s_states~combout\(0));

-- Location: LCCOMB_X1_Y6_N26
\or_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3|output~2_combout\ = (\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & ((\s_states~combout\(0)))) # (!\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\s_states~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_states~combout\(2),
	datab => \s_states~combout\(0),
	datad => \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \or_3|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N24
\or_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_3|output~3_combout\ = (\counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (((!\counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \or_3|output~2_combout\)))) # (!\counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\or_3|output~1_combout\ & 
-- (\counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \or_3|output~1_combout\,
	datac => \counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \or_3|output~2_combout\,
	combout => \or_3|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N4
\counter_3_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ = (\clk~combout\ & (((!\clr~combout\ & !\or_3|output~3_combout\)) # (!\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datab => \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \or_3|output~3_combout\,
	datad => \clk~combout\,
	combout => \counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N22
\counter_3_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ = (\counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ & 
-- (((\counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N14
\counter_3_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	combout => \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y11_N16
\decoder_3_to_6_0|and_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_3_to_6_0|and_3_0|output~0_combout\ = (\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \decoder_3_to_6_0|and_3_0|output~0_combout\);

-- Location: LCCOMB_X1_Y11_N2
\decoder_3_to_6_0|and_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_3_to_6_0|and_3_1|output~0_combout\ = (!\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \decoder_3_to_6_0|and_3_1|output~0_combout\);

-- Location: LCCOMB_X1_Y11_N20
\decoder_3_to_6_0|and_3_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_3_to_6_0|and_3_2|output~combout\ = (\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & !\counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \decoder_3_to_6_0|and_3_2|output~combout\);

-- Location: LCCOMB_X1_Y11_N26
\decoder_3_to_6_0|and_3_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_3_to_6_0|and_3_4|output~0_combout\ = (\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \decoder_3_to_6_0|and_3_4|output~0_combout\);

-- Location: LCCOMB_X1_Y11_N12
\decoder_3_to_6_0|and_3_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_3_to_6_0|and_3_5|output~0_combout\ = (!\counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (!\counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \decoder_3_to_6_0|and_3_5|output~0_combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => ww_next_state);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \decoder_3_to_6_0|and_3_0|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(0));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \decoder_3_to_6_0|and_3_1|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(1));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \decoder_3_to_6_0|and_3_2|output~combout\,
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
	datain => \decoder_3_to_6_0|and_3_3|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(3));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \decoder_3_to_6_0|and_3_4|output~0_combout\,
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
	datain => \decoder_3_to_6_0|and_3_5|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(5));
END structure;


