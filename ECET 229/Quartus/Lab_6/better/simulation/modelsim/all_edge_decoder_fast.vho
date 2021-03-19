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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "10/24/2017 16:52:06"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	all_edge_decoder IS
    PORT (
	LEDG0 : OUT std_logic;
	zero : IN std_logic;
	clock : IN std_logic;
	EXTCLK : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	LEDG1 : OUT std_logic;
	LEDG2 : OUT std_logic;
	LEDG3 : OUT std_logic;
	aout : OUT std_logic;
	bout : OUT std_logic;
	dir : OUT std_logic;
	LEDG4 : OUT std_logic;
	LEDG5 : OUT std_logic;
	LEDG6 : OUT std_logic;
	LEDG7 : OUT std_logic
	);
END all_edge_decoder;

-- Design Ports Information
-- LEDG0	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG1	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG2	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG3	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aout	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bout	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dir	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG4	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG5	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG6	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG7	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- zero	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXTCLK	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF all_edge_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG0 : std_logic;
SIGNAL ww_zero : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_EXTCLK : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_LEDG1 : std_logic;
SIGNAL ww_LEDG2 : std_logic;
SIGNAL ww_LEDG3 : std_logic;
SIGNAL ww_aout : std_logic;
SIGNAL ww_bout : std_logic;
SIGNAL ww_dir : std_logic;
SIGNAL ww_LEDG4 : std_logic;
SIGNAL ww_LEDG5 : std_logic;
SIGNAL ww_LEDG6 : std_logic;
SIGNAL ww_LEDG7 : std_logic;
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EXTCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|sub|74~0_combout\ : std_logic;
SIGNAL \EXTCLK~combout\ : std_logic;
SIGNAL \EXTCLK~clkctrl_outclk\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \inst16~regout\ : std_logic;
SIGNAL \inst4~regout\ : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \inst1~regout\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \inst15|sub|16~0_combout\ : std_logic;
SIGNAL \zero~combout\ : std_logic;
SIGNAL \inst15|sub|16~regout\ : std_logic;
SIGNAL \inst15|sub|17~0_combout\ : std_logic;
SIGNAL \inst15|sub|17~regout\ : std_logic;
SIGNAL \inst~regout\ : std_logic;
SIGNAL \inst9~combout\ : std_logic;
SIGNAL \inst15|sub|74~0_combout\ : std_logic;
SIGNAL \inst15|sub|18~0_combout\ : std_logic;
SIGNAL \inst15|sub|18~regout\ : std_logic;
SIGNAL \inst15|sub|19~0_combout\ : std_logic;
SIGNAL \inst15|sub|19~regout\ : std_logic;
SIGNAL \inst15|sub|113~0_combout\ : std_logic;
SIGNAL \inst15|sub|113~1_combout\ : std_logic;
SIGNAL \inst14|sub|16~0_combout\ : std_logic;
SIGNAL \inst14|sub|16~regout\ : std_logic;
SIGNAL \inst14|sub|64~0_combout\ : std_logic;
SIGNAL \inst14|sub|17~0_combout\ : std_logic;
SIGNAL \inst14|sub|17~regout\ : std_logic;
SIGNAL \inst14|sub|18~0_combout\ : std_logic;
SIGNAL \inst14|sub|18~regout\ : std_logic;
SIGNAL \inst14|sub|74~1_combout\ : std_logic;
SIGNAL \inst14|sub|19~0_combout\ : std_logic;
SIGNAL \inst14|sub|19~regout\ : std_logic;
SIGNAL \ALT_INV_zero~combout\ : std_logic;

BEGIN

LEDG0 <= ww_LEDG0;
ww_zero <= zero;
ww_clock <= clock;
ww_EXTCLK <= EXTCLK;
ww_A <= A;
ww_B <= B;
LEDG1 <= ww_LEDG1;
LEDG2 <= ww_LEDG2;
LEDG3 <= ww_LEDG3;
aout <= ww_aout;
bout <= ww_bout;
dir <= ww_dir;
LEDG4 <= ww_LEDG4;
LEDG5 <= ww_LEDG5;
LEDG6 <= ww_LEDG6;
LEDG7 <= ww_LEDG7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\EXTCLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \EXTCLK~combout\);
\ALT_INV_zero~combout\ <= NOT \zero~combout\;

-- Location: LCCOMB_X49_Y7_N28
\inst14|sub|74~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|sub|74~0_combout\ = \inst16~regout\ $ (\inst14|sub|17~regout\ $ (\inst~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~regout\,
	datab => \inst14|sub|17~regout\,
	datad => \inst~regout\,
	combout => \inst14|sub|74~0_combout\);

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXTCLK~I\ : cycloneii_io
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
	padio => ww_EXTCLK,
	combout => \EXTCLK~combout\);

