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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "09/21/2013 21:53:12"

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

ENTITY 	Simple IS
    PORT (
	LEDG0 : OUT std_logic;
	zero : IN std_logic;
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
END Simple;

-- Design Ports Information
-- LEDG0	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG1	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG2	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG3	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aout	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bout	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dir	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG4	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG5	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG6	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG7	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- zero	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Simple IS
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
SIGNAL \inst4|sub|74~0_combout\ : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \inst1|sub|16~0_combout\ : std_logic;
SIGNAL \zero~combout\ : std_logic;
SIGNAL \inst1|sub|16~regout\ : std_logic;
SIGNAL \inst~regout\ : std_logic;
SIGNAL \inst1|sub|17~0_combout\ : std_logic;
SIGNAL \inst1|sub|17~regout\ : std_logic;
SIGNAL \inst1|sub|18~0_combout\ : std_logic;
SIGNAL \inst1|sub|18~regout\ : std_logic;
SIGNAL \inst1|sub|89~0_combout\ : std_logic;
SIGNAL \inst1|sub|19~0_combout\ : std_logic;
SIGNAL \inst1|sub|19~regout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \inst4|sub|16~0_combout\ : std_logic;
SIGNAL \inst4|sub|16~regout\ : std_logic;
SIGNAL \inst4|sub|17~0_combout\ : std_logic;
SIGNAL \inst4|sub|17~1_combout\ : std_logic;
SIGNAL \inst4|sub|17~regout\ : std_logic;
SIGNAL \inst4|sub|18~0_combout\ : std_logic;
SIGNAL \inst4|sub|18~regout\ : std_logic;
SIGNAL \inst4|sub|19~0_combout\ : std_logic;
SIGNAL \inst4|sub|19~1_combout\ : std_logic;
SIGNAL \inst4|sub|19~regout\ : std_logic;
SIGNAL \ALT_INV_zero~combout\ : std_logic;
SIGNAL \ALT_INV_B~combout\ : std_logic;
SIGNAL \ALT_INV_A~combout\ : std_logic;

BEGIN

LEDG0 <= ww_LEDG0;
ww_zero <= zero;
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
\ALT_INV_zero~combout\ <= NOT \zero~combout\;
\ALT_INV_B~combout\ <= NOT \B~combout\;
\ALT_INV_A~combout\ <= NOT \A~combout\;

-- Location: LCCOMB_X49_Y9_N10
\inst4|sub|74~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|sub|74~0_combout\ = \inst4|sub|17~regout\ $ (\inst~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|sub|17~regout\,
	datad => \inst~regout\,
	combout => \inst4|sub|74~0_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y9_N16
\inst1|sub|16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|sub|16~0_combout\ = !\inst1|sub|16~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sub|16~regout\,
	combout => \inst1|sub|16~0_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X49_Y9_N17
\inst1|sub|16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_A~combout\,
	datain => \inst1|sub|16~0_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sub|16~regout\);

-- Location: LCFF_X49_Y9_N13
inst : cycloneii_lcell_ff
PORT MAP (
	clk => \B~combout\,
	sdata => \A~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst~regout\);

-- Location: LCCOMB_X49_Y9_N22
\inst1|sub|17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|sub|17~0_combout\ = \inst~regout\ $ (\inst1|sub|17~regout\ $ (\inst1|sub|16~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst~regout\,
	datac => \inst1|sub|17~regout\,
	datad => \inst1|sub|16~regout\,
	combout => \inst1|sub|17~0_combout\);

-- Location: LCFF_X49_Y9_N23
\inst1|sub|17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_A~combout\,
	datain => \inst1|sub|17~0_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sub|17~regout\);

-- Location: LCCOMB_X49_Y9_N24
\inst1|sub|18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|sub|18~0_combout\ = \inst1|sub|18~regout\ $ (((\inst~regout\ & (!\inst1|sub|17~regout\ & !\inst1|sub|16~regout\)) # (!\inst~regout\ & (\inst1|sub|17~regout\ & \inst1|sub|16~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~regout\,
	datab => \inst1|sub|17~regout\,
	datac => \inst1|sub|18~regout\,
	datad => \inst1|sub|16~regout\,
	combout => \inst1|sub|18~0_combout\);

-- Location: LCFF_X49_Y9_N25
\inst1|sub|18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_A~combout\,
	datain => \inst1|sub|18~0_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sub|18~regout\);

-- Location: LCCOMB_X49_Y9_N30
\inst1|sub|89~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|sub|89~0_combout\ = (\inst1|sub|16~regout\ & (\inst1|sub|17~regout\ & (\inst1|sub|18~regout\ & !\inst~regout\))) # (!\inst1|sub|16~regout\ & (!\inst1|sub|17~regout\ & (!\inst1|sub|18~regout\ & \inst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|16~regout\,
	datab => \inst1|sub|17~regout\,
	datac => \inst1|sub|18~regout\,
	datad => \inst~regout\,
	combout => \inst1|sub|89~0_combout\);

