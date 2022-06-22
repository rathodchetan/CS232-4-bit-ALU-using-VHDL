-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "02/08/2022 19:39:02"

-- 
-- Device: Altera 5M160ZM68C4 Package MBGA68
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	FourbitALU IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	result : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END FourbitALU;

-- Design Ports Information


ARCHITECTURE structure OF FourbitALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL \ASINST|XORINST11|ORINST1|C~0_combout\ : std_logic;
SIGNAL \ORINST6|ORINST1|C~5_combout\ : std_logic;
SIGNAL \THREEANDINST3|ANDINST2|C~0_combout\ : std_logic;
SIGNAL \ORINST6|ORINST1|C~8_combout\ : std_logic;
SIGNAL \ORINST6|ORINST1|C~6_combout\ : std_logic;
SIGNAL \ORINST6|ORINST1|C~2_combout\ : std_logic;
SIGNAL \ORINST6|ORINST1|C~3_combout\ : std_logic;
SIGNAL \THREEANDINST2|ANDINST2|C~0_combout\ : std_logic;
SIGNAL \ORINST6|ORINST1|C~4_combout\ : std_logic;
SIGNAL \ORINST6|ORINST1|C~7_combout\ : std_logic;
SIGNAL \ORINST6|ORINST2|C~2_combout\ : std_logic;
SIGNAL \ASINST|XORINST22|ORINST1|C~0_combout\ : std_logic;
SIGNAL \EAINST1|ANDINST2|C~0_combout\ : std_logic;
SIGNAL \CINST|XNORINST4|ORINST1|C~0_combout\ : std_logic;
SIGNAL \CINST|XNORINST2|ORINST1|C~0_combout\ : std_logic;
SIGNAL \EAINST3|ANDINST2|C~0_combout\ : std_logic;
SIGNAL \ORINST6|ORINST2|C~1_combout\ : std_logic;
SIGNAL \THREEANDINST1|ANDINST2|C~0_combout\ : std_logic;
SIGNAL \MINST|ANDINST6|C~combout\ : std_logic;
SIGNAL \MINST|HA1|XORINST|ORINST1|C~0_combout\ : std_logic;
SIGNAL \ORINST6|ORINST2|C~0_combout\ : std_logic;
SIGNAL \ORINST6|ORINST2|C~3_combout\ : std_logic;
SIGNAL \ORINST6|ORINST3|C~0_combout\ : std_logic;
SIGNAL \ASINST|c[1]~2_combout\ : std_logic;
SIGNAL \ASINST|c[2]~4_combout\ : std_logic;
SIGNAL \ASINST|XORINST32|ORINST1|C~0_combout\ : std_logic;
SIGNAL \ORINST6|ORINST3|C~1_combout\ : std_logic;
SIGNAL \NAINST|NANDINST3|ANDINST1|C~combout\ : std_logic;
SIGNAL \MINST|HA1|ANDINST|C~combout\ : std_logic;
SIGNAL \MINST|FA1|HADDINST2|XORINST|ORINST1|C~0_combout\ : std_logic;
SIGNAL \MINST|ANDINST9|C~combout\ : std_logic;
SIGNAL \ORINST6|ORINST3|C~2_combout\ : std_logic;
SIGNAL \ORINST6|ORINST3|C~3_combout\ : std_logic;
SIGNAL \ORINST6|ORINST3|C~4_combout\ : std_logic;
SIGNAL \ORINST6|ORINST3|C~5_combout\ : std_logic;
SIGNAL \ORINST6|ORINST3|C~6_combout\ : std_logic;
SIGNAL \ORINST6|ORINST4|C~0_combout\ : std_logic;
SIGNAL \MINST|ANDINST16|C~combout\ : std_logic;
SIGNAL \ORINST6|ORINST4|C~1_combout\ : std_logic;
SIGNAL \ASINST|c[2]~3_combout\ : std_logic;
SIGNAL \ASINST|XORINST42|ORINST1|C~0_combout\ : std_logic;
SIGNAL \EAINST1|ANDINST2|C~1_combout\ : std_logic;
SIGNAL \ORINST6|ORINST4|C~2_combout\ : std_logic;
SIGNAL \MINST|ANDINST10|C~combout\ : std_logic;
SIGNAL \MINST|FA2|HADDINST2|XORINST|ORINST1|C~0_combout\ : std_logic;
SIGNAL \MINST|FA2|HADDINST1|XORINST|ORINST1|C~0_combout\ : std_logic;
SIGNAL \MINST|HA3|ANDINST|C~combout\ : std_logic;
SIGNAL \MINST|FA3|HADDINST2|XORINST|ORINST1|C~0_combout\ : std_logic;
SIGNAL \MINST|ANDINST13|C~combout\ : std_logic;
SIGNAL \ORINST6|ORINST4|C~3_combout\ : std_logic;
SIGNAL \ASINST|ANDINST21|C~0_combout\ : std_logic;
SIGNAL \ASINST|output[4]~2_combout\ : std_logic;
SIGNAL \ASINST|output[4]~3_combout\ : std_logic;
SIGNAL \ASINST|output[4]~0_combout\ : std_logic;
SIGNAL \CINST|XNORINST3|ORINST1|C~0_combout\ : std_logic;
SIGNAL \ASINST|output[4]~1_combout\ : std_logic;
SIGNAL \MINST|FA4|HADDINST2|XORINST|ORINST1|C~0_combout\ : std_logic;
SIGNAL \MINST|ANDINST8|C~0_combout\ : std_logic;
SIGNAL \MINST|ANDINST4|C~combout\ : std_logic;
SIGNAL \MINST|HA2|XORINST|ORINST1|C~0_combout\ : std_logic;
SIGNAL \MINST|FA4|HADDINST1|XORINST|ORINST1|C~0_combout\ : std_logic;
SIGNAL \MINST|FA6|HADDINST1|XORINST|ORINST1|C~0_combout\ : std_logic;
SIGNAL \EAINST2|ANDINST5|C~combout\ : std_logic;
SIGNAL \ORINST1|ORINST5|C~combout\ : std_logic;
SIGNAL \MINST|FA6|HADDINST1|ANDINST|C~combout\ : std_logic;
SIGNAL \MINST|FA6|HADDINST2|ANDINST|C~combout\ : std_logic;
SIGNAL \MINST|FA5|HADDINST1|XORINST|ORINST1|C~0_combout\ : std_logic;
SIGNAL \MINST|FA5|HADDINST2|XORINST|ORINST1|C~0_combout\ : std_logic;
SIGNAL \MINST|FA7|HADDINST1|XORINST|ORINST1|C~0_combout\ : std_logic;
SIGNAL \EAINST2|ANDINST6|C~combout\ : std_logic;
SIGNAL \MINST|FA7|HADDINST1|ANDINST|C~combout\ : std_logic;
SIGNAL \MINST|FA8|HADDINST2|XORINST|ORINST1|C~0_combout\ : std_logic;
SIGNAL \MINST|FA5|HADDINST1|ANDINST|C~0_combout\ : std_logic;
SIGNAL \MINST|FA8|HADDINST1|XORINST|ORINST1|C~0_combout\ : std_logic;
SIGNAL \EAINST2|ANDINST7|C~combout\ : std_logic;
SIGNAL \MINST|FA8|HADDINST1|ANDINST|C~0_combout\ : std_logic;
SIGNAL \EAINST2|ANDINST8|C~combout\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sel~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_sel <= sel;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LC_X5_Y4_N3
\ASINST|XORINST11|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \ASINST|XORINST11|ORINST1|C~0_combout\ = (\a~combout\(0) $ ((\b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(0),
	datac => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ASINST|XORINST11|ORINST1|C~0_combout\);

-- Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sel(2),
	combout => \sel~combout\(2));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sel(1),
	combout => \sel~combout\(1));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sel(0),
	combout => \sel~combout\(0));

