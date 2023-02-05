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

-- DATE "04/21/2020 15:35:33"

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
	TX_PULSE : IN std_logic;
	TX_RDY : OUT std_logic;
	RX_PULSE : OUT std_logic;
	RX_DATA : OUT std_logic_vector(7 DOWNTO 0);
	SClk : OUT std_logic;
	SPI_MISO : IN std_logic;
	SPI_MOSI : OUT std_logic
	);
END SPIMASTER;

-- Design Ports Information
-- TX_RDY	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_PULSE	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[5]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[6]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_DATA[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SClk	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPI_MISO	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPI_MOSI	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_PULSE	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[6]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_DATA[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_TX_PULSE : std_logic;
SIGNAL ww_TX_RDY : std_logic;
SIGNAL ww_RX_PULSE : std_logic;
SIGNAL ww_RX_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SClk : std_logic;
SIGNAL ww_SPI_MISO : std_logic;
SIGNAL ww_SPI_MOSI : std_logic;
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SPI_MISO~input_o\ : std_logic;
SIGNAL \TX_RDY~output_o\ : std_logic;
SIGNAL \RX_PULSE~output_o\ : std_logic;
SIGNAL \RX_DATA[0]~output_o\ : std_logic;
SIGNAL \RX_DATA[1]~output_o\ : std_logic;
SIGNAL \RX_DATA[2]~output_o\ : std_logic;
SIGNAL \RX_DATA[3]~output_o\ : std_logic;
SIGNAL \RX_DATA[4]~output_o\ : std_logic;
SIGNAL \RX_DATA[5]~output_o\ : std_logic;
SIGNAL \RX_DATA[6]~output_o\ : std_logic;
SIGNAL \RX_DATA[7]~output_o\ : std_logic;
SIGNAL \SClk~output_o\ : std_logic;
SIGNAL \SPI_MOSI~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \TX_PULSE~input_o\ : std_logic;
SIGNAL \sSCLK_EDGES[0]~7_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \sCLK_COUNT[0]~1_combout\ : std_logic;
SIGNAL \sSCLK~3_combout\ : std_logic;
SIGNAL \sCLK_COUNT[1]~0_combout\ : std_logic;
SIGNAL \sSCLK~2_combout\ : std_logic;
SIGNAL \sSCLK_EDGES[4]~17_combout\ : std_logic;
SIGNAL \sSCLK_EDGES[0]~8\ : std_logic;
SIGNAL \sSCLK_EDGES[1]~9_combout\ : std_logic;
SIGNAL \sSCLK_EDGES[1]~10\ : std_logic;
SIGNAL \sSCLK_EDGES[2]~11_combout\ : std_logic;
SIGNAL \sSCLK_EDGES[2]~12\ : std_logic;
SIGNAL \sSCLK_EDGES[3]~13_combout\ : std_logic;
SIGNAL \sSCLK_EDGES[3]~14\ : std_logic;
SIGNAL \sSCLK_EDGES[4]~15_combout\ : std_logic;
SIGNAL \TX_RDY~0_combout\ : std_logic;
SIGNAL \TX_RDY~reg0_q\ : std_logic;
SIGNAL \sTX_RDY~feeder_combout\ : std_logic;
SIGNAL \sTX_RDY~q\ : std_logic;
SIGNAL \sTX_BC~2_combout\ : std_logic;
SIGNAL \sSCLK_EDGES~18_combout\ : std_logic;
SIGNAL \sTEDGE~q\ : std_logic;
SIGNAL \sTX_BC[2]~1_combout\ : std_logic;
SIGNAL \sTX_BC~0_combout\ : std_logic;
SIGNAL \sTX_BC~3_combout\ : std_logic;
SIGNAL \TX_DATA[2]~input_o\ : std_logic;
SIGNAL \sTX_DATA[2]~feeder_combout\ : std_logic;
SIGNAL \TX_DATA[3]~input_o\ : std_logic;
SIGNAL \TX_DATA[0]~input_o\ : std_logic;
SIGNAL \sTX_DATA[0]~feeder_combout\ : std_logic;
SIGNAL \TX_DATA[1]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \TX_DATA[6]~input_o\ : std_logic;
SIGNAL \TX_DATA[7]~input_o\ : std_logic;
SIGNAL \TX_DATA[4]~input_o\ : std_logic;
SIGNAL \sTX_DATA[4]~feeder_combout\ : std_logic;
SIGNAL \TX_DATA[5]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \RX_DATA[7]~0_combout\ : std_logic;
SIGNAL \sMOSI~q\ : std_logic;
SIGNAL \RX_DATA[7]~reg0_q\ : std_logic;
SIGNAL \sSCLK~4_combout\ : std_logic;
SIGNAL \sSCLK~q\ : std_logic;
SIGNAL \SClk~reg0feeder_combout\ : std_logic;
SIGNAL \SClk~reg0_q\ : std_logic;
SIGNAL \SPI_MOSI~reg0feeder_combout\ : std_logic;
SIGNAL \SPI_MOSI~reg0_q\ : std_logic;
SIGNAL sSCLK_EDGES : std_logic_vector(4 DOWNTO 0);
SIGNAL sTX_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL sTX_BC : std_logic_vector(2 DOWNTO 0);
SIGNAL sCLK_COUNT : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_SClk~reg0_q\ : std_logic;

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
ww_TX_PULSE <= TX_PULSE;
TX_RDY <= ww_TX_RDY;
RX_PULSE <= ww_RX_PULSE;
RX_DATA <= ww_RX_DATA;
SClk <= ww_SClk;
ww_SPI_MISO <= SPI_MISO;
SPI_MOSI <= ww_SPI_MOSI;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_SClk~reg0_q\ <= NOT \SClk~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y26_N23
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

-- Location: IOOBUF_X53_Y9_N16
\RX_PULSE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RX_PULSE~output_o\);

-- Location: IOOBUF_X43_Y34_N16
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

-- Location: IOOBUF_X11_Y0_N23
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

-- Location: IOOBUF_X3_Y34_N2
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

-- Location: IOOBUF_X29_Y34_N16
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

-- Location: IOOBUF_X16_Y34_N2
\RX_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RX_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\RX_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RX_DATA[5]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\RX_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RX_DATA[6]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
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

-- Location: IOOBUF_X53_Y22_N2
\SClk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SClk~reg0_q\,
	devoe => ww_devoe,
	o => \SClk~output_o\);

