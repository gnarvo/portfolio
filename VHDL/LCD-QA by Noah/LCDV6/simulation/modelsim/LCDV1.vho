-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/19/2020 18:36:11"

-- 
-- Device: Altera 5CEBA2F17A7 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY 	LCD IS
    PORT (
	reset : IN std_logic;
	Data_in : IN std_logic_vector(7 DOWNTO 0);
	check : OUT STD.STANDARD.integer;
	clock : OUT std_logic;
	LCD_On : OUT std_logic;
	Read_Write : OUT std_logic;
	Control_Data : OUT std_logic;
	Enable : OUT std_logic;
	Data_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END LCD;

-- Design Ports Information
-- check[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[5]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[8]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[9]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[10]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[11]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[12]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[13]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[14]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[15]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[16]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[17]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[18]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[19]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[20]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[21]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[22]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[23]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[24]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[25]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[26]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[27]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[28]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[29]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[30]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check[31]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_On	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_Write	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Control_Data	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[1]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[4]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[5]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[7]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[4]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[6]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_check : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_LCD_On : std_logic;
SIGNAL ww_Read_Write : std_logic;
SIGNAL ww_Control_Data : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \State.RESET_screen~q\ : std_logic;
SIGNAL \State~15_combout\ : std_logic;
SIGNAL \State.FUNCTION_LINE~q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \LCD_On$latch~combout\ : std_logic;
SIGNAL \State~14_combout\ : std_logic;
SIGNAL \State.DISPLAY~q\ : std_logic;
SIGNAL \State~12_combout\ : std_logic;
SIGNAL \State.CLEAR_LCD~q\ : std_logic;
SIGNAL \State~13_combout\ : std_logic;
SIGNAL \State.ENTRY~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \State.DATA~q\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \Control_Data$latch~combout\ : std_logic;
SIGNAL \Data_in[0]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Data_in[1]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Data_in[2]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Data_in[3]~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Data_in[4]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Data_in[5]~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Data_in[6]~input_o\ : std_logic;
SIGNAL \Data_out~0_combout\ : std_logic;
SIGNAL \Data_in[7]~input_o\ : std_logic;
SIGNAL \Data_out~1_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Control_Data$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LCD_On$latch~combout\ : std_logic;
SIGNAL \ALT_INV_clock~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_State.RESET_screen~q\ : std_logic;
SIGNAL \ALT_INV_State.FUNCTION_LINE~q\ : std_logic;
SIGNAL \ALT_INV_State.DISPLAY~q\ : std_logic;
SIGNAL \ALT_INV_State.ENTRY~q\ : std_logic;
SIGNAL \ALT_INV_State.CLEAR_LCD~q\ : std_logic;
SIGNAL \ALT_INV_State.DATA~q\ : std_logic;

BEGIN

ww_reset <= reset;
ww_Data_in <= Data_in;
check <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_check));
clock <= ww_clock;
LCD_On <= ww_LCD_On;
Read_Write <= ww_Read_Write;
Control_Data <= ww_Control_Data;
Enable <= ww_Enable;
Data_out <= ww_Data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Data_in[7]~input_o\ <= NOT \Data_in[7]~input_o\;
\ALT_INV_Data_in[6]~input_o\ <= NOT \Data_in[6]~input_o\;
\ALT_INV_Data_in[5]~input_o\ <= NOT \Data_in[5]~input_o\;
\ALT_INV_Data_in[4]~input_o\ <= NOT \Data_in[4]~input_o\;
\ALT_INV_Data_in[3]~input_o\ <= NOT \Data_in[3]~input_o\;
\ALT_INV_Data_in[2]~input_o\ <= NOT \Data_in[2]~input_o\;
\ALT_INV_Data_in[1]~input_o\ <= NOT \Data_in[1]~input_o\;
\ALT_INV_Data_in[0]~input_o\ <= NOT \Data_in[0]~input_o\;
\ALT_INV_Control_Data$latch~combout\ <= NOT \Control_Data$latch~combout\;
\ALT_INV_LCD_On$latch~combout\ <= NOT \LCD_On$latch~combout\;
\ALT_INV_clock~1_combout\ <= NOT \clock~1_combout\;
\ALT_INV_WideOr5~0_combout\ <= NOT \WideOr5~0_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_State.RESET_screen~q\ <= NOT \State.RESET_screen~q\;
\ALT_INV_State.FUNCTION_LINE~q\ <= NOT \State.FUNCTION_LINE~q\;
\ALT_INV_State.DISPLAY~q\ <= NOT \State.DISPLAY~q\;
\ALT_INV_State.ENTRY~q\ <= NOT \State.ENTRY~q\;
\ALT_INV_State.CLEAR_LCD~q\ <= NOT \State.CLEAR_LCD~q\;
\ALT_INV_State.DATA~q\ <= NOT \State.DATA~q\;