-- Location: LC_X5_Y4_N5
\ORINST6|ORINST1|C~5\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST1|C~5_combout\ = (\ASINST|XORINST11|ORINST1|C~0_combout\ & ((\sel~combout\(2) & (\sel~combout\(1) & !\sel~combout\(0))) # (!\sel~combout\(2) & (!\sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0282",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ASINST|XORINST11|ORINST1|C~0_combout\,
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST1|C~5_combout\);

-- Location: LC_X6_Y4_N9
\THREEANDINST3|ANDINST2|C~0\ : maxv_lcell
-- Equation(s):
-- \THREEANDINST3|ANDINST2|C~0_combout\ = (!\sel~combout\(0) & (((\sel~combout\(2) & !\sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datac => \sel~combout\(2),
	datad => \sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \THREEANDINST3|ANDINST2|C~0_combout\);

-- Location: LC_X5_Y4_N7
\ORINST6|ORINST1|C~8\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST1|C~8_combout\ = (\a~combout\(0) & (\sel~combout\(1) & (\sel~combout\(2) $ (!\sel~combout\(0))))) # (!\a~combout\(0) & (((\sel~combout\(2) & \sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \sel~combout\(2),
	datac => \a~combout\(0),
	datad => \sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST1|C~8_combout\);

-- Location: LC_X6_Y3_N6
\ORINST6|ORINST1|C~6\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST1|C~6_combout\ = (\THREEANDINST3|ANDINST2|C~0_combout\ & (((\ORINST6|ORINST1|C~8_combout\) # (!\a~combout\(0))) # (!\b~combout\(0)))) # (!\THREEANDINST3|ANDINST2|C~0_combout\ & (\ORINST6|ORINST1|C~8_combout\ & (\b~combout\(0) $ 
-- (!\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \THREEANDINST3|ANDINST2|C~0_combout\,
	datab => \b~combout\(0),
	datac => \a~combout\(0),
	datad => \ORINST6|ORINST1|C~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST1|C~6_combout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LC_X6_Y3_N8
\ORINST6|ORINST1|C~2\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST1|C~2_combout\ = (\b~combout\(1) & (((!\a~combout\(0) & \b~combout\(0))) # (!\a~combout\(1)))) # (!\b~combout\(1) & (!\a~combout\(1) & (!\a~combout\(0) & \b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2b22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST1|C~2_combout\);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LC_X6_Y3_N9
\ORINST6|ORINST1|C~3\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST1|C~3_combout\ = (\ORINST6|ORINST1|C~2_combout\ & (((\b~combout\(2)) # (!\a~combout\(2))))) # (!\ORINST6|ORINST1|C~2_combout\ & (((\b~combout\(2) & !\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ORINST6|ORINST1|C~2_combout\,
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST1|C~3_combout\);

-- Location: LC_X4_Y4_N5
\THREEANDINST2|ANDINST2|C~0\ : maxv_lcell
-- Equation(s):
-- \THREEANDINST2|ANDINST2|C~0_combout\ = ((!\sel~combout\(2) & (\sel~combout\(0) & \sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sel~combout\(2),
	datac => \sel~combout\(0),
	datad => \sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \THREEANDINST2|ANDINST2|C~0_combout\);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LC_X6_Y3_N0
\ORINST6|ORINST1|C~4\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST1|C~4_combout\ = (\THREEANDINST2|ANDINST2|C~0_combout\ & ((\a~combout\(3) & (\ORINST6|ORINST1|C~3_combout\ & \b~combout\(3))) # (!\a~combout\(3) & ((\ORINST6|ORINST1|C~3_combout\) # (\b~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \ORINST6|ORINST1|C~3_combout\,
	datac => \THREEANDINST2|ANDINST2|C~0_combout\,
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST1|C~4_combout\);

-- Location: LC_X6_Y3_N1
\ORINST6|ORINST1|C~7\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST1|C~7_combout\ = (\ORINST6|ORINST1|C~5_combout\) # (((\ORINST6|ORINST1|C~6_combout\) # (\ORINST6|ORINST1|C~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ORINST6|ORINST1|C~5_combout\,
	datac => \ORINST6|ORINST1|C~6_combout\,
	datad => \ORINST6|ORINST1|C~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST1|C~7_combout\);

-- Location: LC_X5_Y4_N9
\ORINST6|ORINST2|C~2\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST2|C~2_combout\ = (\sel~combout\(1) & (\a~combout\(1) $ (\sel~combout\(0) $ (\b~combout\(1))))) # (!\sel~combout\(1) & (!\a~combout\(1) & (\sel~combout\(0) & !\b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8238",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \a~combout\(1),
	datac => \sel~combout\(0),
	datad => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST2|C~2_combout\);

-- Location: LC_X5_Y4_N4
\ASINST|XORINST22|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \ASINST|XORINST22|ORINST1|C~0_combout\ = \b~combout\(1) $ (((\b~combout\(0) & (\a~combout\(0) $ (\sel~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d728",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datac => \sel~combout\(0),
	datad => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ASINST|XORINST22|ORINST1|C~0_combout\);

-- Location: LC_X5_Y4_N8
\EAINST1|ANDINST2|C~0\ : maxv_lcell
-- Equation(s):
-- \EAINST1|ANDINST2|C~0_combout\ = (!\sel~combout\(1) & (!\sel~combout\(2) & (\a~combout\(1) $ (\ASINST|XORINST22|ORINST1|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0014",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \a~combout\(1),
	datac => \ASINST|XORINST22|ORINST1|C~0_combout\,
	datad => \sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EAINST1|ANDINST2|C~0_combout\);

-- Location: LC_X5_Y3_N8
\CINST|XNORINST4|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \CINST|XNORINST4|ORINST1|C~0_combout\ = (\a~combout\(3) $ ((\b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(3),
	datac => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CINST|XNORINST4|ORINST1|C~0_combout\);

-- Location: LC_X4_Y1_N2
\CINST|XNORINST2|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \CINST|XNORINST2|ORINST1|C~0_combout\ = ((\a~combout\(1) $ (\b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(1),
	datad => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CINST|XNORINST2|ORINST1|C~0_combout\);

-- Location: LC_X4_Y3_N2
\EAINST3|ANDINST2|C~0\ : maxv_lcell
-- Equation(s):
-- \EAINST3|ANDINST2|C~0_combout\ = (\THREEANDINST2|ANDINST2|C~0_combout\ & (!\CINST|XNORINST2|ORINST1|C~0_combout\ & (\b~combout\(2) $ (!\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0804",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \THREEANDINST2|ANDINST2|C~0_combout\,
	datac => \CINST|XNORINST2|ORINST1|C~0_combout\,
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EAINST3|ANDINST2|C~0_combout\);

-- Location: LC_X5_Y4_N6
\ORINST6|ORINST2|C~1\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST2|C~1_combout\ = (\EAINST1|ANDINST2|C~0_combout\) # ((!\CINST|XNORINST4|ORINST1|C~0_combout\ & (\EAINST3|ANDINST2|C~0_combout\ & !\ASINST|XORINST11|ORINST1|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EAINST1|ANDINST2|C~0_combout\,
	datab => \CINST|XNORINST4|ORINST1|C~0_combout\,
	datac => \EAINST3|ANDINST2|C~0_combout\,
	datad => \ASINST|XORINST11|ORINST1|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST2|C~1_combout\);

-- Location: LC_X6_Y4_N5
\THREEANDINST1|ANDINST2|C~0\ : maxv_lcell
-- Equation(s):
-- \THREEANDINST1|ANDINST2|C~0_combout\ = (!\sel~combout\(0) & (((!\sel~combout\(2) & \sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datac => \sel~combout\(2),
	datad => \sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \THREEANDINST1|ANDINST2|C~0_combout\);

-- Location: LC_X6_Y2_N8
\MINST|ANDINST6|C\ : maxv_lcell
-- Equation(s):
-- \MINST|ANDINST6|C~combout\ = ((\a~combout\(1) & (\b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(1),
	datac => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|ANDINST6|C~combout\);

-- Location: LC_X5_Y4_N0
\MINST|HA1|XORINST|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|HA1|XORINST|ORINST1|C~0_combout\ = (\b~combout\(0) & (\a~combout\(1) $ (((\a~combout\(0) & \b~combout\(1)))))) # (!\b~combout\(0) & (((\a~combout\(0) & \b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(1),
	datac => \a~combout\(0),
	datad => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|HA1|XORINST|ORINST1|C~0_combout\);

-- Location: LC_X5_Y4_N1
\ORINST6|ORINST2|C~0\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST2|C~0_combout\ = (\THREEANDINST1|ANDINST2|C~0_combout\ & ((\MINST|HA1|XORINST|ORINST1|C~0_combout\) # ((!\MINST|ANDINST6|C~combout\ & \THREEANDINST3|ANDINST2|C~0_combout\)))) # (!\THREEANDINST1|ANDINST2|C~0_combout\ & 
-- (!\MINST|ANDINST6|C~combout\ & (\THREEANDINST3|ANDINST2|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \THREEANDINST1|ANDINST2|C~0_combout\,
	datab => \MINST|ANDINST6|C~combout\,
	datac => \THREEANDINST3|ANDINST2|C~0_combout\,
	datad => \MINST|HA1|XORINST|ORINST1|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST2|C~0_combout\);

-- Location: LC_X5_Y4_N2
\ORINST6|ORINST2|C~3\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST2|C~3_combout\ = (\ORINST6|ORINST2|C~1_combout\) # ((\ORINST6|ORINST2|C~0_combout\) # ((\sel~combout\(2) & \ORINST6|ORINST2|C~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \ORINST6|ORINST2|C~2_combout\,
	datac => \ORINST6|ORINST2|C~1_combout\,
	datad => \ORINST6|ORINST2|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST2|C~3_combout\);

-- Location: LC_X4_Y4_N4
\ORINST6|ORINST3|C~0\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST3|C~0_combout\ = (\sel~combout\(1) & (\b~combout\(2) $ (\sel~combout\(0) $ (\a~combout\(2))))) # (!\sel~combout\(1) & (!\b~combout\(2) & (\sel~combout\(0) & !\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8458",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \sel~combout\(1),
	datac => \sel~combout\(0),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST3|C~0_combout\);

-- Location: LC_X4_Y4_N9
\ASINST|c[1]~2\ : maxv_lcell
-- Equation(s):
-- \ASINST|c[1]~2_combout\ = (\b~combout\(0) & (\a~combout\(0) & (\CINST|XNORINST2|ORINST1|C~0_combout\ $ (\sel~combout\(0))))) # (!\b~combout\(0) & (!\CINST|XNORINST2|ORINST1|C~0_combout\ & (\sel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3810",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \CINST|XNORINST2|ORINST1|C~0_combout\,
	datac => \sel~combout\(0),
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ASINST|c[1]~2_combout\);

-- Location: LC_X4_Y4_N6
\ASINST|c[2]~4\ : maxv_lcell
-- Equation(s):
-- \ASINST|c[2]~4_combout\ = (\ASINST|c[1]~2_combout\) # ((\a~combout\(1) & (\b~combout\(1) $ (\sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "decc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \ASINST|c[1]~2_combout\,
	datac => \sel~combout\(0),
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ASINST|c[2]~4_combout\);

-- Location: LC_X4_Y4_N0
\ASINST|XORINST32|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \ASINST|XORINST32|ORINST1|C~0_combout\ = \b~combout\(2) $ (\ASINST|c[2]~4_combout\ $ (\sel~combout\(0) $ (\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \ASINST|c[2]~4_combout\,
	datac => \sel~combout\(0),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ASINST|XORINST32|ORINST1|C~0_combout\);

-- Location: LC_X4_Y4_N7
\ORINST6|ORINST3|C~1\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST3|C~1_combout\ = (\sel~combout\(2) & (\ORINST6|ORINST3|C~0_combout\)) # (!\sel~combout\(2) & (((\ASINST|XORINST32|ORINST1|C~0_combout\ & !\sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ORINST6|ORINST3|C~0_combout\,
	datab => \sel~combout\(2),
	datac => \ASINST|XORINST32|ORINST1|C~0_combout\,
	datad => \sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST3|C~1_combout\);

-- Location: LC_X5_Y3_N1
\NAINST|NANDINST3|ANDINST1|C\ : maxv_lcell
-- Equation(s):
-- \NAINST|NANDINST3|ANDINST1|C~combout\ = (\b~combout\(2) & (((\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \NAINST|NANDINST3|ANDINST1|C~combout\);

-- Location: LC_X5_Y2_N4
\MINST|HA1|ANDINST|C\ : maxv_lcell
-- Equation(s):
-- \MINST|HA1|ANDINST|C~combout\ = (\a~combout\(1) & (\b~combout\(0) & (\a~combout\(0) & \b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(0),
	datac => \a~combout\(0),
	datad => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|HA1|ANDINST|C~combout\);

-- Location: LC_X5_Y2_N3
\MINST|FA1|HADDINST2|XORINST|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|FA1|HADDINST2|XORINST|ORINST1|C~0_combout\ = \MINST|HA1|ANDINST|C~combout\ $ (\MINST|ANDINST6|C~combout\ $ (((\a~combout\(2) & \b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(0),
	datac => \MINST|HA1|ANDINST|C~combout\,
	datad => \MINST|ANDINST6|C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA1|HADDINST2|XORINST|ORINST1|C~0_combout\);

-- Location: LC_X5_Y3_N2
\MINST|ANDINST9|C\ : maxv_lcell
-- Equation(s):
-- \MINST|ANDINST9|C~combout\ = (((\b~combout\(2) & \a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(2),
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|ANDINST9|C~combout\);

-- Location: LC_X6_Y3_N2
\ORINST6|ORINST3|C~2\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST3|C~2_combout\ = (\b~combout\(1) & (\a~combout\(1) & (\a~combout\(0) & !\b~combout\(0)))) # (!\b~combout\(1) & ((\a~combout\(1)) # ((\a~combout\(0) & !\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST3|C~2_combout\);

-- Location: LC_X6_Y3_N7
\ORINST6|ORINST3|C~3\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST3|C~3_combout\ = ((\ORINST6|ORINST3|C~2_combout\ & ((\a~combout\(2)) # (!\b~combout\(2)))) # (!\ORINST6|ORINST3|C~2_combout\ & (!\b~combout\(2) & \a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ORINST6|ORINST3|C~2_combout\,
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST3|C~3_combout\);

-- Location: LC_X6_Y3_N4
\ORINST6|ORINST3|C~4\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST3|C~4_combout\ = (\THREEANDINST2|ANDINST2|C~0_combout\ & ((\a~combout\(3) & ((\ORINST6|ORINST3|C~3_combout\) # (!\b~combout\(3)))) # (!\a~combout\(3) & (\ORINST6|ORINST3|C~3_combout\ & !\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \ORINST6|ORINST3|C~3_combout\,
	datac => \THREEANDINST2|ANDINST2|C~0_combout\,
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST3|C~4_combout\);

-- Location: LC_X5_Y3_N4
\ORINST6|ORINST3|C~5\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST3|C~5_combout\ = (\ORINST6|ORINST3|C~4_combout\) # ((\THREEANDINST1|ANDINST2|C~0_combout\ & (\MINST|FA1|HADDINST2|XORINST|ORINST1|C~0_combout\ $ (\MINST|ANDINST9|C~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MINST|FA1|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datab => \MINST|ANDINST9|C~combout\,
	datac => \THREEANDINST1|ANDINST2|C~0_combout\,
	datad => \ORINST6|ORINST3|C~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST3|C~5_combout\);

-- Location: LC_X5_Y3_N6
\ORINST6|ORINST3|C~6\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST3|C~6_combout\ = (\ORINST6|ORINST3|C~1_combout\) # ((\ORINST6|ORINST3|C~5_combout\) # ((!\NAINST|NANDINST3|ANDINST1|C~combout\ & \THREEANDINST3|ANDINST2|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbfa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ORINST6|ORINST3|C~1_combout\,
	datab => \NAINST|NANDINST3|ANDINST1|C~combout\,
	datac => \ORINST6|ORINST3|C~5_combout\,
	datad => \THREEANDINST3|ANDINST2|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST3|C~6_combout\);

-- Location: LC_X6_Y4_N4
\ORINST6|ORINST4|C~0\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST4|C~0_combout\ = (\sel~combout\(1) & (\sel~combout\(0) $ (\a~combout\(3) $ (\b~combout\(3))))) # (!\sel~combout\(1) & (\sel~combout\(0) & (!\a~combout\(3) & !\b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "844a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \sel~combout\(1),
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST4|C~0_combout\);

-- Location: LC_X6_Y4_N7
\MINST|ANDINST16|C\ : maxv_lcell
-- Equation(s):
-- \MINST|ANDINST16|C~combout\ = (((\a~combout\(3) & \b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|ANDINST16|C~combout\);

-- Location: LC_X6_Y4_N6
\ORINST6|ORINST4|C~1\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST4|C~1_combout\ = (\ORINST6|ORINST4|C~0_combout\ & ((\sel~combout\(2)) # ((!\MINST|ANDINST16|C~combout\ & \THREEANDINST3|ANDINST2|C~0_combout\)))) # (!\ORINST6|ORINST4|C~0_combout\ & (!\MINST|ANDINST16|C~combout\ & 
-- ((\THREEANDINST3|ANDINST2|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ORINST6|ORINST4|C~0_combout\,
	datab => \MINST|ANDINST16|C~combout\,
	datac => \sel~combout\(2),
	datad => \THREEANDINST3|ANDINST2|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST4|C~1_combout\);

-- Location: LC_X4_Y4_N1
\ASINST|c[2]~3\ : maxv_lcell
-- Equation(s):
-- \ASINST|c[2]~3_combout\ = (\ASINST|c[2]~4_combout\ & ((\a~combout\(2)) # (\b~combout\(2) $ (\sel~combout\(0))))) # (!\ASINST|c[2]~4_combout\ & (\a~combout\(2) & (\b~combout\(2) $ (\sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \ASINST|c[2]~4_combout\,
	datac => \sel~combout\(0),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ASINST|c[2]~3_combout\);

-- Location: LC_X6_Y4_N0
\ASINST|XORINST42|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \ASINST|XORINST42|ORINST1|C~0_combout\ = \sel~combout\(0) $ (((\a~combout\(3) $ (\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ASINST|XORINST42|ORINST1|C~0_combout\);

-- Location: LC_X6_Y4_N2
\EAINST1|ANDINST2|C~1\ : maxv_lcell
-- Equation(s):
-- \EAINST1|ANDINST2|C~1_combout\ = (((!\sel~combout\(2) & !\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sel~combout\(2),
	datad => \sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EAINST1|ANDINST2|C~1_combout\);

-- Location: LC_X6_Y4_N3
\ORINST6|ORINST4|C~2\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST4|C~2_combout\ = (\ORINST6|ORINST4|C~1_combout\) # ((\EAINST1|ANDINST2|C~1_combout\ & (\ASINST|c[2]~3_combout\ $ (\ASINST|XORINST42|ORINST1|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "beaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ORINST6|ORINST4|C~1_combout\,
	datab => \ASINST|c[2]~3_combout\,
	datac => \ASINST|XORINST42|ORINST1|C~0_combout\,
	datad => \EAINST1|ANDINST2|C~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST4|C~2_combout\);

-- Location: LC_X5_Y2_N8
\MINST|ANDINST10|C\ : maxv_lcell
-- Equation(s):
-- \MINST|ANDINST10|C~combout\ = ((\a~combout\(1) & (\b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(1),
	datac => \b~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|ANDINST10|C~combout\);

-- Location: LC_X5_Y2_N9
\MINST|FA2|HADDINST2|XORINST|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|FA2|HADDINST2|XORINST|ORINST1|C~0_combout\ = (\MINST|HA1|ANDINST|C~combout\ & ((\MINST|ANDINST6|C~combout\) # ((\a~combout\(2) & \b~combout\(0))))) # (!\MINST|HA1|ANDINST|C~combout\ & (\a~combout\(2) & (\b~combout\(0) & 
-- \MINST|ANDINST6|C~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(0),
	datac => \MINST|HA1|ANDINST|C~combout\,
	datad => \MINST|ANDINST6|C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA2|HADDINST2|XORINST|ORINST1|C~0_combout\);

-- Location: LC_X5_Y2_N0
\MINST|FA2|HADDINST1|XORINST|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|FA2|HADDINST1|XORINST|ORINST1|C~0_combout\ = (\b~combout\(0) & (\a~combout\(3) $ (((\b~combout\(1) & \a~combout\(2)))))) # (!\b~combout\(0) & (\b~combout\(1) & (\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \b~combout\(1),
	datac => \a~combout\(2),
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA2|HADDINST1|XORINST|ORINST1|C~0_combout\);

-- Location: LC_X5_Y2_N1
\MINST|HA3|ANDINST|C\ : maxv_lcell
-- Equation(s):
-- \MINST|HA3|ANDINST|C~combout\ = ((\a~combout\(0) & (\b~combout\(2) & \MINST|FA1|HADDINST2|XORINST|ORINST1|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(0),
	datac => \b~combout\(2),
	datad => \MINST|FA1|HADDINST2|XORINST|ORINST1|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|HA3|ANDINST|C~combout\);

-- Location: LC_X5_Y2_N7
\MINST|FA3|HADDINST2|XORINST|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|FA3|HADDINST2|XORINST|ORINST1|C~0_combout\ = \MINST|ANDINST10|C~combout\ $ (\MINST|FA2|HADDINST2|XORINST|ORINST1|C~0_combout\ $ (\MINST|FA2|HADDINST1|XORINST|ORINST1|C~0_combout\ $ (\MINST|HA3|ANDINST|C~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MINST|ANDINST10|C~combout\,
	datab => \MINST|FA2|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datac => \MINST|FA2|HADDINST1|XORINST|ORINST1|C~0_combout\,
	datad => \MINST|HA3|ANDINST|C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA3|HADDINST2|XORINST|ORINST1|C~0_combout\);

-- Location: LC_X6_Y2_N6
\MINST|ANDINST13|C\ : maxv_lcell
-- Equation(s):
-- \MINST|ANDINST13|C~combout\ = ((\a~combout\(0) & ((\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(0),
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|ANDINST13|C~combout\);

-- Location: LC_X6_Y2_N5
\ORINST6|ORINST4|C~3\ : maxv_lcell
-- Equation(s):
-- \ORINST6|ORINST4|C~3_combout\ = (\ORINST6|ORINST4|C~2_combout\) # ((\THREEANDINST1|ANDINST2|C~0_combout\ & (\MINST|FA3|HADDINST2|XORINST|ORINST1|C~0_combout\ $ (\MINST|ANDINST13|C~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "beaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ORINST6|ORINST4|C~2_combout\,
	datab => \MINST|FA3|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datac => \MINST|ANDINST13|C~combout\,
	datad => \THREEANDINST1|ANDINST2|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST6|ORINST4|C~3_combout\);

-- Location: LC_X6_Y3_N3
\ASINST|ANDINST21|C~0\ : maxv_lcell
-- Equation(s):
-- \ASINST|ANDINST21|C~0_combout\ = ((\a~combout\(1) & (\sel~combout\(0) $ (\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(1),
	datac => \sel~combout\(0),
	datad => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ASINST|ANDINST21|C~0_combout\);

-- Location: LC_X6_Y3_N5
\ASINST|output[4]~2\ : maxv_lcell
-- Equation(s):
-- \ASINST|output[4]~2_combout\ = (\ASINST|ANDINST21|C~0_combout\ & ((\a~combout\(2)) # (\b~combout\(2) $ (\sel~combout\(0))))) # (!\ASINST|ANDINST21|C~0_combout\ & (\a~combout\(2) & (\b~combout\(2) $ (\sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ASINST|ANDINST21|C~0_combout\,
	datab => \b~combout\(2),
	datac => \sel~combout\(0),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ASINST|output[4]~2_combout\);

-- Location: LC_X6_Y4_N8
\ASINST|output[4]~3\ : maxv_lcell
-- Equation(s):
-- \ASINST|output[4]~3_combout\ = (\a~combout\(3) & ((\ASINST|output[4]~2_combout\) # (\sel~combout\(0) $ (\b~combout\(3))))) # (!\a~combout\(3) & (\ASINST|output[4]~2_combout\ & (\sel~combout\(0) $ (\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \b~combout\(3),
	datac => \a~combout\(3),
	datad => \ASINST|output[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ASINST|output[4]~3_combout\);

-- Location: LC_X4_Y4_N8
\ASINST|output[4]~0\ : maxv_lcell
-- Equation(s):
-- \ASINST|output[4]~0_combout\ = (\a~combout\(0) & ((\CINST|XNORINST4|ORINST1|C~0_combout\ & (\b~combout\(0))) # (!\CINST|XNORINST4|ORINST1|C~0_combout\ & ((\sel~combout\(0)))))) # (!\a~combout\(0) & (!\b~combout\(0) & (\sel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "98d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datac => \sel~combout\(0),
	datad => \CINST|XNORINST4|ORINST1|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ASINST|output[4]~0_combout\);

-- Location: LC_X4_Y4_N2
\CINST|XNORINST3|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \CINST|XNORINST3|ORINST1|C~0_combout\ = ((\b~combout\(2) $ (\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CINST|XNORINST3|ORINST1|C~0_combout\);

-- Location: LC_X4_Y4_N3
\ASINST|output[4]~1\ : maxv_lcell
-- Equation(s):
-- \ASINST|output[4]~1_combout\ = (\ASINST|output[4]~0_combout\ & ((\CINST|XNORINST2|ORINST1|C~0_combout\ & (!\sel~combout\(0) & \CINST|XNORINST3|ORINST1|C~0_combout\)) # (!\CINST|XNORINST2|ORINST1|C~0_combout\ & (\sel~combout\(0) & 
-- !\CINST|XNORINST3|ORINST1|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0820",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ASINST|output[4]~0_combout\,
	datab => \CINST|XNORINST2|ORINST1|C~0_combout\,
	datac => \sel~combout\(0),
	datad => \CINST|XNORINST3|ORINST1|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ASINST|output[4]~1_combout\);

-- Location: LC_X5_Y2_N5
\MINST|FA4|HADDINST2|XORINST|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|FA4|HADDINST2|XORINST|ORINST1|C~0_combout\ = (\MINST|ANDINST10|C~combout\ & ((\MINST|HA3|ANDINST|C~combout\) # (\MINST|FA2|HADDINST2|XORINST|ORINST1|C~0_combout\ $ (\MINST|FA2|HADDINST1|XORINST|ORINST1|C~0_combout\)))) # 
-- (!\MINST|ANDINST10|C~combout\ & (\MINST|HA3|ANDINST|C~combout\ & (\MINST|FA2|HADDINST2|XORINST|ORINST1|C~0_combout\ $ (\MINST|FA2|HADDINST1|XORINST|ORINST1|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MINST|ANDINST10|C~combout\,
	datab => \MINST|FA2|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datac => \MINST|FA2|HADDINST1|XORINST|ORINST1|C~0_combout\,
	datad => \MINST|HA3|ANDINST|C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA4|HADDINST2|XORINST|ORINST1|C~0_combout\);

-- Location: LC_X5_Y3_N0
\MINST|ANDINST8|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|ANDINST8|C~0_combout\ = ((\b~combout\(1) & ((\a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(1),
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|ANDINST8|C~0_combout\);

-- Location: LC_X5_Y2_N6
\MINST|ANDINST4|C\ : maxv_lcell
-- Equation(s):
-- \MINST|ANDINST4|C~combout\ = ((\b~combout\(0) & ((\a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|ANDINST4|C~combout\);

-- Location: LC_X5_Y2_N2
\MINST|HA2|XORINST|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|HA2|XORINST|ORINST1|C~0_combout\ = (\MINST|FA2|HADDINST2|XORINST|ORINST1|C~0_combout\ & ((\MINST|ANDINST4|C~combout\) # ((\a~combout\(2) & \b~combout\(1))))) # (!\MINST|FA2|HADDINST2|XORINST|ORINST1|C~0_combout\ & (\a~combout\(2) & 
-- (\MINST|ANDINST4|C~combout\ & \b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \MINST|FA2|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datac => \MINST|ANDINST4|C~combout\,
	datad => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|HA2|XORINST|ORINST1|C~0_combout\);

-- Location: LC_X5_Y3_N7
\MINST|FA4|HADDINST1|XORINST|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|FA4|HADDINST1|XORINST|ORINST1|C~0_combout\ = \MINST|ANDINST8|C~0_combout\ $ (\MINST|HA2|XORINST|ORINST1|C~0_combout\ $ (((\b~combout\(2) & \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \MINST|ANDINST8|C~0_combout\,
	datac => \a~combout\(2),
	datad => \MINST|HA2|XORINST|ORINST1|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA4|HADDINST1|XORINST|ORINST1|C~0_combout\);

-- Location: LC_X6_Y2_N7
\MINST|FA6|HADDINST1|XORINST|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|FA6|HADDINST1|XORINST|ORINST1|C~0_combout\ = \MINST|FA4|HADDINST2|XORINST|ORINST1|C~0_combout\ $ (\MINST|FA4|HADDINST1|XORINST|ORINST1|C~0_combout\ $ (((\a~combout\(1) & \b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MINST|FA4|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datab => \a~combout\(1),
	datac => \MINST|FA4|HADDINST1|XORINST|ORINST1|C~0_combout\,
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA6|HADDINST1|XORINST|ORINST1|C~0_combout\);

-- Location: LC_X6_Y2_N2
\EAINST2|ANDINST5|C\ : maxv_lcell
-- Equation(s):
-- \EAINST2|ANDINST5|C~combout\ = (\THREEANDINST1|ANDINST2|C~0_combout\ & (\MINST|FA6|HADDINST1|XORINST|ORINST1|C~0_combout\ $ (((\MINST|ANDINST13|C~combout\ & \MINST|FA3|HADDINST2|XORINST|ORINST1|C~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MINST|ANDINST13|C~combout\,
	datab => \MINST|FA3|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datac => \MINST|FA6|HADDINST1|XORINST|ORINST1|C~0_combout\,
	datad => \THREEANDINST1|ANDINST2|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EAINST2|ANDINST5|C~combout\);

-- Location: LC_X6_Y4_N1
\ORINST1|ORINST5|C\ : maxv_lcell
-- Equation(s):
-- \ORINST1|ORINST5|C~combout\ = (\EAINST2|ANDINST5|C~combout\) # ((\EAINST1|ANDINST2|C~1_combout\ & ((\ASINST|output[4]~3_combout\) # (\ASINST|output[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ASINST|output[4]~3_combout\,
	datab => \ASINST|output[4]~1_combout\,
	datac => \EAINST2|ANDINST5|C~combout\,
	datad => \EAINST1|ANDINST2|C~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINST1|ORINST5|C~combout\);

-- Location: LC_X6_Y2_N4
\MINST|FA6|HADDINST1|ANDINST|C\ : maxv_lcell
-- Equation(s):
-- \MINST|FA6|HADDINST1|ANDINST|C~combout\ = (\a~combout\(1) & (\b~combout\(3) & (\MINST|FA4|HADDINST2|XORINST|ORINST1|C~0_combout\ $ (\MINST|FA4|HADDINST1|XORINST|ORINST1|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MINST|FA4|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datab => \a~combout\(1),
	datac => \MINST|FA4|HADDINST1|XORINST|ORINST1|C~0_combout\,
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA6|HADDINST1|ANDINST|C~combout\);

-- Location: LC_X6_Y2_N9
\MINST|FA6|HADDINST2|ANDINST|C\ : maxv_lcell
-- Equation(s):
-- \MINST|FA6|HADDINST2|ANDINST|C~combout\ = (\b~combout\(3) & (\MINST|FA3|HADDINST2|XORINST|ORINST1|C~0_combout\ & (\MINST|FA6|HADDINST1|XORINST|ORINST1|C~0_combout\ & \a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \MINST|FA3|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datac => \MINST|FA6|HADDINST1|XORINST|ORINST1|C~0_combout\,
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA6|HADDINST2|ANDINST|C~combout\);

-- Location: LC_X5_Y3_N5
\MINST|FA5|HADDINST1|XORINST|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|FA5|HADDINST1|XORINST|ORINST1|C~0_combout\ = (\a~combout\(3) & (\b~combout\(2) $ (((\b~combout\(1) & \MINST|HA2|XORINST|ORINST1|C~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \b~combout\(1),
	datac => \MINST|HA2|XORINST|ORINST1|C~0_combout\,
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA5|HADDINST1|XORINST|ORINST1|C~0_combout\);

-- Location: LC_X5_Y3_N3
\MINST|FA5|HADDINST2|XORINST|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|FA5|HADDINST2|XORINST|ORINST1|C~0_combout\ = (\MINST|FA4|HADDINST2|XORINST|ORINST1|C~0_combout\ & ((\NAINST|NANDINST3|ANDINST1|C~combout\) # (\MINST|ANDINST8|C~0_combout\ $ (\MINST|HA2|XORINST|ORINST1|C~0_combout\)))) # 
-- (!\MINST|FA4|HADDINST2|XORINST|ORINST1|C~0_combout\ & (\NAINST|NANDINST3|ANDINST1|C~combout\ & (\MINST|ANDINST8|C~0_combout\ $ (\MINST|HA2|XORINST|ORINST1|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MINST|FA4|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datab => \MINST|ANDINST8|C~0_combout\,
	datac => \MINST|HA2|XORINST|ORINST1|C~0_combout\,
	datad => \NAINST|NANDINST3|ANDINST1|C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA5|HADDINST2|XORINST|ORINST1|C~0_combout\);

-- Location: LC_X7_Y2_N3
\MINST|FA7|HADDINST1|XORINST|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|FA7|HADDINST1|XORINST|ORINST1|C~0_combout\ = \MINST|FA5|HADDINST1|XORINST|ORINST1|C~0_combout\ $ (\MINST|FA5|HADDINST2|XORINST|ORINST1|C~0_combout\ $ (((\b~combout\(3) & \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MINST|FA5|HADDINST1|XORINST|ORINST1|C~0_combout\,
	datab => \MINST|FA5|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datac => \b~combout\(3),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA7|HADDINST1|XORINST|ORINST1|C~0_combout\);

-- Location: LC_X7_Y2_N7
\EAINST2|ANDINST6|C\ : maxv_lcell
-- Equation(s):
-- \EAINST2|ANDINST6|C~combout\ = (\THREEANDINST1|ANDINST2|C~0_combout\ & (\MINST|FA6|HADDINST1|ANDINST|C~combout\ $ (\MINST|FA6|HADDINST2|ANDINST|C~combout\ $ (\MINST|FA7|HADDINST1|XORINST|ORINST1|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8228",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \THREEANDINST1|ANDINST2|C~0_combout\,
	datab => \MINST|FA6|HADDINST1|ANDINST|C~combout\,
	datac => \MINST|FA6|HADDINST2|ANDINST|C~combout\,
	datad => \MINST|FA7|HADDINST1|XORINST|ORINST1|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EAINST2|ANDINST6|C~combout\);

-- Location: LC_X7_Y2_N5
\MINST|FA7|HADDINST1|ANDINST|C\ : maxv_lcell
-- Equation(s):
-- \MINST|FA7|HADDINST1|ANDINST|C~combout\ = (\b~combout\(3) & (\a~combout\(2) & (\MINST|FA5|HADDINST1|XORINST|ORINST1|C~0_combout\ $ (\MINST|FA5|HADDINST2|XORINST|ORINST1|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MINST|FA5|HADDINST1|XORINST|ORINST1|C~0_combout\,
	datab => \MINST|FA5|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datac => \b~combout\(3),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA7|HADDINST1|ANDINST|C~combout\);

-- Location: LC_X7_Y2_N6
\MINST|FA8|HADDINST2|XORINST|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|FA8|HADDINST2|XORINST|ORINST1|C~0_combout\ = \MINST|FA7|HADDINST1|ANDINST|C~combout\ $ (((\MINST|FA7|HADDINST1|XORINST|ORINST1|C~0_combout\ & (\MINST|FA6|HADDINST1|ANDINST|C~combout\ $ (\MINST|FA6|HADDINST2|ANDINST|C~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MINST|FA7|HADDINST1|ANDINST|C~combout\,
	datab => \MINST|FA6|HADDINST1|ANDINST|C~combout\,
	datac => \MINST|FA6|HADDINST2|ANDINST|C~combout\,
	datad => \MINST|FA7|HADDINST1|XORINST|ORINST1|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA8|HADDINST2|XORINST|ORINST1|C~0_combout\);

-- Location: LC_X5_Y3_N9
\MINST|FA5|HADDINST1|ANDINST|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|FA5|HADDINST1|ANDINST|C~0_combout\ = (\b~combout\(2) & (\b~combout\(1) & (\MINST|HA2|XORINST|ORINST1|C~0_combout\ & \a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \b~combout\(1),
	datac => \MINST|HA2|XORINST|ORINST1|C~0_combout\,
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA5|HADDINST1|ANDINST|C~0_combout\);

-- Location: LC_X7_Y2_N8
\MINST|FA8|HADDINST1|XORINST|ORINST1|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|FA8|HADDINST1|XORINST|ORINST1|C~0_combout\ = \MINST|FA5|HADDINST1|ANDINST|C~0_combout\ $ (\MINST|ANDINST16|C~combout\ $ (((\MINST|FA5|HADDINST1|XORINST|ORINST1|C~0_combout\ & \MINST|FA5|HADDINST2|XORINST|ORINST1|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MINST|FA5|HADDINST1|XORINST|ORINST1|C~0_combout\,
	datab => \MINST|FA5|HADDINST1|ANDINST|C~0_combout\,
	datac => \MINST|FA5|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datad => \MINST|ANDINST16|C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA8|HADDINST1|XORINST|ORINST1|C~0_combout\);

-- Location: LC_X7_Y2_N2
\EAINST2|ANDINST7|C\ : maxv_lcell
-- Equation(s):
-- \EAINST2|ANDINST7|C~combout\ = (\THREEANDINST1|ANDINST2|C~0_combout\ & ((\MINST|FA8|HADDINST2|XORINST|ORINST1|C~0_combout\ $ (\MINST|FA8|HADDINST1|XORINST|ORINST1|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \THREEANDINST1|ANDINST2|C~0_combout\,
	datac => \MINST|FA8|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datad => \MINST|FA8|HADDINST1|XORINST|ORINST1|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EAINST2|ANDINST7|C~combout\);

-- Location: LC_X7_Y2_N4
\MINST|FA8|HADDINST1|ANDINST|C~0\ : maxv_lcell
-- Equation(s):
-- \MINST|FA8|HADDINST1|ANDINST|C~0_combout\ = (\MINST|ANDINST16|C~combout\ & ((\MINST|FA5|HADDINST1|ANDINST|C~0_combout\) # ((\MINST|FA5|HADDINST1|XORINST|ORINST1|C~0_combout\ & \MINST|FA5|HADDINST2|XORINST|ORINST1|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MINST|FA5|HADDINST1|XORINST|ORINST1|C~0_combout\,
	datab => \MINST|FA5|HADDINST1|ANDINST|C~0_combout\,
	datac => \MINST|FA5|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datad => \MINST|ANDINST16|C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MINST|FA8|HADDINST1|ANDINST|C~0_combout\);

-- Location: LC_X7_Y2_N9
\EAINST2|ANDINST8|C\ : maxv_lcell
-- Equation(s):
-- \EAINST2|ANDINST8|C~combout\ = (\THREEANDINST1|ANDINST2|C~0_combout\ & (\MINST|FA8|HADDINST1|ANDINST|C~0_combout\ $ (((\MINST|FA8|HADDINST2|XORINST|ORINST1|C~0_combout\ & \MINST|FA8|HADDINST1|XORINST|ORINST1|C~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \THREEANDINST1|ANDINST2|C~0_combout\,
	datab => \MINST|FA8|HADDINST1|ANDINST|C~0_combout\,
	datac => \MINST|FA8|HADDINST2|XORINST|ORINST1|C~0_combout\,
	datad => \MINST|FA8|HADDINST1|XORINST|ORINST1|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EAINST2|ANDINST8|C~combout\);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ORINST6|ORINST1|C~7_combout\,
	oe => VCC,
	padio => ww_result(0));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ORINST6|ORINST2|C~3_combout\,
	oe => VCC,
	padio => ww_result(1));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ORINST6|ORINST3|C~6_combout\,
	oe => VCC,
	padio => ww_result(2));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ORINST6|ORINST4|C~3_combout\,
	oe => VCC,
	padio => ww_result(3));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ORINST1|ORINST5|C~combout\,
	oe => VCC,
	padio => ww_result(4));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \EAINST2|ANDINST6|C~combout\,
	oe => VCC,
	padio => ww_result(5));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \EAINST2|ANDINST7|C~combout\,
	oe => VCC,
	padio => ww_result(6));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \EAINST2|ANDINST8|C~combout\,
	oe => VCC,
	padio => ww_result(7));
END structure;


