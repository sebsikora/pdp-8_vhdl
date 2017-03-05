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

-- DATE "03/05/2017 13:58:46"

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

ENTITY 	tty_input_state_gen_3 IS
    PORT (
	RX : IN std_logic;
	clk : IN std_logic;
	CLR_RX_FLAG : IN std_logic;
	not_reset : IN std_logic;
	SLOW_CLK : OUT std_logic;
	SLOW_CLK_run : OUT std_logic;
	RX_FLAG : OUT std_logic;
	SR_CLK : OUT std_logic;
	clr_ctrl : OUT std_logic;
	tick_ctrl : OUT std_logic;
	half_tick_ctrl : OUT std_logic;
	end_ctrl : OUT std_logic
	);
END tty_input_state_gen_3;

-- Design Ports Information
-- SLOW_CLK	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SLOW_CLK_run	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RX_FLAG	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SR_CLK	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clr_ctrl	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tick_ctrl	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- half_tick_ctrl	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- end_ctrl	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLR_RX_FLAG	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RX	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF tty_input_state_gen_3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RX : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_CLR_RX_FLAG : std_logic;
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_SLOW_CLK : std_logic;
SIGNAL ww_SLOW_CLK_run : std_logic;
SIGNAL ww_RX_FLAG : std_logic;
SIGNAL ww_SR_CLK : std_logic;
SIGNAL ww_clr_ctrl : std_logic;
SIGNAL ww_tick_ctrl : std_logic;
SIGNAL ww_half_tick_ctrl : std_logic;
SIGNAL ww_end_ctrl : std_logic;
SIGNAL \not_reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \latch_unit_0|ms_jk_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~3_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~4_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|and_0|output~0_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_0|nand_6|output~1_combout\ : std_logic;
SIGNAL \latch_unit_0|or_0|output~combout\ : std_logic;
SIGNAL \RX~combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \logic_unit_0|and_2|output~combout\ : std_logic;
SIGNAL \logic_unit_0|or_0|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~3_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \logic_unit_0|and_0|output~0_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_1|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \logic_unit_0|and_4|output~1_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_1|nand_3_2|output~0_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_1|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_1|nand_6|output~1_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_0|nand_3_2|output~0_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_0|nand_3_2|output~1_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \clock_divider|prescaler~0_combout\ : std_logic;
SIGNAL \not_reset~clkctrl_outclk\ : std_logic;
SIGNAL \clock_divider|prescaler~1_combout\ : std_logic;
SIGNAL \clock_divider|clk_out_int~0_combout\ : std_logic;
SIGNAL \clock_divider|clk_out_int~regout\ : std_logic;
SIGNAL \CLR_RX_FLAG~combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_2|nand_6|output~1_combout\ : std_logic;
SIGNAL \latch_unit_0|or_2|output~combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_2|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \logic_unit_0|and_4|output~combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_2|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \logic_unit_0|and_5|output~0_combout\ : std_logic;
SIGNAL \clock_divider|prescaler\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_not_reset~clkctrl_outclk\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_0|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \logic_unit_0|and_2|ALT_INV_output~combout\ : std_logic;

BEGIN

ww_RX <= RX;
ww_clk <= clk;
ww_CLR_RX_FLAG <= CLR_RX_FLAG;
ww_not_reset <= not_reset;
SLOW_CLK <= ww_SLOW_CLK;
SLOW_CLK_run <= ww_SLOW_CLK_run;
RX_FLAG <= ww_RX_FLAG;
SR_CLK <= ww_SR_CLK;
clr_ctrl <= ww_clr_ctrl;
tick_ctrl <= ww_tick_ctrl;
half_tick_ctrl <= ww_half_tick_ctrl;
end_ctrl <= ww_end_ctrl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\not_reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \not_reset~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;
\ALT_INV_not_reset~clkctrl_outclk\ <= NOT \not_reset~clkctrl_outclk\;
\latch_unit_0|ms_jk_0|nand_5|ALT_INV_output~1_combout\ <= NOT \latch_unit_0|ms_jk_0|nand_5|output~1_combout\;
\logic_unit_0|and_2|ALT_INV_output~combout\ <= NOT \logic_unit_0|and_2|output~combout\;

