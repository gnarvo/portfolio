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

-- DATE "05/10/2020 20:56:12"

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
	CS : OUT std_logic;
	START_TX : BUFFER std_logic;
	TX_DATA : IN std_logic_vector(15 DOWNTO 0);
	TX_DV : IN std_logic;
	RX_DATA : OUT std_logic_vector(15 DOWNTO 0);
	RX_DV : IN std_logic;
	SPI_CLK : OUT std_logic;
	MISO : IN std_logic;
	MOSI : OUT std_logic;
	CPOL : OUT std_logic;
	CPHA : OUT std_logic
	);
END SPIMASTER;

-- Design Ports Information
-- CS	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START_TX	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[0]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[3]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[4]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[6]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[7]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[8]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[9]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[10]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[11]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[12]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[13]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[14]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[15]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPI_CLK	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MISO	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MOSI	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPOL	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPHA	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DV	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DV	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[4]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[10]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[11]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[12]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[13]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[14]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[15]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_CS : std_logic;
SIGNAL ww_START_TX : std_logic;
SIGNAL ww_TX_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_TX_DV : std_logic;
SIGNAL ww_RX_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RX_DV : std_logic;
SIGNAL ww_SPI_CLK : std_logic;
SIGNAL ww_MISO : std_logic;
SIGNAL ww_MOSI : std_logic;
SIGNAL ww_CPOL : std_logic;
SIGNAL ww_CPHA : std_logic;
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MISO~input_o\ : std_logic;
SIGNAL \CS~output_o\ : std_logic;
SIGNAL \START_TX~output_o\ : std_logic;
SIGNAL \RX_DATA[0]~output_o\ : std_logic;
SIGNAL \RX_DATA[1]~output_o\ : std_logic;
SIGNAL \RX_DATA[2]~output_o\ : std_logic;
SIGNAL \RX_DATA[3]~output_o\ : std_logic;
SIGNAL \RX_DATA[4]~output_o\ : std_logic;
SIGNAL \RX_DATA[5]~output_o\ : std_logic;
SIGNAL \RX_DATA[6]~output_o\ : std_logic;
SIGNAL \RX_DATA[7]~output_o\ : std_logic;
SIGNAL \RX_DATA[8]~output_o\ : std_logic;
SIGNAL \RX_DATA[9]~output_o\ : std_logic;
SIGNAL \RX_DATA[10]~output_o\ : std_logic;
SIGNAL \RX_DATA[11]~output_o\ : std_logic;
SIGNAL \RX_DATA[12]~output_o\ : std_logic;
SIGNAL \RX_DATA[13]~output_o\ : std_logic;
SIGNAL \RX_DATA[14]~output_o\ : std_logic;
SIGNAL \RX_DATA[15]~output_o\ : std_logic;
SIGNAL \SPI_CLK~output_o\ : std_logic;
SIGNAL \MOSI~output_o\ : std_logic;
SIGNAL \CPOL~output_o\ : std_logic;
SIGNAL \CPHA~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \TX_DV~input_o\ : std_logic;
SIGNAL \RX_DV~input_o\ : std_logic;
SIGNAL \CS~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \CS~reg0_q\ : std_logic;
SIGNAL \sSCLK_T[0]~5_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \sSCLK_C~0_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \sSCLK_C~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \sSCLK_C~1_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \sSCLK_T~7_combout\ : std_logic;
SIGNAL \sSCLK_T[4]~8_combout\ : std_logic;
SIGNAL \sSCLK_T[0]~6\ : std_logic;
SIGNAL \sSCLK_T[1]~9_combout\ : std_logic;
SIGNAL \sSCLK_T[1]~10\ : std_logic;
SIGNAL \sSCLK_T[2]~11_combout\ : std_logic;
SIGNAL \sSCLK_T[2]~12\ : std_logic;
SIGNAL \sSCLK_T[3]~13_combout\ : std_logic;
SIGNAL \sSCLK_T[3]~14\ : std_logic;
SIGNAL \sSCLK_T[4]~15_combout\ : std_logic;
SIGNAL \START_TX~0_combout\ : std_logic;
SIGNAL \START_TX~reg0_q\ : std_logic;
SIGNAL \TX_DATA[0]~input_o\ : std_logic;
SIGNAL \sMEMORY~0_combout\ : std_logic;
SIGNAL \sMEMORY[0][0]~1_combout\ : std_logic;
SIGNAL \sMEMORY[0][0]~q\ : std_logic;
SIGNAL \RX_DATA[0]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[0]~0_combout\ : std_logic;
SIGNAL \RX_DATA[0]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[1]~input_o\ : std_logic;
SIGNAL \sMEMORY~2_combout\ : std_logic;
SIGNAL \sMEMORY[0][1]~q\ : std_logic;
SIGNAL \RX_DATA[1]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[1]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[2]~input_o\ : std_logic;
SIGNAL \sMEMORY~3_combout\ : std_logic;
SIGNAL \sMEMORY[0][2]~q\ : std_logic;
SIGNAL \RX_DATA[2]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[2]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[3]~input_o\ : std_logic;
SIGNAL \sMEMORY~4_combout\ : std_logic;
SIGNAL \sMEMORY[0][3]~q\ : std_logic;
SIGNAL \RX_DATA[3]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[3]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[4]~input_o\ : std_logic;
SIGNAL \sMEMORY~5_combout\ : std_logic;
SIGNAL \sMEMORY[0][4]~q\ : std_logic;
SIGNAL \RX_DATA[4]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[4]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[5]~input_o\ : std_logic;
SIGNAL \sMEMORY~6_combout\ : std_logic;
SIGNAL \sMEMORY[0][5]~q\ : std_logic;
SIGNAL \RX_DATA[5]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[5]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[6]~input_o\ : std_logic;
SIGNAL \sMEMORY~7_combout\ : std_logic;
SIGNAL \sMEMORY[0][6]~q\ : std_logic;
SIGNAL \RX_DATA[6]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[6]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[7]~input_o\ : std_logic;
SIGNAL \sMEMORY~8_combout\ : std_logic;
SIGNAL \sMEMORY[0][7]~q\ : std_logic;
SIGNAL \RX_DATA[7]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[7]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[8]~input_o\ : std_logic;
SIGNAL \sMEMORY~9_combout\ : std_logic;
SIGNAL \sMEMORY[0][8]~q\ : std_logic;
SIGNAL \RX_DATA[8]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[8]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[9]~input_o\ : std_logic;
SIGNAL \sMEMORY~10_combout\ : std_logic;
SIGNAL \sMEMORY[0][9]~q\ : std_logic;
SIGNAL \RX_DATA[9]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[9]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[10]~input_o\ : std_logic;
SIGNAL \sMEMORY~11_combout\ : std_logic;
SIGNAL \sMEMORY[0][10]~q\ : std_logic;
SIGNAL \RX_DATA[10]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[10]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[11]~input_o\ : std_logic;
SIGNAL \sMEMORY~12_combout\ : std_logic;
SIGNAL \sMEMORY[0][11]~q\ : std_logic;
SIGNAL \RX_DATA[11]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[11]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[12]~input_o\ : std_logic;
SIGNAL \sMEMORY~13_combout\ : std_logic;
SIGNAL \sMEMORY[0][12]~q\ : std_logic;
SIGNAL \RX_DATA[12]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[12]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[13]~input_o\ : std_logic;
SIGNAL \sMEMORY~14_combout\ : std_logic;
SIGNAL \sMEMORY[0][13]~q\ : std_logic;
SIGNAL \RX_DATA[13]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[13]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[14]~input_o\ : std_logic;
SIGNAL \sMEMORY~15_combout\ : std_logic;
SIGNAL \sMEMORY[0][14]~q\ : std_logic;
SIGNAL \RX_DATA[14]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[14]~reg0_q\ : std_logic;
SIGNAL \TX_DATA[15]~input_o\ : std_logic;
SIGNAL \sMEMORY~16_combout\ : std_logic;
SIGNAL \sMEMORY[0][15]~q\ : std_logic;
SIGNAL \RX_DATA[15]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_DATA[15]~reg0_q\ : std_logic;
SIGNAL \sSPI_CLK~0_combout\ : std_logic;
SIGNAL \sSPI_CLK~q\ : std_logic;
SIGNAL \SPI_CLK~reg0_q\ : std_logic;
SIGNAL sSCLK_T : std_logic_vector(4 DOWNTO 0);
SIGNAL sSCLK_C : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_RST~input_o\ : std_logic;
SIGNAL \ALT_INV_START_TX~0_combout\ : std_logic;
SIGNAL \ALT_INV_SPI_CLK~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
CS <= ww_CS;
START_TX <= ww_START_TX;
ww_TX_DATA <= TX_DATA;
ww_TX_DV <= TX_DV;
RX_DATA <= ww_RX_DATA;
ww_RX_DV <= RX_DV;
SPI_CLK <= ww_SPI_CLK;
ww_MISO <= MISO;
MOSI <= ww_MOSI;
CPOL <= ww_CPOL;
CPHA <= ww_CPHA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
\ALT_INV_START_TX~0_combout\ <= NOT \START_TX~0_combout\;
\ALT_INV_SPI_CLK~reg0_q\ <= NOT \SPI_CLK~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y15_N9
\CS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CS~reg0_q\,
	devoe => ww_devoe,
	o => \CS~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\START_TX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \START_TX~reg0_q\,
	devoe => ww_devoe,
	o => \START_TX~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\RX_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[0]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\RX_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[1]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\RX_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[2]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[2]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\RX_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[3]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[3]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\RX_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[4]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[4]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\RX_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[5]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[5]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\RX_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[6]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[6]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\RX_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[7]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[7]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\RX_DATA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[8]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[8]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\RX_DATA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[9]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[9]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\RX_DATA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[10]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[10]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\RX_DATA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[11]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[11]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\RX_DATA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[12]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[12]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\RX_DATA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[13]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[13]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\RX_DATA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[14]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[14]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\RX_DATA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_DATA[15]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_DATA[15]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\SPI_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SPI_CLK~reg0_q\,
	devoe => ww_devoe,
	o => \SPI_CLK~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\MOSI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MOSI~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\CPOL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \CPOL~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\CPHA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \CPHA~output_o\);

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

