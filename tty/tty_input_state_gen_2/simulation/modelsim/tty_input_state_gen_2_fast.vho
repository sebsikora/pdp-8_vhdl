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

-- DATE "02/18/2017 16:35:36"

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

ENTITY 	tty_input_state_gen_2 IS
    PORT (
	clk : IN std_logic;
	SLOW_clk : OUT std_logic;
	SLOW_clk_RUN : OUT std_logic;
	not_reset : IN std_logic;
	ser_clk : OUT std_logic;
	CLR_RX_FLAG : IN std_logic;
	RX_FLAG : OUT std_logic;
	RX : IN std_logic;
	ser_data_in : OUT std_logic
	);
END tty_input_state_gen_2;

-- Design Ports Information
-- SLOW_clk	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SLOW_clk_RUN	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ser_clk	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RX_FLAG	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ser_data_in	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RX	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLR_RX_FLAG	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF tty_input_state_gen_2 IS
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
SIGNAL ww_SLOW_clk : std_logic;
SIGNAL ww_SLOW_clk_RUN : std_logic;
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_ser_clk : std_logic;
SIGNAL ww_CLR_RX_FLAG : std_logic;
SIGNAL ww_RX_FLAG : std_logic;
SIGNAL ww_RX : std_logic;
SIGNAL ww_ser_data_in : std_logic;
SIGNAL \not_reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_clock_divider|prescaler[0]~9_combout\ : std_logic;
SIGNAL \input_clock_divider|prescaler[0]~10\ : std_logic;
SIGNAL \input_clock_divider|prescaler[1]~11_combout\ : std_logic;
SIGNAL \input_clock_divider|prescaler[1]~12\ : std_logic;
SIGNAL \input_clock_divider|prescaler[2]~14_combout\ : std_logic;
SIGNAL \input_clock_divider|prescaler[2]~15\ : std_logic;
SIGNAL \input_clock_divider|prescaler[3]~16_combout\ : std_logic;
SIGNAL \input_clock_divider|prescaler[3]~17\ : std_logic;
SIGNAL \input_clock_divider|prescaler[4]~18_combout\ : std_logic;
SIGNAL \input_clock_divider|prescaler[4]~19\ : std_logic;
SIGNAL \input_clock_divider|prescaler[5]~20_combout\ : std_logic;
SIGNAL \input_clock_divider|prescaler[5]~21\ : std_logic;
SIGNAL \input_clock_divider|prescaler[6]~22_combout\ : std_logic;
SIGNAL \input_clock_divider|prescaler[6]~23\ : std_logic;
SIGNAL \input_clock_divider|prescaler[7]~24_combout\ : std_logic;
SIGNAL \input_clock_divider|prescaler[7]~25\ : std_logic;
SIGNAL \input_clock_divider|prescaler[8]~26_combout\ : std_logic;
SIGNAL \input_clock_divider|Equal0~0_combout\ : std_logic;
SIGNAL \input_clock_divider|Equal0~1_combout\ : std_logic;
SIGNAL \input_clock_divider|clk_out_int~2_combout\ : std_logic;
SIGNAL \tty_input_counter_0|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \input_clock_divider|prescaler[0]~13_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_0|ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_0|ms_jk_ff_3|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_input_counter_0|ms_jk_ff_3|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_input_counter_1|ms_jk_ff_1|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \and_11|output~0_combout\ : std_logic;
SIGNAL \tty_input_counter_1|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_6|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_3_3|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_3_3|output~4_combout\ : std_logic;
SIGNAL \ms_jk_ff_1|nand_3_3|output~5_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_3|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_1|ms_jk_ff_3|nand_1|output~5_combout\ : std_logic;
SIGNAL \CLR_RX_FLAG~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \or_2|output~combout\ : std_logic;
SIGNAL \RX~combout\ : std_logic;
SIGNAL \bms_jk_ff_0|nand_3_3|output~2_combout\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \tty_input_counter_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \tty_input_counter_0|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_input_counter_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \and_3|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \bms_jk_ff_0|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \bms_jk_ff_0|nand_3_3|output~3_combout\ : std_logic;
SIGNAL \bms_jk_ff_0|nand_6|output~1_combout\ : std_logic;
SIGNAL \input_clock_divider|clk_out_int~3_combout\ : std_logic;
SIGNAL \not_reset~clkctrl_outclk\ : std_logic;
SIGNAL \input_clock_divider|clk_out_int~regout\ : std_logic;
SIGNAL \bms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_1|ms_jk_ff_1|nand_3_1|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_1|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_1|ms_jk_ff_3|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \tty_input_counter_1|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_1|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \tty_input_counter_1|ms_jk_ff_3|nand_1|output~3_combout\ : std_logic;
SIGNAL \tty_input_counter_1|ms_jk_ff_3|nand_1|output~4_combout\ : std_logic;
SIGNAL \tty_input_counter_1|ms_jk_ff_3|nand_5|output~1_combout\ : std_logic;
SIGNAL \and_7|output~0_combout\ : std_logic;
SIGNAL \and_4|output~combout\ : std_logic;
SIGNAL \ms_jk_ff_4|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_4|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \ms_jk_ff_4|nand_1|output~1_combout\ : std_logic;
SIGNAL \ms_jk_ff_4|nand_5|output~1_combout\ : std_logic;
SIGNAL \input_clock_divider|prescaler\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_not_reset~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
SLOW_clk <= ww_SLOW_clk;
SLOW_clk_RUN <= ww_SLOW_clk_RUN;
ww_not_reset <= not_reset;
ser_clk <= ww_ser_clk;
ww_CLR_RX_FLAG <= CLR_RX_FLAG;
RX_FLAG <= ww_RX_FLAG;
ww_RX <= RX;
ser_data_in <= ww_ser_data_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\not_reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \not_reset~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\ <= NOT \ms_jk_ff_4|nand_5|output~1_combout\;
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;
\ALT_INV_not_reset~clkctrl_outclk\ <= NOT \not_reset~clkctrl_outclk\;