-- Location: CLKCTRL_G7
\EXTCLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \EXTCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \EXTCLK~clkctrl_outclk\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B~I\ : cycloneii_io
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
	padio => ww_B,
	combout => \B~combout\);

-- Location: LCFF_X49_Y7_N23
inst16 : cycloneii_lcell_ff
PORT MAP (
	clk => \EXTCLK~clkctrl_outclk\,
	sdata => \B~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16~regout\);

-- Location: LCFF_X49_Y7_N5
inst4 : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst16~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4~regout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A~I\ : cycloneii_io
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
	padio => ww_A,
	combout => \A~combout\);

-- Location: LCFF_X49_Y7_N29
inst1 : cycloneii_lcell_ff
PORT MAP (
	clk => \EXTCLK~clkctrl_outclk\,
	sdata => \A~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1~regout\);

-- Location: LCCOMB_X49_Y7_N4
inst8 : cycloneii_lcell_comb
-- Equation(s):
-- \inst8~combout\ = (\inst~regout\ & ((\inst16~regout\ $ (\inst4~regout\)) # (!\inst1~regout\))) # (!\inst~regout\ & ((\inst1~regout\) # (\inst16~regout\ $ (\inst4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~regout\,
	datab => \inst16~regout\,
	datac => \inst4~regout\,
	datad => \inst1~regout\,
	combout => \inst8~combout\);

-- Location: LCCOMB_X49_Y7_N16
\inst15|sub|16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|sub|16~0_combout\ = \inst15|sub|16~regout\ $ (\inst8~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|sub|16~regout\,
	datad => \inst8~combout\,
	combout => \inst15|sub|16~0_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\zero~I\ : cycloneii_io
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
	padio => ww_zero,
	combout => \zero~combout\);

-- Location: LCFF_X49_Y7_N17
\inst15|sub|16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst15|sub|16~0_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|sub|16~regout\);