-- Location: IOOBUF_X53_Y16_N9
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

-- Location: IOIBUF_X53_Y17_N1
\TX_PULSE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_PULSE,
	o => \TX_PULSE~input_o\);

-- Location: LCCOMB_X51_Y19_N8
\sSCLK_EDGES[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_EDGES[0]~7_combout\ = sSCLK_EDGES(0) $ (VCC)
-- \sSCLK_EDGES[0]~8\ = CARRY(sSCLK_EDGES(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sSCLK_EDGES(0),
	datad => VCC,
	combout => \sSCLK_EDGES[0]~7_combout\,
	cout => \sSCLK_EDGES[0]~8\);

-- Location: LCCOMB_X51_Y19_N22
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

-- Location: LCCOMB_X51_Y19_N6
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

-- Location: LCCOMB_X51_Y19_N2
\sCLK_COUNT[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sCLK_COUNT[0]~1_combout\ = sCLK_COUNT(0) $ (((!\TX_PULSE~input_o\ & ((\LessThan0~0_combout\) # (sSCLK_EDGES(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_PULSE~input_o\,
	datab => \LessThan0~0_combout\,
	datac => sCLK_COUNT(0),
	datad => sSCLK_EDGES(4),
	combout => \sCLK_COUNT[0]~1_combout\);

-- Location: FF_X51_Y19_N3
\sCLK_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sCLK_COUNT[0]~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCLK_COUNT(0));

-- Location: LCCOMB_X51_Y19_N28
\sSCLK~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK~3_combout\ = (!\TX_PULSE~input_o\ & ((\LessThan0~0_combout\) # (sSCLK_EDGES(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_PULSE~input_o\,
	datac => \LessThan0~0_combout\,
	datad => sSCLK_EDGES(4),
	combout => \sSCLK~3_combout\);

-- Location: LCCOMB_X51_Y19_N26
\sCLK_COUNT[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sCLK_COUNT[1]~0_combout\ = sCLK_COUNT(1) $ (((sCLK_COUNT(0) & \sSCLK~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sCLK_COUNT(0),
	datac => sCLK_COUNT(1),
	datad => \sSCLK~3_combout\,
	combout => \sCLK_COUNT[1]~0_combout\);

-- Location: FF_X51_Y19_N27
\sCLK_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sCLK_COUNT[1]~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCLK_COUNT(1));

-- Location: LCCOMB_X51_Y19_N4
\sSCLK~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK~2_combout\ = (sCLK_COUNT(1) & sCLK_COUNT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sCLK_COUNT(1),
	datad => sCLK_COUNT(0),
	combout => \sSCLK~2_combout\);

-- Location: LCCOMB_X51_Y19_N30
\sSCLK_EDGES[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_EDGES[4]~17_combout\ = (\TX_PULSE~input_o\) # ((\sSCLK~2_combout\ & ((sSCLK_EDGES(4)) # (\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_PULSE~input_o\,
	datab => sSCLK_EDGES(4),
	datac => \sSCLK~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \sSCLK_EDGES[4]~17_combout\);

-- Location: FF_X51_Y19_N9
\sSCLK_EDGES[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_EDGES[0]~7_combout\,
	asdata => \~GND~combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_PULSE~input_o\,
	ena => \sSCLK_EDGES[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_EDGES(0));

-- Location: LCCOMB_X51_Y19_N10
\sSCLK_EDGES[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_EDGES[1]~9_combout\ = (sSCLK_EDGES(1) & (\sSCLK_EDGES[0]~8\ & VCC)) # (!sSCLK_EDGES(1) & (!\sSCLK_EDGES[0]~8\))
-- \sSCLK_EDGES[1]~10\ = CARRY((!sSCLK_EDGES(1) & !\sSCLK_EDGES[0]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sSCLK_EDGES(1),
	datad => VCC,
	cin => \sSCLK_EDGES[0]~8\,
	combout => \sSCLK_EDGES[1]~9_combout\,
	cout => \sSCLK_EDGES[1]~10\);

-- Location: FF_X51_Y19_N11
\sSCLK_EDGES[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_EDGES[1]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_PULSE~input_o\,
	ena => \sSCLK_EDGES[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_EDGES(1));

-- Location: LCCOMB_X51_Y19_N12
\sSCLK_EDGES[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_EDGES[2]~11_combout\ = (sSCLK_EDGES(2) & ((GND) # (!\sSCLK_EDGES[1]~10\))) # (!sSCLK_EDGES(2) & (\sSCLK_EDGES[1]~10\ $ (GND)))
-- \sSCLK_EDGES[2]~12\ = CARRY((sSCLK_EDGES(2)) # (!\sSCLK_EDGES[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sSCLK_EDGES(2),
	datad => VCC,
	cin => \sSCLK_EDGES[1]~10\,
	combout => \sSCLK_EDGES[2]~11_combout\,
	cout => \sSCLK_EDGES[2]~12\);

-- Location: FF_X51_Y19_N13
\sSCLK_EDGES[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_EDGES[2]~11_combout\,
	asdata => \~GND~combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_PULSE~input_o\,
	ena => \sSCLK_EDGES[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_EDGES(2));

-- Location: LCCOMB_X51_Y19_N14
\sSCLK_EDGES[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_EDGES[3]~13_combout\ = (sSCLK_EDGES(3) & (\sSCLK_EDGES[2]~12\ & VCC)) # (!sSCLK_EDGES(3) & (!\sSCLK_EDGES[2]~12\))
-- \sSCLK_EDGES[3]~14\ = CARRY((!sSCLK_EDGES(3) & !\sSCLK_EDGES[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sSCLK_EDGES(3),
	datad => VCC,
	cin => \sSCLK_EDGES[2]~12\,
	combout => \sSCLK_EDGES[3]~13_combout\,
	cout => \sSCLK_EDGES[3]~14\);

-- Location: FF_X51_Y19_N15
\sSCLK_EDGES[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_EDGES[3]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_PULSE~input_o\,
	ena => \sSCLK_EDGES[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_EDGES(3));

-- Location: LCCOMB_X51_Y19_N16
\sSCLK_EDGES[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_EDGES[4]~15_combout\ = \sSCLK_EDGES[3]~14\ $ (sSCLK_EDGES(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sSCLK_EDGES(4),
	cin => \sSCLK_EDGES[3]~14\,
	combout => \sSCLK_EDGES[4]~15_combout\);

-- Location: FF_X51_Y19_N17
\sSCLK_EDGES[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_EDGES[4]~15_combout\,
	asdata => VCC,
	clrn => \RST~inputclkctrl_outclk\,
	sload => \TX_PULSE~input_o\,
	ena => \sSCLK_EDGES[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSCLK_EDGES(4));

-- Location: LCCOMB_X51_Y19_N20
\TX_RDY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_RDY~0_combout\ = (!\TX_PULSE~input_o\ & (!sSCLK_EDGES(4) & !\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_PULSE~input_o\,
	datab => sSCLK_EDGES(4),
	datad => \LessThan0~0_combout\,
	combout => \TX_RDY~0_combout\);

-- Location: FF_X51_Y19_N21
\TX_RDY~reg0\ : dffeas
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
	q => \TX_RDY~reg0_q\);

-- Location: LCCOMB_X49_Y19_N6
\sTX_RDY~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sTX_RDY~feeder_combout\ = \TX_RDY~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TX_RDY~0_combout\,
	combout => \sTX_RDY~feeder_combout\);

-- Location: FF_X49_Y19_N7
sTX_RDY : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sTX_RDY~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sTX_RDY~q\);

-- Location: LCCOMB_X49_Y19_N14
\sTX_BC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sTX_BC~2_combout\ = (!sTX_BC(0) & !\sTX_RDY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sTX_BC(0),
	datad => \sTX_RDY~q\,
	combout => \sTX_BC~2_combout\);

-- Location: LCCOMB_X49_Y19_N20
\sSCLK_EDGES~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK_EDGES~18_combout\ = (sCLK_COUNT(0) & (sCLK_COUNT(1) & ((sSCLK_EDGES(4)) # (\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sSCLK_EDGES(4),
	datab => sCLK_COUNT(0),
	datac => sCLK_COUNT(1),
	datad => \LessThan0~0_combout\,
	combout => \sSCLK_EDGES~18_combout\);

-- Location: FF_X49_Y19_N21
sTEDGE : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK_EDGES~18_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \TX_PULSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sTEDGE~q\);

-- Location: LCCOMB_X49_Y19_N18
\sTX_BC[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sTX_BC[2]~1_combout\ = (\sTEDGE~q\) # (\sTX_RDY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sTEDGE~q\,
	datad => \sTX_RDY~q\,
	combout => \sTX_BC[2]~1_combout\);

-- Location: FF_X49_Y19_N15
\sTX_BC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sTX_BC~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \sTX_BC[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sTX_BC(0));

-- Location: LCCOMB_X49_Y19_N12
\sTX_BC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sTX_BC~0_combout\ = (!\sTX_RDY~q\ & (sTX_BC(0) $ (sTX_BC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sTX_BC(0),
	datac => sTX_BC(1),
	datad => \sTX_RDY~q\,
	combout => \sTX_BC~0_combout\);

-- Location: FF_X49_Y19_N13
\sTX_BC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sTX_BC~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \sTX_BC[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sTX_BC(1));

-- Location: LCCOMB_X49_Y19_N16
\sTX_BC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sTX_BC~3_combout\ = (!\sTX_RDY~q\ & (sTX_BC(2) $ (((sTX_BC(1) & sTX_BC(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sTX_BC(1),
	datab => sTX_BC(0),
	datac => sTX_BC(2),
	datad => \sTX_RDY~q\,
	combout => \sTX_BC~3_combout\);

-- Location: FF_X49_Y19_N17
\sTX_BC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sTX_BC~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \sTX_BC[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sTX_BC(2));

-- Location: IOIBUF_X53_Y20_N22
\TX_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(2),
	o => \TX_DATA[2]~input_o\);

-- Location: LCCOMB_X50_Y19_N22
\sTX_DATA[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sTX_DATA[2]~feeder_combout\ = \TX_DATA[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TX_DATA[2]~input_o\,
	combout => \sTX_DATA[2]~feeder_combout\);

-- Location: FF_X50_Y19_N23
\sTX_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sTX_DATA[2]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \TX_PULSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sTX_DATA(2));

-- Location: IOIBUF_X53_Y20_N15
\TX_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(3),
	o => \TX_DATA[3]~input_o\);

-- Location: FF_X50_Y19_N9
\sTX_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \TX_DATA[3]~input_o\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \TX_PULSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sTX_DATA(3));

-- Location: IOIBUF_X53_Y21_N22
\TX_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(0),
	o => \TX_DATA[0]~input_o\);

-- Location: LCCOMB_X50_Y19_N26
\sTX_DATA[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sTX_DATA[0]~feeder_combout\ = \TX_DATA[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TX_DATA[0]~input_o\,
	combout => \sTX_DATA[0]~feeder_combout\);

-- Location: FF_X50_Y19_N27
\sTX_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sTX_DATA[0]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \TX_PULSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sTX_DATA(0));

-- Location: IOIBUF_X53_Y14_N8
\TX_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(1),
	o => \TX_DATA[1]~input_o\);

-- Location: FF_X50_Y19_N25
\sTX_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \TX_DATA[1]~input_o\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \TX_PULSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sTX_DATA(1));

-- Location: LCCOMB_X50_Y19_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (sTX_BC(0) & (sTX_DATA(0) & ((sTX_BC(1))))) # (!sTX_BC(0) & (((sTX_DATA(1)) # (!sTX_BC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sTX_BC(0),
	datab => sTX_DATA(0),
	datac => sTX_DATA(1),
	datad => sTX_BC(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X50_Y19_N8
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (sTX_BC(1) & (((\Mux0~0_combout\)))) # (!sTX_BC(1) & ((\Mux0~0_combout\ & ((sTX_DATA(3)))) # (!\Mux0~0_combout\ & (sTX_DATA(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sTX_BC(1),
	datab => sTX_DATA(2),
	datac => sTX_DATA(3),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X53_Y14_N1
\TX_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(6),
	o => \TX_DATA[6]~input_o\);

-- Location: FF_X50_Y19_N19
\sTX_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \TX_DATA[6]~input_o\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \TX_PULSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sTX_DATA(6));

-- Location: IOIBUF_X53_Y24_N22
\TX_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(7),
	o => \TX_DATA[7]~input_o\);

-- Location: FF_X50_Y19_N21
\sTX_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \TX_DATA[7]~input_o\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \TX_PULSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sTX_DATA(7));

-- Location: IOIBUF_X53_Y15_N8
\TX_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(4),
	o => \TX_DATA[4]~input_o\);

-- Location: LCCOMB_X50_Y19_N30
\sTX_DATA[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sTX_DATA[4]~feeder_combout\ = \TX_DATA[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TX_DATA[4]~input_o\,
	combout => \sTX_DATA[4]~feeder_combout\);

-- Location: FF_X50_Y19_N31
\sTX_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sTX_DATA[4]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \TX_PULSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sTX_DATA(4));

-- Location: IOIBUF_X53_Y13_N8
\TX_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_DATA(5),
	o => \TX_DATA[5]~input_o\);

-- Location: FF_X50_Y19_N29
\sTX_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \TX_DATA[5]~input_o\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \TX_PULSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sTX_DATA(5));

-- Location: LCCOMB_X50_Y19_N28
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (sTX_BC(0) & (sTX_DATA(4) & ((sTX_BC(1))))) # (!sTX_BC(0) & (((sTX_DATA(5)) # (!sTX_BC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sTX_BC(0),
	datab => sTX_DATA(4),
	datac => sTX_DATA(5),
	datad => sTX_BC(1),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X50_Y19_N20
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (sTX_BC(1) & (((\Mux0~2_combout\)))) # (!sTX_BC(1) & ((\Mux0~2_combout\ & ((sTX_DATA(7)))) # (!\Mux0~2_combout\ & (sTX_DATA(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sTX_BC(1),
	datab => sTX_DATA(6),
	datac => sTX_DATA(7),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X50_Y19_N12
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (sTX_BC(2) & (\Mux0~1_combout\)) # (!sTX_BC(2) & ((\Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sTX_BC(2),
	datac => \Mux0~1_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X50_Y19_N4
\RX_DATA[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_DATA[7]~0_combout\ = (!\sTX_RDY~q\ & \sTEDGE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sTX_RDY~q\,
	datad => \sTEDGE~q\,
	combout => \RX_DATA[7]~0_combout\);

-- Location: FF_X50_Y19_N13
sMOSI : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux0~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \RX_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMOSI~q\);

-- Location: FF_X50_Y19_N5
\RX_DATA[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMOSI~q\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \RX_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_DATA[7]~reg0_q\);

-- Location: LCCOMB_X51_Y19_N24
\sSCLK~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sSCLK~4_combout\ = \sSCLK~q\ $ (((sCLK_COUNT(1) & (sCLK_COUNT(0) & \sSCLK~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCLK_COUNT(1),
	datab => sCLK_COUNT(0),
	datac => \sSCLK~q\,
	datad => \sSCLK~3_combout\,
	combout => \sSCLK~4_combout\);

-- Location: FF_X51_Y19_N25
sSCLK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sSCLK~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sSCLK~q\);

-- Location: LCCOMB_X52_Y19_N24
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

-- Location: FF_X52_Y19_N25
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

-- Location: LCCOMB_X50_Y19_N6
\SPI_MOSI~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MOSI~reg0feeder_combout\ = \Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux0~4_combout\,
	combout => \SPI_MOSI~reg0feeder_combout\);

-- Location: FF_X50_Y19_N7
\SPI_MOSI~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI_MOSI~reg0feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \RX_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MOSI~reg0_q\);

-- Location: IOIBUF_X53_Y17_N8
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

ww_RX_PULSE <= \RX_PULSE~output_o\;

ww_RX_DATA(0) <= \RX_DATA[0]~output_o\;

ww_RX_DATA(1) <= \RX_DATA[1]~output_o\;

ww_RX_DATA(2) <= \RX_DATA[2]~output_o\;

ww_RX_DATA(3) <= \RX_DATA[3]~output_o\;

ww_RX_DATA(4) <= \RX_DATA[4]~output_o\;

ww_RX_DATA(5) <= \RX_DATA[5]~output_o\;

ww_RX_DATA(6) <= \RX_DATA[6]~output_o\;

ww_RX_DATA(7) <= \RX_DATA[7]~output_o\;

ww_SClk <= \SClk~output_o\;

ww_SPI_MOSI <= \SPI_MOSI~output_o\;
END structure;


