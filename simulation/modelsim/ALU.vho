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

-- DATE "10/01/2019 15:31:38"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	OP : IN std_logic_vector(2 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Sum : BUFFER std_logic_vector(3 DOWNTO 0);
	IE : IN std_logic;
	reset : IN std_logic;
	Clk : IN std_logic;
	Z_Flag : OUT std_logic;
	O_Flag : BUFFER std_logic;
	N_Flag : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IE	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z_Flag	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_Flag	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_Flag	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OP : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sum : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_IE : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Z_Flag : std_logic;
SIGNAL ww_O_Flag : std_logic;
SIGNAL ww_N_Flag : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Sum~10_combout\ : std_logic;
SIGNAL \IE~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \Z_Flag~output_o\ : std_logic;
SIGNAL \O_Flag~output_o\ : std_logic;
SIGNAL \N_Flag~output_o\ : std_logic;
SIGNAL \OP[1]~input_o\ : std_logic;
SIGNAL \OP[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Sum[0]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Sum[0]~1_combout\ : std_logic;
SIGNAL \OP[2]~input_o\ : std_logic;
SIGNAL \Sum[0]~2_combout\ : std_logic;
SIGNAL \Sum[0]~3_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Sum~5_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Sum[1]~20_combout\ : std_logic;
SIGNAL \Sum[1]~21_combout\ : std_logic;
SIGNAL \Sum[1]~6_combout\ : std_logic;
SIGNAL \Sum[1]~8_combout\ : std_logic;
SIGNAL \Sum[1]~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Sum[1]~9_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Sum[2]~18_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Sum[2]~19_combout\ : std_logic;
SIGNAL \Sum[1]~7_combout\ : std_logic;
SIGNAL \Sum[2]~11_combout\ : std_logic;
SIGNAL \Sum[2]~12_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Sum~13_combout\ : std_logic;
SIGNAL \Sum[3]~16_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Sum[3]~17_combout\ : std_logic;
SIGNAL \Sum[3]~14_combout\ : std_logic;
SIGNAL \Sum[3]~15_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;

BEGIN

ww_OP <= OP;
ww_A <= A;
ww_B <= B;
Sum <= ww_Sum;
ww_IE <= IE;
ww_reset <= reset;
ww_Clk <= Clk;
Z_Flag <= ww_Z_Flag;
O_Flag <= ww_O_Flag;
N_Flag <= ww_N_Flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X112_Y14_N6
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[0]~input_o\) # (GND)))
-- \Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X113_Y14_N12
\Sum~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum~10_combout\ = (\A[2]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Sum~10_combout\);

-- Location: IOOBUF_X69_Y73_N16
\Sum[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum[0]~3_combout\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\Sum[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum[1]~9_combout\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\Sum[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum[2]~12_combout\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\Sum[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum[3]~15_combout\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Z_Flag~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_1~2_combout\,
	devoe => ww_devoe,
	o => \Z_Flag~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\O_Flag~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_1~3_combout\,
	devoe => ww_devoe,
	o => \O_Flag~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\N_Flag~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum[3]~15_combout\,
	devoe => ww_devoe,
	o => \N_Flag~output_o\);

-- Location: IOIBUF_X115_Y13_N1
\OP[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(1),
	o => \OP[1]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\OP[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(0),
	o => \OP[0]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X112_Y14_N24
\Sum[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[0]~0_combout\ = (\OP[0]~input_o\ & (!\OP[2]~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\)))) # (!\OP[0]~input_o\ & (\A[0]~input_o\ & ((\OP[2]~input_o\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \OP[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Sum[0]~0_combout\);

-- Location: LCCOMB_X113_Y14_N22
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X112_Y14_N26
\Sum[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[0]~1_combout\ = (\Add0~0_combout\ & !\OP[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => \OP[0]~input_o\,
	combout => \Sum[0]~1_combout\);

-- Location: IOIBUF_X115_Y14_N8
\OP[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(2),
	o => \OP[2]~input_o\);

-- Location: LCCOMB_X112_Y14_N28
\Sum[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[0]~2_combout\ = (\OP[0]~input_o\ & ((\OP[2]~input_o\ & ((!\A[0]~input_o\))) # (!\OP[2]~input_o\ & (\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \OP[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \OP[2]~input_o\,
	combout => \Sum[0]~2_combout\);

-- Location: LCCOMB_X112_Y14_N22
\Sum[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[0]~3_combout\ = (\OP[1]~input_o\ & (\Sum[0]~0_combout\)) # (!\OP[1]~input_o\ & (((\Sum[0]~1_combout\) # (\Sum[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[1]~input_o\,
	datab => \Sum[0]~0_combout\,
	datac => \Sum[0]~1_combout\,
	datad => \Sum[0]~2_combout\,
	combout => \Sum[0]~3_combout\);

-- Location: IOIBUF_X115_Y14_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X113_Y14_N8
\Sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum~5_combout\ = (\A[1]~input_o\) # (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Sum~5_combout\);

-- Location: IOIBUF_X115_Y10_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X113_Y14_N24
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add0~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add0~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add0~1\)) # (!\A[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add0~1\)) # (!\B[1]~input_o\ & ((!\Add0~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X113_Y14_N4
\Sum[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[1]~20_combout\ = (\OP[1]~input_o\ & (\A[1]~input_o\ & ((\B[1]~input_o\) # (\OP[2]~input_o\)))) # (!\OP[1]~input_o\ & ((\A[1]~input_o\ $ (\B[1]~input_o\)) # (!\OP[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \OP[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \OP[2]~input_o\,
	combout => \Sum[1]~20_combout\);

-- Location: LCCOMB_X113_Y14_N14
\Sum[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[1]~21_combout\ = (\Sum[1]~20_combout\ & ((\OP[2]~input_o\) # ((\Add0~2_combout\) # (\OP[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \Add0~2_combout\,
	datac => \Sum[1]~20_combout\,
	datad => \OP[1]~input_o\,
	combout => \Sum[1]~21_combout\);

-- Location: LCCOMB_X114_Y14_N24
\Sum[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[1]~6_combout\ = ((!\OP[2]~input_o\ & \OP[1]~input_o\)) # (!\OP[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \OP[0]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \Sum[1]~6_combout\);

-- Location: LCCOMB_X113_Y14_N2
\Sum[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[1]~8_combout\ = (\Sum[1]~7_combout\ & (\Sum~5_combout\ & ((\Sum[1]~6_combout\)))) # (!\Sum[1]~7_combout\ & (((\Sum[1]~21_combout\) # (!\Sum[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum[1]~7_combout\,
	datab => \Sum~5_combout\,
	datac => \Sum[1]~21_combout\,
	datad => \Sum[1]~6_combout\,
	combout => \Sum[1]~8_combout\);

-- Location: LCCOMB_X112_Y14_N16
\Sum[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[1]~4_combout\ = (\OP[1]~input_o\) # (!\OP[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP[0]~input_o\,
	datac => \OP[1]~input_o\,
	combout => \Sum[1]~4_combout\);

-- Location: LCCOMB_X112_Y14_N8
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add1~1\)) # (!\A[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add1~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\B[1]~input_o\ & ((!\Add1~1\) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X112_Y14_N2
\Sum[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[1]~9_combout\ = (\Sum[1]~8_combout\ & ((\Sum[1]~4_combout\) # ((\Add1~2_combout\)))) # (!\Sum[1]~8_combout\ & (!\Sum[1]~4_combout\ & ((!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum[1]~8_combout\,
	datab => \Sum[1]~4_combout\,
	datac => \Add1~2_combout\,
	datad => \A[1]~input_o\,
	combout => \Sum[1]~9_combout\);

-- Location: IOIBUF_X115_Y15_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X112_Y14_N10
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\A[2]~input_o\ & ((!\Add1~3\) # (!\B[2]~input_o\))) # (!\A[2]~input_o\ & (!\B[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: IOIBUF_X115_Y15_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X113_Y14_N0
\Sum[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[2]~18_combout\ = (\OP[2]~input_o\ & (\A[2]~input_o\ $ (((!\OP[1]~input_o\ & \B[2]~input_o\))))) # (!\OP[2]~input_o\ & (((\A[2]~input_o\ & \B[2]~input_o\)) # (!\OP[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \OP[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Sum[2]~18_combout\);

-- Location: LCCOMB_X113_Y14_N26
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\Add0~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X113_Y14_N10
\Sum[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[2]~19_combout\ = (\Sum[2]~18_combout\ & ((\OP[2]~input_o\) # ((\Add0~4_combout\) # (\OP[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \Sum[2]~18_combout\,
	datac => \Add0~4_combout\,
	datad => \OP[1]~input_o\,
	combout => \Sum[2]~19_combout\);

-- Location: LCCOMB_X114_Y14_N2
\Sum[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[1]~7_combout\ = (\OP[0]~input_o\ & ((\OP[2]~input_o\) # (\OP[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \OP[0]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \Sum[1]~7_combout\);

-- Location: LCCOMB_X113_Y14_N6
\Sum[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[2]~11_combout\ = (\Sum[1]~6_combout\ & ((\Sum[1]~7_combout\ & (\Sum~10_combout\)) # (!\Sum[1]~7_combout\ & ((\Sum[2]~19_combout\))))) # (!\Sum[1]~6_combout\ & (((!\Sum[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum~10_combout\,
	datab => \Sum[1]~6_combout\,
	datac => \Sum[2]~19_combout\,
	datad => \Sum[1]~7_combout\,
	combout => \Sum[2]~11_combout\);

-- Location: LCCOMB_X112_Y14_N20
\Sum[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[2]~12_combout\ = (\Sum[1]~4_combout\ & (((\Sum[2]~11_combout\)))) # (!\Sum[1]~4_combout\ & ((\Sum[2]~11_combout\ & (\Add1~4_combout\)) # (!\Sum[2]~11_combout\ & ((!\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Sum[1]~4_combout\,
	datac => \A[2]~input_o\,
	datad => \Sum[2]~11_combout\,
	combout => \Sum[2]~12_combout\);

-- Location: IOIBUF_X115_Y4_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X112_Y14_N12
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = \A[3]~input_o\ $ (\Add1~5\ $ (!\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	cin => \Add1~5\,
	combout => \Add1~6_combout\);

-- Location: LCCOMB_X113_Y14_N16
\Sum~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum~13_combout\ = (\A[3]~input_o\) # (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \Sum~13_combout\);

-- Location: LCCOMB_X113_Y14_N20
\Sum[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[3]~16_combout\ = (\OP[2]~input_o\ & (\A[3]~input_o\ $ (((\B[3]~input_o\ & !\OP[1]~input_o\))))) # (!\OP[2]~input_o\ & (((\A[3]~input_o\ & \B[3]~input_o\)) # (!\OP[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \Sum[3]~16_combout\);

-- Location: LCCOMB_X113_Y14_N28
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	cin => \Add0~5\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X113_Y14_N30
\Sum[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[3]~17_combout\ = (\Sum[3]~16_combout\ & ((\OP[2]~input_o\) # ((\Add0~6_combout\) # (\OP[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \Sum[3]~16_combout\,
	datac => \Add0~6_combout\,
	datad => \OP[1]~input_o\,
	combout => \Sum[3]~17_combout\);

-- Location: LCCOMB_X113_Y14_N18
\Sum[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[3]~14_combout\ = (\Sum[1]~7_combout\ & (\Sum~13_combout\ & ((\Sum[1]~6_combout\)))) # (!\Sum[1]~7_combout\ & (((\Sum[3]~17_combout\) # (!\Sum[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum[1]~7_combout\,
	datab => \Sum~13_combout\,
	datac => \Sum[3]~17_combout\,
	datad => \Sum[1]~6_combout\,
	combout => \Sum[3]~14_combout\);

-- Location: LCCOMB_X112_Y14_N30
\Sum[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum[3]~15_combout\ = (\Sum[3]~14_combout\ & ((\Add1~6_combout\) # ((\Sum[1]~4_combout\)))) # (!\Sum[3]~14_combout\ & (((!\Sum[1]~4_combout\ & !\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Sum[3]~14_combout\,
	datac => \Sum[1]~4_combout\,
	datad => \A[3]~input_o\,
	combout => \Sum[3]~15_combout\);

-- Location: LCCOMB_X112_Y14_N0
\process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\A[3]~input_o\ & (!\Sum[3]~15_combout\ & (\B[3]~input_o\ $ (\OP[0]~input_o\)))) # (!\A[3]~input_o\ & (\Sum[3]~15_combout\ & (\B[3]~input_o\ $ (!\OP[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \Sum[3]~15_combout\,
	datad => \OP[0]~input_o\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X112_Y14_N18
\process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\Sum[0]~3_combout\) # ((\Sum[1]~9_combout\) # ((\Sum[3]~15_combout\) # (\Sum[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum[0]~3_combout\,
	datab => \Sum[1]~9_combout\,
	datac => \Sum[3]~15_combout\,
	datad => \Sum[2]~12_combout\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X112_Y14_N4
\process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (!\process_1~1_combout\ & ((\OP[2]~input_o\) # ((\OP[1]~input_o\) # (!\process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \process_1~0_combout\,
	datac => \OP[1]~input_o\,
	datad => \process_1~1_combout\,
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X112_Y14_N14
\process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (\process_1~0_combout\ & (!\OP[1]~input_o\ & !\OP[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~0_combout\,
	datac => \OP[1]~input_o\,
	datad => \OP[2]~input_o\,
	combout => \process_1~3_combout\);

-- Location: IOIBUF_X115_Y18_N8
\IE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IE,
	o => \IE~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

ww_Sum(0) <= \Sum[0]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_Z_Flag <= \Z_Flag~output_o\;

ww_O_Flag <= \O_Flag~output_o\;

ww_N_Flag <= \N_Flag~output_o\;
END structure;