-- Location: IOOBUF_X34_Y45_N53
\check[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_check(0));

-- Location: IOOBUF_X54_Y19_N22
\check[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(1));

-- Location: IOOBUF_X54_Y14_N45
\check[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(2));

-- Location: IOOBUF_X38_Y45_N53
\check[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(3));

-- Location: IOOBUF_X25_Y0_N36
\check[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(4));

-- Location: IOOBUF_X34_Y0_N2
\check[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(5));

-- Location: IOOBUF_X54_Y19_N5
\check[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(6));

-- Location: IOOBUF_X54_Y19_N39
\check[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(7));

-- Location: IOOBUF_X29_Y0_N19
\check[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(8));

-- Location: IOOBUF_X0_Y19_N39
\check[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(9));

-- Location: IOOBUF_X54_Y21_N22
\check[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(10));

-- Location: IOOBUF_X0_Y21_N5
\check[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(11));

-- Location: IOOBUF_X16_Y45_N93
\check[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(12));

-- Location: IOOBUF_X16_Y45_N59
\check[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(13));

-- Location: IOOBUF_X18_Y45_N36
\check[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(14));

-- Location: IOOBUF_X0_Y19_N5
\check[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(15));

-- Location: IOOBUF_X0_Y19_N56
\check[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(16));

-- Location: IOOBUF_X0_Y18_N96
\check[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(17));

-- Location: IOOBUF_X54_Y15_N56
\check[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(18));

-- Location: IOOBUF_X38_Y0_N36
\check[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(19));

-- Location: IOOBUF_X0_Y21_N22
\check[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(20));

-- Location: IOOBUF_X24_Y0_N2
\check[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(21));

-- Location: IOOBUF_X36_Y0_N36
\check[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(22));

-- Location: IOOBUF_X0_Y20_N56
\check[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(23));

-- Location: IOOBUF_X54_Y19_N56
\check[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(24));

-- Location: IOOBUF_X32_Y45_N93
\check[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(25));

-- Location: IOOBUF_X54_Y14_N62
\check[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(26));

-- Location: IOOBUF_X34_Y0_N19
\check[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(27));

-- Location: IOOBUF_X38_Y45_N2
\check[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(28));

-- Location: IOOBUF_X32_Y45_N76
\check[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(29));

-- Location: IOOBUF_X54_Y17_N39
\check[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_check(30));

-- Location: IOOBUF_X29_Y0_N36
\check[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_check(31));

-- Location: IOOBUF_X14_Y0_N19
\clock~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_clock~1_combout\,
	devoe => ww_devoe,
	o => ww_clock);

-- Location: IOOBUF_X14_Y0_N2
\LCD_On~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_On$latch~combout\,
	devoe => ww_devoe,
	o => ww_LCD_On);

-- Location: IOOBUF_X36_Y0_N53
\Read_Write~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Read_Write);

-- Location: IOOBUF_X12_Y0_N19
\Control_Data~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Control_Data$latch~combout\,
	devoe => ww_devoe,
	o => ww_Control_Data);

-- Location: IOOBUF_X54_Y18_N79
\Enable~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Enable);

-- Location: IOOBUF_X10_Y0_N93
\Data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector6~0_combout\,
	devoe => ww_devoe,
	o => ww_Data_out(0));

-- Location: IOOBUF_X12_Y0_N2
\Data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector5~0_combout\,
	devoe => ww_devoe,
	o => ww_Data_out(1));

-- Location: IOOBUF_X12_Y0_N36
\Data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector4~0_combout\,
	devoe => ww_devoe,
	o => ww_Data_out(2));

-- Location: IOOBUF_X11_Y0_N36
\Data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector3~0_combout\,
	devoe => ww_devoe,
	o => ww_Data_out(3));

