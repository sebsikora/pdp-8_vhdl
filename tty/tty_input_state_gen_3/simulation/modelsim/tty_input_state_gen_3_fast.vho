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

-- DATE "03/11/2017 15:29:38"

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
-- SLOW_CLK_run	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RX_FLAG	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SR_CLK	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clr_ctrl	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tick_ctrl	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- half_tick_ctrl	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- end_ctrl	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- not_reset	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RX	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLR_RX_FLAG	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \clk_signal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \not_reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_divider|prescaler[3]~21_combout\ : std_logic;
SIGNAL \clock_divider|prescaler[10]~35_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \CLR_RX_FLAG~combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk_signal~combout\ : std_logic;
SIGNAL \clk_signal~clkctrl_outclk\ : std_logic;
SIGNAL \RX~combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \logic_unit_0|and_2|output~combout\ : std_logic;
SIGNAL \logic_unit_0|or_0|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~3_combout\ : std_logic;
SIGNAL \counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \logic_unit_0|and_0|output~0_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_1|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \counter_unit_0|and_0|output~0_combout\ : std_logic;
SIGNAL \logic_unit_0|and_4|output~combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_3|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_3|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \logic_unit_0|and_4|output~1_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_1|nand_3_2|output~0_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_1|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_1|nand_6|output~1_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_0|nand_3_2|output~0_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_0|nand_6|output~1_combout\ : std_logic;
SIGNAL \latch_unit_0|or_0|output~combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \clock_divider|prescaler[0]~14_combout\ : std_logic;
SIGNAL \not_reset~clkctrl_outclk\ : std_logic;
SIGNAL \clock_divider|prescaler[0]~15\ : std_logic;
SIGNAL \clock_divider|prescaler[1]~17\ : std_logic;
SIGNAL \clock_divider|prescaler[2]~20\ : std_logic;
SIGNAL \clock_divider|prescaler[3]~22\ : std_logic;
SIGNAL \clock_divider|prescaler[4]~24\ : std_logic;
SIGNAL \clock_divider|prescaler[5]~25_combout\ : std_logic;
SIGNAL \clock_divider|prescaler[5]~26\ : std_logic;
SIGNAL \clock_divider|prescaler[6]~28\ : std_logic;
SIGNAL \clock_divider|prescaler[7]~29_combout\ : std_logic;
SIGNAL \clock_divider|prescaler[7]~30\ : std_logic;
SIGNAL \clock_divider|prescaler[8]~32\ : std_logic;
SIGNAL \clock_divider|prescaler[9]~33_combout\ : std_logic;
SIGNAL \clock_divider|prescaler[9]~34\ : std_logic;
SIGNAL \clock_divider|prescaler[10]~36\ : std_logic;
SIGNAL \clock_divider|prescaler[11]~37_combout\ : std_logic;
SIGNAL \clock_divider|prescaler[11]~38\ : std_logic;
SIGNAL \clock_divider|prescaler[12]~39_combout\ : std_logic;
SIGNAL \clock_divider|prescaler[12]~40\ : std_logic;
SIGNAL \clock_divider|prescaler[13]~41_combout\ : std_logic;
SIGNAL \clock_divider|prescaler[8]~31_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider|prescaler[6]~27_combout\ : std_logic;
SIGNAL \clock_divider|prescaler[4]~23_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider|prescaler[0]~18_combout\ : std_logic;
SIGNAL \clock_divider|prescaler[1]~16_combout\ : std_logic;
SIGNAL \clock_divider|prescaler[2]~19_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~0_combout\ : std_logic;
SIGNAL \clock_divider|clk_out_int~0_combout\ : std_logic;
SIGNAL \clock_divider|clk_out_int~1_combout\ : std_logic;
SIGNAL \clock_divider|clk_out_int~regout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \logic_unit_0|and_5|output~0_combout\ : std_logic;
SIGNAL \clock_divider|prescaler\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_not_reset~clkctrl_outclk\ : std_logic;
SIGNAL \latch_unit_0|ms_jk_2|nand_5|ALT_INV_output~1_combout\ : std_logic;
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

\clk_signal~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_signal~combout\);

\not_reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \not_reset~combout\);
\ALT_INV_not_reset~clkctrl_outclk\ <= NOT \not_reset~clkctrl_outclk\;
\latch_unit_0|ms_jk_2|nand_5|ALT_INV_output~1_combout\ <= NOT \latch_unit_0|ms_jk_2|nand_5|output~1_combout\;
\latch_unit_0|ms_jk_0|nand_5|ALT_INV_output~1_combout\ <= NOT \latch_unit_0|ms_jk_0|nand_5|output~1_combout\;
\logic_unit_0|and_2|ALT_INV_output~combout\ <= NOT \logic_unit_0|and_2|output~combout\;

