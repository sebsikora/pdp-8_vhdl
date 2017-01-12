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

-- DATE "01/12/2017 20:30:12"

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
	clk : IN std_logic;
	not_reset : IN std_logic;
	HLT_flag : IN std_logic;
	NEXT_STATE : IN std_logic;
	END_STATE : IN std_logic;
	LOAD : IN std_logic_vector(1 DOWNTO 0);
	HLT_indicator : OUT std_logic;
	s_states : OUT std_logic_vector(7 DOWNTO 0);
	t_states : OUT std_logic_vector(7 DOWNTO 0)
	);
END state_generator;

-- Design Ports Information
-- HLT_indicator	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[1]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[2]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[3]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[4]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[5]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[6]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_states[7]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[0]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[1]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[2]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[3]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[4]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[5]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[6]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t_states[7]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NEXT_STATE	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- not_reset	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- END_STATE	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LOAD[1]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LOAD[0]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HLT_flag	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_not_reset : std_logic;
SIGNAL ww_HLT_flag : std_logic;
SIGNAL ww_NEXT_STATE : std_logic;
SIGNAL ww_END_STATE : std_logic;
SIGNAL ww_LOAD : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HLT_indicator : std_logic;
SIGNAL ww_s_states : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_t_states : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_state_generator_0|ms_jk_ff_1|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|counter|ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|counter|ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \s_state_generator_0|counter|ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|counter|ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|counter|ff_0|nand_1|output~3_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|ms_jk_ff_0|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\ : std_logic;
SIGNAL \HLT_flag~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \not_reset~combout\ : std_logic;
SIGNAL \s_state_generator_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \NEXT_STATE~combout\ : std_logic;
SIGNAL \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \END_STATE~combout\ : std_logic;
SIGNAL \s_state_generator_0|counter|ff_2|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|counter|ff_2|nand_1|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|counter|ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \s_state_generator_0|counter|ff_2|nand_1|output~4_combout\ : std_logic;
SIGNAL \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|ms_jk_ff_1|nand_1|output~2_combout\ : std_logic;
SIGNAL \s_state_generator_0|ms_jk_ff_1|nand_1|output~3_combout\ : std_logic;
SIGNAL \s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \s_state_generator_0|decoder|and_3_0|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|decoder|and_3_1|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|decoder|and_3_2|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|decoder|and_3_3|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|decoder|and_3_4|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|decoder|and_3_5|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|decoder|and_3_6|output~0_combout\ : std_logic;
SIGNAL \s_state_generator_0|decoder|and_3_7|output~combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ : std_logic;
SIGNAL \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_8_0|and_3_5|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_8_0|and_3_6|output~0_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_8_0|and_3_7|output~combout\ : std_logic;
SIGNAL \LOAD~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \s_state_generator_0|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \t_state_generator_0|decoder_3_to_8_0|and_3_7|ALT_INV_output~combout\ : std_logic;
SIGNAL \s_state_generator_0|decoder|and_3_7|ALT_INV_output~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_not_reset <= not_reset;
ww_HLT_flag <= HLT_flag;
ww_NEXT_STATE <= NEXT_STATE;
ww_END_STATE <= END_STATE;
ww_LOAD <= LOAD;
HLT_indicator <= ww_HLT_indicator;
s_states <= ww_s_states;
t_states <= ww_t_states;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\s_state_generator_0|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\ <= NOT \s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\;
\t_state_generator_0|decoder_3_to_8_0|and_3_7|ALT_INV_output~combout\ <= NOT \t_state_generator_0|decoder_3_to_8_0|and_3_7|output~combout\;
\s_state_generator_0|decoder|and_3_7|ALT_INV_output~combout\ <= NOT \s_state_generator_0|decoder|and_3_7|output~combout\;