-- Location: IOOBUF_X14_Y0_N36
\Data_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector2~0_combout\,
	devoe => ww_devoe,
	o => ww_Data_out(4));

-- Location: IOOBUF_X14_Y0_N53
\Data_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector1~0_combout\,
	devoe => ww_devoe,
	o => ww_Data_out(5));

-- Location: IOOBUF_X23_Y0_N42
\Data_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out~0_combout\,
	devoe => ww_devoe,
	o => ww_Data_out(6));

-- Location: IOOBUF_X23_Y0_N76
\Data_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out~1_combout\,
	devoe => ww_devoe,
	o => ww_Data_out(7));

-- Location: MLABCELL_X13_Y1_N30
\clock~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock~1_combout\ = ( !\clock~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_clock~1_combout\,
	combout => \clock~1_combout\);

-- Location: IOIBUF_X11_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X13_Y1_N20
\State.RESET_screen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~1_combout\,
	asdata => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.RESET_screen~q\);

-- Location: MLABCELL_X13_Y1_N42
\State~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~15_combout\ = ( \State.RESET_screen~q\ & ( \reset~input_o\ ) ) # ( !\State.RESET_screen~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_State.RESET_screen~q\,
	combout => \State~15_combout\);

-- Location: FF_X13_Y1_N44
\State.FUNCTION_LINE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~1_combout\,
	d => \State~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.FUNCTION_LINE~q\);

-- Location: MLABCELL_X13_Y1_N51
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( \State.FUNCTION_LINE~q\ & ( \State.RESET_screen~q\ ) ) # ( !\State.FUNCTION_LINE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.RESET_screen~q\,
	dataf => \ALT_INV_State.FUNCTION_LINE~q\,
	combout => \WideOr0~0_combout\);

-- Location: MLABCELL_X13_Y1_N18
\LCD_On$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LCD_On$latch~combout\ = ( \WideOr0~0_combout\ & ( !\State.FUNCTION_LINE~q\ ) ) # ( !\WideOr0~0_combout\ & ( \LCD_On$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LCD_On$latch~combout\,
	datad => \ALT_INV_State.FUNCTION_LINE~q\,
	dataf => \ALT_INV_WideOr0~0_combout\,
	combout => \LCD_On$latch~combout\);

-- Location: MLABCELL_X13_Y1_N15
\State~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~14_combout\ = ( !\reset~input_o\ & ( !\State.FUNCTION_LINE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.FUNCTION_LINE~q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \State~14_combout\);

-- Location: FF_X13_Y1_N17
\State.DISPLAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~1_combout\,
	d => \State~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.DISPLAY~q\);

-- Location: MLABCELL_X13_Y1_N54
\State~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~12_combout\ = ( !\reset~input_o\ & ( \State.DISPLAY~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.DISPLAY~q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \State~12_combout\);

-- Location: FF_X13_Y1_N2
\State.CLEAR_LCD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~1_combout\,
	asdata => \State~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.CLEAR_LCD~q\);

-- Location: MLABCELL_X13_Y1_N24
\State~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~13_combout\ = ( \State.CLEAR_LCD~q\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_State.CLEAR_LCD~q\,
	combout => \State~13_combout\);

-- Location: FF_X13_Y1_N26
\State.ENTRY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~1_combout\,
	d => \State~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.ENTRY~q\);

-- Location: MLABCELL_X13_Y1_N45
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \State.ENTRY~q\ & ( !\reset~input_o\ ) ) # ( !\State.ENTRY~q\ & ( (!\reset~input_o\ & \State.DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_State.DATA~q\,
	dataf => \ALT_INV_State.ENTRY~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X13_Y1_N56
\State.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~1_combout\,
	asdata => \Selector0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.DATA~q\);

-- Location: MLABCELL_X13_Y1_N39
\WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = ( \State.FUNCTION_LINE~q\ & ( \State.DATA~q\ ) ) # ( !\State.FUNCTION_LINE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_State.DATA~q\,
	dataf => \ALT_INV_State.FUNCTION_LINE~q\,
	combout => \WideOr5~0_combout\);

-- Location: MLABCELL_X13_Y1_N0
\Control_Data$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Control_Data$latch~combout\ = ( \WideOr5~0_combout\ & ( \State.DATA~q\ ) ) # ( !\WideOr5~0_combout\ & ( \Control_Data$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DATA~q\,
	datad => \ALT_INV_Control_Data$latch~combout\,
	dataf => \ALT_INV_WideOr5~0_combout\,
	combout => \Control_Data$latch~combout\);