-- Location: LCCOMB_X1_Y6_N22
\latch_unit_0|ms_jk_0|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_0|nand_3_3|output~1_combout\ = (\latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\) # ((!\RX~combout\ & (\latch_unit_0|or_0|output~combout\ & !\latch_unit_0|ms_jk_0|nand_6|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~combout\,
	datab => \latch_unit_0|or_0|output~combout\,
	datac => \latch_unit_0|ms_jk_0|nand_6|output~1_combout\,
	datad => \latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\,
	combout => \latch_unit_0|ms_jk_0|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N16
\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\ = (\counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\) # ((!\counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\ & ((\counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (\counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N0
\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~2_combout\ = (\clock_divider|clk_out_int~regout\ & (!\logic_unit_0|and_2|output~combout\ & ((\logic_unit_0|and_4|output~1_combout\) # (!\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit_0|and_4|output~1_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \clock_divider|clk_out_int~regout\,
	datad => \logic_unit_0|and_2|output~combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y5_N18
\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~3_combout\ = (\counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\ & (((!\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\ & 
-- \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\)))) # (!\counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\ & (\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~2_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~3_combout\);

-- Location: LCCOMB_X3_Y5_N10
\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~4_combout\ = (\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~3_combout\ & (!\counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~3_combout\ & 
-- (((\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~4_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~3_combout\,
	datac => \not_reset~combout\,
	datad => \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~4_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~4_combout\);

-- Location: LCCOMB_X2_Y5_N24
\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~1_combout\ = (\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\) # ((\counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N14
\counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~0_combout\ = (!\counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\ & \clock_divider|clk_out_int~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clock_divider|clk_out_int~regout\,
	combout => \counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X2_Y5_N16
\counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\ = (\counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\ & (!\counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\ & (((\counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y5_N22
\counter_unit_0|and_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|and_0|output~0_combout\ = (\clock_divider|clk_out_int~regout\ & !\logic_unit_0|and_2|output~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|clk_out_int~regout\,
	datad => \logic_unit_0|and_2|output~combout\,
	combout => \counter_unit_0|and_0|output~0_combout\);

-- Location: LCCOMB_X2_Y5_N26
\counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\ = (\counter_unit_0|and_0|output~0_combout\ & (((!\counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\counter_unit_0|and_0|output~0_combout\ & 
-- ((\counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \counter_unit_0|and_0|output~0_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\);

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

-- Location: LCCOMB_X1_Y6_N16
\latch_unit_0|ms_jk_0|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_0|nand_6|output~1_combout\ = (!\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & ((\latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\) # (\latch_unit_0|or_0|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\,
	datac => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	datad => \latch_unit_0|or_0|output~combout\,
	combout => \latch_unit_0|ms_jk_0|nand_6|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N0
\latch_unit_0|or_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|or_0|output~combout\ = (\clock_divider|clk_out_int~regout\ & (((!\latch_unit_0|ms_jk_0|nand_6|output~1_combout\ & \clk~combout\)) # (!\latch_unit_0|ms_jk_0|nand_5|output~1_combout\))) # (!\clock_divider|clk_out_int~regout\ & 
-- (((!\latch_unit_0|ms_jk_0|nand_6|output~1_combout\ & \clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|clk_out_int~regout\,
	datab => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	datac => \latch_unit_0|ms_jk_0|nand_6|output~1_combout\,
	datad => \clk~combout\,
	combout => \latch_unit_0|or_0|output~combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RX~I\ : cycloneii_io
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
	padio => ww_RX,
	combout => \RX~combout\);

-- Location: LCCOMB_X3_Y5_N8
\counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~1_combout\ = (!\counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~2_combout\ & (\not_reset~combout\ & ((\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\clock_divider|clk_out_int~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|clk_out_int~regout\,
	datab => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \not_reset~combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N20
\counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~2_combout\ = (!\counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~1_combout\ & (((\latch_unit_0|ms_jk_0|nand_5|output~1_combout\) # (!\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\)) 
-- # (!\clock_divider|clk_out_int~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|clk_out_int~regout\,
	datab => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y5_N30
\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\ = (\clock_divider|clk_out_int~regout\ & (\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clock_divider|clk_out_int~regout\ & 
-- ((\counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \clock_divider|clk_out_int~regout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N12
\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~1_combout\ = (\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\) # (\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N26
\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~2_combout\ = (\clock_divider|clk_out_int~regout\ & ((\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & (!\counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & ((!\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|clk_out_int~regout\,
	datab => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y5_N4
\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3_combout\ = (\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~2_combout\ & (((!\counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\)))) # 
-- (!\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~2_combout\ & (((\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3_combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X3_Y5_N14
\counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\ = (\clock_divider|clk_out_int~regout\ & (\counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\clock_divider|clk_out_int~regout\ & 
-- ((\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3_combout\,
	datad => \clock_divider|clk_out_int~regout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N18
\counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~1_combout\ = (\clock_divider|clk_out_int~regout\ & ((\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & (!\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & ((!\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \clock_divider|clk_out_int~regout\,
	datac => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N16
\counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2_combout\ = (\counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~1_combout\ & (!\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\)) # 
-- (!\counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~1_combout\ & (((\counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y5_N6
\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\ = (\clock_divider|clk_out_int~regout\ & (\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\clock_divider|clk_out_int~regout\ & 
-- ((\counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \clock_divider|clk_out_int~regout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y5_N4
\logic_unit_0|and_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \logic_unit_0|and_2|output~combout\ = (\counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\) # ((\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\) # ((\counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \logic_unit_0|and_2|output~combout\);

-- Location: LCCOMB_X2_Y5_N20
\logic_unit_0|or_0|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \logic_unit_0|or_0|output~1_combout\ = ((\latch_unit_0|ms_jk_0|nand_5|output~1_combout\) # ((!\latch_unit_0|ms_jk_1|nand_6|output~1_combout\ & \logic_unit_0|and_0|output~0_combout\))) # (!\logic_unit_0|and_2|output~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|ms_jk_1|nand_6|output~1_combout\,
	datab => \logic_unit_0|and_0|output~0_combout\,
	datac => \logic_unit_0|and_2|output~combout\,
	datad => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	combout => \logic_unit_0|or_0|output~1_combout\);

-- Location: LCCOMB_X2_Y5_N6
\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~2_combout\ = (\clock_divider|clk_out_int~regout\ & ((\logic_unit_0|or_0|output~1_combout\ & ((!\counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\logic_unit_0|or_0|output~1_combout\ 
-- & (!\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datab => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \logic_unit_0|or_0|output~1_combout\,
	datad => \clock_divider|clk_out_int~regout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y5_N28
\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~3_combout\ = (\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~2_combout\ & (((\logic_unit_0|or_0|output~1_combout\)))) # (!\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~2_combout\ & 
-- ((\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~3_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~3_combout\,
	datab => \not_reset~combout\,
	datac => \logic_unit_0|or_0|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~3_combout\);

-- Location: LCCOMB_X2_Y5_N8
\counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\ = (\clock_divider|clk_out_int~regout\ & (\counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\clock_divider|clk_out_int~regout\ & 
-- ((\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \clock_divider|clk_out_int~regout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~3_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N28
\logic_unit_0|and_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \logic_unit_0|and_0|output~0_combout\ = (!\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\ & (\counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\ & (!\counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \logic_unit_0|and_0|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N24
\latch_unit_0|ms_jk_1|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_1|nand_3_3|output~1_combout\ = (!\RX~combout\ & (!\latch_unit_0|ms_jk_1|nand_6|output~1_combout\ & (\clock_divider|clk_out_int~regout\ & \logic_unit_0|and_0|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~combout\,
	datab => \latch_unit_0|ms_jk_1|nand_6|output~1_combout\,
	datac => \clock_divider|clk_out_int~regout\,
	datad => \logic_unit_0|and_0|output~0_combout\,
	combout => \latch_unit_0|ms_jk_1|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X2_Y5_N10
\counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\ = (\logic_unit_0|and_2|output~combout\ & (\counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\)) # (!\logic_unit_0|and_2|output~combout\ & ((\clock_divider|clk_out_int~regout\ & 
-- ((\counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\clock_divider|clk_out_int~regout\ & (\counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \logic_unit_0|and_2|output~combout\,
	datad => \clock_divider|clk_out_int~regout\,
	combout => \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y5_N12
\counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\ = (\clock_divider|clk_out_int~regout\ & (!\logic_unit_0|and_2|output~combout\ & (!\counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- !\counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|clk_out_int~regout\,
	datab => \logic_unit_0|and_2|output~combout\,
	datac => \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X1_Y5_N18
\counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~1_combout\ = (\counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~0_combout\ & (!\logic_unit_0|and_2|output~combout\ & (\counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- !\logic_unit_0|and_4|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~0_combout\,
	datab => \logic_unit_0|and_2|output~combout\,
	datac => \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \logic_unit_0|and_4|output~1_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N6
\counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\ = (!\counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~1_combout\ & (((\counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\) # 
-- (\counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	datad => \counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~1_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N30
\counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\ = (\logic_unit_0|and_2|output~combout\ & (((\counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\)))) # (!\logic_unit_0|and_2|output~combout\ & ((\clock_divider|clk_out_int~regout\ & 
-- (\counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\clock_divider|clk_out_int~regout\ & ((\counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit_0|and_2|output~combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clock_divider|clk_out_int~regout\,
	datad => \counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N10
\counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\ = (\clock_divider|clk_out_int~regout\ & ((\logic_unit_0|and_2|output~combout\ & (\counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\)) # (!\logic_unit_0|and_2|output~combout\ & 
-- ((\counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\))))) # (!\clock_divider|clk_out_int~regout\ & (\counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \clock_divider|clk_out_int~regout\,
	datad => \logic_unit_0|and_2|output~combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N28
\logic_unit_0|and_4|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \logic_unit_0|and_4|output~1_combout\ = (!\counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\ & (\counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\ & (!\counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \logic_unit_0|and_4|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N2
\latch_unit_0|ms_jk_1|nand_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_1|nand_3_2|output~0_combout\ = (\clock_divider|clk_out_int~regout\ & (\latch_unit_0|ms_jk_1|nand_6|output~1_combout\ & (!\logic_unit_0|and_2|output~combout\ & \logic_unit_0|and_4|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|clk_out_int~regout\,
	datab => \latch_unit_0|ms_jk_1|nand_6|output~1_combout\,
	datac => \logic_unit_0|and_2|output~combout\,
	datad => \logic_unit_0|and_4|output~1_combout\,
	combout => \latch_unit_0|ms_jk_1|nand_3_2|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N28
\latch_unit_0|ms_jk_1|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_1|nand_3_3|output~2_combout\ = (\not_reset~combout\ & (!\latch_unit_0|ms_jk_1|nand_3_2|output~0_combout\ & ((\latch_unit_0|ms_jk_1|nand_3_3|output~2_combout\) # (\latch_unit_0|ms_jk_1|nand_3_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \latch_unit_0|ms_jk_1|nand_3_3|output~2_combout\,
	datac => \latch_unit_0|ms_jk_1|nand_3_3|output~1_combout\,
	datad => \latch_unit_0|ms_jk_1|nand_3_2|output~0_combout\,
	combout => \latch_unit_0|ms_jk_1|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N26
\latch_unit_0|ms_jk_1|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_1|nand_6|output~1_combout\ = (\clock_divider|clk_out_int~regout\ & (\latch_unit_0|ms_jk_1|nand_6|output~1_combout\)) # (!\clock_divider|clk_out_int~regout\ & ((\latch_unit_0|ms_jk_1|nand_3_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|clk_out_int~regout\,
	datab => \latch_unit_0|ms_jk_1|nand_6|output~1_combout\,
	datad => \latch_unit_0|ms_jk_1|nand_3_3|output~2_combout\,
	combout => \latch_unit_0|ms_jk_1|nand_6|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N20
\latch_unit_0|ms_jk_0|nand_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_0|nand_3_2|output~0_combout\ = (\RX~combout\ & !\latch_unit_0|ms_jk_1|nand_6|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX~combout\,
	datad => \latch_unit_0|ms_jk_1|nand_6|output~1_combout\,
	combout => \latch_unit_0|ms_jk_0|nand_3_2|output~0_combout\);

-- Location: LCCOMB_X1_Y5_N8
\latch_unit_0|ms_jk_0|nand_3_2|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_0|nand_3_2|output~1_combout\ = (\latch_unit_0|or_0|output~combout\ & ((\latch_unit_0|ms_jk_0|nand_3_2|output~0_combout\) # ((!\logic_unit_0|and_2|output~combout\ & \logic_unit_0|and_4|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit_0|and_2|output~combout\,
	datab => \latch_unit_0|or_0|output~combout\,
	datac => \latch_unit_0|ms_jk_0|nand_3_2|output~0_combout\,
	datad => \logic_unit_0|and_4|output~1_combout\,
	combout => \latch_unit_0|ms_jk_0|nand_3_2|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N10
\latch_unit_0|ms_jk_0|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\ = (\latch_unit_0|ms_jk_0|nand_3_3|output~1_combout\ & (\not_reset~combout\ & ((\latch_unit_0|ms_jk_0|nand_5|output~1_combout\) # (!\latch_unit_0|ms_jk_0|nand_3_2|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|ms_jk_0|nand_3_3|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	datad => \latch_unit_0|ms_jk_0|nand_3_2|output~1_combout\,
	combout => \latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X2_Y5_N30
\latch_unit_0|ms_jk_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_0|nand_5|output~1_combout\ = (!\latch_unit_0|ms_jk_0|nand_6|output~1_combout\ & ((\latch_unit_0|or_0|output~combout\) # (!\latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|or_0|output~combout\,
	datab => \latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\,
	datad => \latch_unit_0|ms_jk_0|nand_6|output~1_combout\,
	combout => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y5_N2
\clock_divider|prescaler~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler~0_combout\ = (!\clock_divider|prescaler\(0) & !\latch_unit_0|ms_jk_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|prescaler\(0),
	datad => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	combout => \clock_divider|prescaler~0_combout\);

-- Location: CLKCTRL_G1
\not_reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \not_reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \not_reset~clkctrl_outclk\);

-- Location: LCFF_X2_Y5_N3
\clock_divider|prescaler[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \clock_divider|prescaler~0_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(0));

-- Location: LCCOMB_X2_Y5_N0
\clock_divider|prescaler~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler~1_combout\ = (!\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & (\clock_divider|prescaler\(0) $ (\clock_divider|prescaler\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|prescaler\(0),
	datac => \clock_divider|prescaler\(1),
	datad => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	combout => \clock_divider|prescaler~1_combout\);

-- Location: LCFF_X2_Y5_N1
\clock_divider|prescaler[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \clock_divider|prescaler~1_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(1));

-- Location: LCCOMB_X2_Y5_N14
\clock_divider|clk_out_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|clk_out_int~0_combout\ = (!\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & (\clock_divider|clk_out_int~regout\ $ (((\clock_divider|prescaler\(0) & \clock_divider|prescaler\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|prescaler\(0),
	datab => \clock_divider|prescaler\(1),
	datac => \clock_divider|clk_out_int~regout\,
	datad => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	combout => \clock_divider|clk_out_int~0_combout\);

-- Location: LCFF_X2_Y5_N15
\clock_divider|clk_out_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \clock_divider|clk_out_int~0_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|clk_out_int~regout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLR_RX_FLAG~I\ : cycloneii_io
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
	padio => ww_CLR_RX_FLAG,
	combout => \CLR_RX_FLAG~combout\);

-- Location: LCCOMB_X1_Y5_N2
\latch_unit_0|ms_jk_2|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_2|nand_6|output~1_combout\ = (\latch_unit_0|or_2|output~combout\ & (\latch_unit_0|ms_jk_2|nand_6|output~1_combout\)) # (!\latch_unit_0|or_2|output~combout\ & ((\latch_unit_0|ms_jk_2|nand_3_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \latch_unit_0|ms_jk_2|nand_6|output~1_combout\,
	datac => \latch_unit_0|or_2|output~combout\,
	datad => \latch_unit_0|ms_jk_2|nand_3_3|output~2_combout\,
	combout => \latch_unit_0|ms_jk_2|nand_6|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N4
\latch_unit_0|or_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|or_2|output~combout\ = (\latch_unit_0|ms_jk_2|nand_5|output~1_combout\ & ((\clk~combout\) # ((!\latch_unit_0|ms_jk_2|nand_6|output~1_combout\ & \clock_divider|clk_out_int~regout\)))) # (!\latch_unit_0|ms_jk_2|nand_5|output~1_combout\ & 
-- (!\latch_unit_0|ms_jk_2|nand_6|output~1_combout\ & (\clock_divider|clk_out_int~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|ms_jk_2|nand_5|output~1_combout\,
	datab => \latch_unit_0|ms_jk_2|nand_6|output~1_combout\,
	datac => \clock_divider|clk_out_int~regout\,
	datad => \clk~combout\,
	combout => \latch_unit_0|or_2|output~combout\);

-- Location: LCCOMB_X1_Y5_N24
\latch_unit_0|ms_jk_2|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_2|nand_3_3|output~1_combout\ = (\latch_unit_0|or_2|output~combout\ & ((\latch_unit_0|ms_jk_2|nand_3_3|output~2_combout\ & (\CLR_RX_FLAG~combout\ & \latch_unit_0|ms_jk_2|nand_6|output~1_combout\)) # 
-- (!\latch_unit_0|ms_jk_2|nand_3_3|output~2_combout\ & ((!\latch_unit_0|ms_jk_2|nand_6|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|ms_jk_2|nand_3_3|output~2_combout\,
	datab => \CLR_RX_FLAG~combout\,
	datac => \latch_unit_0|or_2|output~combout\,
	datad => \latch_unit_0|ms_jk_2|nand_6|output~1_combout\,
	combout => \latch_unit_0|ms_jk_2|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N26
\logic_unit_0|and_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \logic_unit_0|and_4|output~combout\ = (\logic_unit_0|and_4|output~1_combout\ & !\logic_unit_0|and_2|output~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \logic_unit_0|and_4|output~1_combout\,
	datad => \logic_unit_0|and_2|output~combout\,
	combout => \logic_unit_0|and_4|output~combout\);

-- Location: LCCOMB_X1_Y5_N22
\latch_unit_0|ms_jk_2|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_2|nand_3_3|output~2_combout\ = (\not_reset~combout\ & ((\latch_unit_0|ms_jk_2|nand_3_3|output~2_combout\ & (!\latch_unit_0|ms_jk_2|nand_3_3|output~1_combout\)) # (!\latch_unit_0|ms_jk_2|nand_3_3|output~2_combout\ & 
-- (\latch_unit_0|ms_jk_2|nand_3_3|output~1_combout\ & \logic_unit_0|and_4|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|ms_jk_2|nand_3_3|output~2_combout\,
	datab => \latch_unit_0|ms_jk_2|nand_3_3|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \logic_unit_0|and_4|output~combout\,
	combout => \latch_unit_0|ms_jk_2|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X1_Y5_N20
\latch_unit_0|ms_jk_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_2|nand_5|output~1_combout\ = (\latch_unit_0|ms_jk_2|nand_6|output~1_combout\) # ((\latch_unit_0|ms_jk_2|nand_3_3|output~2_combout\ & !\latch_unit_0|or_2|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|ms_jk_2|nand_3_3|output~2_combout\,
	datac => \latch_unit_0|or_2|output~combout\,
	datad => \latch_unit_0|ms_jk_2|nand_6|output~1_combout\,
	combout => \latch_unit_0|ms_jk_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y5_N24
\counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\ = (\logic_unit_0|and_2|output~combout\ & (\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~4_combout\)) # (!\logic_unit_0|and_2|output~combout\ & ((\clock_divider|clk_out_int~regout\ & 
-- ((\counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\))) # (!\clock_divider|clk_out_int~regout\ & (\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~4_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \logic_unit_0|and_2|output~combout\,
	datad => \clock_divider|clk_out_int~regout\,
	combout => \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y5_N12
\logic_unit_0|and_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \logic_unit_0|and_5|output~0_combout\ = (!\logic_unit_0|and_2|output~combout\ & (\clock_divider|clk_out_int~regout\ & \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit_0|and_2|output~combout\,
	datac => \clock_divider|clk_out_int~regout\,
	datad => \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \logic_unit_0|and_5|output~0_combout\);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SLOW_CLK~I\ : cycloneii_io
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
	datain => \clock_divider|clk_out_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SLOW_CLK);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SLOW_CLK_run~I\ : cycloneii_io
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
	datain => \latch_unit_0|ms_jk_0|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SLOW_CLK_run);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RX_FLAG~I\ : cycloneii_io
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
	datain => \latch_unit_0|ms_jk_2|nand_5|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RX_FLAG);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SR_CLK~I\ : cycloneii_io
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
	datain => \logic_unit_0|and_5|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SR_CLK);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clr_ctrl~I\ : cycloneii_io
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
	datain => \logic_unit_0|or_0|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clr_ctrl);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tick_ctrl~I\ : cycloneii_io
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
	datain => \logic_unit_0|and_2|ALT_INV_output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tick_ctrl);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\half_tick_ctrl~I\ : cycloneii_io
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
	datain => \logic_unit_0|and_0|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_half_tick_ctrl);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\end_ctrl~I\ : cycloneii_io
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
	datain => \logic_unit_0|and_4|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_end_ctrl);
END structure;