-- Location: LCFF_X1_Y6_N3
\input_clock_divider|prescaler[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \input_clock_divider|prescaler[1]~11_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \input_clock_divider|prescaler[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \input_clock_divider|prescaler\(1));

-- Location: LCFF_X1_Y6_N5
\input_clock_divider|prescaler[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \input_clock_divider|prescaler[2]~14_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \input_clock_divider|prescaler[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \input_clock_divider|prescaler\(2));

-- Location: LCFF_X1_Y6_N7
\input_clock_divider|prescaler[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \input_clock_divider|prescaler[3]~16_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \input_clock_divider|prescaler[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \input_clock_divider|prescaler\(3));

-- Location: LCFF_X1_Y6_N1
\input_clock_divider|prescaler[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \input_clock_divider|prescaler[0]~9_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \input_clock_divider|prescaler[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \input_clock_divider|prescaler\(0));

-- Location: LCFF_X1_Y6_N17
\input_clock_divider|prescaler[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \input_clock_divider|prescaler[8]~26_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \input_clock_divider|prescaler[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \input_clock_divider|prescaler\(8));

-- Location: LCFF_X1_Y6_N9
\input_clock_divider|prescaler[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \input_clock_divider|prescaler[4]~18_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \input_clock_divider|prescaler[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \input_clock_divider|prescaler\(4));

-- Location: LCFF_X1_Y6_N11
\input_clock_divider|prescaler[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \input_clock_divider|prescaler[5]~20_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \input_clock_divider|prescaler[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \input_clock_divider|prescaler\(5));

-- Location: LCFF_X1_Y6_N13
\input_clock_divider|prescaler[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \input_clock_divider|prescaler[6]~22_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \input_clock_divider|prescaler[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \input_clock_divider|prescaler\(6));

-- Location: LCFF_X1_Y6_N15
\input_clock_divider|prescaler[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \input_clock_divider|prescaler[7]~24_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	sclr => \input_clock_divider|prescaler[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \input_clock_divider|prescaler\(7));

-- Location: LCCOMB_X1_Y6_N0
\input_clock_divider|prescaler[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clock_divider|prescaler[0]~9_combout\ = \input_clock_divider|prescaler\(0) $ (VCC)
-- \input_clock_divider|prescaler[0]~10\ = CARRY(\input_clock_divider|prescaler\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|prescaler\(0),
	datad => VCC,
	combout => \input_clock_divider|prescaler[0]~9_combout\,
	cout => \input_clock_divider|prescaler[0]~10\);

-- Location: LCCOMB_X1_Y6_N2
\input_clock_divider|prescaler[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clock_divider|prescaler[1]~11_combout\ = (\input_clock_divider|prescaler\(1) & (!\input_clock_divider|prescaler[0]~10\)) # (!\input_clock_divider|prescaler\(1) & ((\input_clock_divider|prescaler[0]~10\) # (GND)))
-- \input_clock_divider|prescaler[1]~12\ = CARRY((!\input_clock_divider|prescaler[0]~10\) # (!\input_clock_divider|prescaler\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_clock_divider|prescaler\(1),
	datad => VCC,
	cin => \input_clock_divider|prescaler[0]~10\,
	combout => \input_clock_divider|prescaler[1]~11_combout\,
	cout => \input_clock_divider|prescaler[1]~12\);

-- Location: LCCOMB_X1_Y6_N4
\input_clock_divider|prescaler[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clock_divider|prescaler[2]~14_combout\ = (\input_clock_divider|prescaler\(2) & (\input_clock_divider|prescaler[1]~12\ $ (GND))) # (!\input_clock_divider|prescaler\(2) & (!\input_clock_divider|prescaler[1]~12\ & VCC))
-- \input_clock_divider|prescaler[2]~15\ = CARRY((\input_clock_divider|prescaler\(2) & !\input_clock_divider|prescaler[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_clock_divider|prescaler\(2),
	datad => VCC,
	cin => \input_clock_divider|prescaler[1]~12\,
	combout => \input_clock_divider|prescaler[2]~14_combout\,
	cout => \input_clock_divider|prescaler[2]~15\);

-- Location: LCCOMB_X1_Y6_N6
\input_clock_divider|prescaler[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clock_divider|prescaler[3]~16_combout\ = (\input_clock_divider|prescaler\(3) & (!\input_clock_divider|prescaler[2]~15\)) # (!\input_clock_divider|prescaler\(3) & ((\input_clock_divider|prescaler[2]~15\) # (GND)))
-- \input_clock_divider|prescaler[3]~17\ = CARRY((!\input_clock_divider|prescaler[2]~15\) # (!\input_clock_divider|prescaler\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|prescaler\(3),
	datad => VCC,
	cin => \input_clock_divider|prescaler[2]~15\,
	combout => \input_clock_divider|prescaler[3]~16_combout\,
	cout => \input_clock_divider|prescaler[3]~17\);

-- Location: LCCOMB_X1_Y6_N8
\input_clock_divider|prescaler[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clock_divider|prescaler[4]~18_combout\ = (\input_clock_divider|prescaler\(4) & (\input_clock_divider|prescaler[3]~17\ $ (GND))) # (!\input_clock_divider|prescaler\(4) & (!\input_clock_divider|prescaler[3]~17\ & VCC))
-- \input_clock_divider|prescaler[4]~19\ = CARRY((\input_clock_divider|prescaler\(4) & !\input_clock_divider|prescaler[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|prescaler\(4),
	datad => VCC,
	cin => \input_clock_divider|prescaler[3]~17\,
	combout => \input_clock_divider|prescaler[4]~18_combout\,
	cout => \input_clock_divider|prescaler[4]~19\);

-- Location: LCCOMB_X1_Y6_N10
\input_clock_divider|prescaler[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clock_divider|prescaler[5]~20_combout\ = (\input_clock_divider|prescaler\(5) & (!\input_clock_divider|prescaler[4]~19\)) # (!\input_clock_divider|prescaler\(5) & ((\input_clock_divider|prescaler[4]~19\) # (GND)))
-- \input_clock_divider|prescaler[5]~21\ = CARRY((!\input_clock_divider|prescaler[4]~19\) # (!\input_clock_divider|prescaler\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|prescaler\(5),
	datad => VCC,
	cin => \input_clock_divider|prescaler[4]~19\,
	combout => \input_clock_divider|prescaler[5]~20_combout\,
	cout => \input_clock_divider|prescaler[5]~21\);

-- Location: LCCOMB_X1_Y6_N12
\input_clock_divider|prescaler[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clock_divider|prescaler[6]~22_combout\ = (\input_clock_divider|prescaler\(6) & (\input_clock_divider|prescaler[5]~21\ $ (GND))) # (!\input_clock_divider|prescaler\(6) & (!\input_clock_divider|prescaler[5]~21\ & VCC))
-- \input_clock_divider|prescaler[6]~23\ = CARRY((\input_clock_divider|prescaler\(6) & !\input_clock_divider|prescaler[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_clock_divider|prescaler\(6),
	datad => VCC,
	cin => \input_clock_divider|prescaler[5]~21\,
	combout => \input_clock_divider|prescaler[6]~22_combout\,
	cout => \input_clock_divider|prescaler[6]~23\);

-- Location: LCCOMB_X1_Y6_N14
\input_clock_divider|prescaler[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clock_divider|prescaler[7]~24_combout\ = (\input_clock_divider|prescaler\(7) & (!\input_clock_divider|prescaler[6]~23\)) # (!\input_clock_divider|prescaler\(7) & ((\input_clock_divider|prescaler[6]~23\) # (GND)))
-- \input_clock_divider|prescaler[7]~25\ = CARRY((!\input_clock_divider|prescaler[6]~23\) # (!\input_clock_divider|prescaler\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|prescaler\(7),
	datad => VCC,
	cin => \input_clock_divider|prescaler[6]~23\,
	combout => \input_clock_divider|prescaler[7]~24_combout\,
	cout => \input_clock_divider|prescaler[7]~25\);

-- Location: LCCOMB_X1_Y6_N16
\input_clock_divider|prescaler[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clock_divider|prescaler[8]~26_combout\ = \input_clock_divider|prescaler\(8) $ (!\input_clock_divider|prescaler[7]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|prescaler\(8),
	cin => \input_clock_divider|prescaler[7]~25\,
	combout => \input_clock_divider|prescaler[8]~26_combout\);

-- Location: LCCOMB_X1_Y11_N16
\input_clock_divider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clock_divider|Equal0~0_combout\ = (\input_clock_divider|prescaler\(3)) # ((\input_clock_divider|prescaler\(2)) # ((\input_clock_divider|prescaler\(1)) # (!\input_clock_divider|prescaler\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|prescaler\(3),
	datab => \input_clock_divider|prescaler\(2),
	datac => \input_clock_divider|prescaler\(1),
	datad => \input_clock_divider|prescaler\(0),
	combout => \input_clock_divider|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y6_N20
\input_clock_divider|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clock_divider|Equal0~1_combout\ = (\input_clock_divider|prescaler\(5)) # ((\input_clock_divider|prescaler\(6)) # ((\input_clock_divider|prescaler\(4)) # (\input_clock_divider|prescaler\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|prescaler\(5),
	datab => \input_clock_divider|prescaler\(6),
	datac => \input_clock_divider|prescaler\(4),
	datad => \input_clock_divider|prescaler\(7),
	combout => \input_clock_divider|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y6_N26
\input_clock_divider|clk_out_int~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clock_divider|clk_out_int~2_combout\ = \input_clock_divider|clk_out_int~regout\ $ (((\input_clock_divider|Equal0~1_combout\) # ((\input_clock_divider|prescaler\(8)) # (\input_clock_divider|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|Equal0~1_combout\,
	datab => \input_clock_divider|clk_out_int~regout\,
	datac => \input_clock_divider|prescaler\(8),
	datad => \input_clock_divider|Equal0~0_combout\,
	combout => \input_clock_divider|clk_out_int~2_combout\);

-- Location: LCCOMB_X3_Y6_N14
\tty_input_counter_0|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_0|ms_jk_ff_3|nand_5|output~1_combout\ = (\input_clock_divider|clk_out_int~regout\ & (\tty_input_counter_0|ms_jk_ff_3|nand_5|output~1_combout\)) # (!\input_clock_divider|clk_out_int~regout\ & 
-- ((\tty_input_counter_0|ms_jk_ff_3|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_input_counter_0|ms_jk_ff_3|nand_1|output~3_combout\,
	datad => \input_clock_divider|clk_out_int~regout\,
	combout => \tty_input_counter_0|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N30
\input_clock_divider|prescaler[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clock_divider|prescaler[0]~13_combout\ = ((!\input_clock_divider|prescaler\(8) & (!\input_clock_divider|Equal0~1_combout\ & !\input_clock_divider|Equal0~0_combout\))) # (!\bms_jk_ff_0|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|prescaler\(8),
	datab => \input_clock_divider|Equal0~1_combout\,
	datac => \input_clock_divider|Equal0~0_combout\,
	datad => \bms_jk_ff_0|nand_5|output~1_combout\,
	combout => \input_clock_divider|prescaler[0]~13_combout\);

-- Location: LCCOMB_X3_Y6_N22
\ms_jk_ff_1|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_3_3|output~1_combout\ = (!\tty_input_counter_0|ms_jk_ff_2|nand_5|output~1_combout\ & (!\tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \input_clock_divider|clk_out_int~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \input_clock_divider|clk_out_int~regout\,
	combout => \ms_jk_ff_1|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N14
\tty_input_counter_0|ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_0|ms_jk_ff_3|nand_1|output~1_combout\ = (\and_3|output~1_combout\ & (\bms_jk_ff_0|nand_6|output~1_combout\ & ((\ms_jk_ff_1|nand_6|output~1_combout\) # (!\tty_input_counter_0|ms_jk_ff_3|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_6|output~1_combout\,
	datab => \tty_input_counter_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \and_3|output~1_combout\,
	datad => \bms_jk_ff_0|nand_6|output~1_combout\,
	combout => \tty_input_counter_0|ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N20
\tty_input_counter_0|ms_jk_ff_3|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_0|ms_jk_ff_3|nand_1|output~2_combout\ = (\tty_input_counter_0|ms_jk_ff_3|nand_1|output~3_combout\) # ((\input_clock_divider|clk_out_int~regout\ & (!\tty_input_counter_0|ms_jk_ff_3|nand_5|output~1_combout\ & 
-- !\tty_input_counter_0|ms_jk_ff_3|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|clk_out_int~regout\,
	datab => \tty_input_counter_0|ms_jk_ff_3|nand_1|output~3_combout\,
	datac => \tty_input_counter_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datad => \tty_input_counter_0|ms_jk_ff_3|nand_1|output~1_combout\,
	combout => \tty_input_counter_0|ms_jk_ff_3|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y6_N20
\tty_input_counter_0|ms_jk_ff_3|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_0|ms_jk_ff_3|nand_1|output~3_combout\ = (\not_reset~combout\ & (\tty_input_counter_0|ms_jk_ff_3|nand_1|output~2_combout\ & ((!\tty_input_counter_0|ms_jk_ff_3|nand_1|output~1_combout\) # (!\ms_jk_ff_1|nand_3_3|output~1_combout\)))) # 
-- (!\not_reset~combout\ & (((!\tty_input_counter_0|ms_jk_ff_3|nand_1|output~1_combout\)) # (!\ms_jk_ff_1|nand_3_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \ms_jk_ff_1|nand_3_3|output~1_combout\,
	datac => \tty_input_counter_0|ms_jk_ff_3|nand_1|output~2_combout\,
	datad => \tty_input_counter_0|ms_jk_ff_3|nand_1|output~1_combout\,
	combout => \tty_input_counter_0|ms_jk_ff_3|nand_1|output~3_combout\);

-- Location: LCCOMB_X6_Y6_N22
\tty_input_counter_1|ms_jk_ff_1|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_1|ms_jk_ff_1|nand_3_1|output~0_combout\ = (!\tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\ & \input_clock_divider|clk_out_int~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \input_clock_divider|clk_out_int~regout\,
	combout => \tty_input_counter_1|ms_jk_ff_1|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X3_Y6_N28
\and_11|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \and_11|output~0_combout\ = (\input_clock_divider|clk_out_int~regout\ & !\and_3|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_clock_divider|clk_out_int~regout\,
	datad => \and_3|output~1_combout\,
	combout => \and_11|output~0_combout\);

-- Location: LCCOMB_X3_Y6_N0
\tty_input_counter_1|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_1|ms_jk_ff_0|nand_1|output~1_combout\ = (\and_11|output~0_combout\ & (((!\tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\)))) # (!\and_11|output~0_combout\ & (((\tty_input_counter_1|ms_jk_ff_0|nand_1|output~1_combout\)) # 
-- (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_input_counter_1|ms_jk_ff_0|nand_1|output~1_combout\,
	datad => \and_11|output~0_combout\,
	combout => \tty_input_counter_1|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N4
\ms_jk_ff_1|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_6|output~1_combout\ = (\input_clock_divider|clk_out_int~regout\ & (\ms_jk_ff_1|nand_6|output~1_combout\)) # (!\input_clock_divider|clk_out_int~regout\ & ((\ms_jk_ff_1|nand_3_3|output~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_1|nand_6|output~1_combout\,
	datac => \input_clock_divider|clk_out_int~regout\,
	datad => \ms_jk_ff_1|nand_3_3|output~5_combout\,
	combout => \ms_jk_ff_1|nand_6|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N12
\ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_5|output~1_combout\ = (\input_clock_divider|clk_out_int~regout\ & ((\and_3|output~1_combout\ & ((\ms_jk_ff_2|nand_1|output~3_combout\))) # (!\and_3|output~1_combout\ & (\ms_jk_ff_2|nand_5|output~1_combout\)))) # 
-- (!\input_clock_divider|clk_out_int~regout\ & (((\ms_jk_ff_2|nand_1|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \input_clock_divider|clk_out_int~regout\,
	datac => \and_3|output~1_combout\,
	datad => \ms_jk_ff_2|nand_1|output~3_combout\,
	combout => \ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N6
\ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_3|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_3|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \ms_jk_ff_3|nand_1|output~1_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N6
\ms_jk_ff_1|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_3_3|output~2_combout\ = ((\tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\) # (!\input_clock_divider|clk_out_int~regout\)) # (!\ms_jk_ff_1|nand_6|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_1|nand_6|output~1_combout\,
	datac => \input_clock_divider|clk_out_int~regout\,
	datad => \tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \ms_jk_ff_1|nand_3_3|output~2_combout\);

-- Location: LCCOMB_X3_Y6_N16
\ms_jk_ff_1|nand_3_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_3_3|output~3_combout\ = (\not_reset~combout\ & ((\ms_jk_ff_1|nand_3_3|output~2_combout\) # ((\and_3|output~1_combout\) # (!\and_7|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_3_3|output~2_combout\,
	datab => \and_7|output~0_combout\,
	datac => \and_3|output~1_combout\,
	datad => \not_reset~combout\,
	combout => \ms_jk_ff_1|nand_3_3|output~3_combout\);

-- Location: LCCOMB_X3_Y6_N12
\ms_jk_ff_1|nand_3_3|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_3_3|output~4_combout\ = (!\RX~combout\ & (!\ms_jk_ff_1|nand_6|output~1_combout\ & \tty_input_counter_0|ms_jk_ff_3|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~combout\,
	datac => \ms_jk_ff_1|nand_6|output~1_combout\,
	datad => \tty_input_counter_0|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \ms_jk_ff_1|nand_3_3|output~4_combout\);

-- Location: LCCOMB_X3_Y6_N26
\ms_jk_ff_1|nand_3_3|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_1|nand_3_3|output~5_combout\ = (\ms_jk_ff_1|nand_3_3|output~3_combout\ & ((\ms_jk_ff_1|nand_3_3|output~5_combout\) # ((\ms_jk_ff_1|nand_3_3|output~4_combout\ & \ms_jk_ff_1|nand_3_3|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_1|nand_3_3|output~4_combout\,
	datab => \ms_jk_ff_1|nand_3_3|output~5_combout\,
	datac => \ms_jk_ff_1|nand_3_3|output~3_combout\,
	datad => \ms_jk_ff_1|nand_3_3|output~1_combout\,
	combout => \ms_jk_ff_1|nand_3_3|output~5_combout\);

-- Location: LCCOMB_X3_Y6_N2
\ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~1_combout\ = (\input_clock_divider|clk_out_int~regout\ & (\tty_input_counter_1|ms_jk_ff_2|nand_5|output~1_combout\ & (\tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\ & 
-- !\tty_input_counter_1|ms_jk_ff_3|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|clk_out_int~regout\,
	datab => \tty_input_counter_1|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_input_counter_1|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N4
\ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~2_combout\ = (\ms_jk_ff_2|nand_1|output~1_combout\ & (!\and_3|output~1_combout\ & (\tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\ $ (!\ms_jk_ff_2|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_1|output~1_combout\,
	datab => \and_3|output~1_combout\,
	datac => \tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N26
\ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_2|nand_1|output~3_combout\ = (\ms_jk_ff_2|nand_1|output~2_combout\ & (!\ms_jk_ff_2|nand_5|output~1_combout\)) # (!\ms_jk_ff_2|nand_1|output~2_combout\ & (((\ms_jk_ff_2|nand_1|output~3_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \ms_jk_ff_2|nand_1|output~2_combout\,
	datac => \not_reset~combout\,
	datad => \ms_jk_ff_2|nand_1|output~3_combout\,
	combout => \ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X4_Y6_N28
\ms_jk_ff_3|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_3_1|output~0_combout\ = (\CLR_RX_FLAG~combout\ & (\clk~combout\ & \ms_jk_ff_3|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLR_RX_FLAG~combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \ms_jk_ff_3|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X4_Y6_N8
\ms_jk_ff_3|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_3|nand_1|output~1_combout\ = (!\ms_jk_ff_3|nand_3_1|output~0_combout\ & ((\ms_jk_ff_3|nand_1|output~1_combout\) # (!\ms_jk_ff_4|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_4|nand_3_3|output~0_combout\,
	datac => \ms_jk_ff_3|nand_1|output~1_combout\,
	datad => \ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \ms_jk_ff_3|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N24
\tty_input_counter_1|ms_jk_ff_3|nand_1|output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_1|ms_jk_ff_3|nand_1|output~5_combout\ = (\tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\ & ((\tty_input_counter_1|ms_jk_ff_3|nand_5|output~1_combout\) # (!\tty_input_counter_1|ms_jk_ff_2|nand_5|output~1_combout\))) # 
-- (!\tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\ & ((\tty_input_counter_1|ms_jk_ff_2|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_1|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \tty_input_counter_1|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \tty_input_counter_1|ms_jk_ff_3|nand_1|output~5_combout\);

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

-- Location: LCCOMB_X1_Y6_N24
\or_2|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \or_2|output~combout\ = (\bms_jk_ff_0|nand_5|output~1_combout\ & ((\input_clock_divider|clk_out_int~regout\) # ((!\bms_jk_ff_0|nand_6|output~1_combout\ & \clk~combout\)))) # (!\bms_jk_ff_0|nand_5|output~1_combout\ & 
-- (((!\bms_jk_ff_0|nand_6|output~1_combout\ & \clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bms_jk_ff_0|nand_5|output~1_combout\,
	datab => \input_clock_divider|clk_out_int~regout\,
	datac => \bms_jk_ff_0|nand_6|output~1_combout\,
	datad => \clk~combout\,
	combout => \or_2|output~combout\);

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

-- Location: LCCOMB_X1_Y6_N28
\bms_jk_ff_0|nand_3_3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bms_jk_ff_0|nand_3_3|output~2_combout\ = (\or_2|output~combout\ & ((\bms_jk_ff_0|nand_3_3|output~3_combout\ & ((\bms_jk_ff_0|nand_6|output~1_combout\))) # (!\bms_jk_ff_0|nand_3_3|output~3_combout\ & (!\RX~combout\ & 
-- !\bms_jk_ff_0|nand_6|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bms_jk_ff_0|nand_3_3|output~3_combout\,
	datab => \RX~combout\,
	datac => \or_2|output~combout\,
	datad => \bms_jk_ff_0|nand_6|output~1_combout\,
	combout => \bms_jk_ff_0|nand_3_3|output~2_combout\);

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

-- Location: LCCOMB_X4_Y6_N22
\tty_input_counter_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\tty_input_counter_0|ms_jk_ff_0|nand_1|output~2_combout\ & (\not_reset~combout\ & ((\tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\) # (!\input_clock_divider|clk_out_int~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \input_clock_divider|clk_out_int~regout\,
	combout => \tty_input_counter_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N20
\tty_input_counter_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_0|ms_jk_ff_0|nand_1|output~2_combout\ = (!\tty_input_counter_0|ms_jk_ff_0|nand_1|output~1_combout\ & (((!\bms_jk_ff_0|nand_6|output~1_combout\) # (!\input_clock_divider|clk_out_int~regout\)) # 
-- (!\tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datab => \tty_input_counter_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \input_clock_divider|clk_out_int~regout\,
	datad => \bms_jk_ff_0|nand_6|output~1_combout\,
	combout => \tty_input_counter_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N24
\tty_input_counter_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\input_clock_divider|clk_out_int~regout\ & (\tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\input_clock_divider|clk_out_int~regout\ & 
-- ((\tty_input_counter_0|ms_jk_ff_0|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \tty_input_counter_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datad => \input_clock_divider|clk_out_int~regout\,
	combout => \tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N0
\tty_input_counter_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\input_clock_divider|clk_out_int~regout\ & ((\bms_jk_ff_0|nand_6|output~1_combout\ & ((!\tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\bms_jk_ff_0|nand_6|output~1_combout\ & 
-- (!\tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|clk_out_int~regout\,
	datab => \tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \bms_jk_ff_0|nand_6|output~1_combout\,
	combout => \tty_input_counter_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N10
\tty_input_counter_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_0|ms_jk_ff_1|nand_1|output~2_combout\ = (\tty_input_counter_0|ms_jk_ff_1|nand_1|output~1_combout\ & (((!\tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\tty_input_counter_0|ms_jk_ff_1|nand_1|output~1_combout\ & 
-- ((\tty_input_counter_0|ms_jk_ff_1|nand_1|output~2_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_0|ms_jk_ff_1|nand_1|output~2_combout\,
	datab => \tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_input_counter_0|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \tty_input_counter_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X4_Y6_N30
\tty_input_counter_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\ = (\input_clock_divider|clk_out_int~regout\ & (\tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\input_clock_divider|clk_out_int~regout\ & 
-- ((\tty_input_counter_0|ms_jk_ff_1|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \input_clock_divider|clk_out_int~regout\,
	datad => \tty_input_counter_0|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N18
\tty_input_counter_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_0|ms_jk_ff_2|nand_1|output~1_combout\ = (\tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\) # (\tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_input_counter_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N8
\tty_input_counter_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_0|ms_jk_ff_2|nand_1|output~2_combout\ = (\input_clock_divider|clk_out_int~regout\ & ((\bms_jk_ff_0|nand_6|output~1_combout\ & (!\tty_input_counter_0|ms_jk_ff_2|nand_1|output~1_combout\)) # (!\bms_jk_ff_0|nand_6|output~1_combout\ & 
-- ((!\tty_input_counter_0|ms_jk_ff_2|nand_5|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|clk_out_int~regout\,
	datab => \tty_input_counter_0|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \tty_input_counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \bms_jk_ff_0|nand_6|output~1_combout\,
	combout => \tty_input_counter_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X3_Y6_N8
\tty_input_counter_0|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_0|ms_jk_ff_2|nand_1|output~3_combout\ = (\tty_input_counter_0|ms_jk_ff_2|nand_1|output~2_combout\ & (((!\tty_input_counter_0|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\tty_input_counter_0|ms_jk_ff_2|nand_1|output~2_combout\ & 
-- (((\tty_input_counter_0|ms_jk_ff_2|nand_1|output~3_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_input_counter_0|ms_jk_ff_2|nand_1|output~3_combout\,
	datac => \tty_input_counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_input_counter_0|ms_jk_ff_2|nand_1|output~2_combout\,
	combout => \tty_input_counter_0|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X3_Y6_N24
\tty_input_counter_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_0|ms_jk_ff_2|nand_5|output~1_combout\ = (\input_clock_divider|clk_out_int~regout\ & (\tty_input_counter_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!\input_clock_divider|clk_out_int~regout\ & 
-- ((\tty_input_counter_0|ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tty_input_counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \tty_input_counter_0|ms_jk_ff_2|nand_1|output~3_combout\,
	datad => \input_clock_divider|clk_out_int~regout\,
	combout => \tty_input_counter_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X3_Y6_N30
\and_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \and_3|output~1_combout\ = (\tty_input_counter_0|ms_jk_ff_3|nand_5|output~1_combout\) # ((\tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\) # ((\tty_input_counter_0|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (\tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_0|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \tty_input_counter_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \tty_input_counter_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_input_counter_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \and_3|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N18
\tty_input_counter_1|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\ = (\input_clock_divider|clk_out_int~regout\ & ((\and_3|output~1_combout\ & (\tty_input_counter_1|ms_jk_ff_0|nand_1|output~1_combout\)) # (!\and_3|output~1_combout\ & 
-- ((\tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\))))) # (!\input_clock_divider|clk_out_int~regout\ & (\tty_input_counter_1|ms_jk_ff_0|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_1|ms_jk_ff_0|nand_1|output~1_combout\,
	datab => \input_clock_divider|clk_out_int~regout\,
	datac => \tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \and_3|output~1_combout\,
	combout => \tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N2
\bms_jk_ff_0|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bms_jk_ff_0|nand_3_3|output~1_combout\ = (\and_7|output~0_combout\ & (!\and_3|output~1_combout\ & !\tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and_7|output~0_combout\,
	datab => \and_3|output~1_combout\,
	datad => \tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \bms_jk_ff_0|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N30
\bms_jk_ff_0|nand_3_3|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bms_jk_ff_0|nand_3_3|output~3_combout\ = (\not_reset~combout\ & ((\bms_jk_ff_0|nand_3_3|output~2_combout\ & ((!\bms_jk_ff_0|nand_3_3|output~1_combout\) # (!\bms_jk_ff_0|nand_3_3|output~3_combout\))) # (!\bms_jk_ff_0|nand_3_3|output~2_combout\ & 
-- (\bms_jk_ff_0|nand_3_3|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \bms_jk_ff_0|nand_3_3|output~2_combout\,
	datac => \bms_jk_ff_0|nand_3_3|output~3_combout\,
	datad => \bms_jk_ff_0|nand_3_3|output~1_combout\,
	combout => \bms_jk_ff_0|nand_3_3|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N20
\bms_jk_ff_0|nand_6|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bms_jk_ff_0|nand_6|output~1_combout\ = (\or_2|output~combout\ & (\bms_jk_ff_0|nand_6|output~1_combout\)) # (!\or_2|output~combout\ & ((\bms_jk_ff_0|nand_3_3|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bms_jk_ff_0|nand_6|output~1_combout\,
	datac => \or_2|output~combout\,
	datad => \bms_jk_ff_0|nand_3_3|output~3_combout\,
	combout => \bms_jk_ff_0|nand_6|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N22
\input_clock_divider|clk_out_int~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clock_divider|clk_out_int~3_combout\ = (!\input_clock_divider|clk_out_int~2_combout\ & ((\bms_jk_ff_0|nand_6|output~1_combout\) # ((!\or_2|output~combout\ & \bms_jk_ff_0|nand_3_3|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_clock_divider|clk_out_int~2_combout\,
	datab => \bms_jk_ff_0|nand_6|output~1_combout\,
	datac => \or_2|output~combout\,
	datad => \bms_jk_ff_0|nand_3_3|output~3_combout\,
	combout => \input_clock_divider|clk_out_int~3_combout\);

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

-- Location: LCFF_X1_Y6_N23
\input_clock_divider|clk_out_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \input_clock_divider|clk_out_int~3_combout\,
	aclr => \ALT_INV_not_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \input_clock_divider|clk_out_int~regout\);

-- Location: LCCOMB_X1_Y6_N18
\bms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bms_jk_ff_0|nand_5|output~1_combout\ = (\bms_jk_ff_0|nand_6|output~1_combout\) # ((!\or_2|output~combout\ & \bms_jk_ff_0|nand_3_3|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \or_2|output~combout\,
	datab => \bms_jk_ff_0|nand_3_3|output~3_combout\,
	datac => \bms_jk_ff_0|nand_6|output~1_combout\,
	combout => \bms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N6
\tty_input_counter_1|ms_jk_ff_1|nand_3_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_1|ms_jk_ff_1|nand_3_1|output~1_combout\ = (\tty_input_counter_1|ms_jk_ff_1|nand_3_1|output~0_combout\ & (!\and_3|output~1_combout\ & (\tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\ & !\and_7|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_1|ms_jk_ff_1|nand_3_1|output~0_combout\,
	datab => \and_3|output~1_combout\,
	datac => \tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \and_7|output~0_combout\,
	combout => \tty_input_counter_1|ms_jk_ff_1|nand_3_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N26
\tty_input_counter_1|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_1|ms_jk_ff_1|nand_1|output~1_combout\ = (!\tty_input_counter_1|ms_jk_ff_1|nand_3_1|output~1_combout\ & (((\tty_input_counter_1|ms_jk_ff_3|nand_3_1|output~0_combout\) # (\tty_input_counter_1|ms_jk_ff_1|nand_1|output~1_combout\)) # 
-- (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_input_counter_1|ms_jk_ff_3|nand_3_1|output~0_combout\,
	datac => \tty_input_counter_1|ms_jk_ff_1|nand_1|output~1_combout\,
	datad => \tty_input_counter_1|ms_jk_ff_1|nand_3_1|output~1_combout\,
	combout => \tty_input_counter_1|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N12
\tty_input_counter_1|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\ = (\input_clock_divider|clk_out_int~regout\ & ((\and_3|output~1_combout\ & ((\tty_input_counter_1|ms_jk_ff_1|nand_1|output~1_combout\))) # (!\and_3|output~1_combout\ & 
-- (\tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\)))) # (!\input_clock_divider|clk_out_int~regout\ & (((\tty_input_counter_1|ms_jk_ff_1|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \input_clock_divider|clk_out_int~regout\,
	datac => \and_3|output~1_combout\,
	datad => \tty_input_counter_1|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N22
\tty_input_counter_1|ms_jk_ff_3|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_1|ms_jk_ff_3|nand_3_1|output~0_combout\ = (!\and_3|output~1_combout\ & (!\tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\ & (\input_clock_divider|clk_out_int~regout\ & !\tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and_3|output~1_combout\,
	datab => \tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \input_clock_divider|clk_out_int~regout\,
	datad => \tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \tty_input_counter_1|ms_jk_ff_3|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N4
\tty_input_counter_1|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_1|ms_jk_ff_2|nand_1|output~1_combout\ = (\tty_input_counter_1|ms_jk_ff_3|nand_3_1|output~0_combout\ & (((!\tty_input_counter_1|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\tty_input_counter_1|ms_jk_ff_3|nand_3_1|output~0_combout\ & 
-- (((\tty_input_counter_1|ms_jk_ff_2|nand_1|output~1_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \tty_input_counter_1|ms_jk_ff_2|nand_1|output~1_combout\,
	datac => \tty_input_counter_1|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_input_counter_1|ms_jk_ff_3|nand_3_1|output~0_combout\,
	combout => \tty_input_counter_1|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N28
\tty_input_counter_1|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_1|ms_jk_ff_2|nand_5|output~1_combout\ = (\input_clock_divider|clk_out_int~regout\ & ((\and_3|output~1_combout\ & ((\tty_input_counter_1|ms_jk_ff_2|nand_1|output~1_combout\))) # (!\and_3|output~1_combout\ & 
-- (\tty_input_counter_1|ms_jk_ff_2|nand_5|output~1_combout\)))) # (!\input_clock_divider|clk_out_int~regout\ & (((\tty_input_counter_1|ms_jk_ff_2|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_1|ms_jk_ff_2|nand_5|output~1_combout\,
	datab => \input_clock_divider|clk_out_int~regout\,
	datac => \tty_input_counter_1|ms_jk_ff_2|nand_1|output~1_combout\,
	datad => \and_3|output~1_combout\,
	combout => \tty_input_counter_1|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N16
\tty_input_counter_1|ms_jk_ff_3|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_1|ms_jk_ff_3|nand_1|output~3_combout\ = (!\tty_input_counter_1|ms_jk_ff_3|nand_1|output~5_combout\ & (!\tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\ & (\input_clock_divider|clk_out_int~regout\ & !\and_3|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_1|ms_jk_ff_3|nand_1|output~5_combout\,
	datab => \tty_input_counter_1|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \input_clock_divider|clk_out_int~regout\,
	datad => \and_3|output~1_combout\,
	combout => \tty_input_counter_1|ms_jk_ff_3|nand_1|output~3_combout\);

-- Location: LCCOMB_X3_Y6_N10
\tty_input_counter_1|ms_jk_ff_3|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_1|ms_jk_ff_3|nand_1|output~4_combout\ = (\tty_input_counter_1|ms_jk_ff_3|nand_1|output~3_combout\ & (((!\tty_input_counter_1|ms_jk_ff_3|nand_5|output~1_combout\)))) # (!\tty_input_counter_1|ms_jk_ff_3|nand_1|output~3_combout\ & 
-- ((\tty_input_counter_1|ms_jk_ff_3|nand_1|output~4_combout\) # ((!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_1|ms_jk_ff_3|nand_1|output~4_combout\,
	datab => \tty_input_counter_1|ms_jk_ff_3|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \tty_input_counter_1|ms_jk_ff_3|nand_1|output~3_combout\,
	combout => \tty_input_counter_1|ms_jk_ff_3|nand_1|output~4_combout\);

-- Location: LCCOMB_X2_Y6_N0
\tty_input_counter_1|ms_jk_ff_3|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tty_input_counter_1|ms_jk_ff_3|nand_5|output~1_combout\ = (\input_clock_divider|clk_out_int~regout\ & ((\and_3|output~1_combout\ & ((\tty_input_counter_1|ms_jk_ff_3|nand_1|output~4_combout\))) # (!\and_3|output~1_combout\ & 
-- (\tty_input_counter_1|ms_jk_ff_3|nand_5|output~1_combout\)))) # (!\input_clock_divider|clk_out_int~regout\ & (((\tty_input_counter_1|ms_jk_ff_3|nand_1|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_1|ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \input_clock_divider|clk_out_int~regout\,
	datac => \tty_input_counter_1|ms_jk_ff_3|nand_1|output~4_combout\,
	datad => \and_3|output~1_combout\,
	combout => \tty_input_counter_1|ms_jk_ff_3|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N10
\and_7|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \and_7|output~0_combout\ = (\tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\ & (\tty_input_counter_1|ms_jk_ff_2|nand_5|output~1_combout\ & !\tty_input_counter_1|ms_jk_ff_3|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tty_input_counter_1|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \tty_input_counter_1|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \tty_input_counter_1|ms_jk_ff_3|nand_5|output~1_combout\,
	combout => \and_7|output~0_combout\);

-- Location: LCCOMB_X6_Y6_N28
\and_4|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \and_4|output~combout\ = (!\and_3|output~1_combout\ & (!\and_7|output~0_combout\ & \input_clock_divider|clk_out_int~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and_3|output~1_combout\,
	datac => \and_7|output~0_combout\,
	datad => \input_clock_divider|clk_out_int~regout\,
	combout => \and_4|output~combout\);

-- Location: LCCOMB_X4_Y6_N18
\ms_jk_ff_4|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_4|nand_3_3|output~0_combout\ = (\not_reset~combout\ & ((\ms_jk_ff_3|nand_5|output~1_combout\) # ((\ms_jk_ff_4|nand_5|output~1_combout\) # (!\clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_3|nand_5|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \ms_jk_ff_4|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X4_Y6_N14
\ms_jk_ff_4|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_4|nand_3_1|output~0_combout\ = (!\ms_jk_ff_2|nand_5|output~1_combout\ & (\clk~combout\ & \ms_jk_ff_4|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \ms_jk_ff_4|nand_5|output~1_combout\,
	combout => \ms_jk_ff_4|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X4_Y6_N2
\ms_jk_ff_4|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_4|nand_1|output~1_combout\ = (!\ms_jk_ff_4|nand_3_1|output~0_combout\ & ((\ms_jk_ff_4|nand_1|output~1_combout\) # (!\ms_jk_ff_4|nand_3_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_4|nand_3_3|output~0_combout\,
	datac => \ms_jk_ff_4|nand_3_1|output~0_combout\,
	datad => \ms_jk_ff_4|nand_1|output~1_combout\,
	combout => \ms_jk_ff_4|nand_1|output~1_combout\);

-- Location: LCCOMB_X4_Y6_N16
\ms_jk_ff_4|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ms_jk_ff_4|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & ((\ms_jk_ff_4|nand_5|output~1_combout\))) # (!GLOBAL(\clk~clkctrl_outclk\) & (\ms_jk_ff_4|nand_1|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ms_jk_ff_4|nand_1|output~1_combout\,
	datac => \ms_jk_ff_4|nand_5|output~1_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \ms_jk_ff_4|nand_5|output~1_combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SLOW_clk~I\ : cycloneii_io
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
	datain => \input_clock_divider|clk_out_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SLOW_clk);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SLOW_clk_RUN~I\ : cycloneii_io
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
	datain => \bms_jk_ff_0|nand_5|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SLOW_clk_RUN);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ser_clk~I\ : cycloneii_io
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
	datain => \and_4|output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ser_clk);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ms_jk_ff_4|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RX_FLAG);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ser_data_in~I\ : cycloneii_io
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
	datain => \RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ser_data_in);
END structure;


