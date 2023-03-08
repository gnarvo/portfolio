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

-- DATE "04/27/2020 13:57:57"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SPIMASTER IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	TX_DATA : IN std_logic_vector(7 DOWNTO 0);
	TX_EN : IN std_logic;
	TX_RDY : OUT std_logic;
	RX_DATA : OUT std_logic_vector(7 DOWNTO 0);
	RX_EN : OUT std_logic;
	SClk : OUT std_logic;
	SPI_MISO : IN std_logic;
	SPI_MOSI : OUT std_logic
	);
END SPIMASTER;

-- Design Ports Information
-- TX_DATA[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[5]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[6]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_RDY	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[2]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_EN	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SClk	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPI_MISO	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPI_MOSI	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_EN	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[7]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SPIMASTER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_TX_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_TX_EN : std_logic;
SIGNAL ww_TX_RDY : std_logic;
SIGNAL ww_RX_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RX_EN : std_logic;
SIGNAL ww_SClk : std_logic;
SIGNAL ww_SPI_MISO : std_logic;
SIGNAL ww_SPI_MOSI : std_logic;
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TX_DATA[0]~input_o\ : std_logic;
SIGNAL \TX_DATA[1]~input_o\ : std_logic;
SIGNAL \TX_DATA[2]~input_o\ : std_logic;
SIGNAL \TX_DATA[3]~input_o\ : std_logic;
SIGNAL \TX_DATA[4]~input_o\ : std_logic;
SIGNAL \TX_DATA[5]~input_o\ : std_logic;
SIGNAL \TX_DATA[6]~input_o\ : std_logic;
SIGNAL \SPI_MISO~input_o\ : std_logic;
SIGNAL \TX_RDY~output_o\ : std_logic;
SIGNAL \RX_DATA[0]~output_o\ : std_logic;
SIGNAL \RX_DATA[1]~output_o\ : std_logic;
SIGNAL \RX_DATA[2]~output_o\ : std_logic;
SIGNAL \RX_DATA[3]~output_o\ : std_logic;
SIGNAL \RX_DATA[4]~output_o\ : std_logic;
SIGNAL \RX_DATA[5]~output_o\ : std_logic;
SIGNAL \RX_DATA[6]~output_o\ : std_logic;
SIGNAL \RX_DATA[7]~output_o\ : std_logic;
SIGNAL \RX_EN~output_o\ : std_logic;
SIGNAL \SClk~output_o\ : std_logic;
SIGNAL \SPI_MOSI~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \TX_EN~input_o\ : std_logic;
SIGNAL \sSCLK_EDGES[0]~5_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \sCLK_COUNT[0]~2_combout\ : std_logic;
SIGNAL \sCLK_COUNT[1]~0_combout\ : std_logic;
SIGNAL \sCLK_COUNT[1]~1_combout\ : std_logic;
SIGNAL \sSCLK_EDGES[4]~15_combout\ : std_logic;
SIGNAL \sSCLK_EDGES[4]~16_combout\ : std_logic;
SIGNAL \sSCLK_EDGES[0]~6\ : std_logic;
SIGNAL \sSCLK_EDGES[1]~7_combout\ : std_logic;
SIGNAL \sSCLK_EDGES[1]~8\ : std_logic;
SIGNAL \sSCLK_EDGES[2]~9_combout\ : std_logic;
SIGNAL \sSCLK_EDGES[2]~10\ : std_logic;
SIGNAL \sSCLK_EDGES[3]~11_combout\ : std_logic;
SIGNAL \sSCLK_EDGES[3]~12\ : std_logic;
SIGNAL \sSCLK_EDGES[4]~13_combout\ : std_logic;
SIGNAL \TX_RDY~0_combout\ : std_logic;
SIGNAL \TX_RDY~reg0feeder_combout\ : std_logic;
SIGNAL \TX_RDY~reg0_q\ : std_logic;
SIGNAL \sSCLK~0_combout\ : std_logic;
SIGNAL \sSCLK~q\ : std_logic;
SIGNAL \SClk~reg0feeder_combout\ : std_logic;
SIGNAL \SClk~reg0_q\ : std_logic;
SIGNAL \sTX_EN~feeder_combout\ : std_logic;
SIGNAL \sTX_EN~q\ : std_logic;
SIGNAL \TX_DATA[7]~input_o\ : std_logic;
SIGNAL \sTX_DATA[7]~0_combout\ : std_logic;
SIGNAL \sTX_RDY~q\ : std_logic;
SIGNAL \SPI_MOSI~0_combout\ : std_logic;
SIGNAL \SPI_MOSI~reg0_q\ : std_logic;
SIGNAL sSCLK_EDGES : std_logic_vector(4 DOWNTO 0);
SIGNAL sTX_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL sCLK_COUNT : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
ww_TX_DATA <= TX_DATA;
ww_TX_EN <= TX_EN;
TX_RDY <= ww_TX_RDY;
RX_DATA <= ww_RX_DATA;
RX_EN <= ww_RX_EN;
SClk <= ww_SClk;
ww_SPI_MISO <= SPI_MISO;
SPI_MOSI <= ww_SPI_MOSI;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N16
\TX_RDY~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TX_RDY~reg0_q\,
	devoe => ww_devoe,
	o => \TX_RDY~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\RX_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RX_DATA[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\RX_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RX_DATA[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\RX_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RX_DATA[2]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\RX_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RX_DATA[3]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\RX_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \RX_DATA[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\RX_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \RX_DATA[5]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\RX_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \RX_DATA[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\RX_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \RX_DATA[7]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\RX_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RX_EN~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\SClk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SClk~reg0_q\,
	devoe => ww_devoe,
	o => \SClk~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\SPI_MOSI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SPI_MOSI~reg0_q\,
	devoe => ww_devoe,
	o => \SPI_MOSI~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y7_N1
\TX_EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_EN,
	o => \TX_EN~input_o\);

-- Location: LCCOMB_X2_Y7_N8
\sSCLK_EDGES[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_EDGES[0]~5_combout\ = sSCLK_EDGES(0) $ (VCC)
-- \sSCLK_EDGES[0]~6\ = CARRY(sSCLK_EDGES(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sSCLK_EDGES(0),
	datad => VCC,
	combout => \sSCLK_EDGES[0]~5_combout\,
	cout => \sSCLK_EDGES[0]~6\);

-- Location: LCCOMB_X2_Y7_N4
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X0_Y16_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y7_N18
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (sSCLK_EDGES(1)) # ((sSCLK_EDGES(0)) # ((sSCLK_EDGES(3)) # (sSCLK_EDGES(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sSCLK_EDGES(1),
	datab => sSCLK_EDGES(0),
	datac => sSCLK_EDGES(3),
	datad => sSCLK_EDGES(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y7_N0
\sCLK_COUNT[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sCLK_COUNT[0]~2_combout\ = sCLK_COUNT(0) $ (((!\TX_EN~input_o\ & ((sSCLK_EDGES(4)) # (\LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_EN~input_o\,
	datab => sSCLK_EDGES(4),
	datac => sCLK_COUNT(0),
	datad => \LessThan0~0_combout\,
	combout => \sCLK_COUNT[0]~2_combout\);

-- Location: FF_X2_Y7_N1
\sCLK_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sCLK_COUNT[0]~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCLK_COUNT(0));

-- Location: LCCOMB_X2_Y7_N2
\sCLK_COUNT[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sCLK_COUNT[1]~0_combout\ = (!\TX_EN~input_o\ & (sCLK_COUNT(0) & ((sSCLK_EDGES(4)) # (\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_EN~input_o\,
	datab => sSCLK_EDGES(4),
	datac => sCLK_COUNT(0),
	datad => \LessThan0~0_combout\,
	combout => \sCLK_COUNT[1]~0_combout\);

-- Location: LCCOMB_X2_Y7_N26
\sCLK_COUNT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sCLK_COUNT[1]~1_combout\ = sCLK_COUNT(1) $ (\sCLK_COUNT[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sCLK_COUNT(1),
	datad => \sCLK_COUNT[1]~0_combout\,
	combout => \sCLK_COUNT[1]~1_combout\);

-- Location: FF_X2_Y7_N27
\sCLK_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sCLK_COUNT[1]~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCLK_COUNT(1));

-- Location: LCCOMB_X2_Y7_N30
\sSCLK_EDGES[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_EDGES[4]~15_combout\ = (!sCLK_COUNT(0)) # (!sCLK_COUNT(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sCLK_COUNT(1),
	datad => sCLK_COUNT(0),
	combout => \sSCLK_EDGES[4]~15_combout\);

-- Location: LCCOMB_X2_Y7_N20
\sSCLK_EDGES[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_EDGES[4]~16_combout\ = (\TX_EN~input_o\) # ((!\sSCLK_EDGES[4]~15_combout\ & ((sSCLK_EDGES(4)) # (\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_EN~input_o\,
	datab => sSCLK_EDGES(4),
	datac => \sSCLK_EDGES[4]~15_combout\,
	datad => \LessThan0~0_combout\,
	combout => \sSCLK_EDGES[4]~16_combout\);

-- Location: FF_X2_Y7_N9
\sSCLK_EDGES[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_EDGES[0]~5_combout\,
	asdata => \~GND~combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_EN~input_o\,
	ena => \sSCLK_EDGES[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_EDGES(0));

-- Location: LCCOMB_X2_Y7_N10
\sSCLK_EDGES[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_EDGES[1]~7_combout\ = (sSCLK_EDGES(1) & (\sSCLK_EDGES[0]~6\ & VCC)) # (!sSCLK_EDGES(1) & (!\sSCLK_EDGES[0]~6\))
-- \sSCLK_EDGES[1]~8\ = CARRY((!sSCLK_EDGES(1) & !\sSCLK_EDGES[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sSCLK_EDGES(1),
	datad => VCC,
	cin => \sSCLK_EDGES[0]~6\,
	combout => \sSCLK_EDGES[1]~7_combout\,
	cout => \sSCLK_EDGES[1]~8\);

-- Location: FF_X2_Y7_N11
\sSCLK_EDGES[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_EDGES[1]~7_combout\,
	asdata => \~GND~combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_EN~input_o\,
	ena => \sSCLK_EDGES[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_EDGES(1));

-- Location: LCCOMB_X2_Y7_N12
\sSCLK_EDGES[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_EDGES[2]~9_combout\ = (sSCLK_EDGES(2) & ((GND) # (!\sSCLK_EDGES[1]~8\))) # (!sSCLK_EDGES(2) & (\sSCLK_EDGES[1]~8\ $ (GND)))
-- \sSCLK_EDGES[2]~10\ = CARRY((sSCLK_EDGES(2)) # (!\sSCLK_EDGES[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sSCLK_EDGES(2),
	datad => VCC,
	cin => \sSCLK_EDGES[1]~8\,
	combout => \sSCLK_EDGES[2]~9_combout\,
	cout => \sSCLK_EDGES[2]~10\);

-- Location: FF_X2_Y7_N13
\sSCLK_EDGES[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_EDGES[2]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_EN~input_o\,
	ena => \sSCLK_EDGES[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_EDGES(2));

-- Location: LCCOMB_X2_Y7_N14
\sSCLK_EDGES[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_EDGES[3]~11_combout\ = (sSCLK_EDGES(3) & (\sSCLK_EDGES[2]~10\ & VCC)) # (!sSCLK_EDGES(3) & (!\sSCLK_EDGES[2]~10\))
-- \sSCLK_EDGES[3]~12\ = CARRY((!sSCLK_EDGES(3) & !\sSCLK_EDGES[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sSCLK_EDGES(3),
	datad => VCC,
	cin => \sSCLK_EDGES[2]~10\,
	combout => \sSCLK_EDGES[3]~11_combout\,
	cout => \sSCLK_EDGES[3]~12\);

-- Location: FF_X2_Y7_N15
\sSCLK_EDGES[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_EDGES[3]~11_combout\,
	asdata => \~GND~combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_EN~input_o\,
	ena => \sSCLK_EDGES[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_EDGES(3));

-- Location: LCCOMB_X2_Y7_N16
\sSCLK_EDGES[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_EDGES[4]~13_combout\ = \sSCLK_EDGES[3]~12\ $ (sSCLK_EDGES(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sSCLK_EDGES(4),
	cin => \sSCLK_EDGES[3]~12\,
	combout => \sSCLK_EDGES[4]~13_combout\);

-- Location: FF_X2_Y7_N17
\sSCLK_EDGES[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_EDGES[4]~13_combout\,
	asdata => VCC,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_EN~input_o\,
	ena => \sSCLK_EDGES[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_EDGES(4));

-- Location: LCCOMB_X2_Y7_N24
\TX_RDY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_RDY~0_combout\ = (!\TX_EN~input_o\ & (!sSCLK_EDGES(4) & !\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_EN~input_o\,
	datab => sSCLK_EDGES(4),
	datad => \LessThan0~0_combout\,
	combout => \TX_RDY~0_combout\);

-- Location: LCCOMB_X2_Y7_N28
\TX_RDY~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_RDY~reg0feeder_combout\ = \TX_RDY~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TX_RDY~0_combout\,
	combout => \TX_RDY~reg0feeder_combout\);

-- Location: FF_X2_Y7_N29
\TX_RDY~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX_RDY~reg0feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_RDY~reg0_q\);

-- Location: LCCOMB_X2_Y7_N22
\sSCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK~0_combout\ = \sSCLK~q\ $ (((sCLK_COUNT(1) & \sCLK_COUNT[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sCLK_COUNT(1),
	datac => \sSCLK~q\,
	datad => \sCLK_COUNT[1]~0_combout\,
	combout => \sSCLK~0_combout\);

-- Location: FF_X2_Y7_N23
sSCLK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sSCLK~q\);

-- Location: LCCOMB_X1_Y7_N16
\SClk~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SClk~reg0feeder_combout\ = \sSCLK~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sSCLK~q\,
	combout => \SClk~reg0feeder_combout\);

-- Location: FF_X1_Y7_N17
\SClk~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SClk~reg0feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SClk~reg0_q\);

-- Location: LCCOMB_X1_Y7_N10
\sTX_EN~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sTX_EN~feeder_combout\ = \TX_EN~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TX_EN~input_o\,
	combout => \sTX_EN~feeder_combout\);

-- Location: FF_X1_Y7_N11
sTX_EN : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sTX_EN~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sTX_EN~q\);

-- Location: IOIBUF_X0_Y8_N22
\TX_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(7),
	o => \TX_DATA[7]~input_o\);

-- Location: LCCOMB_X1_Y7_N28
\sTX_DATA[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sTX_DATA[7]~0_combout\ = (\TX_EN~input_o\ & ((\TX_DATA[7]~input_o\))) # (!\TX_EN~input_o\ & (sTX_DATA(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX_EN~input_o\,
	datac => sTX_DATA(7),
	datad => \TX_DATA[7]~input_o\,
	combout => \sTX_DATA[7]~0_combout\);

-- Location: FF_X1_Y7_N29
\sTX_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sTX_DATA[7]~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sTX_DATA(7));

-- Location: FF_X2_Y7_N25
sTX_RDY : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX_RDY~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sTX_RDY~q\);

-- Location: LCCOMB_X1_Y7_N18
\SPI_MOSI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MOSI~0_combout\ = (\sTX_EN~q\ & ((\sTX_RDY~q\ & ((\SPI_MOSI~reg0_q\))) # (!\sTX_RDY~q\ & (sTX_DATA(7))))) # (!\sTX_EN~q\ & (((\SPI_MOSI~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sTX_EN~q\,
	datab => sTX_DATA(7),
	datac => \SPI_MOSI~reg0_q\,
	datad => \sTX_RDY~q\,
	combout => \SPI_MOSI~0_combout\);

-- Location: FF_X1_Y7_N19
\SPI_MOSI~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI_MOSI~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MOSI~reg0_q\);

-- Location: IOIBUF_X53_Y17_N8
\TX_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(0),
	o => \TX_DATA[0]~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\TX_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(1),
	o => \TX_DATA[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\TX_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(2),
	o => \TX_DATA[2]~input_o\);

-- Location: IOIBUF_X45_Y34_N1
\TX_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(3),
	o => \TX_DATA[3]~input_o\);

-- Location: IOIBUF_X16_Y34_N1
\TX_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(4),
	o => \TX_DATA[4]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\TX_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(5),
	o => \TX_DATA[5]~input_o\);

-- Location: IOIBUF_X5_Y34_N15
\TX_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(6),
	o => \TX_DATA[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\SPI_MISO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SPI_MISO,
	o => \SPI_MISO~input_o\);

ww_TX_RDY <= \TX_RDY~output_o\;

ww_RX_DATA(0) <= \RX_DATA[0]~output_o\;

ww_RX_DATA(1) <= \RX_DATA[1]~output_o\;

ww_RX_DATA(2) <= \RX_DATA[2]~output_o\;

ww_RX_DATA(3) <= \RX_DATA[3]~output_o\;

ww_RX_DATA(4) <= \RX_DATA[4]~output_o\;

ww_RX_DATA(5) <= \RX_DATA[5]~output_o\;

ww_RX_DATA(6) <= \RX_DATA[6]~output_o\;

ww_RX_DATA(7) <= \RX_DATA[7]~output_o\;

ww_RX_EN <= \RX_EN~output_o\;

ww_SClk <= \SClk~output_o\;

ww_SPI_MOSI <= \SPI_MOSI~output_o\;
END structure;