-- Location: LCFF_X7_Y9_N11
\clock_divider|prescaler[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|prescaler[3]~21_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \clock_divider|prescaler[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(3));

-- Location: LCFF_X7_Y9_N25
\clock_divider|prescaler[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|prescaler[10]~35_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \clock_divider|prescaler[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(10));

-- Location: LCCOMB_X7_Y9_N10
\clock_divider|prescaler[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[3]~21_combout\ = (\clock_divider|prescaler\(3) & (!\clock_divider|prescaler[2]~20\)) # (!\clock_divider|prescaler\(3) & ((\clock_divider|prescaler[2]~20\) # (GND)))
-- \clock_divider|prescaler[3]~22\ = CARRY((!\clock_divider|prescaler[2]~20\) # (!\clock_divider|prescaler\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|prescaler\(3),
	datad => VCC,
	cin => \clock_divider|prescaler[2]~20\,
	combout => \clock_divider|prescaler[3]~21_combout\,
	cout => \clock_divider|prescaler[3]~22\);

-- Location: LCCOMB_X7_Y9_N24
\clock_divider|prescaler[10]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[10]~35_combout\ = (\clock_divider|prescaler\(10) & (\clock_divider|prescaler[9]~34\ $ (GND))) # (!\clock_divider|prescaler\(10) & (!\clock_divider|prescaler[9]~34\ & VCC))
-- \clock_divider|prescaler[10]~36\ = CARRY((\clock_divider|prescaler\(10) & !\clock_divider|prescaler[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|prescaler\(10),
	datad => VCC,
	cin => \clock_divider|prescaler[9]~34\,
	combout => \clock_divider|prescaler[10]~35_combout\,
	cout => \clock_divider|prescaler[10]~36\);

-- Location: LCCOMB_X4_Y6_N6
\latch_unit_0|ms_jk_0|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_0|nand_3_3|output~1_combout\ = (\latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\) # ((\latch_unit_0|or_0|output~combout\ & (!\latch_unit_0|ms_jk_0|nand_6|output~1_combout\ & !\RX~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|or_0|output~combout\,
	datab => \latch_unit_0|ms_jk_0|nand_6|output~1_combout\,
	datac => \latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\,
	datad => \RX~combout\,
	combout => \latch_unit_0|ms_jk_0|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N30
\counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~1_combout\ = (!\counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\ & (\counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\ & \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	datad => \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N8
\counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~1_combout\ = (!\counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~2_combout\ & (\not_reset~combout\ & ((\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\clock_divider|clk_out_int~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	datad => \clock_divider|clk_out_int~regout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N8
\counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\ = (\counter_unit_0|and_0|output~0_combout\ & (((!\counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\counter_unit_0|and_0|output~0_combout\ & 
-- ((\counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \counter_unit_0|and_0|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X4_Y6_N4
clk_signal : cycloneii_lcell_comb
-- Equation(s):
-- \clk_signal~combout\ = LCELL((!\clk~combout\) # (!\not_reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \clk~combout\,
	combout => \clk_signal~combout\);

-- Location: CLKCTRL_G0
\clk_signal~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_signal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_signal~clkctrl_outclk\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X6_Y6_N28
\counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~1_combout\ = (\clock_divider|clk_out_int~regout\ & ((\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & ((!\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\))) # 
-- (!\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & (!\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	datad => \clock_divider|clk_out_int~regout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N6
\counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2_combout\ = (\counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~1_combout\ & (((!\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\)))) # 
-- (!\counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~1_combout\ & (((\counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X6_Y6_N26
\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\ = (\clock_divider|clk_out_int~regout\ & (\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\clock_divider|clk_out_int~regout\ & 
-- ((\counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clock_divider|clk_out_int~regout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N20
\counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~2_combout\ = (!\counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~1_combout\ & (((\latch_unit_0|ms_jk_0|nand_5|output~1_combout\) # (!\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\)) 
-- # (!\clock_divider|clk_out_int~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \clock_divider|clk_out_int~regout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X6_Y6_N18
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

-- Location: LCCOMB_X6_Y6_N30
\logic_unit_0|and_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \logic_unit_0|and_2|output~combout\ = (\counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\) # ((\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\) # ((\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (\counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \logic_unit_0|and_2|output~combout\);

-- Location: LCCOMB_X6_Y6_N2
\logic_unit_0|or_0|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \logic_unit_0|or_0|output~1_combout\ = (\latch_unit_0|ms_jk_0|nand_5|output~1_combout\) # (((\logic_unit_0|and_0|output~0_combout\ & !\latch_unit_0|ms_jk_1|nand_6|output~1_combout\)) # (!\logic_unit_0|and_2|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit_0|and_0|output~0_combout\,
	datab => \latch_unit_0|ms_jk_1|nand_6|output~1_combout\,
	datac => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	datad => \logic_unit_0|and_2|output~combout\,
	combout => \logic_unit_0|or_0|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N4
\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~1_combout\ = (\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\) # (\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X7_Y6_N30
\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~2_combout\ = (\clock_divider|clk_out_int~regout\ & ((\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & (!\counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & ((!\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \clock_divider|clk_out_int~regout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X7_Y6_N28
\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3_combout\ = (\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~2_combout\ & (((!\counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\)))) # 
-- (!\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~2_combout\ & ((\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3_combout\,
	datab => \not_reset~combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X7_Y6_N26
\counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\ = (\clock_divider|clk_out_int~regout\ & (\counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\clock_divider|clk_out_int~regout\ & 
-- ((\counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \clock_divider|clk_out_int~regout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_1|output~3_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N12
\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~1_combout\ = (\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\) # ((\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (\counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X6_Y6_N0
\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~2_combout\ = (\clock_divider|clk_out_int~regout\ & ((\logic_unit_0|or_0|output~1_combout\ & (!\counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\logic_unit_0|or_0|output~1_combout\ & 
-- ((!\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|clk_out_int~regout\,
	datab => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datad => \logic_unit_0|or_0|output~1_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X6_Y6_N22
\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~3_combout\ = (\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~2_combout\ & (((\logic_unit_0|or_0|output~1_combout\)))) # (!\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~2_combout\ & 
-- (((\counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~3_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~3_combout\,
	datac => \logic_unit_0|or_0|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~2_combout\,
	combout => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_1|output~3_combout\);

-- Location: LCCOMB_X6_Y6_N24
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

-- Location: LCCOMB_X6_Y6_N16
\logic_unit_0|and_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \logic_unit_0|and_0|output~0_combout\ = (!\counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\ & (\counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\ & (!\counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- !\counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|sub_counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \counter_unit_0|sub_counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \counter_unit_0|sub_counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \counter_unit_0|sub_counter|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \logic_unit_0|and_0|output~0_combout\);

-- Location: LCCOMB_X4_Y6_N20
\latch_unit_0|ms_jk_1|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_1|nand_3_3|output~1_combout\ = (!\latch_unit_0|ms_jk_1|nand_6|output~1_combout\ & (!\RX~combout\ & (\logic_unit_0|and_0|output~0_combout\ & \clock_divider|clk_out_int~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|ms_jk_1|nand_6|output~1_combout\,
	datab => \RX~combout\,
	datac => \logic_unit_0|and_0|output~0_combout\,
	datad => \clock_divider|clk_out_int~regout\,
	combout => \latch_unit_0|ms_jk_1|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N16
\counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\ = (\clock_divider|clk_out_int~regout\ & ((\logic_unit_0|and_2|output~combout\ & (\counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\)) # (!\logic_unit_0|and_2|output~combout\ & 
-- ((\counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\))))) # (!\clock_divider|clk_out_int~regout\ & (\counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clock_divider|clk_out_int~regout\,
	datad => \logic_unit_0|and_2|output~combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N24
\counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\ = (\clock_divider|clk_out_int~regout\ & (!\logic_unit_0|and_2|output~combout\ & (!\counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- !\counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|clk_out_int~regout\,
	datab => \logic_unit_0|and_2|output~combout\,
	datac => \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X5_Y6_N14
\counter_unit_0|and_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|and_0|output~0_combout\ = (!\logic_unit_0|and_2|output~combout\ & \clock_divider|clk_out_int~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \logic_unit_0|and_2|output~combout\,
	datac => \clock_divider|clk_out_int~regout\,
	combout => \counter_unit_0|and_0|output~0_combout\);

-- Location: LCCOMB_X5_Y6_N30
\logic_unit_0|and_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \logic_unit_0|and_4|output~combout\ = (!\logic_unit_0|and_2|output~combout\ & \logic_unit_0|and_4|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \logic_unit_0|and_2|output~combout\,
	datad => \logic_unit_0|and_4|output~1_combout\,
	combout => \logic_unit_0|and_4|output~combout\);

-- Location: LCCOMB_X5_Y6_N12
\counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~0_combout\ = (!\counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\ & (\counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\ & (\counter_unit_0|and_0|output~0_combout\ & 
-- !\logic_unit_0|and_4|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \counter_unit_0|and_0|output~0_combout\,
	datad => \logic_unit_0|and_4|output~combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X5_Y6_N4
\counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\ = (!\counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~0_combout\ & (((\counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\) # 
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
	datad => \counter_unit_0|counter|ms_jk_ff_1|nand_3_1|output~0_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N0
\counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\ = (\logic_unit_0|and_2|output~combout\ & (((\counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\)))) # (!\logic_unit_0|and_2|output~combout\ & ((\clock_divider|clk_out_int~regout\ & 
-- (\counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\clock_divider|clk_out_int~regout\ & ((\counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \logic_unit_0|and_2|output~combout\,
	datac => \counter_unit_0|counter|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \clock_divider|clk_out_int~regout\,
	combout => \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N10
\counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\ = (\counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\ & (!\counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\)) # 
-- (!\counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\ & (((\counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~0_combout\,
	datad => \not_reset~combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N20
\counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\ = (\clock_divider|clk_out_int~regout\ & ((\logic_unit_0|and_2|output~combout\ & ((\counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\))) # (!\logic_unit_0|and_2|output~combout\ & 
-- (\counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\clock_divider|clk_out_int~regout\ & (((\counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \clock_divider|clk_out_int~regout\,
	datad => \logic_unit_0|and_2|output~combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N26
\counter_unit_0|counter|ms_jk_ff_3|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_3|nand_3_3|output~0_combout\ = (\counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\) # ((\counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\) # (\counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_3|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X5_Y6_N22
\counter_unit_0|counter|ms_jk_ff_3|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_3|nand_3_3|output~1_combout\ = (\counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\) # (((!\logic_unit_0|and_4|output~combout\ & \counter_unit_0|counter|ms_jk_ff_3|nand_3_3|output~0_combout\)) # 
-- (!\counter_unit_0|and_0|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \logic_unit_0|and_4|output~combout\,
	datac => \counter_unit_0|and_0|output~0_combout\,
	datad => \counter_unit_0|counter|ms_jk_ff_3|nand_3_3|output~0_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_3|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N2
\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\ = (!\counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~1_combout\ & ((\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\) # 
-- ((!\counter_unit_0|counter|ms_jk_ff_3|nand_3_3|output~1_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_3|nand_3_1|output~1_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \counter_unit_0|counter|ms_jk_ff_3|nand_3_3|output~1_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N6
\counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\ = (\logic_unit_0|and_2|output~combout\ & (((\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\)))) # (!\logic_unit_0|and_2|output~combout\ & ((\clock_divider|clk_out_int~regout\ & 
-- (\counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\clock_divider|clk_out_int~regout\ & ((\counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \logic_unit_0|and_2|output~combout\,
	datac => \clock_divider|clk_out_int~regout\,
	datad => \counter_unit_0|counter|ms_jk_ff_3|nand_1|output~1_combout\,
	combout => \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N28
\logic_unit_0|and_4|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \logic_unit_0|and_4|output~1_combout\ = (!\counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\ & (\counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\ & (\counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_unit_0|counter|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \counter_unit_0|counter|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \counter_unit_0|counter|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \logic_unit_0|and_4|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N26
\latch_unit_0|ms_jk_1|nand_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_1|nand_3_2|output~0_combout\ = (\latch_unit_0|ms_jk_1|nand_6|output~1_combout\ & (!\logic_unit_0|and_2|output~combout\ & (\clock_divider|clk_out_int~regout\ & \logic_unit_0|and_4|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|ms_jk_1|nand_6|output~1_combout\,
	datab => \logic_unit_0|and_2|output~combout\,
	datac => \clock_divider|clk_out_int~regout\,
	datad => \logic_unit_0|and_4|output~1_combout\,
	combout => \latch_unit_0|ms_jk_1|nand_3_2|output~0_combout\);

-- Location: LCCOMB_X4_Y6_N14
\latch_unit_0|ms_jk_1|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_1|nand_3_3|output~2_combout\ = (\not_reset~combout\ & (!\latch_unit_0|ms_jk_1|nand_3_2|output~0_combout\ & ((\latch_unit_0|ms_jk_1|nand_3_3|output~2_combout\) # (\latch_unit_0|ms_jk_1|nand_3_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|ms_jk_1|nand_3_3|output~2_combout\,
	datab => \not_reset~combout\,
	datac => \latch_unit_0|ms_jk_1|nand_3_3|output~1_combout\,
	datad => \latch_unit_0|ms_jk_1|nand_3_2|output~0_combout\,
	combout => \latch_unit_0|ms_jk_1|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N24
\latch_unit_0|ms_jk_1|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_1|nand_6|output~1_combout\ = (\clock_divider|clk_out_int~regout\ & (\latch_unit_0|ms_jk_1|nand_6|output~1_combout\)) # (!\clock_divider|clk_out_int~regout\ & ((\latch_unit_0|ms_jk_1|nand_3_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|ms_jk_1|nand_6|output~1_combout\,
	datac => \clock_divider|clk_out_int~regout\,
	datad => \latch_unit_0|ms_jk_1|nand_3_3|output~2_combout\,
	combout => \latch_unit_0|ms_jk_1|nand_6|output~1_combout\);

-- Location: LCCOMB_X5_Y6_N18
\latch_unit_0|ms_jk_0|nand_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_0|nand_3_2|output~0_combout\ = (\latch_unit_0|or_0|output~combout\ & ((\logic_unit_0|and_4|output~combout\) # ((!\latch_unit_0|ms_jk_1|nand_6|output~1_combout\ & \RX~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|or_0|output~combout\,
	datab => \latch_unit_0|ms_jk_1|nand_6|output~1_combout\,
	datac => \RX~combout\,
	datad => \logic_unit_0|and_4|output~combout\,
	combout => \latch_unit_0|ms_jk_0|nand_3_2|output~0_combout\);

-- Location: LCCOMB_X4_Y6_N8
\latch_unit_0|ms_jk_0|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\ = (\latch_unit_0|ms_jk_0|nand_3_3|output~1_combout\ & (\not_reset~combout\ & ((\latch_unit_0|ms_jk_0|nand_5|output~1_combout\) # (!\latch_unit_0|ms_jk_0|nand_3_2|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|ms_jk_0|nand_3_3|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	datad => \latch_unit_0|ms_jk_0|nand_3_2|output~0_combout\,
	combout => \latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N28
\latch_unit_0|ms_jk_0|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_0|nand_6|output~1_combout\ = (!\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & ((\latch_unit_0|or_0|output~combout\) # (\latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|or_0|output~combout\,
	datac => \latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\,
	datad => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	combout => \latch_unit_0|ms_jk_0|nand_6|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N10
\latch_unit_0|or_0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|or_0|output~combout\ = (\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & (!\latch_unit_0|ms_jk_0|nand_6|output~1_combout\ & (!\clk_signal~combout\))) # (!\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & ((\clock_divider|clk_out_int~regout\) 
-- # ((!\latch_unit_0|ms_jk_0|nand_6|output~1_combout\ & !\clk_signal~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	datab => \latch_unit_0|ms_jk_0|nand_6|output~1_combout\,
	datac => \clk_signal~combout\,
	datad => \clock_divider|clk_out_int~regout\,
	combout => \latch_unit_0|or_0|output~combout\);

-- Location: LCCOMB_X7_Y9_N0
\latch_unit_0|ms_jk_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_0|nand_5|output~1_combout\ = (!\latch_unit_0|ms_jk_0|nand_6|output~1_combout\ & ((\latch_unit_0|or_0|output~combout\) # (!\latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \latch_unit_0|or_0|output~combout\,
	datac => \latch_unit_0|ms_jk_0|nand_6|output~1_combout\,
	datad => \latch_unit_0|ms_jk_0|nand_3_3|output~2_combout\,
	combout => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X7_Y9_N4
\clock_divider|prescaler[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[0]~14_combout\ = \clock_divider|prescaler\(0) $ (VCC)
-- \clock_divider|prescaler[0]~15\ = CARRY(\clock_divider|prescaler\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|prescaler\(0),
	datad => VCC,
	combout => \clock_divider|prescaler[0]~14_combout\,
	cout => \clock_divider|prescaler[0]~15\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X7_Y9_N6
\clock_divider|prescaler[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[1]~16_combout\ = (\clock_divider|prescaler\(1) & (!\clock_divider|prescaler[0]~15\)) # (!\clock_divider|prescaler\(1) & ((\clock_divider|prescaler[0]~15\) # (GND)))
-- \clock_divider|prescaler[1]~17\ = CARRY((!\clock_divider|prescaler[0]~15\) # (!\clock_divider|prescaler\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|prescaler\(1),
	datad => VCC,
	cin => \clock_divider|prescaler[0]~15\,
	combout => \clock_divider|prescaler[1]~16_combout\,
	cout => \clock_divider|prescaler[1]~17\);

-- Location: LCCOMB_X7_Y9_N8
\clock_divider|prescaler[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[2]~19_combout\ = (\clock_divider|prescaler\(2) & (\clock_divider|prescaler[1]~17\ $ (GND))) # (!\clock_divider|prescaler\(2) & (!\clock_divider|prescaler[1]~17\ & VCC))
-- \clock_divider|prescaler[2]~20\ = CARRY((\clock_divider|prescaler\(2) & !\clock_divider|prescaler[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|prescaler\(2),
	datad => VCC,
	cin => \clock_divider|prescaler[1]~17\,
	combout => \clock_divider|prescaler[2]~19_combout\,
	cout => \clock_divider|prescaler[2]~20\);

-- Location: LCCOMB_X7_Y9_N12
\clock_divider|prescaler[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[4]~23_combout\ = (\clock_divider|prescaler\(4) & (\clock_divider|prescaler[3]~22\ $ (GND))) # (!\clock_divider|prescaler\(4) & (!\clock_divider|prescaler[3]~22\ & VCC))
-- \clock_divider|prescaler[4]~24\ = CARRY((\clock_divider|prescaler\(4) & !\clock_divider|prescaler[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|prescaler\(4),
	datad => VCC,
	cin => \clock_divider|prescaler[3]~22\,
	combout => \clock_divider|prescaler[4]~23_combout\,
	cout => \clock_divider|prescaler[4]~24\);

-- Location: LCCOMB_X7_Y9_N14
\clock_divider|prescaler[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[5]~25_combout\ = (\clock_divider|prescaler\(5) & (!\clock_divider|prescaler[4]~24\)) # (!\clock_divider|prescaler\(5) & ((\clock_divider|prescaler[4]~24\) # (GND)))
-- \clock_divider|prescaler[5]~26\ = CARRY((!\clock_divider|prescaler[4]~24\) # (!\clock_divider|prescaler\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|prescaler\(5),
	datad => VCC,
	cin => \clock_divider|prescaler[4]~24\,
	combout => \clock_divider|prescaler[5]~25_combout\,
	cout => \clock_divider|prescaler[5]~26\);

-- Location: LCFF_X7_Y9_N15
\clock_divider|prescaler[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|prescaler[5]~25_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \clock_divider|prescaler[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(5));

-- Location: LCCOMB_X7_Y9_N16
\clock_divider|prescaler[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[6]~27_combout\ = (\clock_divider|prescaler\(6) & (\clock_divider|prescaler[5]~26\ $ (GND))) # (!\clock_divider|prescaler\(6) & (!\clock_divider|prescaler[5]~26\ & VCC))
-- \clock_divider|prescaler[6]~28\ = CARRY((\clock_divider|prescaler\(6) & !\clock_divider|prescaler[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|prescaler\(6),
	datad => VCC,
	cin => \clock_divider|prescaler[5]~26\,
	combout => \clock_divider|prescaler[6]~27_combout\,
	cout => \clock_divider|prescaler[6]~28\);

-- Location: LCCOMB_X7_Y9_N18
\clock_divider|prescaler[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[7]~29_combout\ = (\clock_divider|prescaler\(7) & (!\clock_divider|prescaler[6]~28\)) # (!\clock_divider|prescaler\(7) & ((\clock_divider|prescaler[6]~28\) # (GND)))
-- \clock_divider|prescaler[7]~30\ = CARRY((!\clock_divider|prescaler[6]~28\) # (!\clock_divider|prescaler\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|prescaler\(7),
	datad => VCC,
	cin => \clock_divider|prescaler[6]~28\,
	combout => \clock_divider|prescaler[7]~29_combout\,
	cout => \clock_divider|prescaler[7]~30\);

-- Location: LCFF_X7_Y9_N19
\clock_divider|prescaler[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|prescaler[7]~29_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \clock_divider|prescaler[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(7));

-- Location: LCCOMB_X7_Y9_N20
\clock_divider|prescaler[8]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[8]~31_combout\ = (\clock_divider|prescaler\(8) & (\clock_divider|prescaler[7]~30\ $ (GND))) # (!\clock_divider|prescaler\(8) & (!\clock_divider|prescaler[7]~30\ & VCC))
-- \clock_divider|prescaler[8]~32\ = CARRY((\clock_divider|prescaler\(8) & !\clock_divider|prescaler[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|prescaler\(8),
	datad => VCC,
	cin => \clock_divider|prescaler[7]~30\,
	combout => \clock_divider|prescaler[8]~31_combout\,
	cout => \clock_divider|prescaler[8]~32\);

-- Location: LCCOMB_X7_Y9_N22
\clock_divider|prescaler[9]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[9]~33_combout\ = (\clock_divider|prescaler\(9) & (!\clock_divider|prescaler[8]~32\)) # (!\clock_divider|prescaler\(9) & ((\clock_divider|prescaler[8]~32\) # (GND)))
-- \clock_divider|prescaler[9]~34\ = CARRY((!\clock_divider|prescaler[8]~32\) # (!\clock_divider|prescaler\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|prescaler\(9),
	datad => VCC,
	cin => \clock_divider|prescaler[8]~32\,
	combout => \clock_divider|prescaler[9]~33_combout\,
	cout => \clock_divider|prescaler[9]~34\);

-- Location: LCFF_X7_Y9_N23
\clock_divider|prescaler[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|prescaler[9]~33_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \clock_divider|prescaler[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(9));

-- Location: LCCOMB_X7_Y9_N26
\clock_divider|prescaler[11]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[11]~37_combout\ = (\clock_divider|prescaler\(11) & (!\clock_divider|prescaler[10]~36\)) # (!\clock_divider|prescaler\(11) & ((\clock_divider|prescaler[10]~36\) # (GND)))
-- \clock_divider|prescaler[11]~38\ = CARRY((!\clock_divider|prescaler[10]~36\) # (!\clock_divider|prescaler\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|prescaler\(11),
	datad => VCC,
	cin => \clock_divider|prescaler[10]~36\,
	combout => \clock_divider|prescaler[11]~37_combout\,
	cout => \clock_divider|prescaler[11]~38\);

-- Location: LCFF_X7_Y9_N27
\clock_divider|prescaler[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|prescaler[11]~37_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \clock_divider|prescaler[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(11));

-- Location: LCCOMB_X7_Y9_N28
\clock_divider|prescaler[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[12]~39_combout\ = (\clock_divider|prescaler\(12) & (\clock_divider|prescaler[11]~38\ $ (GND))) # (!\clock_divider|prescaler\(12) & (!\clock_divider|prescaler[11]~38\ & VCC))
-- \clock_divider|prescaler[12]~40\ = CARRY((\clock_divider|prescaler\(12) & !\clock_divider|prescaler[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|prescaler\(12),
	datad => VCC,
	cin => \clock_divider|prescaler[11]~38\,
	combout => \clock_divider|prescaler[12]~39_combout\,
	cout => \clock_divider|prescaler[12]~40\);

-- Location: LCFF_X7_Y9_N29
\clock_divider|prescaler[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|prescaler[12]~39_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \clock_divider|prescaler[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(12));

-- Location: LCCOMB_X7_Y9_N30
\clock_divider|prescaler[13]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[13]~41_combout\ = \clock_divider|prescaler[12]~40\ $ (\clock_divider|prescaler\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|prescaler\(13),
	cin => \clock_divider|prescaler[12]~40\,
	combout => \clock_divider|prescaler[13]~41_combout\);

-- Location: LCFF_X7_Y9_N31
\clock_divider|prescaler[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|prescaler[13]~41_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \clock_divider|prescaler[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(13));

-- Location: LCFF_X7_Y9_N21
\clock_divider|prescaler[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|prescaler[8]~31_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \clock_divider|prescaler[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(8));

-- Location: LCCOMB_X8_Y9_N22
\clock_divider|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~2_combout\ = (\clock_divider|prescaler\(10)) # (((!\clock_divider|prescaler\(11)) # (!\clock_divider|prescaler\(8))) # (!\clock_divider|prescaler\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|prescaler\(10),
	datab => \clock_divider|prescaler\(9),
	datac => \clock_divider|prescaler\(8),
	datad => \clock_divider|prescaler\(11),
	combout => \clock_divider|Equal0~2_combout\);

-- Location: LCCOMB_X8_Y9_N30
\clock_divider|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~3_combout\ = ((\clock_divider|prescaler\(13)) # (\clock_divider|Equal0~2_combout\)) # (!\clock_divider|prescaler\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|prescaler\(12),
	datac => \clock_divider|prescaler\(13),
	datad => \clock_divider|Equal0~2_combout\,
	combout => \clock_divider|Equal0~3_combout\);

-- Location: LCFF_X7_Y9_N17
\clock_divider|prescaler[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|prescaler[6]~27_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \clock_divider|prescaler[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(6));

-- Location: LCFF_X7_Y9_N13
\clock_divider|prescaler[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|prescaler[4]~23_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \clock_divider|prescaler[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(4));

-- Location: LCCOMB_X8_Y9_N24
\clock_divider|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~1_combout\ = ((\clock_divider|prescaler\(6)) # ((!\clock_divider|prescaler\(4)) # (!\clock_divider|prescaler\(7)))) # (!\clock_divider|prescaler\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|prescaler\(5),
	datab => \clock_divider|prescaler\(6),
	datac => \clock_divider|prescaler\(7),
	datad => \clock_divider|prescaler\(4),
	combout => \clock_divider|Equal0~1_combout\);

-- Location: LCCOMB_X7_Y9_N2
\clock_divider|prescaler[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|prescaler[0]~18_combout\ = (\latch_unit_0|ms_jk_0|nand_5|output~1_combout\) # ((!\clock_divider|Equal0~0_combout\ & (!\clock_divider|Equal0~3_combout\ & !\clock_divider|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|Equal0~0_combout\,
	datab => \clock_divider|Equal0~3_combout\,
	datac => \clock_divider|Equal0~1_combout\,
	datad => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	combout => \clock_divider|prescaler[0]~18_combout\);

-- Location: LCFF_X7_Y9_N5
\clock_divider|prescaler[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|prescaler[0]~14_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \clock_divider|prescaler[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(0));

-- Location: LCFF_X7_Y9_N7
\clock_divider|prescaler[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|prescaler[1]~16_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \clock_divider|prescaler[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(1));

-- Location: LCFF_X7_Y9_N9
\clock_divider|prescaler[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|prescaler[2]~19_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \clock_divider|prescaler[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|prescaler\(2));

-- Location: LCCOMB_X8_Y9_N26
\clock_divider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~0_combout\ = (((\clock_divider|prescaler\(1)) # (!\clock_divider|prescaler\(2))) # (!\clock_divider|prescaler\(0))) # (!\clock_divider|prescaler\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|prescaler\(3),
	datab => \clock_divider|prescaler\(0),
	datac => \clock_divider|prescaler\(1),
	datad => \clock_divider|prescaler\(2),
	combout => \clock_divider|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y9_N20
\clock_divider|clk_out_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|clk_out_int~0_combout\ = \clock_divider|clk_out_int~regout\ $ (((\clock_divider|Equal0~0_combout\) # ((\clock_divider|Equal0~1_combout\) # (\clock_divider|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|clk_out_int~regout\,
	datab => \clock_divider|Equal0~0_combout\,
	datac => \clock_divider|Equal0~1_combout\,
	datad => \clock_divider|Equal0~3_combout\,
	combout => \clock_divider|clk_out_int~0_combout\);

-- Location: LCCOMB_X8_Y9_N28
\clock_divider|clk_out_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|clk_out_int~1_combout\ = (!\latch_unit_0|ms_jk_0|nand_5|output~1_combout\ & !\clock_divider|clk_out_int~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \latch_unit_0|ms_jk_0|nand_5|output~1_combout\,
	datac => \clock_divider|clk_out_int~0_combout\,
	combout => \clock_divider|clk_out_int~1_combout\);

-- Location: LCFF_X8_Y9_N29
\clock_divider|clk_out_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_signal~clkctrl_outclk\,
	datain => \clock_divider|clk_out_int~1_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|clk_out_int~regout\);

-- Location: LCCOMB_X4_Y6_N22
\latch_unit_0|ms_jk_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_2|nand_1|output~1_combout\ = (!\clk_signal~combout\ & ((\latch_unit_0|ms_jk_2|nand_5|output~1_combout\ & ((\logic_unit_0|and_4|output~combout\))) # (!\latch_unit_0|ms_jk_2|nand_5|output~1_combout\ & (\CLR_RX_FLAG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR_RX_FLAG~combout\,
	datab => \clk_signal~combout\,
	datac => \latch_unit_0|ms_jk_2|nand_5|output~1_combout\,
	datad => \logic_unit_0|and_4|output~combout\,
	combout => \latch_unit_0|ms_jk_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N18
\latch_unit_0|ms_jk_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_2|nand_1|output~2_combout\ = (\latch_unit_0|ms_jk_2|nand_1|output~1_combout\ & (((!\latch_unit_0|ms_jk_2|nand_5|output~1_combout\)))) # (!\latch_unit_0|ms_jk_2|nand_1|output~1_combout\ & 
-- ((\latch_unit_0|ms_jk_2|nand_1|output~2_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_unit_0|ms_jk_2|nand_1|output~2_combout\,
	datab => \not_reset~combout\,
	datac => \latch_unit_0|ms_jk_2|nand_5|output~1_combout\,
	datad => \latch_unit_0|ms_jk_2|nand_1|output~1_combout\,
	combout => \latch_unit_0|ms_jk_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N16
\latch_unit_0|ms_jk_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch_unit_0|ms_jk_2|nand_5|output~1_combout\ = (GLOBAL(\clk_signal~clkctrl_outclk\) & ((\latch_unit_0|ms_jk_2|nand_1|output~2_combout\))) # (!GLOBAL(\clk_signal~clkctrl_outclk\) & (\latch_unit_0|ms_jk_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \latch_unit_0|ms_jk_2|nand_5|output~1_combout\,
	datac => \clk_signal~clkctrl_outclk\,
	datad => \latch_unit_0|ms_jk_2|nand_1|output~2_combout\,
	combout => \latch_unit_0|ms_jk_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N12
\logic_unit_0|and_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \logic_unit_0|and_5|output~0_combout\ = (!\logic_unit_0|and_2|output~combout\ & (\clock_divider|clk_out_int~regout\ & \counter_unit_0|counter|ms_jk_ff_3|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \logic_unit_0|and_2|output~combout\,
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

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \latch_unit_0|ms_jk_2|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RX_FLAG);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