-- Location: LCCOMB_X49_Y7_N6
\inst15|sub|17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|sub|17~0_combout\ = \inst15|sub|17~regout\ $ (((\inst8~combout\ & (\inst9~combout\ $ (\inst15|sub|16~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~combout\,
	datab => \inst15|sub|16~regout\,
	datac => \inst15|sub|17~regout\,
	datad => \inst8~combout\,
	combout => \inst15|sub|17~0_combout\);

-- Location: LCFF_X49_Y7_N7
\inst15|sub|17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst15|sub|17~0_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|sub|17~regout\);

-- Location: LCFF_X49_Y7_N11
inst : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst1~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst~regout\);

-- Location: LCCOMB_X49_Y7_N10
inst9 : cycloneii_lcell_comb
-- Equation(s):
-- \inst9~combout\ = \inst~regout\ $ (\inst16~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst~regout\,
	datad => \inst16~regout\,
	combout => \inst9~combout\);

-- Location: LCCOMB_X49_Y7_N2
\inst15|sub|74~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|sub|74~0_combout\ = (\inst8~combout\ & ((\inst15|sub|16~regout\ & (!\inst9~combout\ & \inst15|sub|17~regout\)) # (!\inst15|sub|16~regout\ & (\inst9~combout\ & !\inst15|sub|17~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|sub|16~regout\,
	datab => \inst9~combout\,
	datac => \inst15|sub|17~regout\,
	datad => \inst8~combout\,
	combout => \inst15|sub|74~0_combout\);

-- Location: LCCOMB_X49_Y7_N8
\inst15|sub|18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|sub|18~0_combout\ = \inst15|sub|18~regout\ $ (\inst15|sub|74~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|sub|18~regout\,
	datad => \inst15|sub|74~0_combout\,
	combout => \inst15|sub|18~0_combout\);

-- Location: LCFF_X49_Y7_N9
\inst15|sub|18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst15|sub|18~0_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|sub|18~regout\);

-- Location: LCCOMB_X49_Y7_N14
\inst15|sub|19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|sub|19~0_combout\ = \inst15|sub|19~regout\ $ (((\inst15|sub|74~0_combout\ & (\inst9~combout\ $ (\inst15|sub|18~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~combout\,
	datab => \inst15|sub|18~regout\,
	datac => \inst15|sub|19~regout\,
	datad => \inst15|sub|74~0_combout\,
	combout => \inst15|sub|19~0_combout\);

-- Location: LCFF_X49_Y7_N15
\inst15|sub|19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst15|sub|19~0_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|sub|19~regout\);

-- Location: LCCOMB_X49_Y7_N24
\inst15|sub|113~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|sub|113~0_combout\ = (\inst15|sub|16~regout\ & (\inst15|sub|19~regout\ & (\inst15|sub|18~regout\ & \inst15|sub|17~regout\))) # (!\inst15|sub|16~regout\ & (!\inst15|sub|19~regout\ & (!\inst15|sub|18~regout\ & !\inst15|sub|17~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|sub|16~regout\,
	datab => \inst15|sub|19~regout\,
	datac => \inst15|sub|18~regout\,
	datad => \inst15|sub|17~regout\,
	combout => \inst15|sub|113~0_combout\);

-- Location: LCCOMB_X49_Y7_N12
\inst15|sub|113~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|sub|113~1_combout\ = (\inst8~combout\ & (\inst15|sub|113~0_combout\ & (\inst15|sub|17~regout\ $ (\inst9~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|sub|17~regout\,
	datab => \inst8~combout\,
	datac => \inst15|sub|113~0_combout\,
	datad => \inst9~combout\,
	combout => \inst15|sub|113~1_combout\);

-- Location: LCCOMB_X49_Y7_N20
\inst14|sub|16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|sub|16~0_combout\ = \inst14|sub|16~regout\ $ (\inst15|sub|113~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|sub|16~regout\,
	datad => \inst15|sub|113~1_combout\,
	combout => \inst14|sub|16~0_combout\);

-- Location: LCFF_X49_Y7_N21
\inst14|sub|16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|sub|16~0_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|sub|16~regout\);

-- Location: LCCOMB_X49_Y7_N22
\inst14|sub|64~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|sub|64~0_combout\ = \inst14|sub|16~regout\ $ (\inst16~regout\ $ (\inst~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|sub|16~regout\,
	datac => \inst16~regout\,
	datad => \inst~regout\,
	combout => \inst14|sub|64~0_combout\);

-- Location: LCCOMB_X49_Y7_N26
\inst14|sub|17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|sub|17~0_combout\ = \inst14|sub|17~regout\ $ (((\inst15|sub|113~1_combout\ & \inst14|sub|64~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|sub|113~1_combout\,
	datac => \inst14|sub|17~regout\,
	datad => \inst14|sub|64~0_combout\,
	combout => \inst14|sub|17~0_combout\);

-- Location: LCFF_X49_Y7_N27
\inst14|sub|17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|sub|17~0_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|sub|17~regout\);

-- Location: LCCOMB_X49_Y7_N0
\inst14|sub|18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|sub|18~0_combout\ = \inst14|sub|18~regout\ $ (((\inst14|sub|74~0_combout\ & (\inst14|sub|64~0_combout\ & \inst15|sub|113~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|sub|74~0_combout\,
	datab => \inst14|sub|64~0_combout\,
	datac => \inst14|sub|18~regout\,
	datad => \inst15|sub|113~1_combout\,
	combout => \inst14|sub|18~0_combout\);

-- Location: LCFF_X49_Y7_N1
\inst14|sub|18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|sub|18~0_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|sub|18~regout\);

-- Location: LCCOMB_X49_Y7_N18
\inst14|sub|74~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|sub|74~1_combout\ = (\inst15|sub|113~1_combout\ & ((\inst14|sub|16~regout\ & (!\inst9~combout\ & \inst14|sub|17~regout\)) # (!\inst14|sub|16~regout\ & (\inst9~combout\ & !\inst14|sub|17~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|sub|16~regout\,
	datab => \inst9~combout\,
	datac => \inst14|sub|17~regout\,
	datad => \inst15|sub|113~1_combout\,
	combout => \inst14|sub|74~1_combout\);

-- Location: LCCOMB_X49_Y7_N30
\inst14|sub|19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|sub|19~0_combout\ = \inst14|sub|19~regout\ $ (((\inst14|sub|74~1_combout\ & (\inst9~combout\ $ (\inst14|sub|18~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~combout\,
	datab => \inst14|sub|18~regout\,
	datac => \inst14|sub|19~regout\,
	datad => \inst14|sub|74~1_combout\,
	combout => \inst14|sub|19~0_combout\);

-- Location: LCFF_X49_Y7_N31
\inst14|sub|19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|sub|19~0_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|sub|19~regout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG0~I\ : cycloneii_io
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
	datain => \inst15|sub|16~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG0);

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG1~I\ : cycloneii_io
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
	datain => \inst15|sub|17~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG1);

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG2~I\ : cycloneii_io
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
	datain => \inst15|sub|18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG2);

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG3~I\ : cycloneii_io
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
	datain => \inst15|sub|19~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG3);

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aout~I\ : cycloneii_io
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
	datain => \inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aout);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bout~I\ : cycloneii_io
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
	datain => \inst16~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bout);

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dir~I\ : cycloneii_io
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
	datain => \inst9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dir);

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG4~I\ : cycloneii_io
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
	datain => \inst14|sub|16~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG4);

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG5~I\ : cycloneii_io
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
	datain => \inst14|sub|17~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG5);

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG6~I\ : cycloneii_io
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
	datain => \inst14|sub|18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG6);

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG7~I\ : cycloneii_io
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
	datain => \inst14|sub|19~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG7);
END structure;