-- Location: LCCOMB_X1_Y6_N20
\s_state_generator_0|ms_jk_ff_1|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|ms_jk_ff_1|nand_3_1|output~0_combout\ = (\END_STATE~combout\ & (\clk~combout\ & !\s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \END_STATE~combout\,
	datac => \clk~combout\,
	datad => \s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|ms_jk_ff_1|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X1_Y6_N14
\s_state_generator_0|counter|ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ = (\END_STATE~combout\ & (!\LOAD~combout\(1) & (\s_state_generator_0|counter|ff_1|nand_5|output~1_combout\))) # (!\END_STATE~combout\ & (\s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ 
-- & ((!\s_state_generator_0|counter|ff_1|nand_5|output~1_combout\) # (!\LOAD~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LOAD~combout\(1),
	datab => \END_STATE~combout\,
	datac => \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|counter|ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N16
\s_state_generator_0|counter|ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|counter|ff_1|nand_1|output~2_combout\ = (!\s_state_generator_0|counter|ff_1|nand_1|output~1_combout\ & (\NEXT_STATE~combout\ & \clk~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|counter|ff_1|nand_1|output~1_combout\,
	datac => \NEXT_STATE~combout\,
	datad => \clk~combout\,
	combout => \s_state_generator_0|counter|ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N10
\s_state_generator_0|counter|ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|counter|ff_1|nand_1|output~3_combout\ = (\s_state_generator_0|counter|ff_1|nand_1|output~2_combout\ & (((!\s_state_generator_0|counter|ff_1|nand_5|output~1_combout\)))) # (!\s_state_generator_0|counter|ff_1|nand_1|output~2_combout\ & 
-- (((\s_state_generator_0|counter|ff_1|nand_1|output~3_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|counter|ff_1|nand_1|output~2_combout\,
	datab => \not_reset~combout\,
	datac => \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \s_state_generator_0|counter|ff_1|nand_1|output~3_combout\,
	combout => \s_state_generator_0|counter|ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N30
\s_state_generator_0|counter|ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|counter|ff_0|nand_1|output~1_combout\ = (\END_STATE~combout\ & ((\LOAD~combout\(0)) # (!\LOAD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LOAD~combout\(0),
	datac => \LOAD~combout\(1),
	datad => \END_STATE~combout\,
	combout => \s_state_generator_0|counter|ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N4
\s_state_generator_0|counter|ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|counter|ff_0|nand_1|output~2_combout\ = (\NEXT_STATE~combout\ & (\clk~combout\ & ((!\s_state_generator_0|counter|ff_0|nand_5|output~1_combout\) # (!\s_state_generator_0|counter|ff_0|nand_1|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|counter|ff_0|nand_1|output~1_combout\,
	datab => \NEXT_STATE~combout\,
	datac => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \s_state_generator_0|counter|ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N26
\s_state_generator_0|counter|ff_0|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|counter|ff_0|nand_1|output~3_combout\ = (\s_state_generator_0|counter|ff_0|nand_1|output~2_combout\ & (((!\s_state_generator_0|counter|ff_0|nand_5|output~1_combout\)))) # (!\s_state_generator_0|counter|ff_0|nand_1|output~2_combout\ & 
-- (((\s_state_generator_0|counter|ff_0|nand_1|output~3_combout\)) # (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|counter|ff_0|nand_1|output~2_combout\,
	datad => \s_state_generator_0|counter|ff_0|nand_1|output~3_combout\,
	combout => \s_state_generator_0|counter|ff_0|nand_1|output~3_combout\);

-- Location: LCCOMB_X2_Y13_N18
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\ = ((!\NEXT_STATE~combout\ & (!\END_STATE~combout\ & \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))) # (!\clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEXT_STATE~combout\,
	datab => \clk~combout\,
	datac => \END_STATE~combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\);

-- Location: LCCOMB_X2_Y13_N8
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~1_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ & (\not_reset~combout\ & ((\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \not_reset~combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~0_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~1_combout\);

-- Location: LCCOMB_X2_Y13_N30
\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ & (\not_reset~combout\ & ((\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\clk~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \clk~combout\,
	datac => \not_reset~combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y13_N24
\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\ & ((!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\) # 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y13_N22
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\ = (!\NEXT_STATE~combout\ & (!\END_STATE~combout\ & ((\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\) # 
-- (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEXT_STATE~combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \END_STATE~combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y13_N20
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ & (((\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\)) # (!\clk~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\,
	datab => \clk~combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\);

-- Location: LCCOMB_X2_Y6_N30
\s_state_generator_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\ = (\clk~combout\ & (\s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\)) # (!\clk~combout\ & ((\s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \clk~combout\,
	datad => \s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\,
	combout => \s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y6_N18
\s_state_generator_0|ms_jk_ff_0|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|ms_jk_ff_0|nand_3_1|output~0_combout\ = (\HLT_flag~combout\ & (\clk~combout\ & \s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HLT_flag~combout\,
	datac => \clk~combout\,
	datad => \s_state_generator_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|ms_jk_ff_0|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X2_Y6_N28
\s_state_generator_0|ms_jk_ff_0|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\ = (!\s_state_generator_0|ms_jk_ff_0|nand_3_1|output~0_combout\ & (((\s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\) # (\s_state_generator_0|ms_jk_ff_1|nand_3_1|output~0_combout\)) # 
-- (!\not_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_reset~combout\,
	datab => \s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\,
	datac => \s_state_generator_0|ms_jk_ff_1|nand_3_1|output~0_combout\,
	datad => \s_state_generator_0|ms_jk_ff_0|nand_3_1|output~0_combout\,
	combout => \s_state_generator_0|ms_jk_ff_0|nand_1|output~1_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LOAD[0]~I\ : cycloneii_io
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
	padio => ww_LOAD(0),
	combout => \LOAD~combout\(0));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y6_N22
\s_state_generator_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|ms_jk_ff_1|nand_1|output~1_combout\ = (\not_reset~combout\ & !\s_state_generator_0|ms_jk_ff_1|nand_1|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \not_reset~combout\,
	datad => \s_state_generator_0|ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \s_state_generator_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NEXT_STATE~I\ : cycloneii_io
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
	padio => ww_NEXT_STATE,
	combout => \NEXT_STATE~combout\);

-- Location: LCCOMB_X1_Y6_N0
\s_state_generator_0|counter|ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\ = (\NEXT_STATE~combout\ & ((\clk~combout\ & ((\s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))) # (!\clk~combout\ & (\s_state_generator_0|counter|ff_0|nand_1|output~3_combout\)))) # 
-- (!\NEXT_STATE~combout\ & (\s_state_generator_0|counter|ff_0|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|counter|ff_0|nand_1|output~3_combout\,
	datab => \NEXT_STATE~combout\,
	datac => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N2
\s_state_generator_0|counter|ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ = (\NEXT_STATE~combout\ & ((\clk~combout\ & ((\s_state_generator_0|counter|ff_1|nand_5|output~1_combout\))) # (!\clk~combout\ & (\s_state_generator_0|counter|ff_1|nand_1|output~3_combout\)))) # 
-- (!\NEXT_STATE~combout\ & (\s_state_generator_0|counter|ff_1|nand_1|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|counter|ff_1|nand_1|output~3_combout\,
	datab => \NEXT_STATE~combout\,
	datac => \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \clk~combout\,
	combout => \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\END_STATE~I\ : cycloneii_io
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
	padio => ww_END_STATE,
	combout => \END_STATE~combout\);

-- Location: LCCOMB_X1_Y6_N22
\s_state_generator_0|counter|ff_2|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|counter|ff_2|nand_1|output~2_combout\ = (\END_STATE~combout\ & (\s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)) # (!\END_STATE~combout\ & (((\s_state_generator_0|counter|ff_0|nand_5|output~1_combout\) # 
-- (\s_state_generator_0|counter|ff_1|nand_5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datab => \END_STATE~combout\,
	datac => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datad => \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	combout => \s_state_generator_0|counter|ff_2|nand_1|output~2_combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LOAD[1]~I\ : cycloneii_io
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
	padio => ww_LOAD(1),
	combout => \LOAD~combout\(1));

-- Location: LCCOMB_X1_Y6_N12
\s_state_generator_0|counter|ff_2|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|counter|ff_2|nand_1|output~1_combout\ = (\NEXT_STATE~combout\ & \clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NEXT_STATE~combout\,
	datad => \clk~combout\,
	combout => \s_state_generator_0|counter|ff_2|nand_1|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N26
\s_state_generator_0|counter|ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|counter|ff_2|nand_1|output~3_combout\ = (\s_state_generator_0|counter|ff_2|nand_1|output~1_combout\ & (((!\s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & \LOAD~combout\(1))) # 
-- (!\s_state_generator_0|counter|ff_2|nand_1|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datab => \s_state_generator_0|counter|ff_2|nand_1|output~2_combout\,
	datac => \LOAD~combout\(1),
	datad => \s_state_generator_0|counter|ff_2|nand_1|output~1_combout\,
	combout => \s_state_generator_0|counter|ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N24
\s_state_generator_0|counter|ff_2|nand_1|output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|counter|ff_2|nand_1|output~4_combout\ = (\s_state_generator_0|counter|ff_2|nand_1|output~3_combout\ & (!\s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)) # (!\s_state_generator_0|counter|ff_2|nand_1|output~3_combout\ & 
-- (((\s_state_generator_0|counter|ff_2|nand_1|output~4_combout\) # (!\not_reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datab => \not_reset~combout\,
	datac => \s_state_generator_0|counter|ff_2|nand_1|output~4_combout\,
	datad => \s_state_generator_0|counter|ff_2|nand_1|output~3_combout\,
	combout => \s_state_generator_0|counter|ff_2|nand_1|output~4_combout\);

-- Location: LCCOMB_X1_Y6_N18
\s_state_generator_0|counter|ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ = (\NEXT_STATE~combout\ & ((\clk~combout\ & (\s_state_generator_0|counter|ff_2|nand_5|output~1_combout\)) # (!\clk~combout\ & ((\s_state_generator_0|counter|ff_2|nand_1|output~4_combout\))))) # 
-- (!\NEXT_STATE~combout\ & (((\s_state_generator_0|counter|ff_2|nand_1|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datab => \NEXT_STATE~combout\,
	datac => \s_state_generator_0|counter|ff_2|nand_1|output~4_combout\,
	datad => \clk~combout\,
	combout => \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y6_N28
\s_state_generator_0|ms_jk_ff_1|nand_1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|ms_jk_ff_1|nand_1|output~2_combout\ = (((!\s_state_generator_0|counter|ff_2|nand_5|output~1_combout\) # (!\s_state_generator_0|counter|ff_1|nand_5|output~1_combout\)) # (!\s_state_generator_0|counter|ff_0|nand_5|output~1_combout\)) # 
-- (!\clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~combout\,
	datab => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	datac => \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	combout => \s_state_generator_0|ms_jk_ff_1|nand_1|output~2_combout\);

-- Location: LCCOMB_X1_Y6_N6
\s_state_generator_0|ms_jk_ff_1|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|ms_jk_ff_1|nand_1|output~3_combout\ = (\s_state_generator_0|ms_jk_ff_1|nand_1|output~1_combout\ & (((!\s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\ & !\s_state_generator_0|ms_jk_ff_1|nand_1|output~2_combout\)))) # 
-- (!\s_state_generator_0|ms_jk_ff_1|nand_1|output~1_combout\ & (((!\s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\s_state_generator_0|ms_jk_ff_1|nand_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state_generator_0|ms_jk_ff_1|nand_3_1|output~0_combout\,
	datab => \s_state_generator_0|ms_jk_ff_1|nand_1|output~1_combout\,
	datac => \s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \s_state_generator_0|ms_jk_ff_1|nand_1|output~2_combout\,
	combout => \s_state_generator_0|ms_jk_ff_1|nand_1|output~3_combout\);

-- Location: LCCOMB_X1_Y6_N8
\s_state_generator_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & ((\s_state_generator_0|ms_jk_ff_1|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \s_state_generator_0|ms_jk_ff_1|nand_1|output~3_combout\,
	combout => \s_state_generator_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y2_N4
\s_state_generator_0|decoder|and_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|decoder|and_3_0|output~0_combout\ = (\s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & (\s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|decoder|and_3_0|output~0_combout\);

-- Location: LCCOMB_X1_Y2_N6
\s_state_generator_0|decoder|and_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|decoder|and_3_1|output~0_combout\ = (\s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & (\s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & !\s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|decoder|and_3_1|output~0_combout\);

-- Location: LCCOMB_X1_Y2_N28
\s_state_generator_0|decoder|and_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|decoder|and_3_2|output~0_combout\ = (\s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & (!\s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|decoder|and_3_2|output~0_combout\);

-- Location: LCCOMB_X1_Y2_N22
\s_state_generator_0|decoder|and_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|decoder|and_3_3|output~0_combout\ = (\s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & (!\s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & !\s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|decoder|and_3_3|output~0_combout\);

-- Location: LCCOMB_X1_Y2_N12
\s_state_generator_0|decoder|and_3_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|decoder|and_3_4|output~0_combout\ = (!\s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & (\s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|decoder|and_3_4|output~0_combout\);

-- Location: LCCOMB_X1_Y2_N10
\s_state_generator_0|decoder|and_3_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|decoder|and_3_5|output~0_combout\ = (!\s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & (\s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & !\s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|decoder|and_3_5|output~0_combout\);

-- Location: LCCOMB_X1_Y2_N20
\s_state_generator_0|decoder|and_3_6|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|decoder|and_3_6|output~0_combout\ = (!\s_state_generator_0|counter|ff_2|nand_5|output~1_combout\ & (!\s_state_generator_0|counter|ff_1|nand_5|output~1_combout\ & \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|decoder|and_3_6|output~0_combout\);

-- Location: LCCOMB_X1_Y2_N26
\s_state_generator_0|decoder|and_3_7|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state_generator_0|decoder|and_3_7|output~combout\ = (\s_state_generator_0|counter|ff_2|nand_5|output~1_combout\) # ((\s_state_generator_0|counter|ff_1|nand_5|output~1_combout\) # (\s_state_generator_0|counter|ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state_generator_0|counter|ff_2|nand_5|output~1_combout\,
	datac => \s_state_generator_0|counter|ff_1|nand_5|output~1_combout\,
	datad => \s_state_generator_0|counter|ff_0|nand_5|output~1_combout\,
	combout => \s_state_generator_0|decoder|and_3_7|output~combout\);

-- Location: LCCOMB_X2_Y13_N26
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\ = (!\NEXT_STATE~combout\ & (!\END_STATE~combout\ & \clk~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEXT_STATE~combout\,
	datac => \END_STATE~combout\,
	datad => \clk~combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\);

-- Location: LCCOMB_X2_Y13_N6
\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & ((\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))) # (!GLOBAL(\clk~clkctrl_outclk\) & 
-- (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_1|output~2_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y13_N12
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~1_combout\ & (((\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\) # 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_3|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\);

-- Location: LCCOMB_X2_Y13_N28
\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & 
-- ((\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datac => \clk~clkctrl_outclk\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_1|output~1_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\);

-- Location: LCCOMB_X2_Y13_N10
\t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\);

-- Location: LCCOMB_X2_Y13_N14
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ & (!\not_reset~combout\ & ((!\t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\) # 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\)))) # (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\ & (((!\t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\)) # 
-- (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~2_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_3_1|output~0_combout\,
	datac => \not_reset~combout\,
	datad => \t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\);

-- Location: LCCOMB_X2_Y13_N16
\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ = (GLOBAL(\clk~clkctrl_outclk\) & (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\)) # (!GLOBAL(\clk~clkctrl_outclk\) & 
-- ((\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_1|output~3_combout\,
	datad => \clk~clkctrl_outclk\,
	combout => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\);

-- Location: LCCOMB_X1_Y13_N0
\t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\);

-- Location: LCCOMB_X1_Y13_N26
\t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\);

-- Location: LCCOMB_X2_Y13_N0
\t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	datac => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\);

-- Location: LCCOMB_X1_Y13_N12
\t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\);

-- Location: LCCOMB_X1_Y13_N2
\t_state_generator_0|decoder_3_to_8_0|and_3_5|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_8_0|and_3_5|output~0_combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- !\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_8_0|and_3_5|output~0_combout\);

-- Location: LCCOMB_X1_Y13_N28
\t_state_generator_0|decoder_3_to_8_0|and_3_6|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_8_0|and_3_6|output~0_combout\ = (!\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\ & (!\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\ & 
-- \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_8_0|and_3_6|output~0_combout\);

-- Location: LCCOMB_X1_Y13_N22
\t_state_generator_0|decoder_3_to_8_0|and_3_7|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_state_generator_0|decoder_3_to_8_0|and_3_7|output~combout\ = (\t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\) # ((\t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\) # 
-- (\t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_state_generator_0|counter_3_0|ms_jk_ff_1|nand_5|output~1_combout\,
	datab => \t_state_generator_0|counter_3_0|ms_jk_ff_2|nand_5|output~1_combout\,
	datad => \t_state_generator_0|counter_3_0|ms_jk_ff_0|nand_5|output~1_combout\,
	combout => \t_state_generator_0|decoder_3_to_8_0|and_3_7|output~combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_state_generator_0|ms_jk_ff_1|nand_5|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HLT_indicator);

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
	datain => \s_state_generator_0|decoder|and_3_0|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(0));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_state_generator_0|decoder|and_3_1|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(1));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_state_generator_0|decoder|and_3_2|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(2));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_state_generator_0|decoder|and_3_3|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(3));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_state_generator_0|decoder|and_3_4|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(4));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_state_generator_0|decoder|and_3_5|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(5));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_state_generator_0|decoder|and_3_6|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(6));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_state_generator_0|decoder|and_3_7|ALT_INV_output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_states(7));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \t_state_generator_0|decoder_3_to_8_0|and_3_0|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(0));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \t_state_generator_0|decoder_3_to_8_0|and_3_1|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(1));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \t_state_generator_0|decoder_3_to_8_0|and_3_2|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(2));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \t_state_generator_0|decoder_3_to_8_0|and_3_3|output~0_combout\,
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
	datain => \t_state_generator_0|decoder_3_to_8_0|and_3_4|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(4));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \t_state_generator_0|decoder_3_to_8_0|and_3_5|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(5));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\t_states[6]~I\ : cycloneii_io
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
	datain => \t_state_generator_0|decoder_3_to_8_0|and_3_6|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(6));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\t_states[7]~I\ : cycloneii_io
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
	datain => \t_state_generator_0|decoder_3_to_8_0|and_3_7|ALT_INV_output~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t_states(7));
END structure;