-- Location: IOIBUF_X11_Y0_N18
\Data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(0),
	o => \Data_in[0]~input_o\);

-- Location: MLABCELL_X13_Y1_N57
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ((\State.DATA~q\ & \Data_in[0]~input_o\)) # (\State.CLEAR_LCD~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.DATA~q\,
	datac => \ALT_INV_Data_in[0]~input_o\,
	datad => \ALT_INV_State.CLEAR_LCD~q\,
	combout => \Selector6~0_combout\);

-- Location: IOIBUF_X10_Y0_N75
\Data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(1),
	o => \Data_in[1]~input_o\);

-- Location: MLABCELL_X13_Y1_N36
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \State.ENTRY~q\ ) # ( !\State.ENTRY~q\ & ( (\State.DATA~q\ & \Data_in[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.DATA~q\,
	datac => \ALT_INV_Data_in[1]~input_o\,
	dataf => \ALT_INV_State.ENTRY~q\,
	combout => \Selector5~0_combout\);

-- Location: IOIBUF_X10_Y0_N41
\Data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(2),
	o => \Data_in[2]~input_o\);

-- Location: MLABCELL_X13_Y1_N9
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \State.ENTRY~q\ ) # ( !\State.ENTRY~q\ & ( ((\State.DATA~q\ & \Data_in[2]~input_o\)) # (\State.DISPLAY~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.DATA~q\,
	datab => \ALT_INV_State.DISPLAY~q\,
	datac => \ALT_INV_Data_in[2]~input_o\,
	dataf => \ALT_INV_State.ENTRY~q\,
	combout => \Selector4~0_combout\);

-- Location: IOIBUF_X11_Y0_N52
\Data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(3),
	o => \Data_in[3]~input_o\);

-- Location: MLABCELL_X13_Y1_N6
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \State.FUNCTION_LINE~q\ & ( ((\State.DATA~q\ & \Data_in[3]~input_o\)) # (\State.DISPLAY~q\) ) ) # ( !\State.FUNCTION_LINE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.DATA~q\,
	datab => \ALT_INV_State.DISPLAY~q\,
	datac => \ALT_INV_Data_in[3]~input_o\,
	dataf => \ALT_INV_State.FUNCTION_LINE~q\,
	combout => \Selector3~0_combout\);

-- Location: IOIBUF_X12_Y0_N52
\Data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(4),
	o => \Data_in[4]~input_o\);

-- Location: MLABCELL_X13_Y1_N3
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\State.FUNCTION_LINE~q\) # ((\State.DATA~q\ & \Data_in[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001101110011011100110111001101110011011100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.DATA~q\,
	datab => \ALT_INV_State.FUNCTION_LINE~q\,
	datac => \ALT_INV_Data_in[4]~input_o\,
	combout => \Selector2~0_combout\);

-- Location: IOIBUF_X10_Y0_N58
\Data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(5),
	o => \Data_in[5]~input_o\);

-- Location: MLABCELL_X13_Y1_N21
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\State.FUNCTION_LINE~q\) # ((\Data_in[5]~input_o\ & \State.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001111110011001100111111001100110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.FUNCTION_LINE~q\,
	datac => \ALT_INV_Data_in[5]~input_o\,
	datad => \ALT_INV_State.DATA~q\,
	combout => \Selector1~0_combout\);

-- Location: IOIBUF_X23_Y0_N92
\Data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(6),
	o => \Data_in[6]~input_o\);

-- Location: MLABCELL_X23_Y1_N12
\Data_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_out~0_combout\ = ( \Data_in[6]~input_o\ & ( \State.DATA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.DATA~q\,
	dataf => \ALT_INV_Data_in[6]~input_o\,
	combout => \Data_out~0_combout\);

-- Location: IOIBUF_X23_Y0_N58
\Data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(7),
	o => \Data_in[7]~input_o\);

-- Location: MLABCELL_X23_Y1_N45
\Data_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_out~1_combout\ = ( \Data_in[7]~input_o\ & ( \State.DATA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.DATA~q\,
	dataf => \ALT_INV_Data_in[7]~input_o\,
	combout => \Data_out~1_combout\);

-- Location: LABCELL_X31_Y22_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