-- Location: LCCOMB_X49_Y9_N14
\inst1|sub|19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|sub|19~0_combout\ = \inst1|sub|19~regout\ $ (\inst1|sub|89~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sub|19~regout\,
	datad => \inst1|sub|89~0_combout\,
	combout => \inst1|sub|19~0_combout\);

-- Location: LCFF_X49_Y9_N15
\inst1|sub|19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_A~combout\,
	datain => \inst1|sub|19~0_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sub|19~regout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y9_N26
\inst4|sub|16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|sub|16~0_combout\ = \inst4|sub|16~regout\ $ (((\inst1|sub|89~0_combout\ & (\inst1|sub|19~regout\ $ (\inst~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|19~regout\,
	datab => \inst~regout\,
	datac => \inst4|sub|16~regout\,
	datad => \inst1|sub|89~0_combout\,
	combout => \inst4|sub|16~0_combout\);

-- Location: LCFF_X49_Y9_N27
\inst4|sub|16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_A~combout\,
	datain => \inst4|sub|16~0_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|sub|16~regout\);

-- Location: LCCOMB_X49_Y9_N28
\inst4|sub|17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|sub|17~0_combout\ = (\inst4|sub|16~regout\ & ((\inst~regout\) # (!\inst1|sub|19~regout\))) # (!\inst4|sub|16~regout\ & ((\inst1|sub|19~regout\) # (!\inst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sub|16~regout\,
	datac => \inst1|sub|19~regout\,
	datad => \inst~regout\,
	combout => \inst4|sub|17~0_combout\);

-- Location: LCCOMB_X49_Y9_N8
\inst4|sub|17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|sub|17~1_combout\ = \inst4|sub|17~regout\ $ (((\inst1|sub|89~0_combout\ & !\inst4|sub|17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sub|89~0_combout\,
	datac => \inst4|sub|17~regout\,
	datad => \inst4|sub|17~0_combout\,
	combout => \inst4|sub|17~1_combout\);

-- Location: LCFF_X49_Y9_N9
\inst4|sub|17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_A~combout\,
	datain => \inst4|sub|17~1_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|sub|17~regout\);

-- Location: LCCOMB_X49_Y9_N6
\inst4|sub|18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|sub|18~0_combout\ = \inst4|sub|18~regout\ $ (((\inst4|sub|74~0_combout\ & (\inst1|sub|89~0_combout\ & !\inst4|sub|17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sub|74~0_combout\,
	datab => \inst1|sub|89~0_combout\,
	datac => \inst4|sub|18~regout\,
	datad => \inst4|sub|17~0_combout\,
	combout => \inst4|sub|18~0_combout\);

-- Location: LCFF_X49_Y9_N7
\inst4|sub|18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_A~combout\,
	datain => \inst4|sub|18~0_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|sub|18~regout\);

-- Location: LCCOMB_X49_Y9_N0
\inst4|sub|19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|sub|19~0_combout\ = (\inst4|sub|18~regout\ & (\inst4|sub|16~regout\ & (\inst1|sub|19~regout\ & !\inst~regout\))) # (!\inst4|sub|18~regout\ & (!\inst4|sub|16~regout\ & (!\inst1|sub|19~regout\ & \inst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sub|18~regout\,
	datab => \inst4|sub|16~regout\,
	datac => \inst1|sub|19~regout\,
	datad => \inst~regout\,
	combout => \inst4|sub|19~0_combout\);

-- Location: LCCOMB_X49_Y9_N20
\inst4|sub|19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|sub|19~1_combout\ = \inst4|sub|19~regout\ $ (((\inst4|sub|74~0_combout\ & (\inst1|sub|89~0_combout\ & \inst4|sub|19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sub|74~0_combout\,
	datab => \inst1|sub|89~0_combout\,
	datac => \inst4|sub|19~regout\,
	datad => \inst4|sub|19~0_combout\,
	combout => \inst4|sub|19~1_combout\);

-- Location: LCFF_X49_Y9_N21
\inst4|sub|19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_A~combout\,
	datain => \inst4|sub|19~1_combout\,
	aclr => \ALT_INV_zero~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|sub|19~regout\);

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
	datain => \inst1|sub|16~regout\,
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
	datain => \inst1|sub|17~regout\,
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
	datain => \inst1|sub|18~regout\,
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
	datain => \inst1|sub|19~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG3);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALT_INV_A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aout);

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALT_INV_B~combout\,
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
	datain => \inst~regout\,
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
	datain => \inst4|sub|16~regout\,
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
	datain => \inst4|sub|17~regout\,
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
	datain => \inst4|sub|18~regout\,
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
	datain => \inst4|sub|19~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG7);
END structure;