-- Location: IOIBUF_X27_Y0_N1
\TX_DV~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DV,
	o => \TX_DV~input_o\);

-- Location: IOIBUF_X53_Y9_N15
\RX_DV~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX_DV,
	o => \RX_DV~input_o\);

-- Location: LCCOMB_X52_Y15_N20
\CS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CS~0_combout\ = (!\TX_DV~input_o\ & (\CS~reg0_q\ & !\RX_DV~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_DV~input_o\,
	datac => \CS~reg0_q\,
	datad => \RX_DV~input_o\,
	combout => \CS~0_combout\);

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

-- Location: FF_X52_Y15_N21
\CS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CS~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS~reg0_q\);

-- Location: LCCOMB_X51_Y26_N8
\sSCLK_T[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_T[0]~5_combout\ = sSCLK_T(0) $ (VCC)
-- \sSCLK_T[0]~6\ = CARRY(sSCLK_T(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sSCLK_T(0),
	datad => VCC,
	combout => \sSCLK_T[0]~5_combout\,
	cout => \sSCLK_T[0]~6\);

-- Location: LCCOMB_X51_Y26_N4
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

-- Location: LCCOMB_X51_Y26_N24
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!sSCLK_T(1) & (!sSCLK_T(3) & (!sSCLK_T(0) & !sSCLK_T(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sSCLK_T(1),
	datab => sSCLK_T(3),
	datac => sSCLK_T(0),
	datad => sSCLK_T(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X50_Y26_N20
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = sSCLK_C(0) $ (VCC)
-- \Add1~1\ = CARRY(sSCLK_C(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sSCLK_C(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X50_Y26_N21
\sSCLK_C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \ALT_INV_START_TX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_C(0));

-- Location: LCCOMB_X50_Y26_N22
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (sSCLK_C(1) & (!\Add1~1\)) # (!sSCLK_C(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!sSCLK_C(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sSCLK_C(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X50_Y26_N26
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (sSCLK_C(3) & (!\Add1~5\)) # (!sSCLK_C(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!sSCLK_C(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sSCLK_C(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X50_Y26_N28
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (sSCLK_C(4) & (\Add1~7\ $ (GND))) # (!sSCLK_C(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((sSCLK_C(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sSCLK_C(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X50_Y26_N10
\sSCLK_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_C~0_combout\ = \Equal0~1_combout\ $ (\Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datad => \Add1~8_combout\,
	combout => \sSCLK_C~0_combout\);

-- Location: FF_X50_Y26_N11
\sSCLK_C[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_C~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \ALT_INV_START_TX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_C(4));

-- Location: LCCOMB_X50_Y26_N30
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = sSCLK_C(5) $ (\Add1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sSCLK_C(5),
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X50_Y26_N14
\sSCLK_C~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_C~2_combout\ = \Add1~10_combout\ $ (\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~10_combout\,
	datad => \Equal0~1_combout\,
	combout => \sSCLK_C~2_combout\);

-- Location: FF_X50_Y26_N15
\sSCLK_C[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_C~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \ALT_INV_START_TX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_C(5));

-- Location: LCCOMB_X50_Y26_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (sSCLK_C(4) & (!sSCLK_C(1) & !sSCLK_C(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sSCLK_C(4),
	datab => sSCLK_C(1),
	datad => sSCLK_C(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X50_Y26_N18
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (sSCLK_C(0) & (sSCLK_C(5) & (!sSCLK_C(3) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sSCLK_C(0),
	datab => sSCLK_C(5),
	datac => sSCLK_C(3),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X50_Y26_N4
\sSCLK_C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_C~1_combout\ = \Add1~2_combout\ $ (\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \sSCLK_C~1_combout\);

-- Location: FF_X50_Y26_N5
\sSCLK_C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_C~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \ALT_INV_START_TX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_C(1));

-- Location: LCCOMB_X50_Y26_N24
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (sSCLK_C(2) & (\Add1~3\ $ (GND))) # (!sSCLK_C(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((sSCLK_C(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sSCLK_C(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X50_Y26_N25
\sSCLK_C[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \ALT_INV_START_TX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_C(2));

-- Location: FF_X50_Y26_N27
\sSCLK_C[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \ALT_INV_START_TX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_C(3));

-- Location: LCCOMB_X50_Y26_N8
\sSCLK_T~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_T~7_combout\ = (\Equal0~0_combout\ & ((sSCLK_C(3) & (!sSCLK_C(0) & !sSCLK_C(5))) # (!sSCLK_C(3) & (sSCLK_C(0) & sSCLK_C(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sSCLK_C(3),
	datab => sSCLK_C(0),
	datac => sSCLK_C(5),
	datad => \Equal0~0_combout\,
	combout => \sSCLK_T~7_combout\);

-- Location: LCCOMB_X51_Y26_N2
\sSCLK_T[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_T[4]~8_combout\ = (\TX_DV~input_o\) # ((\sSCLK_T~7_combout\ & ((sSCLK_T(4)) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_DV~input_o\,
	datab => sSCLK_T(4),
	datac => \LessThan0~0_combout\,
	datad => \sSCLK_T~7_combout\,
	combout => \sSCLK_T[4]~8_combout\);

-- Location: FF_X51_Y26_N9
\sSCLK_T[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_T[0]~5_combout\,
	asdata => \~GND~combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_DV~input_o\,
	ena => \sSCLK_T[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_T(0));

-- Location: LCCOMB_X51_Y26_N10
\sSCLK_T[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_T[1]~9_combout\ = (sSCLK_T(1) & (\sSCLK_T[0]~6\ & VCC)) # (!sSCLK_T(1) & (!\sSCLK_T[0]~6\))
-- \sSCLK_T[1]~10\ = CARRY((!sSCLK_T(1) & !\sSCLK_T[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sSCLK_T(1),
	datad => VCC,
	cin => \sSCLK_T[0]~6\,
	combout => \sSCLK_T[1]~9_combout\,
	cout => \sSCLK_T[1]~10\);

-- Location: FF_X51_Y26_N11
\sSCLK_T[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_T[1]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_DV~input_o\,
	ena => \sSCLK_T[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_T(1));

-- Location: LCCOMB_X51_Y26_N12
\sSCLK_T[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_T[2]~11_combout\ = (sSCLK_T(2) & ((GND) # (!\sSCLK_T[1]~10\))) # (!sSCLK_T(2) & (\sSCLK_T[1]~10\ $ (GND)))
-- \sSCLK_T[2]~12\ = CARRY((sSCLK_T(2)) # (!\sSCLK_T[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sSCLK_T(2),
	datad => VCC,
	cin => \sSCLK_T[1]~10\,
	combout => \sSCLK_T[2]~11_combout\,
	cout => \sSCLK_T[2]~12\);

-- Location: FF_X51_Y26_N13
\sSCLK_T[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_T[2]~11_combout\,
	asdata => \~GND~combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_DV~input_o\,
	ena => \sSCLK_T[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_T(2));

-- Location: LCCOMB_X51_Y26_N14
\sSCLK_T[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_T[3]~13_combout\ = (sSCLK_T(3) & (\sSCLK_T[2]~12\ & VCC)) # (!sSCLK_T(3) & (!\sSCLK_T[2]~12\))
-- \sSCLK_T[3]~14\ = CARRY((!sSCLK_T(3) & !\sSCLK_T[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sSCLK_T(3),
	datad => VCC,
	cin => \sSCLK_T[2]~12\,
	combout => \sSCLK_T[3]~13_combout\,
	cout => \sSCLK_T[3]~14\);

-- Location: FF_X51_Y26_N15
\sSCLK_T[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_T[3]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_DV~input_o\,
	ena => \sSCLK_T[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_T(3));

-- Location: LCCOMB_X51_Y26_N16
\sSCLK_T[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_T[4]~15_combout\ = \sSCLK_T[3]~14\ $ (sSCLK_T(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sSCLK_T(4),
	cin => \sSCLK_T[3]~14\,
	combout => \sSCLK_T[4]~15_combout\);

-- Location: FF_X51_Y26_N17
\sSCLK_T[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_T[4]~15_combout\,
	asdata => VCC,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_DV~input_o\,
	ena => \sSCLK_T[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_T(4));

-- Location: LCCOMB_X50_Y26_N12
\START_TX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \START_TX~0_combout\ = (\TX_DV~input_o\) # ((!sSCLK_T(4) & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sSCLK_T(4),
	datac => \TX_DV~input_o\,
	datad => \LessThan0~0_combout\,
	combout => \START_TX~0_combout\);

-- Location: FF_X50_Y26_N13
\START_TX~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \START_TX~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \START_TX~reg0_q\);

-- Location: IOIBUF_X53_Y22_N8
\TX_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(0),
	o => \TX_DATA[0]~input_o\);

-- Location: LCCOMB_X52_Y15_N22
\sMEMORY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~0_combout\ = (\RST~input_o\ & \TX_DATA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \TX_DATA[0]~input_o\,
	combout => \sMEMORY~0_combout\);

-- Location: LCCOMB_X52_Y15_N12
\sMEMORY[0][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[0][0]~1_combout\ = (\TX_DV~input_o\) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_DV~input_o\,
	datac => \RST~input_o\,
	combout => \sMEMORY[0][0]~1_combout\);

-- Location: FF_X52_Y15_N23
\sMEMORY[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~0_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][0]~q\);

-- Location: LCCOMB_X51_Y15_N8
\RX_DATA[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[0]~reg0feeder_combout\ = \sMEMORY[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY[0][0]~q\,
	combout => \RX_DATA[0]~reg0feeder_combout\);

-- Location: LCCOMB_X52_Y15_N8
\RX_DATA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[0]~0_combout\ = (\RST~input_o\ & \RX_DV~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \RX_DV~input_o\,
	combout => \RX_DATA[0]~0_combout\);

-- Location: FF_X51_Y15_N9
\RX_DATA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[0]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[0]~reg0_q\);

-- Location: IOIBUF_X53_Y8_N22
\TX_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(1),
	o => \TX_DATA[1]~input_o\);

-- Location: LCCOMB_X52_Y15_N10
\sMEMORY~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~2_combout\ = (\TX_DATA[1]~input_o\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_DATA[1]~input_o\,
	datac => \RST~input_o\,
	combout => \sMEMORY~2_combout\);

-- Location: FF_X52_Y15_N11
\sMEMORY[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~2_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][1]~q\);

-- Location: LCCOMB_X51_Y15_N22
\RX_DATA[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[1]~reg0feeder_combout\ = \sMEMORY[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sMEMORY[0][1]~q\,
	combout => \RX_DATA[1]~reg0feeder_combout\);

-- Location: FF_X51_Y15_N23
\RX_DATA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[1]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[1]~reg0_q\);

-- Location: IOIBUF_X53_Y6_N22
\TX_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(2),
	o => \TX_DATA[2]~input_o\);

-- Location: LCCOMB_X52_Y15_N24
\sMEMORY~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~3_combout\ = (\RST~input_o\ & \TX_DATA[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \TX_DATA[2]~input_o\,
	combout => \sMEMORY~3_combout\);

-- Location: FF_X52_Y15_N25
\sMEMORY[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~3_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][2]~q\);

-- Location: LCCOMB_X51_Y15_N24
\RX_DATA[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[2]~reg0feeder_combout\ = \sMEMORY[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY[0][2]~q\,
	combout => \RX_DATA[2]~reg0feeder_combout\);

-- Location: FF_X51_Y15_N25
\RX_DATA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[2]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[2]~reg0_q\);

-- Location: IOIBUF_X53_Y9_N22
\TX_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(3),
	o => \TX_DATA[3]~input_o\);

-- Location: LCCOMB_X52_Y15_N6
\sMEMORY~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~4_combout\ = (\RST~input_o\ & \TX_DATA[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \TX_DATA[3]~input_o\,
	combout => \sMEMORY~4_combout\);

-- Location: FF_X52_Y15_N7
\sMEMORY[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~4_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][3]~q\);

-- Location: LCCOMB_X51_Y15_N30
\RX_DATA[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[3]~reg0feeder_combout\ = \sMEMORY[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY[0][3]~q\,
	combout => \RX_DATA[3]~reg0feeder_combout\);

-- Location: FF_X51_Y15_N31
\RX_DATA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[3]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[3]~reg0_q\);

-- Location: IOIBUF_X53_Y9_N8
\TX_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(4),
	o => \TX_DATA[4]~input_o\);

-- Location: LCCOMB_X52_Y15_N28
\sMEMORY~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~5_combout\ = (\RST~input_o\ & \TX_DATA[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \TX_DATA[4]~input_o\,
	combout => \sMEMORY~5_combout\);

-- Location: FF_X52_Y15_N29
\sMEMORY[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~5_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][4]~q\);

-- Location: LCCOMB_X51_Y15_N0
\RX_DATA[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[4]~reg0feeder_combout\ = \sMEMORY[0][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY[0][4]~q\,
	combout => \RX_DATA[4]~reg0feeder_combout\);

-- Location: FF_X51_Y15_N1
\RX_DATA[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[4]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[4]~reg0_q\);

-- Location: IOIBUF_X45_Y0_N22
\TX_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(5),
	o => \TX_DATA[5]~input_o\);

-- Location: LCCOMB_X51_Y15_N6
\sMEMORY~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~6_combout\ = (\RST~input_o\ & \TX_DATA[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \TX_DATA[5]~input_o\,
	combout => \sMEMORY~6_combout\);

-- Location: FF_X51_Y15_N7
\sMEMORY[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~6_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][5]~q\);

-- Location: LCCOMB_X51_Y15_N2
\RX_DATA[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[5]~reg0feeder_combout\ = \sMEMORY[0][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY[0][5]~q\,
	combout => \RX_DATA[5]~reg0feeder_combout\);

-- Location: FF_X51_Y15_N3
\RX_DATA[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[5]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[5]~reg0_q\);

-- Location: IOIBUF_X53_Y22_N1
\TX_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(6),
	o => \TX_DATA[6]~input_o\);

-- Location: LCCOMB_X52_Y15_N2
\sMEMORY~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~7_combout\ = (\RST~input_o\ & \TX_DATA[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \TX_DATA[6]~input_o\,
	combout => \sMEMORY~7_combout\);

-- Location: FF_X52_Y15_N3
\sMEMORY[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~7_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][6]~q\);

-- Location: LCCOMB_X51_Y15_N4
\RX_DATA[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[6]~reg0feeder_combout\ = \sMEMORY[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY[0][6]~q\,
	combout => \RX_DATA[6]~reg0feeder_combout\);

-- Location: FF_X51_Y15_N5
\RX_DATA[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[6]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[6]~reg0_q\);

-- Location: IOIBUF_X53_Y25_N1
\TX_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(7),
	o => \TX_DATA[7]~input_o\);

-- Location: LCCOMB_X52_Y15_N16
\sMEMORY~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~8_combout\ = (\RST~input_o\ & \TX_DATA[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \TX_DATA[7]~input_o\,
	combout => \sMEMORY~8_combout\);

-- Location: FF_X52_Y15_N17
\sMEMORY[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~8_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][7]~q\);

-- Location: LCCOMB_X51_Y15_N14
\RX_DATA[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[7]~reg0feeder_combout\ = \sMEMORY[0][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY[0][7]~q\,
	combout => \RX_DATA[7]~reg0feeder_combout\);

-- Location: FF_X51_Y15_N15
\RX_DATA[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[7]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[7]~reg0_q\);

-- Location: IOIBUF_X53_Y20_N15
\TX_DATA[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(8),
	o => \TX_DATA[8]~input_o\);

-- Location: LCCOMB_X52_Y15_N18
\sMEMORY~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~9_combout\ = (\TX_DATA[8]~input_o\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX_DATA[8]~input_o\,
	datac => \RST~input_o\,
	combout => \sMEMORY~9_combout\);

-- Location: FF_X52_Y15_N19
\sMEMORY[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~9_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][8]~q\);

-- Location: LCCOMB_X51_Y15_N12
\RX_DATA[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[8]~reg0feeder_combout\ = \sMEMORY[0][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY[0][8]~q\,
	combout => \RX_DATA[8]~reg0feeder_combout\);

-- Location: FF_X51_Y15_N13
\RX_DATA[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[8]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[8]~reg0_q\);

-- Location: IOIBUF_X53_Y20_N22
\TX_DATA[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(9),
	o => \TX_DATA[9]~input_o\);

-- Location: LCCOMB_X51_Y15_N16
\sMEMORY~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~10_combout\ = (\RST~input_o\ & \TX_DATA[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \TX_DATA[9]~input_o\,
	combout => \sMEMORY~10_combout\);

-- Location: FF_X51_Y15_N17
\sMEMORY[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~10_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][9]~q\);

-- Location: LCCOMB_X51_Y15_N18
\RX_DATA[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[9]~reg0feeder_combout\ = \sMEMORY[0][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY[0][9]~q\,
	combout => \RX_DATA[9]~reg0feeder_combout\);

-- Location: FF_X51_Y15_N19
\RX_DATA[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[9]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[9]~reg0_q\);

-- Location: IOIBUF_X53_Y6_N15
\TX_DATA[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(10),
	o => \TX_DATA[10]~input_o\);

-- Location: LCCOMB_X52_Y15_N4
\sMEMORY~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~11_combout\ = (\TX_DATA[10]~input_o\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_DATA[10]~input_o\,
	datac => \RST~input_o\,
	combout => \sMEMORY~11_combout\);

-- Location: FF_X52_Y15_N5
\sMEMORY[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~11_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][10]~q\);

-- Location: LCCOMB_X51_Y15_N28
\RX_DATA[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[10]~reg0feeder_combout\ = \sMEMORY[0][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY[0][10]~q\,
	combout => \RX_DATA[10]~reg0feeder_combout\);

-- Location: FF_X51_Y15_N29
\RX_DATA[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[10]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[10]~reg0_q\);

-- Location: IOIBUF_X53_Y24_N22
\TX_DATA[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(11),
	o => \TX_DATA[11]~input_o\);

-- Location: LCCOMB_X52_Y15_N30
\sMEMORY~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~12_combout\ = (\RST~input_o\ & \TX_DATA[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \TX_DATA[11]~input_o\,
	combout => \sMEMORY~12_combout\);

-- Location: FF_X52_Y15_N31
\sMEMORY[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~12_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][11]~q\);

-- Location: LCCOMB_X51_Y15_N26
\RX_DATA[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[11]~reg0feeder_combout\ = \sMEMORY[0][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sMEMORY[0][11]~q\,
	combout => \RX_DATA[11]~reg0feeder_combout\);

-- Location: FF_X51_Y15_N27
\RX_DATA[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[11]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[11]~reg0_q\);

-- Location: IOIBUF_X47_Y0_N22
\TX_DATA[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(12),
	o => \TX_DATA[12]~input_o\);

-- Location: LCCOMB_X51_Y15_N10
\sMEMORY~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~13_combout\ = (\RST~input_o\ & \TX_DATA[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \TX_DATA[12]~input_o\,
	combout => \sMEMORY~13_combout\);

-- Location: FF_X51_Y15_N11
\sMEMORY[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~13_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][12]~q\);

-- Location: LCCOMB_X51_Y15_N20
\RX_DATA[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[12]~reg0feeder_combout\ = \sMEMORY[0][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY[0][12]~q\,
	combout => \RX_DATA[12]~reg0feeder_combout\);

-- Location: FF_X51_Y15_N21
\RX_DATA[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[12]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[12]~reg0_q\);

-- Location: IOIBUF_X51_Y34_N22
\TX_DATA[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(13),
	o => \TX_DATA[13]~input_o\);

-- Location: LCCOMB_X52_Y30_N10
\sMEMORY~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~14_combout\ = (\RST~input_o\ & \TX_DATA[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \TX_DATA[13]~input_o\,
	combout => \sMEMORY~14_combout\);

-- Location: FF_X52_Y30_N11
\sMEMORY[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~14_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][13]~q\);

-- Location: LCCOMB_X52_Y30_N4
\RX_DATA[13]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[13]~reg0feeder_combout\ = \sMEMORY[0][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY[0][13]~q\,
	combout => \RX_DATA[13]~reg0feeder_combout\);

-- Location: FF_X52_Y30_N5
\RX_DATA[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[13]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[13]~reg0_q\);

-- Location: IOIBUF_X53_Y30_N8
\TX_DATA[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(14),
	o => \TX_DATA[14]~input_o\);

-- Location: LCCOMB_X52_Y30_N12
\sMEMORY~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~15_combout\ = (\RST~input_o\ & \TX_DATA[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \TX_DATA[14]~input_o\,
	combout => \sMEMORY~15_combout\);

-- Location: FF_X52_Y30_N13
\sMEMORY[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~15_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][14]~q\);

-- Location: LCCOMB_X52_Y30_N2
\RX_DATA[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[14]~reg0feeder_combout\ = \sMEMORY[0][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY[0][14]~q\,
	combout => \RX_DATA[14]~reg0feeder_combout\);

-- Location: FF_X52_Y30_N3
\RX_DATA[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[14]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[14]~reg0_q\);

-- Location: IOIBUF_X51_Y34_N15
\TX_DATA[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(15),
	o => \TX_DATA[15]~input_o\);

-- Location: LCCOMB_X52_Y30_N18
\sMEMORY~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~16_combout\ = (\RST~input_o\ & \TX_DATA[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \TX_DATA[15]~input_o\,
	combout => \sMEMORY~16_combout\);

-- Location: FF_X52_Y30_N19
\sMEMORY[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~16_combout\,
	ena => \sMEMORY[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][15]~q\);

-- Location: LCCOMB_X52_Y30_N28
\RX_DATA[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[15]~reg0feeder_combout\ = \sMEMORY[0][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY[0][15]~q\,
	combout => \RX_DATA[15]~reg0feeder_combout\);

-- Location: FF_X52_Y30_N29
\RX_DATA[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RX_DATA[15]~reg0feeder_combout\,
	ena => \RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[15]~reg0_q\);

-- Location: LCCOMB_X50_Y26_N16
\sSPI_CLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSPI_CLK~0_combout\ = \sSPI_CLK~q\ $ (((\sSCLK_T~7_combout\ & !\START_TX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSCLK_T~7_combout\,
	datac => \sSPI_CLK~q\,
	datad => \START_TX~0_combout\,
	combout => \sSPI_CLK~0_combout\);

-- Location: FF_X50_Y26_N17
sSPI_CLK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSPI_CLK~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sSPI_CLK~q\);

-- Location: FF_X50_Y26_N7
\SPI_CLK~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sSPI_CLK~q\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_CLK~reg0_q\);

-- Location: IOIBUF_X27_Y0_N8
\MISO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MISO,
	o => \MISO~input_o\);

ww_CS <= \CS~output_o\;

ww_START_TX <= \START_TX~output_o\;

ww_RX_DATA(0) <= \RX_DATA[0]~output_o\;

ww_RX_DATA(1) <= \RX_DATA[1]~output_o\;

ww_RX_DATA(2) <= \RX_DATA[2]~output_o\;

ww_RX_DATA(3) <= \RX_DATA[3]~output_o\;

ww_RX_DATA(4) <= \RX_DATA[4]~output_o\;

ww_RX_DATA(5) <= \RX_DATA[5]~output_o\;

ww_RX_DATA(6) <= \RX_DATA[6]~output_o\;

ww_RX_DATA(7) <= \RX_DATA[7]~output_o\;

ww_RX_DATA(8) <= \RX_DATA[8]~output_o\;

ww_RX_DATA(9) <= \RX_DATA[9]~output_o\;

ww_RX_DATA(10) <= \RX_DATA[10]~output_o\;

ww_RX_DATA(11) <= \RX_DATA[11]~output_o\;

ww_RX_DATA(12) <= \RX_DATA[12]~output_o\;

ww_RX_DATA(13) <= \RX_DATA[13]~output_o\;

ww_RX_DATA(14) <= \RX_DATA[14]~output_o\;

ww_RX_DATA(15) <= \RX_DATA[15]~output_o\;

ww_SPI_CLK <= \SPI_CLK~output_o\;

ww_MOSI <= \MOSI~output_o\;

ww_CPOL <= \CPOL~output_o\;

ww_CPHA <= \CPHA~output_o\;
END structure;


