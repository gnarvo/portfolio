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

-- DATE "05/10/2020 21:21:09"

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

ENTITY 	FIFO IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	DATA_IN : IN std_logic_vector(15 DOWNTO 0);
	DATA_OUT : BUFFER std_logic_vector(15 DOWNTO 0);
	RD_EN : IN std_logic;
	WR_EN : IN std_logic;
	EMPTY : BUFFER std_logic;
	FULL : BUFFER std_logic;
	ALMOST_EMPTY : BUFFER std_logic;
	ALMOST_FULL : BUFFER std_logic;
	ILLEGAL : BUFFER std_logic;
	DATA_COUNT : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END FIFO;

-- Design Ports Information
-- DATA_OUT[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[8]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[9]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[10]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[11]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[12]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[13]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[14]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[15]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EMPTY	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FULL	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALMOST_EMPTY	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALMOST_FULL	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ILLEGAL	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_COUNT[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_COUNT[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_COUNT[2]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_COUNT[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_COUNT[4]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_EN	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_EN	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[8]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[10]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[11]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[13]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[14]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[15]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FIFO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_DATA_IN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DATA_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RD_EN : std_logic;
SIGNAL ww_WR_EN : std_logic;
SIGNAL ww_EMPTY : std_logic;
SIGNAL ww_FULL : std_logic;
SIGNAL ww_ALMOST_EMPTY : std_logic;
SIGNAL ww_ALMOST_FULL : std_logic;
SIGNAL ww_ILLEGAL : std_logic;
SIGNAL ww_DATA_COUNT : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA_OUT[0]~output_o\ : std_logic;
SIGNAL \DATA_OUT[1]~output_o\ : std_logic;
SIGNAL \DATA_OUT[2]~output_o\ : std_logic;
SIGNAL \DATA_OUT[3]~output_o\ : std_logic;
SIGNAL \DATA_OUT[4]~output_o\ : std_logic;
SIGNAL \DATA_OUT[5]~output_o\ : std_logic;
SIGNAL \DATA_OUT[6]~output_o\ : std_logic;
SIGNAL \DATA_OUT[7]~output_o\ : std_logic;
SIGNAL \DATA_OUT[8]~output_o\ : std_logic;
SIGNAL \DATA_OUT[9]~output_o\ : std_logic;
SIGNAL \DATA_OUT[10]~output_o\ : std_logic;
SIGNAL \DATA_OUT[11]~output_o\ : std_logic;
SIGNAL \DATA_OUT[12]~output_o\ : std_logic;
SIGNAL \DATA_OUT[13]~output_o\ : std_logic;
SIGNAL \DATA_OUT[14]~output_o\ : std_logic;
SIGNAL \DATA_OUT[15]~output_o\ : std_logic;
SIGNAL \EMPTY~output_o\ : std_logic;
SIGNAL \FULL~output_o\ : std_logic;
SIGNAL \ALMOST_EMPTY~output_o\ : std_logic;
SIGNAL \ALMOST_FULL~output_o\ : std_logic;
SIGNAL \ILLEGAL~output_o\ : std_logic;
SIGNAL \DATA_COUNT[0]~output_o\ : std_logic;
SIGNAL \DATA_COUNT[1]~output_o\ : std_logic;
SIGNAL \DATA_COUNT[2]~output_o\ : std_logic;
SIGNAL \DATA_COUNT[3]~output_o\ : std_logic;
SIGNAL \DATA_COUNT[4]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RD_IDX~2_combout\ : std_logic;
SIGNAL \WR_EN~input_o\ : std_logic;
SIGNAL \RD_EN~input_o\ : std_logic;
SIGNAL \SUB~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \RD_IDX~3_combout\ : std_logic;
SIGNAL \sALMOST_FULL~4_combout\ : std_logic;
SIGNAL \WR_IDX~2_combout\ : std_logic;
SIGNAL \WR_IDX[3]~1_combout\ : std_logic;
SIGNAL \WR_IDX~0_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \WR_IDX~4_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \WR_IDX~3_combout\ : std_logic;
SIGNAL \sALMOST_FULL~0_combout\ : std_logic;
SIGNAL \sALMOST_FULL~5_combout\ : std_logic;
SIGNAL \sALMOST_FULL~7_combout\ : std_logic;
SIGNAL \sALMOST_FULL~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \sALMOST_FULL~2_combout\ : std_logic;
SIGNAL \sALMOST_FULL~3_combout\ : std_logic;
SIGNAL \sFULL~0_combout\ : std_logic;
SIGNAL \sFULL~q\ : std_logic;
SIGNAL \sALMOST_EMPTY~5_combout\ : std_logic;
SIGNAL \sALMOST_EMPTY~3_combout\ : std_logic;
SIGNAL \sALMOST_EMPTY~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \sALMOST_EMPTY~1_combout\ : std_logic;
SIGNAL \sALMOST_EMPTY~4_combout\ : std_logic;
SIGNAL \sEMPTY~0_combout\ : std_logic;
SIGNAL \sEMPTY~q\ : std_logic;
SIGNAL \RD_IDX[1]~1_combout\ : std_logic;
SIGNAL \RD_IDX~0_combout\ : std_logic;
SIGNAL \sALMOST_EMPTY~2_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \RD_IDX~4_combout\ : std_logic;
SIGNAL \DATA_IN[0]~input_o\ : std_logic;
SIGNAL \sMEMORY~0_combout\ : std_logic;
SIGNAL \DATA_TRANSFER~0_combout\ : std_logic;
SIGNAL \sMEMORY[14][9]~5_combout\ : std_logic;
SIGNAL \sMEMORY[14][9]~6_combout\ : std_logic;
SIGNAL \sMEMORY[14][0]~q\ : std_logic;
SIGNAL \sMEMORY[6][10]~1_combout\ : std_logic;
SIGNAL \sMEMORY[6][10]~2_combout\ : std_logic;
SIGNAL \sMEMORY[6][0]~q\ : std_logic;
SIGNAL \sMEMORY[10][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \sMEMORY[10][3]~3_combout\ : std_logic;
SIGNAL \sMEMORY[10][0]~q\ : std_logic;
SIGNAL \sMEMORY[2][14]~4_combout\ : std_logic;
SIGNAL \sMEMORY[2][0]~q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \sMEMORY[7][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \sMEMORY[7][5]~19_combout\ : std_logic;
SIGNAL \sMEMORY[7][0]~q\ : std_logic;
SIGNAL \sMEMORY[15][2]~24_combout\ : std_logic;
SIGNAL \sMEMORY[15][0]~q\ : std_logic;
SIGNAL \sMEMORY[11][10]~20_combout\ : std_logic;
SIGNAL \sMEMORY[11][10]~21_combout\ : std_logic;
SIGNAL \sMEMORY[11][0]~q\ : std_logic;
SIGNAL \sMEMORY[3][15]~22_combout\ : std_logic;
SIGNAL \sMEMORY[3][15]~23_combout\ : std_logic;
SIGNAL \sMEMORY[3][0]~q\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \sMEMORY[8][0]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[8][2]~13_combout\ : std_logic;
SIGNAL \sMEMORY[8][2]~14_combout\ : std_logic;
SIGNAL \sMEMORY[8][0]~q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \sMEMORY[12][0]~18_combout\ : std_logic;
SIGNAL \sMEMORY[12][0]~q\ : std_logic;
SIGNAL \sMEMORY[4][10]~15_combout\ : std_logic;
SIGNAL \sMEMORY[4][10]~16_combout\ : std_logic;
SIGNAL \sMEMORY[4][0]~q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \sMEMORY[0][5]~17_combout\ : std_logic;
SIGNAL \sMEMORY[0][0]~q\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \sMEMORY[9][0]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[9][3]~7_combout\ : std_logic;
SIGNAL \sMEMORY[9][3]~8_combout\ : std_logic;
SIGNAL \sMEMORY[9][0]~q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \sMEMORY[13][5]~12_combout\ : std_logic;
SIGNAL \sMEMORY[13][0]~q\ : std_logic;
SIGNAL \sMEMORY[1][2]~10_combout\ : std_logic;
SIGNAL \sMEMORY[1][2]~11_combout\ : std_logic;
SIGNAL \sMEMORY[1][0]~q\ : std_logic;
SIGNAL \sMEMORY[5][0]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[5][3]~9_combout\ : std_logic;
SIGNAL \sMEMORY[5][0]~q\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \DATA_OUT[0]~0_combout\ : std_logic;
SIGNAL \DATA_OUT[0]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[1]~input_o\ : std_logic;
SIGNAL \sMEMORY~25_combout\ : std_logic;
SIGNAL \sMEMORY[13][1]~q\ : std_logic;
SIGNAL \sMEMORY[15][1]~q\ : std_logic;
SIGNAL \sMEMORY[14][1]~q\ : std_logic;
SIGNAL \sMEMORY[12][1]~q\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \sMEMORY[11][1]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[11][1]~q\ : std_logic;
SIGNAL \sMEMORY[9][1]~q\ : std_logic;
SIGNAL \sMEMORY[10][1]~q\ : std_logic;
SIGNAL \sMEMORY[8][1]~q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \sMEMORY[6][1]~q\ : std_logic;
SIGNAL \sMEMORY[7][1]~q\ : std_logic;
SIGNAL \sMEMORY[4][1]~q\ : std_logic;
SIGNAL \sMEMORY[5][1]~q\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \sMEMORY[2][1]~q\ : std_logic;
SIGNAL \sMEMORY[3][1]~q\ : std_logic;
SIGNAL \sMEMORY[0][1]~q\ : std_logic;
SIGNAL \sMEMORY[1][1]~q\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \DATA_OUT[1]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[2]~input_o\ : std_logic;
SIGNAL \sMEMORY~26_combout\ : std_logic;
SIGNAL \sMEMORY[11][2]~q\ : std_logic;
SIGNAL \sMEMORY[15][2]~q\ : std_logic;
SIGNAL \sMEMORY[7][2]~q\ : std_logic;
SIGNAL \sMEMORY[3][2]~q\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \sMEMORY[14][2]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[14][2]~q\ : std_logic;
SIGNAL \sMEMORY[10][2]~q\ : std_logic;
SIGNAL \sMEMORY[6][2]~q\ : std_logic;
SIGNAL \sMEMORY[2][2]~q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \sMEMORY[5][2]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[5][2]~q\ : std_logic;
SIGNAL \sMEMORY[13][2]~q\ : std_logic;
SIGNAL \sMEMORY[9][2]~q\ : std_logic;
SIGNAL \sMEMORY[1][2]~q\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \sMEMORY[4][2]~q\ : std_logic;
SIGNAL \sMEMORY[12][2]~q\ : std_logic;
SIGNAL \sMEMORY[8][2]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[8][2]~q\ : std_logic;
SIGNAL \sMEMORY[0][2]~q\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \DATA_OUT[2]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[3]~input_o\ : std_logic;
SIGNAL \sMEMORY~27_combout\ : std_logic;
SIGNAL \sMEMORY[7][3]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[7][3]~q\ : std_logic;
SIGNAL \sMEMORY[4][3]~q\ : std_logic;
SIGNAL \sMEMORY[6][3]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[6][3]~q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \sMEMORY[5][3]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[5][3]~q\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \sMEMORY[14][3]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[14][3]~q\ : std_logic;
SIGNAL \sMEMORY[15][3]~q\ : std_logic;
SIGNAL \sMEMORY[13][3]~q\ : std_logic;
SIGNAL \sMEMORY[12][3]~q\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \sMEMORY[10][3]~q\ : std_logic;
SIGNAL \sMEMORY[11][3]~q\ : std_logic;
SIGNAL \sMEMORY[9][3]~q\ : std_logic;
SIGNAL \sMEMORY[8][3]~q\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \sMEMORY[1][3]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[1][3]~q\ : std_logic;
SIGNAL \sMEMORY[3][3]~q\ : std_logic;
SIGNAL \sMEMORY[2][3]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[2][3]~q\ : std_logic;
SIGNAL \sMEMORY[0][3]~q\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \DATA_OUT[3]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[4]~input_o\ : std_logic;
SIGNAL \sMEMORY~28_combout\ : std_logic;
SIGNAL \sMEMORY[7][4]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[7][4]~q\ : std_logic;
SIGNAL \sMEMORY[15][4]~q\ : std_logic;
SIGNAL \sMEMORY[3][4]~q\ : std_logic;
SIGNAL \sMEMORY[11][4]~q\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \sMEMORY[13][4]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[13][4]~q\ : std_logic;
SIGNAL \sMEMORY[9][4]~q\ : std_logic;
SIGNAL \sMEMORY[1][4]~q\ : std_logic;
SIGNAL \sMEMORY[5][4]~q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \sMEMORY[10][4]~q\ : std_logic;
SIGNAL \sMEMORY[2][4]~q\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \sMEMORY[6][4]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[6][4]~q\ : std_logic;
SIGNAL \sMEMORY[14][4]~q\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \sMEMORY[8][4]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[8][4]~q\ : std_logic;
SIGNAL \sMEMORY[12][4]~q\ : std_logic;
SIGNAL \sMEMORY[4][4]~q\ : std_logic;
SIGNAL \sMEMORY[0][4]~q\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \DATA_OUT[4]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[5]~input_o\ : std_logic;
SIGNAL \sMEMORY~29_combout\ : std_logic;
SIGNAL \sMEMORY[13][5]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[13][5]~q\ : std_logic;
SIGNAL \sMEMORY[15][5]~q\ : std_logic;
SIGNAL \sMEMORY[14][5]~q\ : std_logic;
SIGNAL \sMEMORY[12][5]~q\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \sMEMORY[11][5]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[11][5]~q\ : std_logic;
SIGNAL \sMEMORY[9][5]~q\ : std_logic;
SIGNAL \sMEMORY[8][5]~q\ : std_logic;
SIGNAL \sMEMORY[10][5]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[10][5]~q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \sMEMORY[2][5]~q\ : std_logic;
SIGNAL \sMEMORY[3][5]~q\ : std_logic;
SIGNAL \sMEMORY[0][5]~q\ : std_logic;
SIGNAL \sMEMORY[1][5]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[1][5]~q\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \sMEMORY[6][5]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[6][5]~q\ : std_logic;
SIGNAL \sMEMORY[7][5]~q\ : std_logic;
SIGNAL \sMEMORY[4][5]~q\ : std_logic;
SIGNAL \sMEMORY[5][5]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[5][5]~q\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \DATA_OUT[5]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[6]~input_o\ : std_logic;
SIGNAL \sMEMORY~30_combout\ : std_logic;
SIGNAL \sMEMORY[11][6]~q\ : std_logic;
SIGNAL \sMEMORY[15][6]~q\ : std_logic;
SIGNAL \sMEMORY[7][6]~q\ : std_logic;
SIGNAL \sMEMORY[3][6]~q\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \sMEMORY[14][6]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[14][6]~q\ : std_logic;
SIGNAL \sMEMORY[10][6]~q\ : std_logic;
SIGNAL \sMEMORY[6][6]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[6][6]~q\ : std_logic;
SIGNAL \sMEMORY[2][6]~q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \sMEMORY[8][6]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[8][6]~q\ : std_logic;
SIGNAL \sMEMORY[0][6]~q\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \sMEMORY[12][6]~q\ : std_logic;
SIGNAL \sMEMORY[4][6]~q\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \sMEMORY[5][6]~q\ : std_logic;
SIGNAL \sMEMORY[13][6]~q\ : std_logic;
SIGNAL \sMEMORY[1][6]~q\ : std_logic;
SIGNAL \sMEMORY[9][6]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[9][6]~q\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \DATA_OUT[6]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[7]~input_o\ : std_logic;
SIGNAL \sMEMORY~31_combout\ : std_logic;
SIGNAL \sMEMORY[14][7]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[14][7]~q\ : std_logic;
SIGNAL \sMEMORY[15][7]~q\ : std_logic;
SIGNAL \sMEMORY[13][7]~q\ : std_logic;
SIGNAL \sMEMORY[12][7]~q\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \sMEMORY[7][7]~q\ : std_logic;
SIGNAL \sMEMORY[5][7]~q\ : std_logic;
SIGNAL \sMEMORY[6][7]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[6][7]~q\ : std_logic;
SIGNAL \sMEMORY[4][7]~q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \sMEMORY[1][7]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[1][7]~q\ : std_logic;
SIGNAL \sMEMORY[3][7]~q\ : std_logic;
SIGNAL \sMEMORY[0][7]~q\ : std_logic;
SIGNAL \sMEMORY[2][7]~q\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \sMEMORY[10][7]~q\ : std_logic;
SIGNAL \sMEMORY[11][7]~q\ : std_logic;
SIGNAL \sMEMORY[9][7]~q\ : std_logic;
SIGNAL \sMEMORY[8][7]~q\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \DATA_OUT[7]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[8]~input_o\ : std_logic;
SIGNAL \sMEMORY~32_combout\ : std_logic;
SIGNAL \sMEMORY[11][8]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[11][8]~q\ : std_logic;
SIGNAL \sMEMORY[3][8]~q\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \sMEMORY[7][8]~q\ : std_logic;
SIGNAL \sMEMORY[15][8]~q\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \sMEMORY[13][8]~q\ : std_logic;
SIGNAL \sMEMORY[9][8]~q\ : std_logic;
SIGNAL \sMEMORY[1][8]~q\ : std_logic;
SIGNAL \sMEMORY[5][8]~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \sMEMORY[6][8]~q\ : std_logic;
SIGNAL \sMEMORY[10][8]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[10][8]~q\ : std_logic;
SIGNAL \sMEMORY[2][8]~q\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \sMEMORY[14][8]~q\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \sMEMORY[8][8]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[8][8]~q\ : std_logic;
SIGNAL \sMEMORY[12][8]~q\ : std_logic;
SIGNAL \sMEMORY[4][8]~q\ : std_logic;
SIGNAL \sMEMORY[0][8]~q\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \DATA_OUT[8]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[9]~input_o\ : std_logic;
SIGNAL \sMEMORY~33_combout\ : std_logic;
SIGNAL \sMEMORY[13][9]~q\ : std_logic;
SIGNAL \sMEMORY[15][9]~q\ : std_logic;
SIGNAL \sMEMORY[14][9]~q\ : std_logic;
SIGNAL \sMEMORY[12][9]~q\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \sMEMORY[11][9]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[11][9]~q\ : std_logic;
SIGNAL \sMEMORY[9][9]~q\ : std_logic;
SIGNAL \sMEMORY[8][9]~q\ : std_logic;
SIGNAL \sMEMORY[10][9]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \sMEMORY[2][9]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[2][9]~q\ : std_logic;
SIGNAL \sMEMORY[3][9]~q\ : std_logic;
SIGNAL \sMEMORY[1][9]~q\ : std_logic;
SIGNAL \sMEMORY[0][9]~q\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \sMEMORY[6][9]~q\ : std_logic;
SIGNAL \sMEMORY[7][9]~q\ : std_logic;
SIGNAL \sMEMORY[5][9]~q\ : std_logic;
SIGNAL \sMEMORY[4][9]~q\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \DATA_OUT[9]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[10]~input_o\ : std_logic;
SIGNAL \sMEMORY~34_combout\ : std_logic;
SIGNAL \sMEMORY[11][10]~q\ : std_logic;
SIGNAL \sMEMORY[15][10]~q\ : std_logic;
SIGNAL \sMEMORY[7][10]~q\ : std_logic;
SIGNAL \sMEMORY[3][10]~q\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \sMEMORY[6][10]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[6][10]~q\ : std_logic;
SIGNAL \sMEMORY[2][10]~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \sMEMORY[14][10]~q\ : std_logic;
SIGNAL \sMEMORY[10][10]~q\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \sMEMORY[5][10]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[5][10]~q\ : std_logic;
SIGNAL \sMEMORY[13][10]~q\ : std_logic;
SIGNAL \sMEMORY[9][10]~q\ : std_logic;
SIGNAL \sMEMORY[1][10]~q\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \sMEMORY[4][10]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[4][10]~q\ : std_logic;
SIGNAL \sMEMORY[12][10]~q\ : std_logic;
SIGNAL \sMEMORY[8][10]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[8][10]~q\ : std_logic;
SIGNAL \sMEMORY[0][10]~q\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \DATA_OUT[10]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[11]~input_o\ : std_logic;
SIGNAL \sMEMORY~35_combout\ : std_logic;
SIGNAL \sMEMORY[5][11]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[5][11]~q\ : std_logic;
SIGNAL \sMEMORY[6][11]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[6][11]~q\ : std_logic;
SIGNAL \sMEMORY[4][11]~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \sMEMORY[7][11]~q\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \sMEMORY[14][11]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[14][11]~q\ : std_logic;
SIGNAL \sMEMORY[15][11]~q\ : std_logic;
SIGNAL \sMEMORY[13][11]~q\ : std_logic;
SIGNAL \sMEMORY[12][11]~q\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \sMEMORY[10][11]~q\ : std_logic;
SIGNAL \sMEMORY[11][11]~q\ : std_logic;
SIGNAL \sMEMORY[9][11]~q\ : std_logic;
SIGNAL \sMEMORY[8][11]~q\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \sMEMORY[1][11]~q\ : std_logic;
SIGNAL \sMEMORY[3][11]~q\ : std_logic;
SIGNAL \sMEMORY[2][11]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[2][11]~q\ : std_logic;
SIGNAL \sMEMORY[0][11]~q\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \DATA_OUT[11]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[12]~input_o\ : std_logic;
SIGNAL \sMEMORY~36_combout\ : std_logic;
SIGNAL \sMEMORY[9][12]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[9][12]~q\ : std_logic;
SIGNAL \sMEMORY[13][12]~q\ : std_logic;
SIGNAL \sMEMORY[1][12]~q\ : std_logic;
SIGNAL \sMEMORY[5][12]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \sMEMORY[11][12]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[11][12]~q\ : std_logic;
SIGNAL \sMEMORY[3][12]~q\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \sMEMORY[15][12]~q\ : std_logic;
SIGNAL \sMEMORY[7][12]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[7][12]~q\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \sMEMORY[8][12]~q\ : std_logic;
SIGNAL \sMEMORY[12][12]~q\ : std_logic;
SIGNAL \sMEMORY[4][12]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[4][12]~q\ : std_logic;
SIGNAL \sMEMORY[0][12]~q\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \sMEMORY[6][12]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[6][12]~q\ : std_logic;
SIGNAL \sMEMORY[10][12]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[10][12]~q\ : std_logic;
SIGNAL \sMEMORY[2][12]~q\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \sMEMORY[14][12]~q\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \DATA_OUT[12]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[13]~input_o\ : std_logic;
SIGNAL \sMEMORY~37_combout\ : std_logic;
SIGNAL \sMEMORY[14][13]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[14][13]~q\ : std_logic;
SIGNAL \sMEMORY[12][13]~q\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \sMEMORY[13][13]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[13][13]~q\ : std_logic;
SIGNAL \sMEMORY[15][13]~q\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \sMEMORY[6][13]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[6][13]~q\ : std_logic;
SIGNAL \sMEMORY[7][13]~q\ : std_logic;
SIGNAL \sMEMORY[5][13]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[5][13]~q\ : std_logic;
SIGNAL \sMEMORY[4][13]~q\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \sMEMORY[2][13]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[2][13]~q\ : std_logic;
SIGNAL \sMEMORY[3][13]~q\ : std_logic;
SIGNAL \sMEMORY[0][13]~q\ : std_logic;
SIGNAL \sMEMORY[1][13]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[1][13]~q\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \sMEMORY[10][13]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[10][13]~q\ : std_logic;
SIGNAL \sMEMORY[8][13]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \sMEMORY[11][13]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[11][13]~q\ : std_logic;
SIGNAL \sMEMORY[9][13]~q\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \DATA_OUT[13]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[14]~input_o\ : std_logic;
SIGNAL \sMEMORY~38_combout\ : std_logic;
SIGNAL \sMEMORY[11][14]~q\ : std_logic;
SIGNAL \sMEMORY[15][14]~q\ : std_logic;
SIGNAL \sMEMORY[7][14]~q\ : std_logic;
SIGNAL \sMEMORY[3][14]~q\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \sMEMORY[14][14]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[14][14]~q\ : std_logic;
SIGNAL \sMEMORY[10][14]~q\ : std_logic;
SIGNAL \sMEMORY[6][14]~q\ : std_logic;
SIGNAL \sMEMORY[2][14]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \sMEMORY[1][14]~q\ : std_logic;
SIGNAL \sMEMORY[9][14]~q\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \sMEMORY[13][14]~q\ : std_logic;
SIGNAL \sMEMORY[5][14]~q\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \sMEMORY[4][14]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[4][14]~q\ : std_logic;
SIGNAL \sMEMORY[12][14]~q\ : std_logic;
SIGNAL \sMEMORY[0][14]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[0][14]~q\ : std_logic;
SIGNAL \sMEMORY[8][14]~q\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \DATA_OUT[14]~reg0_q\ : std_logic;
SIGNAL \DATA_IN[15]~input_o\ : std_logic;
SIGNAL \sMEMORY~39_combout\ : std_logic;
SIGNAL \sMEMORY[14][15]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[14][15]~q\ : std_logic;
SIGNAL \sMEMORY[15][15]~q\ : std_logic;
SIGNAL \sMEMORY[13][15]~q\ : std_logic;
SIGNAL \sMEMORY[12][15]~q\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \sMEMORY[7][15]~q\ : std_logic;
SIGNAL \sMEMORY[5][15]~q\ : std_logic;
SIGNAL \sMEMORY[6][15]~q\ : std_logic;
SIGNAL \sMEMORY[4][15]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \sMEMORY[1][15]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[1][15]~q\ : std_logic;
SIGNAL \sMEMORY[3][15]~q\ : std_logic;
SIGNAL \sMEMORY[0][15]~q\ : std_logic;
SIGNAL \sMEMORY[2][15]~feeder_combout\ : std_logic;
SIGNAL \sMEMORY[2][15]~q\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \sMEMORY[10][15]~q\ : std_logic;
SIGNAL \sMEMORY[11][15]~q\ : std_logic;
SIGNAL \sMEMORY[9][15]~q\ : std_logic;
SIGNAL \sMEMORY[8][15]~q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \DATA_OUT[15]~reg0_q\ : std_logic;
SIGNAL \sALMOST_EMPTY~6_combout\ : std_logic;
SIGNAL \sALMOST_FULL~6_combout\ : std_logic;
SIGNAL \ILLEGAL~0_combout\ : std_logic;
SIGNAL \ILLEGAL~1_combout\ : std_logic;
SIGNAL \ILLEGAL~reg0_q\ : std_logic;
SIGNAL \R_IDX[0]~5_combout\ : std_logic;
SIGNAL \R_IDX[0]~6\ : std_logic;
SIGNAL \R_IDX[1]~8_combout\ : std_logic;
SIGNAL \R_IDX[1]~9\ : std_logic;
SIGNAL \R_IDX[2]~10_combout\ : std_logic;
SIGNAL \R_IDX[2]~11\ : std_logic;
SIGNAL \R_IDX[3]~12_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \R_IDX[3]~13\ : std_logic;
SIGNAL \R_IDX[4]~14_combout\ : std_logic;
SIGNAL \SUB~1_combout\ : std_logic;
SIGNAL \R_IDX[0]~7_combout\ : std_logic;
SIGNAL R_IDX : std_logic_vector(4 DOWNTO 0);
SIGNAL WR_IDX : std_logic_vector(3 DOWNTO 0);
SIGNAL RD_IDX : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RST~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_DATA_IN <= DATA_IN;
DATA_OUT <= ww_DATA_OUT;
ww_RD_EN <= RD_EN;
ww_WR_EN <= WR_EN;
EMPTY <= ww_EMPTY;
FULL <= ww_FULL;
ALMOST_EMPTY <= ww_ALMOST_EMPTY;
ALMOST_FULL <= ww_ALMOST_FULL;
ILLEGAL <= ww_ILLEGAL;
DATA_COUNT <= ww_DATA_COUNT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y34_N9
\DATA_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[0]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[0]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\DATA_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[1]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[1]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\DATA_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[2]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[2]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\DATA_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[3]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[3]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\DATA_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[4]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[4]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\DATA_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[5]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[5]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\DATA_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[6]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[6]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\DATA_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[7]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[7]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\DATA_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[8]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[8]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\DATA_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[9]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[9]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\DATA_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[10]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[10]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\DATA_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[11]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[11]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\DATA_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[12]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[12]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\DATA_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[13]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[13]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\DATA_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[14]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[14]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\DATA_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_OUT[15]~reg0_q\,
	devoe => ww_devoe,
	o => \DATA_OUT[15]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\EMPTY~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sEMPTY~q\,
	devoe => ww_devoe,
	o => \EMPTY~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\FULL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sFULL~q\,
	devoe => ww_devoe,
	o => \FULL~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\ALMOST_EMPTY~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sALMOST_EMPTY~6_combout\,
	devoe => ww_devoe,
	o => \ALMOST_EMPTY~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\ALMOST_FULL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sALMOST_FULL~6_combout\,
	devoe => ww_devoe,
	o => \ALMOST_FULL~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\ILLEGAL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ILLEGAL~reg0_q\,
	devoe => ww_devoe,
	o => \ILLEGAL~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\DATA_COUNT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R_IDX(0),
	devoe => ww_devoe,
	o => \DATA_COUNT[0]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\DATA_COUNT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R_IDX(1),
	devoe => ww_devoe,
	o => \DATA_COUNT[1]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\DATA_COUNT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R_IDX(2),
	devoe => ww_devoe,
	o => \DATA_COUNT[2]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\DATA_COUNT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R_IDX(3),
	devoe => ww_devoe,
	o => \DATA_COUNT[3]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\DATA_COUNT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R_IDX(4),
	devoe => ww_devoe,
	o => \DATA_COUNT[4]~output_o\);

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

-- Location: IOIBUF_X53_Y22_N8
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: LCCOMB_X40_Y19_N0
\RD_IDX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD_IDX~2_combout\ = (\RST~input_o\ & !RD_IDX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datac => RD_IDX(0),
	combout => \RD_IDX~2_combout\);

-- Location: IOIBUF_X27_Y0_N1
\WR_EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR_EN,
	o => \WR_EN~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\RD_EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_EN,
	o => \RD_EN~input_o\);

-- Location: LCCOMB_X41_Y19_N28
\SUB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUB~0_combout\ = (!\WR_EN~input_o\ & (\RD_EN~input_o\ & !\sEMPTY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WR_EN~input_o\,
	datac => \RD_EN~input_o\,
	datad => \sEMPTY~q\,
	combout => \SUB~0_combout\);

-- Location: LCCOMB_X41_Y18_N28
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = RD_IDX(3) $ (((RD_IDX(1) & (RD_IDX(2) & RD_IDX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => RD_IDX(2),
	datac => RD_IDX(3),
	datad => RD_IDX(0),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X40_Y19_N6
\RD_IDX~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD_IDX~3_combout\ = (\RST~input_o\ & (\Add3~0_combout\ & !\sALMOST_EMPTY~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \Add3~0_combout\,
	datad => \sALMOST_EMPTY~2_combout\,
	combout => \RD_IDX~3_combout\);

-- Location: FF_X40_Y19_N7
\RD_IDX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RD_IDX~3_combout\,
	ena => \RD_IDX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RD_IDX(3));

-- Location: LCCOMB_X40_Y19_N22
\sALMOST_FULL~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_FULL~4_combout\ = (!RD_IDX(2) & (!RD_IDX(3) & (\WR_EN~input_o\ & !\RD_EN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => RD_IDX(3),
	datac => \WR_EN~input_o\,
	datad => \RD_EN~input_o\,
	combout => \sALMOST_FULL~4_combout\);

-- Location: LCCOMB_X43_Y19_N30
\WR_IDX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WR_IDX~2_combout\ = (\RST~input_o\ & !WR_IDX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => WR_IDX(0),
	combout => \WR_IDX~2_combout\);

-- Location: LCCOMB_X40_Y19_N10
\WR_IDX[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WR_IDX[3]~1_combout\ = ((\WR_EN~input_o\ & ((\RD_EN~input_o\) # (!\sFULL~q\)))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WR_EN~input_o\,
	datab => \sFULL~q\,
	datac => \RST~input_o\,
	datad => \RD_EN~input_o\,
	combout => \WR_IDX[3]~1_combout\);

-- Location: FF_X43_Y19_N31
\WR_IDX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WR_IDX~2_combout\,
	ena => \WR_IDX[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WR_IDX(0));

-- Location: LCCOMB_X43_Y19_N4
\WR_IDX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WR_IDX~0_combout\ = (\RST~input_o\ & (!\sALMOST_FULL~0_combout\ & (WR_IDX(0) $ (WR_IDX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(0),
	datab => \RST~input_o\,
	datac => WR_IDX(1),
	datad => \sALMOST_FULL~0_combout\,
	combout => \WR_IDX~0_combout\);

-- Location: FF_X43_Y19_N5
\WR_IDX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WR_IDX~0_combout\,
	ena => \WR_IDX[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WR_IDX(1));

-- Location: LCCOMB_X41_Y19_N20
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = WR_IDX(2) $ (((WR_IDX(1) & WR_IDX(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => WR_IDX(1),
	datac => WR_IDX(2),
	datad => WR_IDX(0),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X40_Y19_N2
\WR_IDX~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WR_IDX~4_combout\ = (\RST~input_o\ & (\Add2~1_combout\ & !\sALMOST_FULL~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datac => \Add2~1_combout\,
	datad => \sALMOST_FULL~0_combout\,
	combout => \WR_IDX~4_combout\);

-- Location: FF_X39_Y19_N29
\WR_IDX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WR_IDX~4_combout\,
	sload => VCC,
	ena => \WR_IDX[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WR_IDX(2));

-- Location: LCCOMB_X43_Y19_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = WR_IDX(3) $ (((WR_IDX(0) & (WR_IDX(1) & WR_IDX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(0),
	datab => WR_IDX(3),
	datac => WR_IDX(1),
	datad => WR_IDX(2),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X43_Y19_N28
\WR_IDX~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WR_IDX~3_combout\ = (\Add2~0_combout\ & (\RST~input_o\ & !\sALMOST_FULL~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datac => \RST~input_o\,
	datad => \sALMOST_FULL~0_combout\,
	combout => \WR_IDX~3_combout\);

-- Location: FF_X43_Y19_N29
\WR_IDX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WR_IDX~3_combout\,
	ena => \WR_IDX[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WR_IDX(3));

-- Location: LCCOMB_X43_Y19_N18
\sALMOST_FULL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_FULL~0_combout\ = (WR_IDX(0) & (WR_IDX(3) & (WR_IDX(1) & WR_IDX(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(0),
	datab => WR_IDX(3),
	datac => WR_IDX(1),
	datad => WR_IDX(2),
	combout => \sALMOST_FULL~0_combout\);

-- Location: LCCOMB_X40_Y19_N4
\sALMOST_FULL~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_FULL~5_combout\ = (\sALMOST_FULL~4_combout\ & (!RD_IDX(0) & (!RD_IDX(1) & \sALMOST_FULL~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sALMOST_FULL~4_combout\,
	datab => RD_IDX(0),
	datac => RD_IDX(1),
	datad => \sALMOST_FULL~0_combout\,
	combout => \sALMOST_FULL~5_combout\);

-- Location: LCCOMB_X40_Y19_N8
\sALMOST_FULL~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_FULL~7_combout\ = (\sFULL~q\) # (\sALMOST_FULL~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sFULL~q\,
	datad => \sALMOST_FULL~5_combout\,
	combout => \sALMOST_FULL~7_combout\);

-- Location: LCCOMB_X41_Y19_N24
\sALMOST_FULL~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_FULL~1_combout\ = (RD_IDX(0) & (!WR_IDX(0) & (RD_IDX(1) $ (!WR_IDX(1))))) # (!RD_IDX(0) & (WR_IDX(0) & (RD_IDX(1) $ (WR_IDX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => RD_IDX(1),
	datac => WR_IDX(1),
	datad => WR_IDX(0),
	combout => \sALMOST_FULL~1_combout\);

-- Location: LCCOMB_X41_Y19_N2
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = RD_IDX(2) $ (WR_IDX(2) $ (((WR_IDX(1) & WR_IDX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => WR_IDX(1),
	datac => WR_IDX(2),
	datad => WR_IDX(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X43_Y19_N6
\sALMOST_FULL~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_FULL~2_combout\ = (\sALMOST_FULL~1_combout\ & (!\Equal0~0_combout\ & (RD_IDX(3) $ (!\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \Add2~0_combout\,
	datac => \sALMOST_FULL~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \sALMOST_FULL~2_combout\);

-- Location: LCCOMB_X43_Y19_N24
\sALMOST_FULL~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_FULL~3_combout\ = (\WR_EN~input_o\ & (!\RD_EN~input_o\ & \sALMOST_FULL~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WR_EN~input_o\,
	datac => \RD_EN~input_o\,
	datad => \sALMOST_FULL~2_combout\,
	combout => \sALMOST_FULL~3_combout\);

-- Location: LCCOMB_X40_Y19_N28
\sFULL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sFULL~0_combout\ = (\RST~input_o\ & (!\SUB~0_combout\ & ((\sALMOST_FULL~7_combout\) # (\sALMOST_FULL~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \SUB~0_combout\,
	datac => \sALMOST_FULL~7_combout\,
	datad => \sALMOST_FULL~3_combout\,
	combout => \sFULL~0_combout\);

-- Location: FF_X40_Y19_N29
sFULL : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sFULL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sFULL~q\);

-- Location: LCCOMB_X43_Y19_N26
\sALMOST_EMPTY~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_EMPTY~5_combout\ = (!\sFULL~q\ & (\WR_EN~input_o\ & (!\RD_EN~input_o\ & !\sALMOST_FULL~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sFULL~q\,
	datab => \WR_EN~input_o\,
	datac => \RD_EN~input_o\,
	datad => \sALMOST_FULL~0_combout\,
	combout => \sALMOST_EMPTY~5_combout\);

-- Location: LCCOMB_X41_Y18_N6
\sALMOST_EMPTY~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_EMPTY~3_combout\ = (!WR_IDX(0) & (!WR_IDX(1) & (!WR_IDX(3) & !WR_IDX(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(0),
	datab => WR_IDX(1),
	datac => WR_IDX(3),
	datad => WR_IDX(2),
	combout => \sALMOST_EMPTY~3_combout\);

-- Location: LCCOMB_X41_Y18_N22
\sALMOST_EMPTY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_EMPTY~0_combout\ = (WR_IDX(0) & (!RD_IDX(0) & (RD_IDX(1) $ (!WR_IDX(1))))) # (!WR_IDX(0) & (RD_IDX(0) & (RD_IDX(1) $ (WR_IDX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(0),
	datab => RD_IDX(0),
	datac => RD_IDX(1),
	datad => WR_IDX(1),
	combout => \sALMOST_EMPTY~0_combout\);

-- Location: LCCOMB_X41_Y18_N18
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = RD_IDX(2) $ (WR_IDX(2) $ (((RD_IDX(1) & RD_IDX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => RD_IDX(0),
	datac => RD_IDX(2),
	datad => WR_IDX(2),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X41_Y18_N16
\sALMOST_EMPTY~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_EMPTY~1_combout\ = (\sALMOST_EMPTY~0_combout\ & (!\Equal3~0_combout\ & (WR_IDX(3) $ (!\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(3),
	datab => \Add3~0_combout\,
	datac => \sALMOST_EMPTY~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \sALMOST_EMPTY~1_combout\);

-- Location: LCCOMB_X41_Y18_N0
\sALMOST_EMPTY~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_EMPTY~4_combout\ = (\SUB~0_combout\ & ((\sALMOST_EMPTY~1_combout\) # ((\sALMOST_EMPTY~3_combout\ & \sALMOST_EMPTY~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sALMOST_EMPTY~3_combout\,
	datab => \SUB~0_combout\,
	datac => \sALMOST_EMPTY~2_combout\,
	datad => \sALMOST_EMPTY~1_combout\,
	combout => \sALMOST_EMPTY~4_combout\);

-- Location: LCCOMB_X40_Y19_N30
\sEMPTY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sEMPTY~0_combout\ = (\sALMOST_EMPTY~4_combout\ $ (((!\sALMOST_EMPTY~5_combout\ & \sEMPTY~q\)))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \sALMOST_EMPTY~5_combout\,
	datac => \sEMPTY~q\,
	datad => \sALMOST_EMPTY~4_combout\,
	combout => \sEMPTY~0_combout\);

-- Location: FF_X40_Y19_N31
sEMPTY : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sEMPTY~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sEMPTY~q\);

-- Location: LCCOMB_X40_Y19_N12
\RD_IDX[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD_IDX[1]~1_combout\ = ((\RD_EN~input_o\ & ((\WR_EN~input_o\) # (!\sEMPTY~q\)))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sEMPTY~q\,
	datab => \WR_EN~input_o\,
	datac => \RST~input_o\,
	datad => \RD_EN~input_o\,
	combout => \RD_IDX[1]~1_combout\);

-- Location: FF_X40_Y19_N1
\RD_IDX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RD_IDX~2_combout\,
	ena => \RD_IDX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RD_IDX(0));

-- Location: LCCOMB_X40_Y19_N14
\RD_IDX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD_IDX~0_combout\ = (\RST~input_o\ & (!\sALMOST_EMPTY~2_combout\ & (RD_IDX(1) $ (RD_IDX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \sALMOST_EMPTY~2_combout\,
	datac => RD_IDX(1),
	datad => RD_IDX(0),
	combout => \RD_IDX~0_combout\);

-- Location: FF_X40_Y19_N15
\RD_IDX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RD_IDX~0_combout\,
	ena => \RD_IDX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RD_IDX(1));

-- Location: LCCOMB_X41_Y19_N26
\sALMOST_EMPTY~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_EMPTY~2_combout\ = (RD_IDX(2) & (RD_IDX(1) & (RD_IDX(0) & RD_IDX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => RD_IDX(1),
	datac => RD_IDX(0),
	datad => RD_IDX(3),
	combout => \sALMOST_EMPTY~2_combout\);

-- Location: LCCOMB_X41_Y19_N6
\Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = RD_IDX(2) $ (((RD_IDX(1) & RD_IDX(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datac => RD_IDX(0),
	datad => RD_IDX(2),
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X40_Y19_N16
\RD_IDX~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD_IDX~4_combout\ = (!\sALMOST_EMPTY~2_combout\ & (\RST~input_o\ & \Add3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sALMOST_EMPTY~2_combout\,
	datac => \RST~input_o\,
	datad => \Add3~1_combout\,
	combout => \RD_IDX~4_combout\);

-- Location: FF_X40_Y19_N17
\RD_IDX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RD_IDX~4_combout\,
	ena => \RD_IDX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RD_IDX(2));

-- Location: IOIBUF_X53_Y10_N15
\DATA_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(0),
	o => \DATA_IN[0]~input_o\);

-- Location: LCCOMB_X40_Y18_N30
\sMEMORY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~0_combout\ = (\RST~input_o\ & \DATA_IN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datad => \DATA_IN[0]~input_o\,
	combout => \sMEMORY~0_combout\);

-- Location: LCCOMB_X39_Y19_N4
\DATA_TRANSFER~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_TRANSFER~0_combout\ = (\WR_EN~input_o\ & !\sFULL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WR_EN~input_o\,
	datad => \sFULL~q\,
	combout => \DATA_TRANSFER~0_combout\);

-- Location: LCCOMB_X39_Y19_N2
\sMEMORY[14][9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[14][9]~5_combout\ = (WR_IDX(2) & (WR_IDX(1) & WR_IDX(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(2),
	datac => WR_IDX(1),
	datad => WR_IDX(3),
	combout => \sMEMORY[14][9]~5_combout\);

-- Location: LCCOMB_X39_Y19_N24
\sMEMORY[14][9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[14][9]~6_combout\ = ((!WR_IDX(0) & (\DATA_TRANSFER~0_combout\ & \sMEMORY[14][9]~5_combout\))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => WR_IDX(0),
	datac => \DATA_TRANSFER~0_combout\,
	datad => \sMEMORY[14][9]~5_combout\,
	combout => \sMEMORY[14][9]~6_combout\);

-- Location: FF_X39_Y22_N19
\sMEMORY[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~0_combout\,
	sload => VCC,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][0]~q\);

-- Location: LCCOMB_X39_Y19_N30
\sMEMORY[6][10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[6][10]~1_combout\ = (WR_IDX(2) & (!WR_IDX(3) & WR_IDX(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(2),
	datab => WR_IDX(3),
	datad => WR_IDX(1),
	combout => \sMEMORY[6][10]~1_combout\);

-- Location: LCCOMB_X39_Y19_N0
\sMEMORY[6][10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[6][10]~2_combout\ = ((\DATA_TRANSFER~0_combout\ & (\sMEMORY[6][10]~1_combout\ & !WR_IDX(0)))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \DATA_TRANSFER~0_combout\,
	datac => \sMEMORY[6][10]~1_combout\,
	datad => WR_IDX(0),
	combout => \sMEMORY[6][10]~2_combout\);

-- Location: FF_X38_Y22_N17
\sMEMORY[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~0_combout\,
	sload => VCC,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][0]~q\);

-- Location: LCCOMB_X38_Y18_N28
\sMEMORY[10][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[10][0]~feeder_combout\ = \sMEMORY~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~0_combout\,
	combout => \sMEMORY[10][0]~feeder_combout\);

-- Location: LCCOMB_X38_Y19_N18
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!WR_IDX(0) & (!WR_IDX(2) & (WR_IDX(1) & \DATA_TRANSFER~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(0),
	datab => WR_IDX(2),
	datac => WR_IDX(1),
	datad => \DATA_TRANSFER~0_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X38_Y19_N0
\sMEMORY[10][3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[10][3]~3_combout\ = ((WR_IDX(3) & \Decoder0~0_combout\)) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => WR_IDX(3),
	datad => \Decoder0~0_combout\,
	combout => \sMEMORY[10][3]~3_combout\);

-- Location: FF_X38_Y18_N29
\sMEMORY[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[10][0]~feeder_combout\,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][0]~q\);

-- Location: LCCOMB_X38_Y19_N6
\sMEMORY[2][14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[2][14]~4_combout\ = ((!WR_IDX(3) & \Decoder0~0_combout\)) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => WR_IDX(3),
	datad => \Decoder0~0_combout\,
	combout => \sMEMORY[2][14]~4_combout\);

-- Location: FF_X39_Y22_N25
\sMEMORY[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~0_combout\,
	sload => VCC,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][0]~q\);

-- Location: LCCOMB_X39_Y22_N24
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (RD_IDX(3) & ((\sMEMORY[10][0]~q\) # ((RD_IDX(2))))) # (!RD_IDX(3) & (((\sMEMORY[2][0]~q\ & !RD_IDX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[10][0]~q\,
	datac => \sMEMORY[2][0]~q\,
	datad => RD_IDX(2),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X38_Y22_N16
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (RD_IDX(2) & ((\Mux15~0_combout\ & (\sMEMORY[14][0]~q\)) # (!\Mux15~0_combout\ & ((\sMEMORY[6][0]~q\))))) # (!RD_IDX(2) & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[14][0]~q\,
	datac => \sMEMORY[6][0]~q\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X38_Y22_N14
\sMEMORY[7][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[7][0]~feeder_combout\ = \sMEMORY~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~0_combout\,
	combout => \sMEMORY[7][0]~feeder_combout\);

-- Location: LCCOMB_X38_Y19_N12
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (WR_IDX(0) & (WR_IDX(2) & (WR_IDX(1) & \DATA_TRANSFER~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(0),
	datab => WR_IDX(2),
	datac => WR_IDX(1),
	datad => \DATA_TRANSFER~0_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X38_Y19_N22
\sMEMORY[7][5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[7][5]~19_combout\ = ((!WR_IDX(3) & \Decoder0~4_combout\)) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => WR_IDX(3),
	datad => \Decoder0~4_combout\,
	combout => \sMEMORY[7][5]~19_combout\);

-- Location: FF_X38_Y22_N15
\sMEMORY[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[7][0]~feeder_combout\,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][0]~q\);

-- Location: LCCOMB_X39_Y19_N10
\sMEMORY[15][2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[15][2]~24_combout\ = ((WR_IDX(0) & (\DATA_TRANSFER~0_combout\ & \sMEMORY[14][9]~5_combout\))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => WR_IDX(0),
	datac => \DATA_TRANSFER~0_combout\,
	datad => \sMEMORY[14][9]~5_combout\,
	combout => \sMEMORY[15][2]~24_combout\);

-- Location: FF_X38_Y21_N17
\sMEMORY[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~0_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][0]~q\);

-- Location: LCCOMB_X39_Y19_N16
\sMEMORY[11][10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[11][10]~20_combout\ = (WR_IDX(1) & (!WR_IDX(2) & WR_IDX(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(1),
	datac => WR_IDX(2),
	datad => WR_IDX(3),
	combout => \sMEMORY[11][10]~20_combout\);

-- Location: LCCOMB_X39_Y19_N18
\sMEMORY[11][10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[11][10]~21_combout\ = ((WR_IDX(0) & (\DATA_TRANSFER~0_combout\ & \sMEMORY[11][10]~20_combout\))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => WR_IDX(0),
	datac => \DATA_TRANSFER~0_combout\,
	datad => \sMEMORY[11][10]~20_combout\,
	combout => \sMEMORY[11][10]~21_combout\);

-- Location: FF_X40_Y18_N21
\sMEMORY[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~0_combout\,
	sload => VCC,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][0]~q\);

-- Location: LCCOMB_X39_Y19_N6
\sMEMORY[3][15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[3][15]~22_combout\ = (!WR_IDX(2) & (WR_IDX(1) & !WR_IDX(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(2),
	datab => WR_IDX(1),
	datad => WR_IDX(3),
	combout => \sMEMORY[3][15]~22_combout\);

-- Location: LCCOMB_X39_Y19_N20
\sMEMORY[3][15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[3][15]~23_combout\ = ((WR_IDX(0) & (\DATA_TRANSFER~0_combout\ & \sMEMORY[3][15]~22_combout\))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => WR_IDX(0),
	datac => \DATA_TRANSFER~0_combout\,
	datad => \sMEMORY[3][15]~22_combout\,
	combout => \sMEMORY[3][15]~23_combout\);

-- Location: FF_X37_Y21_N9
\sMEMORY[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~0_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][0]~q\);

-- Location: LCCOMB_X37_Y21_N8
\Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (RD_IDX(2) & (((RD_IDX(3))))) # (!RD_IDX(2) & ((RD_IDX(3) & (\sMEMORY[11][0]~q\)) # (!RD_IDX(3) & ((\sMEMORY[3][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[11][0]~q\,
	datac => \sMEMORY[3][0]~q\,
	datad => RD_IDX(3),
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X38_Y21_N16
\Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (RD_IDX(2) & ((\Mux15~7_combout\ & ((\sMEMORY[15][0]~q\))) # (!\Mux15~7_combout\ & (\sMEMORY[7][0]~q\)))) # (!RD_IDX(2) & (((\Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[7][0]~q\,
	datac => \sMEMORY[15][0]~q\,
	datad => \Mux15~7_combout\,
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X36_Y19_N18
\sMEMORY[8][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[8][0]~feeder_combout\ = \sMEMORY~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~0_combout\,
	combout => \sMEMORY[8][0]~feeder_combout\);

-- Location: LCCOMB_X39_Y19_N14
\sMEMORY[8][2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[8][2]~13_combout\ = (!WR_IDX(2) & (!WR_IDX(0) & WR_IDX(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(2),
	datac => WR_IDX(0),
	datad => WR_IDX(3),
	combout => \sMEMORY[8][2]~13_combout\);

-- Location: LCCOMB_X39_Y19_N8
\sMEMORY[8][2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[8][2]~14_combout\ = ((\DATA_TRANSFER~0_combout\ & (\sMEMORY[8][2]~13_combout\ & !WR_IDX(1)))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \DATA_TRANSFER~0_combout\,
	datac => \sMEMORY[8][2]~13_combout\,
	datad => WR_IDX(1),
	combout => \sMEMORY[8][2]~14_combout\);

-- Location: FF_X36_Y19_N19
\sMEMORY[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[8][0]~feeder_combout\,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][0]~q\);

-- Location: LCCOMB_X38_Y19_N24
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!WR_IDX(0) & (WR_IDX(2) & (!WR_IDX(1) & \DATA_TRANSFER~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(0),
	datab => WR_IDX(2),
	datac => WR_IDX(1),
	datad => \DATA_TRANSFER~0_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X38_Y19_N26
\sMEMORY[12][0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[12][0]~18_combout\ = ((WR_IDX(3) & \Decoder0~3_combout\)) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => WR_IDX(3),
	datad => \Decoder0~3_combout\,
	combout => \sMEMORY[12][0]~18_combout\);

-- Location: FF_X37_Y20_N27
\sMEMORY[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~0_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][0]~q\);

-- Location: LCCOMB_X39_Y19_N28
\sMEMORY[4][10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[4][10]~15_combout\ = (!WR_IDX(3) & (WR_IDX(2) & !WR_IDX(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => WR_IDX(3),
	datac => WR_IDX(2),
	datad => WR_IDX(1),
	combout => \sMEMORY[4][10]~15_combout\);

-- Location: LCCOMB_X39_Y19_N22
\sMEMORY[4][10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[4][10]~16_combout\ = ((!WR_IDX(0) & (\DATA_TRANSFER~0_combout\ & \sMEMORY[4][10]~15_combout\))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => WR_IDX(0),
	datac => \DATA_TRANSFER~0_combout\,
	datad => \sMEMORY[4][10]~15_combout\,
	combout => \sMEMORY[4][10]~16_combout\);

-- Location: FF_X41_Y19_N11
\sMEMORY[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~0_combout\,
	sload => VCC,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][0]~q\);

-- Location: LCCOMB_X38_Y19_N20
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!WR_IDX(0) & (!WR_IDX(2) & (!WR_IDX(1) & \DATA_TRANSFER~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(0),
	datab => WR_IDX(2),
	datac => WR_IDX(1),
	datad => \DATA_TRANSFER~0_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X38_Y19_N14
\sMEMORY[0][5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[0][5]~17_combout\ = ((!WR_IDX(3) & \Decoder0~2_combout\)) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => WR_IDX(3),
	datad => \Decoder0~2_combout\,
	combout => \sMEMORY[0][5]~17_combout\);

-- Location: FF_X37_Y20_N25
\sMEMORY[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~0_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][0]~q\);

-- Location: LCCOMB_X37_Y20_N24
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (RD_IDX(2) & ((\sMEMORY[4][0]~q\) # ((RD_IDX(3))))) # (!RD_IDX(2) & (((\sMEMORY[0][0]~q\ & !RD_IDX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[4][0]~q\,
	datac => \sMEMORY[0][0]~q\,
	datad => RD_IDX(3),
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X37_Y20_N26
\Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (RD_IDX(3) & ((\Mux15~4_combout\ & ((\sMEMORY[12][0]~q\))) # (!\Mux15~4_combout\ & (\sMEMORY[8][0]~q\)))) # (!RD_IDX(3) & (((\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[8][0]~q\,
	datac => \sMEMORY[12][0]~q\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X36_Y19_N16
\sMEMORY[9][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[9][0]~feeder_combout\ = \sMEMORY~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~0_combout\,
	combout => \sMEMORY[9][0]~feeder_combout\);

-- Location: LCCOMB_X38_Y19_N8
\sMEMORY[9][3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[9][3]~7_combout\ = (!WR_IDX(2) & (WR_IDX(3) & WR_IDX(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => WR_IDX(2),
	datac => WR_IDX(3),
	datad => WR_IDX(0),
	combout => \sMEMORY[9][3]~7_combout\);

-- Location: LCCOMB_X39_Y19_N26
\sMEMORY[9][3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[9][3]~8_combout\ = ((!WR_IDX(1) & (\DATA_TRANSFER~0_combout\ & \sMEMORY[9][3]~7_combout\))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(1),
	datab => \DATA_TRANSFER~0_combout\,
	datac => \RST~input_o\,
	datad => \sMEMORY[9][3]~7_combout\,
	combout => \sMEMORY[9][3]~8_combout\);

-- Location: FF_X36_Y19_N17
\sMEMORY[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[9][0]~feeder_combout\,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][0]~q\);

-- Location: LCCOMB_X38_Y19_N2
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (WR_IDX(0) & (WR_IDX(2) & (!WR_IDX(1) & \DATA_TRANSFER~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WR_IDX(0),
	datab => WR_IDX(2),
	datac => WR_IDX(1),
	datad => \DATA_TRANSFER~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X38_Y19_N30
\sMEMORY[13][5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[13][5]~12_combout\ = ((WR_IDX(3) & \Decoder0~1_combout\)) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => WR_IDX(3),
	datad => \Decoder0~1_combout\,
	combout => \sMEMORY[13][5]~12_combout\);

-- Location: FF_X37_Y19_N11
\sMEMORY[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~0_combout\,
	sload => VCC,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][0]~q\);

-- Location: LCCOMB_X40_Y19_N26
\sMEMORY[1][2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[1][2]~10_combout\ = (!WR_IDX(2) & (!WR_IDX(1) & !WR_IDX(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => WR_IDX(2),
	datac => WR_IDX(1),
	datad => WR_IDX(3),
	combout => \sMEMORY[1][2]~10_combout\);

-- Location: LCCOMB_X39_Y19_N12
\sMEMORY[1][2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[1][2]~11_combout\ = ((WR_IDX(0) & (\DATA_TRANSFER~0_combout\ & \sMEMORY[1][2]~10_combout\))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => WR_IDX(0),
	datac => \DATA_TRANSFER~0_combout\,
	datad => \sMEMORY[1][2]~10_combout\,
	combout => \sMEMORY[1][2]~11_combout\);

-- Location: FF_X37_Y19_N17
\sMEMORY[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~0_combout\,
	sload => VCC,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][0]~q\);

-- Location: LCCOMB_X38_Y18_N10
\sMEMORY[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[5][0]~feeder_combout\ = \sMEMORY~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~0_combout\,
	combout => \sMEMORY[5][0]~feeder_combout\);

-- Location: LCCOMB_X38_Y19_N28
\sMEMORY[5][3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[5][3]~9_combout\ = ((!WR_IDX(3) & \Decoder0~1_combout\)) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => WR_IDX(3),
	datad => \Decoder0~1_combout\,
	combout => \sMEMORY[5][3]~9_combout\);

-- Location: FF_X38_Y18_N11
\sMEMORY[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[5][0]~feeder_combout\,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][0]~q\);

-- Location: LCCOMB_X37_Y19_N16
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (RD_IDX(2) & ((RD_IDX(3)) # ((\sMEMORY[5][0]~q\)))) # (!RD_IDX(2) & (!RD_IDX(3) & (\sMEMORY[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => RD_IDX(3),
	datac => \sMEMORY[1][0]~q\,
	datad => \sMEMORY[5][0]~q\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X37_Y19_N10
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (RD_IDX(3) & ((\Mux15~2_combout\ & ((\sMEMORY[13][0]~q\))) # (!\Mux15~2_combout\ & (\sMEMORY[9][0]~q\)))) # (!RD_IDX(3) & (((\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[9][0]~q\,
	datab => RD_IDX(3),
	datac => \sMEMORY[13][0]~q\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X37_Y20_N0
\Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (RD_IDX(1) & (RD_IDX(0))) # (!RD_IDX(1) & ((RD_IDX(0) & ((\Mux15~3_combout\))) # (!RD_IDX(0) & (\Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => RD_IDX(0),
	datac => \Mux15~5_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X38_Y21_N4
\Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (RD_IDX(1) & ((\Mux15~6_combout\ & ((\Mux15~8_combout\))) # (!\Mux15~6_combout\ & (\Mux15~1_combout\)))) # (!RD_IDX(1) & (((\Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~8_combout\,
	datac => RD_IDX(1),
	datad => \Mux15~6_combout\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X40_Y18_N14
\DATA_OUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_OUT[0]~0_combout\ = (\RST~input_o\ & (\RD_EN~input_o\ & !\sEMPTY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \RD_EN~input_o\,
	datac => \sEMPTY~q\,
	combout => \DATA_OUT[0]~0_combout\);

-- Location: FF_X38_Y21_N5
\DATA_OUT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux15~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[0]~reg0_q\);

-- Location: IOIBUF_X51_Y34_N1
\DATA_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(1),
	o => \DATA_IN[1]~input_o\);

-- Location: LCCOMB_X40_Y22_N22
\sMEMORY~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~25_combout\ = (\DATA_IN[1]~input_o\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA_IN[1]~input_o\,
	datad => \RST~input_o\,
	combout => \sMEMORY~25_combout\);

-- Location: FF_X41_Y21_N15
\sMEMORY[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~25_combout\,
	sload => VCC,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][1]~q\);

-- Location: FF_X38_Y21_N7
\sMEMORY[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~25_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][1]~q\);

-- Location: FF_X40_Y22_N23
\sMEMORY[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~25_combout\,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][1]~q\);

-- Location: FF_X39_Y21_N25
\sMEMORY[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~25_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][1]~q\);

-- Location: LCCOMB_X39_Y21_N24
\Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (RD_IDX(0) & (((RD_IDX(1))))) # (!RD_IDX(0) & ((RD_IDX(1) & (\sMEMORY[14][1]~q\)) # (!RD_IDX(1) & ((\sMEMORY[12][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[14][1]~q\,
	datab => RD_IDX(0),
	datac => \sMEMORY[12][1]~q\,
	datad => RD_IDX(1),
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X38_Y21_N6
\Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (RD_IDX(0) & ((\Mux14~7_combout\ & ((\sMEMORY[15][1]~q\))) # (!\Mux14~7_combout\ & (\sMEMORY[13][1]~q\)))) # (!RD_IDX(0) & (((\Mux14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[13][1]~q\,
	datab => RD_IDX(0),
	datac => \sMEMORY[15][1]~q\,
	datad => \Mux14~7_combout\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X40_Y20_N28
\sMEMORY[11][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[11][1]~feeder_combout\ = \sMEMORY~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~25_combout\,
	combout => \sMEMORY[11][1]~feeder_combout\);

-- Location: FF_X40_Y20_N29
\sMEMORY[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[11][1]~feeder_combout\,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][1]~q\);

-- Location: FF_X39_Y20_N1
\sMEMORY[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~25_combout\,
	sload => VCC,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][1]~q\);

-- Location: FF_X38_Y18_N17
\sMEMORY[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~25_combout\,
	sload => VCC,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][1]~q\);

-- Location: FF_X39_Y20_N3
\sMEMORY[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~25_combout\,
	sload => VCC,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][1]~q\);

-- Location: LCCOMB_X39_Y20_N2
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (RD_IDX(0) & (((RD_IDX(1))))) # (!RD_IDX(0) & ((RD_IDX(1) & (\sMEMORY[10][1]~q\)) # (!RD_IDX(1) & ((\sMEMORY[8][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[10][1]~q\,
	datab => RD_IDX(0),
	datac => \sMEMORY[8][1]~q\,
	datad => RD_IDX(1),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X39_Y20_N0
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (RD_IDX(0) & ((\Mux14~0_combout\ & (\sMEMORY[11][1]~q\)) # (!\Mux14~0_combout\ & ((\sMEMORY[9][1]~q\))))) # (!RD_IDX(0) & (((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[11][1]~q\,
	datac => \sMEMORY[9][1]~q\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: FF_X38_Y22_N13
\sMEMORY[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~25_combout\,
	sload => VCC,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][1]~q\);

-- Location: FF_X38_Y22_N31
\sMEMORY[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~25_combout\,
	sload => VCC,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][1]~q\);

-- Location: FF_X41_Y19_N9
\sMEMORY[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~25_combout\,
	sload => VCC,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][1]~q\);

-- Location: FF_X38_Y18_N7
\sMEMORY[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~25_combout\,
	sload => VCC,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][1]~q\);

-- Location: LCCOMB_X41_Y19_N8
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (RD_IDX(0) & ((RD_IDX(1)) # ((\sMEMORY[5][1]~q\)))) # (!RD_IDX(0) & (!RD_IDX(1) & (\sMEMORY[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => RD_IDX(1),
	datac => \sMEMORY[4][1]~q\,
	datad => \sMEMORY[5][1]~q\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X38_Y22_N30
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (RD_IDX(1) & ((\Mux14~2_combout\ & ((\sMEMORY[7][1]~q\))) # (!\Mux14~2_combout\ & (\sMEMORY[6][1]~q\)))) # (!RD_IDX(1) & (((\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[6][1]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[7][1]~q\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: FF_X40_Y22_N29
\sMEMORY[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~25_combout\,
	sload => VCC,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][1]~q\);

-- Location: FF_X40_Y21_N7
\sMEMORY[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~25_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][1]~q\);

-- Location: FF_X40_Y21_N25
\sMEMORY[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~25_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][1]~q\);

-- Location: FF_X41_Y21_N17
\sMEMORY[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~25_combout\,
	sload => VCC,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][1]~q\);

-- Location: LCCOMB_X40_Y21_N24
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (RD_IDX(0) & ((RD_IDX(1)) # ((\sMEMORY[1][1]~q\)))) # (!RD_IDX(0) & (!RD_IDX(1) & (\sMEMORY[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => RD_IDX(1),
	datac => \sMEMORY[0][1]~q\,
	datad => \sMEMORY[1][1]~q\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X40_Y21_N6
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (RD_IDX(1) & ((\Mux14~4_combout\ & ((\sMEMORY[3][1]~q\))) # (!\Mux14~4_combout\ & (\sMEMORY[2][1]~q\)))) # (!RD_IDX(1) & (((\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[2][1]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[3][1]~q\,
	datad => \Mux14~4_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X37_Y21_N18
\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (RD_IDX(2) & ((RD_IDX(3)) # ((\Mux14~3_combout\)))) # (!RD_IDX(2) & (!RD_IDX(3) & ((\Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => RD_IDX(3),
	datac => \Mux14~3_combout\,
	datad => \Mux14~5_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X37_Y21_N0
\Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (RD_IDX(3) & ((\Mux14~6_combout\ & (\Mux14~8_combout\)) # (!\Mux14~6_combout\ & ((\Mux14~1_combout\))))) # (!RD_IDX(3) & (((\Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~8_combout\,
	datab => RD_IDX(3),
	datac => \Mux14~1_combout\,
	datad => \Mux14~6_combout\,
	combout => \Mux14~9_combout\);

-- Location: FF_X37_Y21_N1
\DATA_OUT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux14~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[1]~reg0_q\);

-- Location: IOIBUF_X38_Y34_N1
\DATA_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(2),
	o => \DATA_IN[2]~input_o\);

-- Location: LCCOMB_X38_Y22_N10
\sMEMORY~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~26_combout\ = (\DATA_IN[2]~input_o\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[2]~input_o\,
	datad => \RST~input_o\,
	combout => \sMEMORY~26_combout\);

-- Location: FF_X40_Y18_N29
\sMEMORY[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~26_combout\,
	sload => VCC,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][2]~q\);

-- Location: FF_X37_Y18_N15
\sMEMORY[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~26_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][2]~q\);

-- Location: FF_X38_Y22_N27
\sMEMORY[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~26_combout\,
	sload => VCC,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][2]~q\);

-- Location: FF_X37_Y18_N29
\sMEMORY[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~26_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][2]~q\);

-- Location: LCCOMB_X37_Y18_N28
\Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (RD_IDX(2) & ((\sMEMORY[7][2]~q\) # ((RD_IDX(3))))) # (!RD_IDX(2) & (((\sMEMORY[3][2]~q\ & !RD_IDX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[7][2]~q\,
	datac => \sMEMORY[3][2]~q\,
	datad => RD_IDX(3),
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X37_Y18_N14
\Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (RD_IDX(3) & ((\Mux13~7_combout\ & ((\sMEMORY[15][2]~q\))) # (!\Mux13~7_combout\ & (\sMEMORY[11][2]~q\)))) # (!RD_IDX(3) & (((\Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[11][2]~q\,
	datab => RD_IDX(3),
	datac => \sMEMORY[15][2]~q\,
	datad => \Mux13~7_combout\,
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X40_Y22_N8
\sMEMORY[14][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[14][2]~feeder_combout\ = \sMEMORY~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~26_combout\,
	combout => \sMEMORY[14][2]~feeder_combout\);

-- Location: FF_X40_Y22_N9
\sMEMORY[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[14][2]~feeder_combout\,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][2]~q\);

-- Location: FF_X40_Y20_N23
\sMEMORY[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~26_combout\,
	sload => VCC,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][2]~q\);

-- Location: FF_X38_Y22_N25
\sMEMORY[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~26_combout\,
	sload => VCC,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][2]~q\);

-- Location: FF_X39_Y22_N29
\sMEMORY[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~26_combout\,
	sload => VCC,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][2]~q\);

-- Location: LCCOMB_X39_Y22_N28
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (RD_IDX(3) & (((RD_IDX(2))))) # (!RD_IDX(3) & ((RD_IDX(2) & (\sMEMORY[6][2]~q\)) # (!RD_IDX(2) & ((\sMEMORY[2][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[6][2]~q\,
	datac => \sMEMORY[2][2]~q\,
	datad => RD_IDX(2),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X40_Y20_N22
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (RD_IDX(3) & ((\Mux13~0_combout\ & (\sMEMORY[14][2]~q\)) # (!\Mux13~0_combout\ & ((\sMEMORY[10][2]~q\))))) # (!RD_IDX(3) & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[14][2]~q\,
	datac => \sMEMORY[10][2]~q\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X38_Y18_N20
\sMEMORY[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[5][2]~feeder_combout\ = \sMEMORY~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~26_combout\,
	combout => \sMEMORY[5][2]~feeder_combout\);

-- Location: FF_X38_Y18_N21
\sMEMORY[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[5][2]~feeder_combout\,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][2]~q\);

-- Location: FF_X37_Y19_N31
\sMEMORY[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~26_combout\,
	sload => VCC,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][2]~q\);

-- Location: FF_X36_Y19_N25
\sMEMORY[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~26_combout\,
	sload => VCC,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][2]~q\);

-- Location: FF_X37_Y19_N1
\sMEMORY[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~26_combout\,
	sload => VCC,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][2]~q\);

-- Location: LCCOMB_X37_Y19_N0
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (RD_IDX(2) & (((RD_IDX(3))))) # (!RD_IDX(2) & ((RD_IDX(3) & (\sMEMORY[9][2]~q\)) # (!RD_IDX(3) & ((\sMEMORY[1][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[9][2]~q\,
	datac => \sMEMORY[1][2]~q\,
	datad => RD_IDX(3),
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X37_Y19_N30
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (RD_IDX(2) & ((\Mux13~2_combout\ & ((\sMEMORY[13][2]~q\))) # (!\Mux13~2_combout\ & (\sMEMORY[5][2]~q\)))) # (!RD_IDX(2) & (((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[5][2]~q\,
	datac => \sMEMORY[13][2]~q\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: FF_X39_Y18_N13
\sMEMORY[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~26_combout\,
	sload => VCC,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][2]~q\);

-- Location: FF_X41_Y18_N13
\sMEMORY[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~26_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][2]~q\);

-- Location: LCCOMB_X39_Y20_N8
\sMEMORY[8][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[8][2]~feeder_combout\ = \sMEMORY~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~26_combout\,
	combout => \sMEMORY[8][2]~feeder_combout\);

-- Location: FF_X39_Y20_N9
\sMEMORY[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[8][2]~feeder_combout\,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][2]~q\);

-- Location: FF_X37_Y20_N7
\sMEMORY[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~26_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][2]~q\);

-- Location: LCCOMB_X37_Y20_N6
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (RD_IDX(2) & (((RD_IDX(3))))) # (!RD_IDX(2) & ((RD_IDX(3) & (\sMEMORY[8][2]~q\)) # (!RD_IDX(3) & ((\sMEMORY[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[8][2]~q\,
	datac => \sMEMORY[0][2]~q\,
	datad => RD_IDX(3),
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X41_Y18_N12
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (RD_IDX(2) & ((\Mux13~4_combout\ & ((\sMEMORY[12][2]~q\))) # (!\Mux13~4_combout\ & (\sMEMORY[4][2]~q\)))) # (!RD_IDX(2) & (((\Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[4][2]~q\,
	datab => RD_IDX(2),
	datac => \sMEMORY[12][2]~q\,
	datad => \Mux13~4_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X41_Y18_N10
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (RD_IDX(1) & (RD_IDX(0))) # (!RD_IDX(1) & ((RD_IDX(0) & (\Mux13~3_combout\)) # (!RD_IDX(0) & ((\Mux13~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => RD_IDX(0),
	datac => \Mux13~3_combout\,
	datad => \Mux13~5_combout\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X41_Y18_N20
\Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (RD_IDX(1) & ((\Mux13~6_combout\ & (\Mux13~8_combout\)) # (!\Mux13~6_combout\ & ((\Mux13~1_combout\))))) # (!RD_IDX(1) & (((\Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => \Mux13~8_combout\,
	datac => \Mux13~1_combout\,
	datad => \Mux13~6_combout\,
	combout => \Mux13~9_combout\);

-- Location: FF_X41_Y18_N21
\DATA_OUT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux13~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[2]~reg0_q\);

-- Location: IOIBUF_X45_Y34_N8
\DATA_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(3),
	o => \DATA_IN[3]~input_o\);

-- Location: LCCOMB_X41_Y21_N10
\sMEMORY~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~27_combout\ = (\DATA_IN[3]~input_o\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA_IN[3]~input_o\,
	datad => \RST~input_o\,
	combout => \sMEMORY~27_combout\);

-- Location: LCCOMB_X38_Y22_N4
\sMEMORY[7][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[7][3]~feeder_combout\ = \sMEMORY~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~27_combout\,
	combout => \sMEMORY[7][3]~feeder_combout\);

-- Location: FF_X38_Y22_N5
\sMEMORY[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[7][3]~feeder_combout\,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][3]~q\);

-- Location: FF_X41_Y19_N19
\sMEMORY[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~27_combout\,
	sload => VCC,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][3]~q\);

-- Location: LCCOMB_X38_Y20_N30
\sMEMORY[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[6][3]~feeder_combout\ = \sMEMORY~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~27_combout\,
	combout => \sMEMORY[6][3]~feeder_combout\);

-- Location: FF_X38_Y20_N31
\sMEMORY[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[6][3]~feeder_combout\,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][3]~q\);

-- Location: LCCOMB_X41_Y19_N18
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (RD_IDX(0) & (RD_IDX(1))) # (!RD_IDX(0) & ((RD_IDX(1) & ((\sMEMORY[6][3]~q\))) # (!RD_IDX(1) & (\sMEMORY[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => RD_IDX(1),
	datac => \sMEMORY[4][3]~q\,
	datad => \sMEMORY[6][3]~q\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X38_Y20_N24
\sMEMORY[5][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[5][3]~feeder_combout\ = \sMEMORY~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~27_combout\,
	combout => \sMEMORY[5][3]~feeder_combout\);

-- Location: FF_X38_Y20_N25
\sMEMORY[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[5][3]~feeder_combout\,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][3]~q\);

-- Location: LCCOMB_X41_Y22_N28
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (RD_IDX(0) & ((\Mux12~0_combout\ & (\sMEMORY[7][3]~q\)) # (!\Mux12~0_combout\ & ((\sMEMORY[5][3]~q\))))) # (!RD_IDX(0) & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[7][3]~q\,
	datac => \Mux12~0_combout\,
	datad => \sMEMORY[5][3]~q\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X40_Y22_N16
\sMEMORY[14][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[14][3]~feeder_combout\ = \sMEMORY~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~27_combout\,
	combout => \sMEMORY[14][3]~feeder_combout\);

-- Location: FF_X40_Y22_N17
\sMEMORY[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[14][3]~feeder_combout\,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][3]~q\);

-- Location: FF_X41_Y22_N9
\sMEMORY[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~27_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][3]~q\);

-- Location: FF_X41_Y21_N11
\sMEMORY[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~27_combout\,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][3]~q\);

-- Location: FF_X39_Y21_N31
\sMEMORY[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~27_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][3]~q\);

-- Location: LCCOMB_X39_Y21_N30
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (RD_IDX(0) & ((\sMEMORY[13][3]~q\) # ((RD_IDX(1))))) # (!RD_IDX(0) & (((\sMEMORY[12][3]~q\ & !RD_IDX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[13][3]~q\,
	datac => \sMEMORY[12][3]~q\,
	datad => RD_IDX(1),
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X41_Y22_N8
\Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (RD_IDX(1) & ((\Mux12~7_combout\ & ((\sMEMORY[15][3]~q\))) # (!\Mux12~7_combout\ & (\sMEMORY[14][3]~q\)))) # (!RD_IDX(1) & (((\Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[14][3]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[15][3]~q\,
	datad => \Mux12~7_combout\,
	combout => \Mux12~8_combout\);

-- Location: FF_X40_Y20_N1
\sMEMORY[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~27_combout\,
	sload => VCC,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][3]~q\);

-- Location: FF_X40_Y20_N11
\sMEMORY[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~27_combout\,
	sload => VCC,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][3]~q\);

-- Location: FF_X39_Y20_N31
\sMEMORY[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~27_combout\,
	sload => VCC,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][3]~q\);

-- Location: FF_X39_Y20_N25
\sMEMORY[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~27_combout\,
	sload => VCC,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][3]~q\);

-- Location: LCCOMB_X39_Y20_N24
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (RD_IDX(0) & ((\sMEMORY[9][3]~q\) # ((RD_IDX(1))))) # (!RD_IDX(0) & (((\sMEMORY[8][3]~q\ & !RD_IDX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[9][3]~q\,
	datab => RD_IDX(0),
	datac => \sMEMORY[8][3]~q\,
	datad => RD_IDX(1),
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X40_Y20_N10
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (RD_IDX(1) & ((\Mux12~2_combout\ & ((\sMEMORY[11][3]~q\))) # (!\Mux12~2_combout\ & (\sMEMORY[10][3]~q\)))) # (!RD_IDX(1) & (((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[10][3]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[11][3]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X41_Y21_N12
\sMEMORY[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[1][3]~feeder_combout\ = \sMEMORY~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~27_combout\,
	combout => \sMEMORY[1][3]~feeder_combout\);

-- Location: FF_X41_Y21_N13
\sMEMORY[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[1][3]~feeder_combout\,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][3]~q\);

-- Location: FF_X40_Y21_N15
\sMEMORY[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~27_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][3]~q\);

-- Location: LCCOMB_X40_Y22_N30
\sMEMORY[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[2][3]~feeder_combout\ = \sMEMORY~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~27_combout\,
	combout => \sMEMORY[2][3]~feeder_combout\);

-- Location: FF_X40_Y22_N31
\sMEMORY[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[2][3]~feeder_combout\,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][3]~q\);

-- Location: FF_X40_Y21_N21
\sMEMORY[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~27_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][3]~q\);

-- Location: LCCOMB_X40_Y21_N20
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (RD_IDX(1) & ((\sMEMORY[2][3]~q\) # ((RD_IDX(0))))) # (!RD_IDX(1) & (((\sMEMORY[0][3]~q\ & !RD_IDX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[2][3]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[0][3]~q\,
	datad => RD_IDX(0),
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X40_Y21_N14
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (RD_IDX(0) & ((\Mux12~4_combout\ & ((\sMEMORY[3][3]~q\))) # (!\Mux12~4_combout\ & (\sMEMORY[1][3]~q\)))) # (!RD_IDX(0) & (((\Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[1][3]~q\,
	datac => \sMEMORY[3][3]~q\,
	datad => \Mux12~4_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X41_Y22_N18
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (RD_IDX(3) & ((RD_IDX(2)) # ((\Mux12~3_combout\)))) # (!RD_IDX(3) & (!RD_IDX(2) & ((\Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => RD_IDX(2),
	datac => \Mux12~3_combout\,
	datad => \Mux12~5_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X41_Y22_N24
\Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (RD_IDX(2) & ((\Mux12~6_combout\ & ((\Mux12~8_combout\))) # (!\Mux12~6_combout\ & (\Mux12~1_combout\)))) # (!RD_IDX(2) & (((\Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \Mux12~1_combout\,
	datac => \Mux12~8_combout\,
	datad => \Mux12~6_combout\,
	combout => \Mux12~9_combout\);

-- Location: FF_X41_Y22_N25
\DATA_OUT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux12~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[3]~reg0_q\);

-- Location: IOIBUF_X53_Y26_N22
\DATA_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(4),
	o => \DATA_IN[4]~input_o\);

-- Location: LCCOMB_X40_Y18_N4
\sMEMORY~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~28_combout\ = (\RST~input_o\ & \DATA_IN[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datad => \DATA_IN[4]~input_o\,
	combout => \sMEMORY~28_combout\);

-- Location: LCCOMB_X38_Y22_N8
\sMEMORY[7][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[7][4]~feeder_combout\ = \sMEMORY~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~28_combout\,
	combout => \sMEMORY[7][4]~feeder_combout\);

-- Location: FF_X38_Y22_N9
\sMEMORY[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[7][4]~feeder_combout\,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][4]~q\);

-- Location: FF_X38_Y21_N19
\sMEMORY[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~28_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][4]~q\);

-- Location: FF_X37_Y21_N29
\sMEMORY[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~28_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][4]~q\);

-- Location: FF_X40_Y18_N9
\sMEMORY[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~28_combout\,
	sload => VCC,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][4]~q\);

-- Location: LCCOMB_X38_Y21_N0
\Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (RD_IDX(2) & (((RD_IDX(3))))) # (!RD_IDX(2) & ((RD_IDX(3) & ((\sMEMORY[11][4]~q\))) # (!RD_IDX(3) & (\sMEMORY[3][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[3][4]~q\,
	datac => RD_IDX(3),
	datad => \sMEMORY[11][4]~q\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X38_Y21_N18
\Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (RD_IDX(2) & ((\Mux11~7_combout\ & ((\sMEMORY[15][4]~q\))) # (!\Mux11~7_combout\ & (\sMEMORY[7][4]~q\)))) # (!RD_IDX(2) & (((\Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[7][4]~q\,
	datac => \sMEMORY[15][4]~q\,
	datad => \Mux11~7_combout\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X37_Y19_N22
\sMEMORY[13][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[13][4]~feeder_combout\ = \sMEMORY~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~28_combout\,
	combout => \sMEMORY[13][4]~feeder_combout\);

-- Location: FF_X37_Y19_N23
\sMEMORY[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[13][4]~feeder_combout\,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][4]~q\);

-- Location: FF_X36_Y19_N3
\sMEMORY[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~28_combout\,
	sload => VCC,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][4]~q\);

-- Location: FF_X37_Y19_N29
\sMEMORY[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~28_combout\,
	sload => VCC,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][4]~q\);

-- Location: FF_X38_Y18_N31
\sMEMORY[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~28_combout\,
	sload => VCC,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][4]~q\);

-- Location: LCCOMB_X37_Y19_N28
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (RD_IDX(2) & ((RD_IDX(3)) # ((\sMEMORY[5][4]~q\)))) # (!RD_IDX(2) & (!RD_IDX(3) & (\sMEMORY[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => RD_IDX(3),
	datac => \sMEMORY[1][4]~q\,
	datad => \sMEMORY[5][4]~q\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X36_Y19_N2
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (RD_IDX(3) & ((\Mux11~0_combout\ & (\sMEMORY[13][4]~q\)) # (!\Mux11~0_combout\ & ((\sMEMORY[9][4]~q\))))) # (!RD_IDX(3) & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[13][4]~q\,
	datac => \sMEMORY[9][4]~q\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: FF_X40_Y18_N23
\sMEMORY[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~28_combout\,
	sload => VCC,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][4]~q\);

-- Location: FF_X39_Y22_N7
\sMEMORY[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~28_combout\,
	sload => VCC,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][4]~q\);

-- Location: LCCOMB_X39_Y22_N6
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (RD_IDX(3) & ((\sMEMORY[10][4]~q\) # ((RD_IDX(2))))) # (!RD_IDX(3) & (((\sMEMORY[2][4]~q\ & !RD_IDX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[10][4]~q\,
	datac => \sMEMORY[2][4]~q\,
	datad => RD_IDX(2),
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X38_Y22_N22
\sMEMORY[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[6][4]~feeder_combout\ = \sMEMORY~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~28_combout\,
	combout => \sMEMORY[6][4]~feeder_combout\);

-- Location: FF_X38_Y22_N23
\sMEMORY[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[6][4]~feeder_combout\,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][4]~q\);

-- Location: FF_X39_Y22_N1
\sMEMORY[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~28_combout\,
	sload => VCC,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][4]~q\);

-- Location: LCCOMB_X39_Y22_N0
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux11~2_combout\ & (((\sMEMORY[14][4]~q\) # (!RD_IDX(2))))) # (!\Mux11~2_combout\ & (\sMEMORY[6][4]~q\ & ((RD_IDX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~2_combout\,
	datab => \sMEMORY[6][4]~q\,
	datac => \sMEMORY[14][4]~q\,
	datad => RD_IDX(2),
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X36_Y19_N8
\sMEMORY[8][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[8][4]~feeder_combout\ = \sMEMORY~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~28_combout\,
	combout => \sMEMORY[8][4]~feeder_combout\);

-- Location: FF_X36_Y19_N9
\sMEMORY[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[8][4]~feeder_combout\,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][4]~q\);

-- Location: FF_X38_Y19_N11
\sMEMORY[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~28_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][4]~q\);

-- Location: FF_X39_Y18_N31
\sMEMORY[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~28_combout\,
	sload => VCC,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][4]~q\);

-- Location: FF_X37_Y20_N13
\sMEMORY[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~28_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][4]~q\);

-- Location: LCCOMB_X37_Y20_N12
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (RD_IDX(2) & ((\sMEMORY[4][4]~q\) # ((RD_IDX(3))))) # (!RD_IDX(2) & (((\sMEMORY[0][4]~q\ & !RD_IDX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[4][4]~q\,
	datac => \sMEMORY[0][4]~q\,
	datad => RD_IDX(3),
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X38_Y19_N10
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (RD_IDX(3) & ((\Mux11~4_combout\ & ((\sMEMORY[12][4]~q\))) # (!\Mux11~4_combout\ & (\sMEMORY[8][4]~q\)))) # (!RD_IDX(3) & (((\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[8][4]~q\,
	datab => RD_IDX(3),
	datac => \sMEMORY[12][4]~q\,
	datad => \Mux11~4_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X38_Y19_N16
\Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (RD_IDX(1) & ((RD_IDX(0)) # ((\Mux11~3_combout\)))) # (!RD_IDX(1) & (!RD_IDX(0) & ((\Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => RD_IDX(0),
	datac => \Mux11~3_combout\,
	datad => \Mux11~5_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X38_Y19_N4
\Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (RD_IDX(0) & ((\Mux11~6_combout\ & (\Mux11~8_combout\)) # (!\Mux11~6_combout\ & ((\Mux11~1_combout\))))) # (!RD_IDX(0) & (((\Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~8_combout\,
	datab => RD_IDX(0),
	datac => \Mux11~1_combout\,
	datad => \Mux11~6_combout\,
	combout => \Mux11~9_combout\);

-- Location: FF_X38_Y19_N5
\DATA_OUT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux11~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[4]~reg0_q\);

-- Location: IOIBUF_X51_Y34_N8
\DATA_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(5),
	o => \DATA_IN[5]~input_o\);

-- Location: LCCOMB_X40_Y22_N26
\sMEMORY~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~29_combout\ = (\DATA_IN[5]~input_o\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[5]~input_o\,
	datad => \RST~input_o\,
	combout => \sMEMORY~29_combout\);

-- Location: LCCOMB_X41_Y21_N30
\sMEMORY[13][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[13][5]~feeder_combout\ = \sMEMORY~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~29_combout\,
	combout => \sMEMORY[13][5]~feeder_combout\);

-- Location: FF_X41_Y21_N31
\sMEMORY[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[13][5]~feeder_combout\,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][5]~q\);

-- Location: FF_X41_Y20_N27
\sMEMORY[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~29_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][5]~q\);

-- Location: FF_X40_Y22_N27
\sMEMORY[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~29_combout\,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][5]~q\);

-- Location: FF_X41_Y20_N29
\sMEMORY[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~29_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][5]~q\);

-- Location: LCCOMB_X41_Y20_N28
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (RD_IDX(0) & (((RD_IDX(1))))) # (!RD_IDX(0) & ((RD_IDX(1) & (\sMEMORY[14][5]~q\)) # (!RD_IDX(1) & ((\sMEMORY[12][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[14][5]~q\,
	datac => \sMEMORY[12][5]~q\,
	datad => RD_IDX(1),
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X41_Y20_N26
\Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (RD_IDX(0) & ((\Mux10~7_combout\ & ((\sMEMORY[15][5]~q\))) # (!\Mux10~7_combout\ & (\sMEMORY[13][5]~q\)))) # (!RD_IDX(0) & (((\Mux10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[13][5]~q\,
	datab => RD_IDX(0),
	datac => \sMEMORY[15][5]~q\,
	datad => \Mux10~7_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X40_Y18_N24
\sMEMORY[11][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[11][5]~feeder_combout\ = \sMEMORY~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~29_combout\,
	combout => \sMEMORY[11][5]~feeder_combout\);

-- Location: FF_X40_Y18_N25
\sMEMORY[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[11][5]~feeder_combout\,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][5]~q\);

-- Location: FF_X39_Y20_N23
\sMEMORY[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~29_combout\,
	sload => VCC,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][5]~q\);

-- Location: FF_X39_Y20_N29
\sMEMORY[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~29_combout\,
	sload => VCC,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][5]~q\);

-- Location: LCCOMB_X40_Y18_N26
\sMEMORY[10][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[10][5]~feeder_combout\ = \sMEMORY~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~29_combout\,
	combout => \sMEMORY[10][5]~feeder_combout\);

-- Location: FF_X40_Y18_N27
\sMEMORY[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[10][5]~feeder_combout\,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][5]~q\);

-- Location: LCCOMB_X39_Y20_N28
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (RD_IDX(1) & ((RD_IDX(0)) # ((\sMEMORY[10][5]~q\)))) # (!RD_IDX(1) & (!RD_IDX(0) & (\sMEMORY[8][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => RD_IDX(0),
	datac => \sMEMORY[8][5]~q\,
	datad => \sMEMORY[10][5]~q\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X39_Y20_N22
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (RD_IDX(0) & ((\Mux10~0_combout\ & (\sMEMORY[11][5]~q\)) # (!\Mux10~0_combout\ & ((\sMEMORY[9][5]~q\))))) # (!RD_IDX(0) & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[11][5]~q\,
	datab => RD_IDX(0),
	datac => \sMEMORY[9][5]~q\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: FF_X39_Y22_N31
\sMEMORY[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~29_combout\,
	sload => VCC,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][5]~q\);

-- Location: FF_X37_Y21_N27
\sMEMORY[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~29_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][5]~q\);

-- Location: FF_X40_Y21_N17
\sMEMORY[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~29_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][5]~q\);

-- Location: LCCOMB_X41_Y21_N28
\sMEMORY[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[1][5]~feeder_combout\ = \sMEMORY~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~29_combout\,
	combout => \sMEMORY[1][5]~feeder_combout\);

-- Location: FF_X41_Y21_N29
\sMEMORY[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[1][5]~feeder_combout\,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][5]~q\);

-- Location: LCCOMB_X40_Y21_N16
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (RD_IDX(0) & ((RD_IDX(1)) # ((\sMEMORY[1][5]~q\)))) # (!RD_IDX(0) & (!RD_IDX(1) & (\sMEMORY[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => RD_IDX(1),
	datac => \sMEMORY[0][5]~q\,
	datad => \sMEMORY[1][5]~q\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X37_Y21_N26
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (RD_IDX(1) & ((\Mux10~4_combout\ & ((\sMEMORY[3][5]~q\))) # (!\Mux10~4_combout\ & (\sMEMORY[2][5]~q\)))) # (!RD_IDX(1) & (((\Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[2][5]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[3][5]~q\,
	datad => \Mux10~4_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X38_Y22_N6
\sMEMORY[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[6][5]~feeder_combout\ = \sMEMORY~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~29_combout\,
	combout => \sMEMORY[6][5]~feeder_combout\);

-- Location: FF_X38_Y22_N7
\sMEMORY[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[6][5]~feeder_combout\,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][5]~q\);

-- Location: FF_X38_Y22_N1
\sMEMORY[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~29_combout\,
	sload => VCC,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][5]~q\);

-- Location: FF_X41_Y19_N1
\sMEMORY[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~29_combout\,
	sload => VCC,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][5]~q\);

-- Location: LCCOMB_X38_Y18_N0
\sMEMORY[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[5][5]~feeder_combout\ = \sMEMORY~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~29_combout\,
	combout => \sMEMORY[5][5]~feeder_combout\);

-- Location: FF_X38_Y18_N1
\sMEMORY[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[5][5]~feeder_combout\,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][5]~q\);

-- Location: LCCOMB_X41_Y19_N0
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (RD_IDX(0) & ((RD_IDX(1)) # ((\sMEMORY[5][5]~q\)))) # (!RD_IDX(0) & (!RD_IDX(1) & (\sMEMORY[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => RD_IDX(1),
	datac => \sMEMORY[4][5]~q\,
	datad => \sMEMORY[5][5]~q\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X38_Y22_N0
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (RD_IDX(1) & ((\Mux10~2_combout\ & ((\sMEMORY[7][5]~q\))) # (!\Mux10~2_combout\ & (\sMEMORY[6][5]~q\)))) # (!RD_IDX(1) & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[6][5]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[7][5]~q\,
	datad => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X37_Y21_N24
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (RD_IDX(2) & ((RD_IDX(3)) # ((\Mux10~3_combout\)))) # (!RD_IDX(2) & (!RD_IDX(3) & (\Mux10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => RD_IDX(3),
	datac => \Mux10~5_combout\,
	datad => \Mux10~3_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X37_Y21_N10
\Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (RD_IDX(3) & ((\Mux10~6_combout\ & (\Mux10~8_combout\)) # (!\Mux10~6_combout\ & ((\Mux10~1_combout\))))) # (!RD_IDX(3) & (((\Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~8_combout\,
	datab => RD_IDX(3),
	datac => \Mux10~1_combout\,
	datad => \Mux10~6_combout\,
	combout => \Mux10~9_combout\);

-- Location: FF_X37_Y21_N11
\DATA_OUT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux10~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[5]~reg0_q\);

-- Location: IOIBUF_X43_Y34_N22
\DATA_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(6),
	o => \DATA_IN[6]~input_o\);

-- Location: LCCOMB_X38_Y22_N28
\sMEMORY~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~30_combout\ = (\DATA_IN[6]~input_o\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA_IN[6]~input_o\,
	datad => \RST~input_o\,
	combout => \sMEMORY~30_combout\);

-- Location: FF_X40_Y20_N19
\sMEMORY[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~30_combout\,
	sload => VCC,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][6]~q\);

-- Location: FF_X36_Y20_N19
\sMEMORY[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~30_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][6]~q\);

-- Location: FF_X38_Y22_N29
\sMEMORY[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~30_combout\,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][6]~q\);

-- Location: FF_X37_Y21_N31
\sMEMORY[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~30_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][6]~q\);

-- Location: LCCOMB_X37_Y21_N30
\Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (RD_IDX(2) & ((\sMEMORY[7][6]~q\) # ((RD_IDX(3))))) # (!RD_IDX(2) & (((\sMEMORY[3][6]~q\ & !RD_IDX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[7][6]~q\,
	datab => RD_IDX(2),
	datac => \sMEMORY[3][6]~q\,
	datad => RD_IDX(3),
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X36_Y20_N18
\Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (RD_IDX(3) & ((\Mux9~7_combout\ & ((\sMEMORY[15][6]~q\))) # (!\Mux9~7_combout\ & (\sMEMORY[11][6]~q\)))) # (!RD_IDX(3) & (((\Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[11][6]~q\,
	datab => RD_IDX(3),
	datac => \sMEMORY[15][6]~q\,
	datad => \Mux9~7_combout\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X40_Y22_N4
\sMEMORY[14][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[14][6]~feeder_combout\ = \sMEMORY~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~30_combout\,
	combout => \sMEMORY[14][6]~feeder_combout\);

-- Location: FF_X40_Y22_N5
\sMEMORY[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[14][6]~feeder_combout\,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][6]~q\);

-- Location: FF_X40_Y20_N13
\sMEMORY[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~30_combout\,
	sload => VCC,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][6]~q\);

-- Location: LCCOMB_X38_Y22_N18
\sMEMORY[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[6][6]~feeder_combout\ = \sMEMORY~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~30_combout\,
	combout => \sMEMORY[6][6]~feeder_combout\);

-- Location: FF_X38_Y22_N19
\sMEMORY[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[6][6]~feeder_combout\,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][6]~q\);

-- Location: FF_X39_Y22_N5
\sMEMORY[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~30_combout\,
	sload => VCC,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][6]~q\);

-- Location: LCCOMB_X39_Y22_N4
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (RD_IDX(3) & (((RD_IDX(2))))) # (!RD_IDX(3) & ((RD_IDX(2) & (\sMEMORY[6][6]~q\)) # (!RD_IDX(2) & ((\sMEMORY[2][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[6][6]~q\,
	datac => \sMEMORY[2][6]~q\,
	datad => RD_IDX(2),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X40_Y20_N12
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (RD_IDX(3) & ((\Mux9~0_combout\ & (\sMEMORY[14][6]~q\)) # (!\Mux9~0_combout\ & ((\sMEMORY[10][6]~q\))))) # (!RD_IDX(3) & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[14][6]~q\,
	datac => \sMEMORY[10][6]~q\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X39_Y20_N10
\sMEMORY[8][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[8][6]~feeder_combout\ = \sMEMORY~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~30_combout\,
	combout => \sMEMORY[8][6]~feeder_combout\);

-- Location: FF_X39_Y20_N11
\sMEMORY[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[8][6]~feeder_combout\,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][6]~q\);

-- Location: FF_X37_Y20_N19
\sMEMORY[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~30_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][6]~q\);

-- Location: LCCOMB_X37_Y20_N18
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (RD_IDX(2) & (((RD_IDX(3))))) # (!RD_IDX(2) & ((RD_IDX(3) & (\sMEMORY[8][6]~q\)) # (!RD_IDX(3) & ((\sMEMORY[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[8][6]~q\,
	datac => \sMEMORY[0][6]~q\,
	datad => RD_IDX(3),
	combout => \Mux9~4_combout\);

-- Location: FF_X37_Y20_N21
\sMEMORY[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~30_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][6]~q\);

-- Location: FF_X41_Y19_N15
\sMEMORY[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~30_combout\,
	sload => VCC,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][6]~q\);

-- Location: LCCOMB_X37_Y20_N20
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (RD_IDX(2) & ((\Mux9~4_combout\ & (\sMEMORY[12][6]~q\)) # (!\Mux9~4_combout\ & ((\sMEMORY[4][6]~q\))))) # (!RD_IDX(2) & (\Mux9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \Mux9~4_combout\,
	datac => \sMEMORY[12][6]~q\,
	datad => \sMEMORY[4][6]~q\,
	combout => \Mux9~5_combout\);

-- Location: FF_X38_Y18_N15
\sMEMORY[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~30_combout\,
	sload => VCC,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][6]~q\);

-- Location: FF_X37_Y19_N19
\sMEMORY[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~30_combout\,
	sload => VCC,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][6]~q\);

-- Location: FF_X37_Y19_N21
\sMEMORY[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~30_combout\,
	sload => VCC,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][6]~q\);

-- Location: LCCOMB_X36_Y19_N14
\sMEMORY[9][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[9][6]~feeder_combout\ = \sMEMORY~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~30_combout\,
	combout => \sMEMORY[9][6]~feeder_combout\);

-- Location: FF_X36_Y19_N15
\sMEMORY[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[9][6]~feeder_combout\,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][6]~q\);

-- Location: LCCOMB_X37_Y19_N20
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (RD_IDX(2) & (RD_IDX(3))) # (!RD_IDX(2) & ((RD_IDX(3) & ((\sMEMORY[9][6]~q\))) # (!RD_IDX(3) & (\sMEMORY[1][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => RD_IDX(3),
	datac => \sMEMORY[1][6]~q\,
	datad => \sMEMORY[9][6]~q\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X37_Y19_N18
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (RD_IDX(2) & ((\Mux9~2_combout\ & ((\sMEMORY[13][6]~q\))) # (!\Mux9~2_combout\ & (\sMEMORY[5][6]~q\)))) # (!RD_IDX(2) & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[5][6]~q\,
	datac => \sMEMORY[13][6]~q\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X36_Y20_N28
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (RD_IDX(1) & (RD_IDX(0))) # (!RD_IDX(1) & ((RD_IDX(0) & ((\Mux9~3_combout\))) # (!RD_IDX(0) & (\Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => RD_IDX(0),
	datac => \Mux9~5_combout\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X36_Y20_N8
\Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (RD_IDX(1) & ((\Mux9~6_combout\ & (\Mux9~8_combout\)) # (!\Mux9~6_combout\ & ((\Mux9~1_combout\))))) # (!RD_IDX(1) & (((\Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => \Mux9~8_combout\,
	datac => \Mux9~1_combout\,
	datad => \Mux9~6_combout\,
	combout => \Mux9~9_combout\);

-- Location: FF_X36_Y20_N9
\DATA_OUT[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux9~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[6]~reg0_q\);

-- Location: IOIBUF_X53_Y21_N22
\DATA_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(7),
	o => \DATA_IN[7]~input_o\);

-- Location: LCCOMB_X41_Y21_N6
\sMEMORY~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~31_combout\ = (\DATA_IN[7]~input_o\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA_IN[7]~input_o\,
	datad => \RST~input_o\,
	combout => \sMEMORY~31_combout\);

-- Location: LCCOMB_X40_Y22_N14
\sMEMORY[14][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[14][7]~feeder_combout\ = \sMEMORY~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~31_combout\,
	combout => \sMEMORY[14][7]~feeder_combout\);

-- Location: FF_X40_Y22_N15
\sMEMORY[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[14][7]~feeder_combout\,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][7]~q\);

-- Location: FF_X41_Y22_N11
\sMEMORY[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~31_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][7]~q\);

-- Location: FF_X41_Y21_N7
\sMEMORY[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~31_combout\,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][7]~q\);

-- Location: FF_X39_Y21_N1
\sMEMORY[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~31_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][7]~q\);

-- Location: LCCOMB_X39_Y21_N0
\Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (RD_IDX(0) & ((\sMEMORY[13][7]~q\) # ((RD_IDX(1))))) # (!RD_IDX(0) & (((\sMEMORY[12][7]~q\ & !RD_IDX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[13][7]~q\,
	datac => \sMEMORY[12][7]~q\,
	datad => RD_IDX(1),
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X41_Y22_N10
\Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (RD_IDX(1) & ((\Mux8~7_combout\ & ((\sMEMORY[15][7]~q\))) # (!\Mux8~7_combout\ & (\sMEMORY[14][7]~q\)))) # (!RD_IDX(1) & (((\Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[14][7]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[15][7]~q\,
	datad => \Mux8~7_combout\,
	combout => \Mux8~8_combout\);

-- Location: FF_X39_Y18_N11
\sMEMORY[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~31_combout\,
	sload => VCC,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][7]~q\);

-- Location: FF_X38_Y18_N25
\sMEMORY[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~31_combout\,
	sload => VCC,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][7]~q\);

-- Location: LCCOMB_X38_Y20_N8
\sMEMORY[6][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[6][7]~feeder_combout\ = \sMEMORY~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~31_combout\,
	combout => \sMEMORY[6][7]~feeder_combout\);

-- Location: FF_X38_Y20_N9
\sMEMORY[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[6][7]~feeder_combout\,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][7]~q\);

-- Location: FF_X39_Y18_N17
\sMEMORY[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~31_combout\,
	sload => VCC,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][7]~q\);

-- Location: LCCOMB_X39_Y18_N16
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (RD_IDX(1) & ((\sMEMORY[6][7]~q\) # ((RD_IDX(0))))) # (!RD_IDX(1) & (((\sMEMORY[4][7]~q\ & !RD_IDX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[6][7]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[4][7]~q\,
	datad => RD_IDX(0),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X38_Y18_N24
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (RD_IDX(0) & ((\Mux8~0_combout\ & (\sMEMORY[7][7]~q\)) # (!\Mux8~0_combout\ & ((\sMEMORY[5][7]~q\))))) # (!RD_IDX(0) & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[7][7]~q\,
	datac => \sMEMORY[5][7]~q\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X41_Y21_N8
\sMEMORY[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[1][7]~feeder_combout\ = \sMEMORY~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~31_combout\,
	combout => \sMEMORY[1][7]~feeder_combout\);

-- Location: FF_X41_Y21_N9
\sMEMORY[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[1][7]~feeder_combout\,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][7]~q\);

-- Location: FF_X41_Y19_N5
\sMEMORY[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~31_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][7]~q\);

-- Location: FF_X39_Y19_N7
\sMEMORY[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~31_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][7]~q\);

-- Location: FF_X39_Y22_N15
\sMEMORY[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~31_combout\,
	sload => VCC,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][7]~q\);

-- Location: LCCOMB_X40_Y19_N18
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (RD_IDX(0) & (((RD_IDX(1))))) # (!RD_IDX(0) & ((RD_IDX(1) & ((\sMEMORY[2][7]~q\))) # (!RD_IDX(1) & (\sMEMORY[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[0][7]~q\,
	datac => RD_IDX(1),
	datad => \sMEMORY[2][7]~q\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X41_Y19_N4
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (RD_IDX(0) & ((\Mux8~4_combout\ & ((\sMEMORY[3][7]~q\))) # (!\Mux8~4_combout\ & (\sMEMORY[1][7]~q\)))) # (!RD_IDX(0) & (((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[1][7]~q\,
	datac => \sMEMORY[3][7]~q\,
	datad => \Mux8~4_combout\,
	combout => \Mux8~5_combout\);

-- Location: FF_X40_Y20_N21
\sMEMORY[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~31_combout\,
	sload => VCC,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][7]~q\);

-- Location: FF_X40_Y20_N31
\sMEMORY[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~31_combout\,
	sload => VCC,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][7]~q\);

-- Location: FF_X39_Y20_N17
\sMEMORY[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~31_combout\,
	sload => VCC,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][7]~q\);

-- Location: FF_X39_Y20_N15
\sMEMORY[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~31_combout\,
	sload => VCC,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][7]~q\);

-- Location: LCCOMB_X39_Y20_N14
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (RD_IDX(1) & (((RD_IDX(0))))) # (!RD_IDX(1) & ((RD_IDX(0) & (\sMEMORY[9][7]~q\)) # (!RD_IDX(0) & ((\sMEMORY[8][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => \sMEMORY[9][7]~q\,
	datac => \sMEMORY[8][7]~q\,
	datad => RD_IDX(0),
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X40_Y20_N30
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (RD_IDX(1) & ((\Mux8~2_combout\ & ((\sMEMORY[11][7]~q\))) # (!\Mux8~2_combout\ & (\sMEMORY[10][7]~q\)))) # (!RD_IDX(1) & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[10][7]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[11][7]~q\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X41_Y19_N30
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (RD_IDX(3) & ((RD_IDX(2)) # ((\Mux8~3_combout\)))) # (!RD_IDX(3) & (!RD_IDX(2) & (\Mux8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => RD_IDX(2),
	datac => \Mux8~5_combout\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X41_Y22_N6
\Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (RD_IDX(2) & ((\Mux8~6_combout\ & (\Mux8~8_combout\)) # (!\Mux8~6_combout\ & ((\Mux8~1_combout\))))) # (!RD_IDX(2) & (((\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~8_combout\,
	datab => \Mux8~1_combout\,
	datac => RD_IDX(2),
	datad => \Mux8~6_combout\,
	combout => \Mux8~9_combout\);

-- Location: FF_X41_Y22_N7
\DATA_OUT[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux8~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[7]~reg0_q\);

-- Location: IOIBUF_X53_Y11_N8
\DATA_IN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(8),
	o => \DATA_IN[8]~input_o\);

-- Location: LCCOMB_X40_Y18_N6
\sMEMORY~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~32_combout\ = (\RST~input_o\ & \DATA_IN[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datad => \DATA_IN[8]~input_o\,
	combout => \sMEMORY~32_combout\);

-- Location: LCCOMB_X40_Y18_N16
\sMEMORY[11][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[11][8]~feeder_combout\ = \sMEMORY~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~32_combout\,
	combout => \sMEMORY[11][8]~feeder_combout\);

-- Location: FF_X40_Y18_N17
\sMEMORY[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[11][8]~feeder_combout\,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][8]~q\);

-- Location: FF_X40_Y21_N31
\sMEMORY[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~32_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][8]~q\);

-- Location: LCCOMB_X40_Y21_N30
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (RD_IDX(2) & (((RD_IDX(3))))) # (!RD_IDX(2) & ((RD_IDX(3) & (\sMEMORY[11][8]~q\)) # (!RD_IDX(3) & ((\sMEMORY[3][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[11][8]~q\,
	datac => \sMEMORY[3][8]~q\,
	datad => RD_IDX(3),
	combout => \Mux7~7_combout\);

-- Location: FF_X38_Y22_N11
\sMEMORY[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~32_combout\,
	sload => VCC,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][8]~q\);

-- Location: FF_X38_Y21_N11
\sMEMORY[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~32_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][8]~q\);

-- Location: LCCOMB_X38_Y21_N10
\Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~7_combout\ & (((\sMEMORY[15][8]~q\) # (!RD_IDX(2))))) # (!\Mux7~7_combout\ & (\sMEMORY[7][8]~q\ & ((RD_IDX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~7_combout\,
	datab => \sMEMORY[7][8]~q\,
	datac => \sMEMORY[15][8]~q\,
	datad => RD_IDX(2),
	combout => \Mux7~8_combout\);

-- Location: FF_X37_Y19_N27
\sMEMORY[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~32_combout\,
	sload => VCC,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][8]~q\);

-- Location: FF_X36_Y19_N29
\sMEMORY[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~32_combout\,
	sload => VCC,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][8]~q\);

-- Location: FF_X37_Y19_N5
\sMEMORY[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~32_combout\,
	sload => VCC,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][8]~q\);

-- Location: FF_X38_Y20_N7
\sMEMORY[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~32_combout\,
	sload => VCC,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][8]~q\);

-- Location: LCCOMB_X37_Y19_N4
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (RD_IDX(2) & ((RD_IDX(3)) # ((\sMEMORY[5][8]~q\)))) # (!RD_IDX(2) & (!RD_IDX(3) & (\sMEMORY[1][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => RD_IDX(3),
	datac => \sMEMORY[1][8]~q\,
	datad => \sMEMORY[5][8]~q\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X36_Y19_N28
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (RD_IDX(3) & ((\Mux7~0_combout\ & (\sMEMORY[13][8]~q\)) # (!\Mux7~0_combout\ & ((\sMEMORY[9][8]~q\))))) # (!RD_IDX(3) & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[13][8]~q\,
	datac => \sMEMORY[9][8]~q\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: FF_X38_Y20_N5
\sMEMORY[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~32_combout\,
	sload => VCC,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][8]~q\);

-- Location: LCCOMB_X40_Y18_N10
\sMEMORY[10][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[10][8]~feeder_combout\ = \sMEMORY~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~32_combout\,
	combout => \sMEMORY[10][8]~feeder_combout\);

-- Location: FF_X40_Y18_N11
\sMEMORY[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[10][8]~feeder_combout\,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][8]~q\);

-- Location: FF_X39_Y22_N17
\sMEMORY[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~32_combout\,
	sload => VCC,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][8]~q\);

-- Location: LCCOMB_X39_Y22_N16
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (RD_IDX(3) & ((\sMEMORY[10][8]~q\) # ((RD_IDX(2))))) # (!RD_IDX(3) & (((\sMEMORY[2][8]~q\ & !RD_IDX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[10][8]~q\,
	datac => \sMEMORY[2][8]~q\,
	datad => RD_IDX(2),
	combout => \Mux7~2_combout\);

-- Location: FF_X39_Y22_N3
\sMEMORY[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~32_combout\,
	sload => VCC,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][8]~q\);

-- Location: LCCOMB_X39_Y22_N2
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~2_combout\ & (((\sMEMORY[14][8]~q\) # (!RD_IDX(2))))) # (!\Mux7~2_combout\ & (\sMEMORY[6][8]~q\ & ((RD_IDX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[6][8]~q\,
	datab => \Mux7~2_combout\,
	datac => \sMEMORY[14][8]~q\,
	datad => RD_IDX(2),
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X36_Y19_N26
\sMEMORY[8][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[8][8]~feeder_combout\ = \sMEMORY~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~32_combout\,
	combout => \sMEMORY[8][8]~feeder_combout\);

-- Location: FF_X36_Y19_N27
\sMEMORY[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[8][8]~feeder_combout\,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][8]~q\);

-- Location: FF_X37_Y20_N17
\sMEMORY[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~32_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][8]~q\);

-- Location: FF_X39_Y18_N29
\sMEMORY[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~32_combout\,
	sload => VCC,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][8]~q\);

-- Location: FF_X37_Y20_N3
\sMEMORY[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~32_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][8]~q\);

-- Location: LCCOMB_X37_Y20_N2
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (RD_IDX(2) & ((\sMEMORY[4][8]~q\) # ((RD_IDX(3))))) # (!RD_IDX(2) & (((\sMEMORY[0][8]~q\ & !RD_IDX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[4][8]~q\,
	datac => \sMEMORY[0][8]~q\,
	datad => RD_IDX(3),
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X37_Y20_N16
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (RD_IDX(3) & ((\Mux7~4_combout\ & ((\sMEMORY[12][8]~q\))) # (!\Mux7~4_combout\ & (\sMEMORY[8][8]~q\)))) # (!RD_IDX(3) & (((\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[8][8]~q\,
	datac => \sMEMORY[12][8]~q\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X38_Y21_N20
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (RD_IDX(0) & (((RD_IDX(1))))) # (!RD_IDX(0) & ((RD_IDX(1) & (\Mux7~3_combout\)) # (!RD_IDX(1) & ((\Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => RD_IDX(0),
	datac => RD_IDX(1),
	datad => \Mux7~5_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X38_Y21_N22
\Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (RD_IDX(0) & ((\Mux7~6_combout\ & (\Mux7~8_combout\)) # (!\Mux7~6_combout\ & ((\Mux7~1_combout\))))) # (!RD_IDX(0) & (((\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~8_combout\,
	datab => RD_IDX(0),
	datac => \Mux7~1_combout\,
	datad => \Mux7~6_combout\,
	combout => \Mux7~9_combout\);

-- Location: FF_X38_Y21_N23
\DATA_OUT[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux7~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[8]~reg0_q\);

-- Location: IOIBUF_X53_Y30_N8
\DATA_IN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(9),
	o => \DATA_IN[9]~input_o\);

-- Location: LCCOMB_X40_Y22_N24
\sMEMORY~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~33_combout\ = (\RST~input_o\ & \DATA_IN[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datad => \DATA_IN[9]~input_o\,
	combout => \sMEMORY~33_combout\);

-- Location: FF_X41_Y21_N3
\sMEMORY[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~33_combout\,
	sload => VCC,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][9]~q\);

-- Location: FF_X36_Y20_N13
\sMEMORY[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~33_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][9]~q\);

-- Location: FF_X40_Y22_N25
\sMEMORY[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~33_combout\,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][9]~q\);

-- Location: FF_X39_Y21_N3
\sMEMORY[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~33_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][9]~q\);

-- Location: LCCOMB_X39_Y21_N2
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (RD_IDX(0) & (((RD_IDX(1))))) # (!RD_IDX(0) & ((RD_IDX(1) & (\sMEMORY[14][9]~q\)) # (!RD_IDX(1) & ((\sMEMORY[12][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[14][9]~q\,
	datac => \sMEMORY[12][9]~q\,
	datad => RD_IDX(1),
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X36_Y20_N12
\Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (RD_IDX(0) & ((\Mux6~7_combout\ & ((\sMEMORY[15][9]~q\))) # (!\Mux6~7_combout\ & (\sMEMORY[13][9]~q\)))) # (!RD_IDX(0) & (((\Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[13][9]~q\,
	datab => RD_IDX(0),
	datac => \sMEMORY[15][9]~q\,
	datad => \Mux6~7_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X40_Y18_N2
\sMEMORY[11][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[11][9]~feeder_combout\ = \sMEMORY~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~33_combout\,
	combout => \sMEMORY[11][9]~feeder_combout\);

-- Location: FF_X40_Y18_N3
\sMEMORY[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[11][9]~feeder_combout\,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][9]~q\);

-- Location: FF_X39_Y20_N5
\sMEMORY[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~33_combout\,
	sload => VCC,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][9]~q\);

-- Location: FF_X39_Y20_N7
\sMEMORY[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~33_combout\,
	sload => VCC,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][9]~q\);

-- Location: FF_X38_Y18_N23
\sMEMORY[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~33_combout\,
	sload => VCC,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][9]~q\);

-- Location: LCCOMB_X39_Y20_N6
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (RD_IDX(1) & ((RD_IDX(0)) # ((\sMEMORY[10][9]~q\)))) # (!RD_IDX(1) & (!RD_IDX(0) & (\sMEMORY[8][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => RD_IDX(0),
	datac => \sMEMORY[8][9]~q\,
	datad => \sMEMORY[10][9]~q\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X39_Y20_N4
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (RD_IDX(0) & ((\Mux6~0_combout\ & (\sMEMORY[11][9]~q\)) # (!\Mux6~0_combout\ & ((\sMEMORY[9][9]~q\))))) # (!RD_IDX(0) & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[11][9]~q\,
	datac => \sMEMORY[9][9]~q\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X39_Y22_N8
\sMEMORY[2][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[2][9]~feeder_combout\ = \sMEMORY~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~33_combout\,
	combout => \sMEMORY[2][9]~feeder_combout\);

-- Location: FF_X39_Y22_N9
\sMEMORY[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[2][9]~feeder_combout\,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][9]~q\);

-- Location: FF_X37_Y21_N5
\sMEMORY[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~33_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][9]~q\);

-- Location: FF_X41_Y21_N5
\sMEMORY[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~33_combout\,
	sload => VCC,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][9]~q\);

-- Location: FF_X40_Y21_N5
\sMEMORY[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~33_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][9]~q\);

-- Location: LCCOMB_X40_Y21_N4
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (RD_IDX(1) & (((RD_IDX(0))))) # (!RD_IDX(1) & ((RD_IDX(0) & (\sMEMORY[1][9]~q\)) # (!RD_IDX(0) & ((\sMEMORY[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[1][9]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[0][9]~q\,
	datad => RD_IDX(0),
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X37_Y21_N4
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (RD_IDX(1) & ((\Mux6~4_combout\ & ((\sMEMORY[3][9]~q\))) # (!\Mux6~4_combout\ & (\sMEMORY[2][9]~q\)))) # (!RD_IDX(1) & (((\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[2][9]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[3][9]~q\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~5_combout\);

-- Location: FF_X38_Y20_N3
\sMEMORY[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~33_combout\,
	sload => VCC,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][9]~q\);

-- Location: FF_X39_Y18_N9
\sMEMORY[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~33_combout\,
	sload => VCC,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][9]~q\);

-- Location: FF_X38_Y18_N9
\sMEMORY[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~33_combout\,
	sload => VCC,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][9]~q\);

-- Location: FF_X39_Y18_N3
\sMEMORY[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~33_combout\,
	sload => VCC,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][9]~q\);

-- Location: LCCOMB_X39_Y18_N2
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (RD_IDX(1) & (((RD_IDX(0))))) # (!RD_IDX(1) & ((RD_IDX(0) & (\sMEMORY[5][9]~q\)) # (!RD_IDX(0) & ((\sMEMORY[4][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[5][9]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[4][9]~q\,
	datad => RD_IDX(0),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X39_Y18_N8
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (RD_IDX(1) & ((\Mux6~2_combout\ & ((\sMEMORY[7][9]~q\))) # (!\Mux6~2_combout\ & (\sMEMORY[6][9]~q\)))) # (!RD_IDX(1) & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[6][9]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[7][9]~q\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X37_Y21_N6
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (RD_IDX(2) & ((RD_IDX(3)) # ((\Mux6~3_combout\)))) # (!RD_IDX(2) & (!RD_IDX(3) & (\Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => RD_IDX(3),
	datac => \Mux6~5_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X36_Y20_N26
\Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (RD_IDX(3) & ((\Mux6~6_combout\ & (\Mux6~8_combout\)) # (!\Mux6~6_combout\ & ((\Mux6~1_combout\))))) # (!RD_IDX(3) & (((\Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => RD_IDX(3),
	datac => \Mux6~1_combout\,
	datad => \Mux6~6_combout\,
	combout => \Mux6~9_combout\);

-- Location: FF_X36_Y20_N27
\DATA_OUT[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux6~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[9]~reg0_q\);

-- Location: IOIBUF_X38_Y34_N15
\DATA_IN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(10),
	o => \DATA_IN[10]~input_o\);

-- Location: LCCOMB_X38_Y22_N2
\sMEMORY~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~34_combout\ = (\DATA_IN[10]~input_o\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_IN[10]~input_o\,
	datad => \RST~input_o\,
	combout => \sMEMORY~34_combout\);

-- Location: FF_X40_Y20_N15
\sMEMORY[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~34_combout\,
	sload => VCC,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][10]~q\);

-- Location: FF_X36_Y20_N7
\sMEMORY[15][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~34_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][10]~q\);

-- Location: FF_X38_Y22_N3
\sMEMORY[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~34_combout\,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][10]~q\);

-- Location: FF_X37_Y21_N17
\sMEMORY[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~34_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][10]~q\);

-- Location: LCCOMB_X37_Y21_N16
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (RD_IDX(2) & ((\sMEMORY[7][10]~q\) # ((RD_IDX(3))))) # (!RD_IDX(2) & (((\sMEMORY[3][10]~q\ & !RD_IDX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[7][10]~q\,
	datab => RD_IDX(2),
	datac => \sMEMORY[3][10]~q\,
	datad => RD_IDX(3),
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X36_Y20_N6
\Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (RD_IDX(3) & ((\Mux5~7_combout\ & ((\sMEMORY[15][10]~q\))) # (!\Mux5~7_combout\ & (\sMEMORY[11][10]~q\)))) # (!RD_IDX(3) & (((\Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[11][10]~q\,
	datab => RD_IDX(3),
	datac => \sMEMORY[15][10]~q\,
	datad => \Mux5~7_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X38_Y22_N20
\sMEMORY[6][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[6][10]~feeder_combout\ = \sMEMORY~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~34_combout\,
	combout => \sMEMORY[6][10]~feeder_combout\);

-- Location: FF_X38_Y22_N21
\sMEMORY[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[6][10]~feeder_combout\,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][10]~q\);

-- Location: FF_X39_Y22_N27
\sMEMORY[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~34_combout\,
	sload => VCC,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][10]~q\);

-- Location: LCCOMB_X39_Y22_N26
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (RD_IDX(3) & (((RD_IDX(2))))) # (!RD_IDX(3) & ((RD_IDX(2) & (\sMEMORY[6][10]~q\)) # (!RD_IDX(2) & ((\sMEMORY[2][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[6][10]~q\,
	datac => \sMEMORY[2][10]~q\,
	datad => RD_IDX(2),
	combout => \Mux5~0_combout\);

-- Location: FF_X40_Y22_N19
\sMEMORY[14][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~34_combout\,
	sload => VCC,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][10]~q\);

-- Location: FF_X40_Y20_N25
\sMEMORY[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~34_combout\,
	sload => VCC,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][10]~q\);

-- Location: LCCOMB_X40_Y20_N24
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & ((\sMEMORY[14][10]~q\) # ((!RD_IDX(3))))) # (!\Mux5~0_combout\ & (((\sMEMORY[10][10]~q\ & RD_IDX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \sMEMORY[14][10]~q\,
	datac => \sMEMORY[10][10]~q\,
	datad => RD_IDX(3),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X38_Y20_N28
\sMEMORY[5][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[5][10]~feeder_combout\ = \sMEMORY~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~34_combout\,
	combout => \sMEMORY[5][10]~feeder_combout\);

-- Location: FF_X38_Y20_N29
\sMEMORY[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[5][10]~feeder_combout\,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][10]~q\);

-- Location: FF_X37_Y19_N7
\sMEMORY[13][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~34_combout\,
	sload => VCC,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][10]~q\);

-- Location: FF_X36_Y19_N21
\sMEMORY[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~34_combout\,
	sload => VCC,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][10]~q\);

-- Location: FF_X37_Y19_N25
\sMEMORY[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~34_combout\,
	sload => VCC,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][10]~q\);

-- Location: LCCOMB_X37_Y19_N24
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (RD_IDX(2) & (((RD_IDX(3))))) # (!RD_IDX(2) & ((RD_IDX(3) & (\sMEMORY[9][10]~q\)) # (!RD_IDX(3) & ((\sMEMORY[1][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[9][10]~q\,
	datac => \sMEMORY[1][10]~q\,
	datad => RD_IDX(3),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X37_Y19_N6
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (RD_IDX(2) & ((\Mux5~2_combout\ & ((\sMEMORY[13][10]~q\))) # (!\Mux5~2_combout\ & (\sMEMORY[5][10]~q\)))) # (!RD_IDX(2) & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[5][10]~q\,
	datac => \sMEMORY[13][10]~q\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X41_Y19_N16
\sMEMORY[4][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[4][10]~feeder_combout\ = \sMEMORY~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~34_combout\,
	combout => \sMEMORY[4][10]~feeder_combout\);

-- Location: FF_X41_Y19_N17
\sMEMORY[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[4][10]~feeder_combout\,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][10]~q\);

-- Location: FF_X37_Y20_N29
\sMEMORY[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~34_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][10]~q\);

-- Location: LCCOMB_X39_Y20_N20
\sMEMORY[8][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[8][10]~feeder_combout\ = \sMEMORY~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~34_combout\,
	combout => \sMEMORY[8][10]~feeder_combout\);

-- Location: FF_X39_Y20_N21
\sMEMORY[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[8][10]~feeder_combout\,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][10]~q\);

-- Location: FF_X37_Y20_N11
\sMEMORY[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~34_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][10]~q\);

-- Location: LCCOMB_X37_Y20_N10
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (RD_IDX(2) & (((RD_IDX(3))))) # (!RD_IDX(2) & ((RD_IDX(3) & (\sMEMORY[8][10]~q\)) # (!RD_IDX(3) & ((\sMEMORY[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[8][10]~q\,
	datac => \sMEMORY[0][10]~q\,
	datad => RD_IDX(3),
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X37_Y20_N28
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (RD_IDX(2) & ((\Mux5~4_combout\ & ((\sMEMORY[12][10]~q\))) # (!\Mux5~4_combout\ & (\sMEMORY[4][10]~q\)))) # (!RD_IDX(2) & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[4][10]~q\,
	datac => \sMEMORY[12][10]~q\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X37_Y20_N22
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (RD_IDX(1) & (RD_IDX(0))) # (!RD_IDX(1) & ((RD_IDX(0) & (\Mux5~3_combout\)) # (!RD_IDX(0) & ((\Mux5~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => RD_IDX(0),
	datac => \Mux5~3_combout\,
	datad => \Mux5~5_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X36_Y20_N4
\Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (RD_IDX(1) & ((\Mux5~6_combout\ & (\Mux5~8_combout\)) # (!\Mux5~6_combout\ & ((\Mux5~1_combout\))))) # (!RD_IDX(1) & (((\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~8_combout\,
	datab => RD_IDX(1),
	datac => \Mux5~1_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mux5~9_combout\);

-- Location: FF_X36_Y20_N5
\DATA_OUT[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux5~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[10]~reg0_q\);

-- Location: IOIBUF_X49_Y34_N1
\DATA_IN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(11),
	o => \DATA_IN[11]~input_o\);

-- Location: LCCOMB_X41_Y21_N26
\sMEMORY~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~35_combout\ = (\DATA_IN[11]~input_o\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_IN[11]~input_o\,
	datad => \RST~input_o\,
	combout => \sMEMORY~35_combout\);

-- Location: LCCOMB_X38_Y18_N2
\sMEMORY[5][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[5][11]~feeder_combout\ = \sMEMORY~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~35_combout\,
	combout => \sMEMORY[5][11]~feeder_combout\);

-- Location: FF_X38_Y18_N3
\sMEMORY[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[5][11]~feeder_combout\,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][11]~q\);

-- Location: LCCOMB_X38_Y20_N14
\sMEMORY[6][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[6][11]~feeder_combout\ = \sMEMORY~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~35_combout\,
	combout => \sMEMORY[6][11]~feeder_combout\);

-- Location: FF_X38_Y20_N15
\sMEMORY[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[6][11]~feeder_combout\,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][11]~q\);

-- Location: FF_X39_Y18_N19
\sMEMORY[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~35_combout\,
	sload => VCC,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][11]~q\);

-- Location: LCCOMB_X39_Y18_N18
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (RD_IDX(1) & ((\sMEMORY[6][11]~q\) # ((RD_IDX(0))))) # (!RD_IDX(1) & (((\sMEMORY[4][11]~q\ & !RD_IDX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[6][11]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[4][11]~q\,
	datad => RD_IDX(0),
	combout => \Mux4~0_combout\);

-- Location: FF_X39_Y18_N21
\sMEMORY[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~35_combout\,
	sload => VCC,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][11]~q\);

-- Location: LCCOMB_X39_Y18_N20
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\sMEMORY[7][11]~q\) # (!RD_IDX(0))))) # (!\Mux4~0_combout\ & (\sMEMORY[5][11]~q\ & ((RD_IDX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[5][11]~q\,
	datab => \Mux4~0_combout\,
	datac => \sMEMORY[7][11]~q\,
	datad => RD_IDX(0),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X40_Y22_N10
\sMEMORY[14][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[14][11]~feeder_combout\ = \sMEMORY~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~35_combout\,
	combout => \sMEMORY[14][11]~feeder_combout\);

-- Location: FF_X40_Y22_N11
\sMEMORY[14][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[14][11]~feeder_combout\,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][11]~q\);

-- Location: FF_X41_Y22_N15
\sMEMORY[15][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~35_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][11]~q\);

-- Location: FF_X41_Y21_N27
\sMEMORY[13][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~35_combout\,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][11]~q\);

-- Location: FF_X39_Y21_N13
\sMEMORY[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~35_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][11]~q\);

-- Location: LCCOMB_X39_Y21_N12
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (RD_IDX(0) & ((\sMEMORY[13][11]~q\) # ((RD_IDX(1))))) # (!RD_IDX(0) & (((\sMEMORY[12][11]~q\ & !RD_IDX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[13][11]~q\,
	datac => \sMEMORY[12][11]~q\,
	datad => RD_IDX(1),
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X41_Y22_N14
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (RD_IDX(1) & ((\Mux4~7_combout\ & ((\sMEMORY[15][11]~q\))) # (!\Mux4~7_combout\ & (\sMEMORY[14][11]~q\)))) # (!RD_IDX(1) & (((\Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[14][11]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[15][11]~q\,
	datad => \Mux4~7_combout\,
	combout => \Mux4~8_combout\);

-- Location: FF_X40_Y20_N5
\sMEMORY[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~35_combout\,
	sload => VCC,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][11]~q\);

-- Location: FF_X40_Y20_N27
\sMEMORY[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~35_combout\,
	sload => VCC,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][11]~q\);

-- Location: FF_X39_Y20_N19
\sMEMORY[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~35_combout\,
	sload => VCC,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][11]~q\);

-- Location: FF_X39_Y20_N13
\sMEMORY[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~35_combout\,
	sload => VCC,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][11]~q\);

-- Location: LCCOMB_X39_Y20_N12
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (RD_IDX(0) & ((\sMEMORY[9][11]~q\) # ((RD_IDX(1))))) # (!RD_IDX(0) & (((\sMEMORY[8][11]~q\ & !RD_IDX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[9][11]~q\,
	datab => RD_IDX(0),
	datac => \sMEMORY[8][11]~q\,
	datad => RD_IDX(1),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X40_Y20_N26
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (RD_IDX(1) & ((\Mux4~2_combout\ & ((\sMEMORY[11][11]~q\))) # (!\Mux4~2_combout\ & (\sMEMORY[10][11]~q\)))) # (!RD_IDX(1) & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[10][11]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[11][11]~q\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: FF_X41_Y21_N21
\sMEMORY[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~35_combout\,
	sload => VCC,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][11]~q\);

-- Location: FF_X40_Y21_N1
\sMEMORY[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~35_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][11]~q\);

-- Location: LCCOMB_X40_Y22_N0
\sMEMORY[2][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[2][11]~feeder_combout\ = \sMEMORY~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~35_combout\,
	combout => \sMEMORY[2][11]~feeder_combout\);

-- Location: FF_X40_Y22_N1
\sMEMORY[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[2][11]~feeder_combout\,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][11]~q\);

-- Location: FF_X40_Y21_N11
\sMEMORY[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~35_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][11]~q\);

-- Location: LCCOMB_X40_Y21_N10
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (RD_IDX(1) & ((\sMEMORY[2][11]~q\) # ((RD_IDX(0))))) # (!RD_IDX(1) & (((\sMEMORY[0][11]~q\ & !RD_IDX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[2][11]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[0][11]~q\,
	datad => RD_IDX(0),
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X40_Y21_N0
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (RD_IDX(0) & ((\Mux4~4_combout\ & ((\sMEMORY[3][11]~q\))) # (!\Mux4~4_combout\ & (\sMEMORY[1][11]~q\)))) # (!RD_IDX(0) & (((\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[1][11]~q\,
	datac => \sMEMORY[3][11]~q\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X41_Y22_N20
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (RD_IDX(3) & ((RD_IDX(2)) # ((\Mux4~3_combout\)))) # (!RD_IDX(3) & (!RD_IDX(2) & ((\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => RD_IDX(2),
	datac => \Mux4~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X41_Y22_N4
\Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (RD_IDX(2) & ((\Mux4~6_combout\ & ((\Mux4~8_combout\))) # (!\Mux4~6_combout\ & (\Mux4~1_combout\)))) # (!RD_IDX(2) & (((\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => RD_IDX(2),
	datac => \Mux4~8_combout\,
	datad => \Mux4~6_combout\,
	combout => \Mux4~9_combout\);

-- Location: FF_X41_Y22_N5
\DATA_OUT[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux4~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[11]~reg0_q\);

-- Location: IOIBUF_X53_Y14_N8
\DATA_IN[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(12),
	o => \DATA_IN[12]~input_o\);

-- Location: LCCOMB_X40_Y18_N28
\sMEMORY~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~36_combout\ = (\RST~input_o\ & \DATA_IN[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datad => \DATA_IN[12]~input_o\,
	combout => \sMEMORY~36_combout\);

-- Location: LCCOMB_X36_Y19_N10
\sMEMORY[9][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[9][12]~feeder_combout\ = \sMEMORY~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~36_combout\,
	combout => \sMEMORY[9][12]~feeder_combout\);

-- Location: FF_X36_Y19_N11
\sMEMORY[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[9][12]~feeder_combout\,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][12]~q\);

-- Location: FF_X37_Y19_N3
\sMEMORY[13][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~36_combout\,
	sload => VCC,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][12]~q\);

-- Location: FF_X37_Y19_N13
\sMEMORY[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~36_combout\,
	sload => VCC,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][12]~q\);

-- Location: FF_X38_Y18_N5
\sMEMORY[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~36_combout\,
	sload => VCC,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][12]~q\);

-- Location: LCCOMB_X37_Y19_N12
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (RD_IDX(2) & ((RD_IDX(3)) # ((\sMEMORY[5][12]~q\)))) # (!RD_IDX(2) & (!RD_IDX(3) & (\sMEMORY[1][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => RD_IDX(3),
	datac => \sMEMORY[1][12]~q\,
	datad => \sMEMORY[5][12]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X37_Y19_N2
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (RD_IDX(3) & ((\Mux3~0_combout\ & ((\sMEMORY[13][12]~q\))) # (!\Mux3~0_combout\ & (\sMEMORY[9][12]~q\)))) # (!RD_IDX(3) & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[9][12]~q\,
	datab => RD_IDX(3),
	datac => \sMEMORY[13][12]~q\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X40_Y18_N18
\sMEMORY[11][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[11][12]~feeder_combout\ = \sMEMORY~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~36_combout\,
	combout => \sMEMORY[11][12]~feeder_combout\);

-- Location: FF_X40_Y18_N19
\sMEMORY[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[11][12]~feeder_combout\,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][12]~q\);

-- Location: FF_X40_Y21_N9
\sMEMORY[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~36_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][12]~q\);

-- Location: LCCOMB_X40_Y21_N8
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (RD_IDX(2) & (((RD_IDX(3))))) # (!RD_IDX(2) & ((RD_IDX(3) & (\sMEMORY[11][12]~q\)) # (!RD_IDX(3) & ((\sMEMORY[3][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[11][12]~q\,
	datac => \sMEMORY[3][12]~q\,
	datad => RD_IDX(3),
	combout => \Mux3~7_combout\);

-- Location: FF_X38_Y21_N27
\sMEMORY[15][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~36_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][12]~q\);

-- Location: LCCOMB_X39_Y18_N4
\sMEMORY[7][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[7][12]~feeder_combout\ = \sMEMORY~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~36_combout\,
	combout => \sMEMORY[7][12]~feeder_combout\);

-- Location: FF_X39_Y18_N5
\sMEMORY[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[7][12]~feeder_combout\,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][12]~q\);

-- Location: LCCOMB_X38_Y21_N26
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (RD_IDX(2) & ((\Mux3~7_combout\ & (\sMEMORY[15][12]~q\)) # (!\Mux3~7_combout\ & ((\sMEMORY[7][12]~q\))))) # (!RD_IDX(2) & (\Mux3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \Mux3~7_combout\,
	datac => \sMEMORY[15][12]~q\,
	datad => \sMEMORY[7][12]~q\,
	combout => \Mux3~8_combout\);

-- Location: FF_X39_Y21_N23
\sMEMORY[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~36_combout\,
	sload => VCC,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][12]~q\);

-- Location: FF_X39_Y21_N9
\sMEMORY[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~36_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][12]~q\);

-- Location: LCCOMB_X39_Y18_N26
\sMEMORY[4][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[4][12]~feeder_combout\ = \sMEMORY~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~36_combout\,
	combout => \sMEMORY[4][12]~feeder_combout\);

-- Location: FF_X39_Y18_N27
\sMEMORY[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[4][12]~feeder_combout\,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][12]~q\);

-- Location: FF_X40_Y21_N19
\sMEMORY[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~36_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][12]~q\);

-- Location: LCCOMB_X40_Y21_N18
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (RD_IDX(2) & ((\sMEMORY[4][12]~q\) # ((RD_IDX(3))))) # (!RD_IDX(2) & (((\sMEMORY[0][12]~q\ & !RD_IDX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \sMEMORY[4][12]~q\,
	datac => \sMEMORY[0][12]~q\,
	datad => RD_IDX(3),
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X39_Y21_N8
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (RD_IDX(3) & ((\Mux3~4_combout\ & ((\sMEMORY[12][12]~q\))) # (!\Mux3~4_combout\ & (\sMEMORY[8][12]~q\)))) # (!RD_IDX(3) & (((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[8][12]~q\,
	datab => RD_IDX(3),
	datac => \sMEMORY[12][12]~q\,
	datad => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X38_Y20_N12
\sMEMORY[6][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[6][12]~feeder_combout\ = \sMEMORY~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~36_combout\,
	combout => \sMEMORY[6][12]~feeder_combout\);

-- Location: FF_X38_Y20_N13
\sMEMORY[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[6][12]~feeder_combout\,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][12]~q\);

-- Location: LCCOMB_X40_Y18_N0
\sMEMORY[10][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[10][12]~feeder_combout\ = \sMEMORY~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~36_combout\,
	combout => \sMEMORY[10][12]~feeder_combout\);

-- Location: FF_X40_Y18_N1
\sMEMORY[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[10][12]~feeder_combout\,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][12]~q\);

-- Location: FF_X39_Y22_N21
\sMEMORY[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~36_combout\,
	sload => VCC,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][12]~q\);

-- Location: LCCOMB_X39_Y22_N20
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (RD_IDX(3) & ((\sMEMORY[10][12]~q\) # ((RD_IDX(2))))) # (!RD_IDX(3) & (((\sMEMORY[2][12]~q\ & !RD_IDX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[10][12]~q\,
	datac => \sMEMORY[2][12]~q\,
	datad => RD_IDX(2),
	combout => \Mux3~2_combout\);

-- Location: FF_X39_Y22_N23
\sMEMORY[14][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~36_combout\,
	sload => VCC,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][12]~q\);

-- Location: LCCOMB_X39_Y22_N22
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & (((\sMEMORY[14][12]~q\) # (!RD_IDX(2))))) # (!\Mux3~2_combout\ & (\sMEMORY[6][12]~q\ & ((RD_IDX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[6][12]~q\,
	datab => \Mux3~2_combout\,
	datac => \sMEMORY[14][12]~q\,
	datad => RD_IDX(2),
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X38_Y21_N28
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (RD_IDX(0) & (RD_IDX(1))) # (!RD_IDX(0) & ((RD_IDX(1) & ((\Mux3~3_combout\))) # (!RD_IDX(1) & (\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => RD_IDX(1),
	datac => \Mux3~5_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X38_Y21_N12
\Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (RD_IDX(0) & ((\Mux3~6_combout\ & ((\Mux3~8_combout\))) # (!\Mux3~6_combout\ & (\Mux3~1_combout\)))) # (!RD_IDX(0) & (((\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => RD_IDX(0),
	datac => \Mux3~8_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux3~9_combout\);

-- Location: FF_X38_Y21_N13
\DATA_OUT[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux3~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[12]~reg0_q\);

-- Location: IOIBUF_X40_Y34_N8
\DATA_IN[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(13),
	o => \DATA_IN[13]~input_o\);

-- Location: LCCOMB_X40_Y22_N18
\sMEMORY~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~37_combout\ = (\DATA_IN[13]~input_o\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_IN[13]~input_o\,
	datad => \RST~input_o\,
	combout => \sMEMORY~37_combout\);

-- Location: LCCOMB_X40_Y22_N20
\sMEMORY[14][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[14][13]~feeder_combout\ = \sMEMORY~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~37_combout\,
	combout => \sMEMORY[14][13]~feeder_combout\);

-- Location: FF_X40_Y22_N21
\sMEMORY[14][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[14][13]~feeder_combout\,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][13]~q\);

-- Location: FF_X39_Y21_N21
\sMEMORY[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~37_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][13]~q\);

-- Location: LCCOMB_X39_Y21_N20
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (RD_IDX(0) & (((RD_IDX(1))))) # (!RD_IDX(0) & ((RD_IDX(1) & (\sMEMORY[14][13]~q\)) # (!RD_IDX(1) & ((\sMEMORY[12][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[14][13]~q\,
	datab => RD_IDX(0),
	datac => \sMEMORY[12][13]~q\,
	datad => RD_IDX(1),
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X41_Y21_N22
\sMEMORY[13][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[13][13]~feeder_combout\ = \sMEMORY~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~37_combout\,
	combout => \sMEMORY[13][13]~feeder_combout\);

-- Location: FF_X41_Y21_N23
\sMEMORY[13][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[13][13]~feeder_combout\,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][13]~q\);

-- Location: FF_X38_Y21_N25
\sMEMORY[15][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~37_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][13]~q\);

-- Location: LCCOMB_X38_Y21_N24
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~7_combout\ & (((\sMEMORY[15][13]~q\) # (!RD_IDX(0))))) # (!\Mux2~7_combout\ & (\sMEMORY[13][13]~q\ & ((RD_IDX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~7_combout\,
	datab => \sMEMORY[13][13]~q\,
	datac => \sMEMORY[15][13]~q\,
	datad => RD_IDX(0),
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X38_Y20_N22
\sMEMORY[6][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[6][13]~feeder_combout\ = \sMEMORY~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~37_combout\,
	combout => \sMEMORY[6][13]~feeder_combout\);

-- Location: FF_X38_Y20_N23
\sMEMORY[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[6][13]~feeder_combout\,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][13]~q\);

-- Location: FF_X39_Y18_N1
\sMEMORY[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~37_combout\,
	sload => VCC,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][13]~q\);

-- Location: LCCOMB_X38_Y18_N12
\sMEMORY[5][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[5][13]~feeder_combout\ = \sMEMORY~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~37_combout\,
	combout => \sMEMORY[5][13]~feeder_combout\);

-- Location: FF_X38_Y18_N13
\sMEMORY[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[5][13]~feeder_combout\,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][13]~q\);

-- Location: FF_X39_Y18_N7
\sMEMORY[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~37_combout\,
	sload => VCC,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][13]~q\);

-- Location: LCCOMB_X39_Y18_N6
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (RD_IDX(1) & (((RD_IDX(0))))) # (!RD_IDX(1) & ((RD_IDX(0) & (\sMEMORY[5][13]~q\)) # (!RD_IDX(0) & ((\sMEMORY[4][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[5][13]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[4][13]~q\,
	datad => RD_IDX(0),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X39_Y18_N0
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (RD_IDX(1) & ((\Mux2~2_combout\ & ((\sMEMORY[7][13]~q\))) # (!\Mux2~2_combout\ & (\sMEMORY[6][13]~q\)))) # (!RD_IDX(1) & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => \sMEMORY[6][13]~q\,
	datac => \sMEMORY[7][13]~q\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X39_Y22_N12
\sMEMORY[2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[2][13]~feeder_combout\ = \sMEMORY~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~37_combout\,
	combout => \sMEMORY[2][13]~feeder_combout\);

-- Location: FF_X39_Y22_N13
\sMEMORY[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[2][13]~feeder_combout\,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][13]~q\);

-- Location: FF_X40_Y21_N29
\sMEMORY[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~37_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][13]~q\);

-- Location: FF_X40_Y21_N3
\sMEMORY[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~37_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][13]~q\);

-- Location: LCCOMB_X41_Y21_N24
\sMEMORY[1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[1][13]~feeder_combout\ = \sMEMORY~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~37_combout\,
	combout => \sMEMORY[1][13]~feeder_combout\);

-- Location: FF_X41_Y21_N25
\sMEMORY[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[1][13]~feeder_combout\,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][13]~q\);

-- Location: LCCOMB_X40_Y21_N2
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (RD_IDX(0) & ((RD_IDX(1)) # ((\sMEMORY[1][13]~q\)))) # (!RD_IDX(0) & (!RD_IDX(1) & (\sMEMORY[0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => RD_IDX(1),
	datac => \sMEMORY[0][13]~q\,
	datad => \sMEMORY[1][13]~q\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X40_Y21_N28
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (RD_IDX(1) & ((\Mux2~4_combout\ & ((\sMEMORY[3][13]~q\))) # (!\Mux2~4_combout\ & (\sMEMORY[2][13]~q\)))) # (!RD_IDX(1) & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[2][13]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[3][13]~q\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X39_Y21_N14
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (RD_IDX(2) & ((RD_IDX(3)) # ((\Mux2~3_combout\)))) # (!RD_IDX(2) & (!RD_IDX(3) & ((\Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => RD_IDX(3),
	datac => \Mux2~3_combout\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X38_Y18_N18
\sMEMORY[10][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[10][13]~feeder_combout\ = \sMEMORY~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~37_combout\,
	combout => \sMEMORY[10][13]~feeder_combout\);

-- Location: FF_X38_Y18_N19
\sMEMORY[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[10][13]~feeder_combout\,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][13]~q\);

-- Location: FF_X36_Y19_N23
\sMEMORY[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~37_combout\,
	sload => VCC,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][13]~q\);

-- Location: LCCOMB_X36_Y19_N22
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (RD_IDX(1) & ((\sMEMORY[10][13]~q\) # ((RD_IDX(0))))) # (!RD_IDX(1) & (((\sMEMORY[8][13]~q\ & !RD_IDX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => \sMEMORY[10][13]~q\,
	datac => \sMEMORY[8][13]~q\,
	datad => RD_IDX(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X40_Y18_N12
\sMEMORY[11][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[11][13]~feeder_combout\ = \sMEMORY~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~37_combout\,
	combout => \sMEMORY[11][13]~feeder_combout\);

-- Location: FF_X40_Y18_N13
\sMEMORY[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[11][13]~feeder_combout\,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][13]~q\);

-- Location: FF_X36_Y19_N5
\sMEMORY[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~37_combout\,
	sload => VCC,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][13]~q\);

-- Location: LCCOMB_X36_Y19_N4
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((\sMEMORY[11][13]~q\) # ((!RD_IDX(0))))) # (!\Mux2~0_combout\ & (((\sMEMORY[9][13]~q\ & RD_IDX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \sMEMORY[11][13]~q\,
	datac => \sMEMORY[9][13]~q\,
	datad => RD_IDX(0),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X38_Y21_N30
\Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (RD_IDX(3) & ((\Mux2~6_combout\ & (\Mux2~8_combout\)) # (!\Mux2~6_combout\ & ((\Mux2~1_combout\))))) # (!RD_IDX(3) & (((\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \Mux2~8_combout\,
	datac => \Mux2~6_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~9_combout\);

-- Location: FF_X38_Y21_N31
\DATA_OUT[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux2~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[13]~reg0_q\);

-- Location: IOIBUF_X53_Y7_N8
\DATA_IN[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(14),
	o => \DATA_IN[14]~input_o\);

-- Location: LCCOMB_X39_Y18_N12
\sMEMORY~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~38_combout\ = (\RST~input_o\ & \DATA_IN[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datad => \DATA_IN[14]~input_o\,
	combout => \sMEMORY~38_combout\);

-- Location: FF_X40_Y20_N7
\sMEMORY[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~38_combout\,
	sload => VCC,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][14]~q\);

-- Location: FF_X36_Y20_N11
\sMEMORY[15][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~38_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][14]~q\);

-- Location: FF_X36_Y21_N13
\sMEMORY[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~38_combout\,
	sload => VCC,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][14]~q\);

-- Location: FF_X37_Y21_N15
\sMEMORY[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~38_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][14]~q\);

-- Location: LCCOMB_X37_Y21_N14
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (RD_IDX(2) & ((\sMEMORY[7][14]~q\) # ((RD_IDX(3))))) # (!RD_IDX(2) & (((\sMEMORY[3][14]~q\ & !RD_IDX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[7][14]~q\,
	datab => RD_IDX(2),
	datac => \sMEMORY[3][14]~q\,
	datad => RD_IDX(3),
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X36_Y20_N10
\Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (RD_IDX(3) & ((\Mux1~7_combout\ & ((\sMEMORY[15][14]~q\))) # (!\Mux1~7_combout\ & (\sMEMORY[11][14]~q\)))) # (!RD_IDX(3) & (((\Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[11][14]~q\,
	datab => RD_IDX(3),
	datac => \sMEMORY[15][14]~q\,
	datad => \Mux1~7_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X40_Y22_N6
\sMEMORY[14][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[14][14]~feeder_combout\ = \sMEMORY~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~38_combout\,
	combout => \sMEMORY[14][14]~feeder_combout\);

-- Location: FF_X40_Y22_N7
\sMEMORY[14][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[14][14]~feeder_combout\,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][14]~q\);

-- Location: FF_X40_Y20_N17
\sMEMORY[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~38_combout\,
	sload => VCC,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][14]~q\);

-- Location: FF_X38_Y20_N17
\sMEMORY[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~38_combout\,
	sload => VCC,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][14]~q\);

-- Location: FF_X39_Y22_N11
\sMEMORY[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~38_combout\,
	sload => VCC,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][14]~q\);

-- Location: LCCOMB_X39_Y22_N10
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (RD_IDX(3) & (((RD_IDX(2))))) # (!RD_IDX(3) & ((RD_IDX(2) & (\sMEMORY[6][14]~q\)) # (!RD_IDX(2) & ((\sMEMORY[2][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[6][14]~q\,
	datac => \sMEMORY[2][14]~q\,
	datad => RD_IDX(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X40_Y20_N16
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (RD_IDX(3) & ((\Mux1~0_combout\ & (\sMEMORY[14][14]~q\)) # (!\Mux1~0_combout\ & ((\sMEMORY[10][14]~q\))))) # (!RD_IDX(3) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => \sMEMORY[14][14]~q\,
	datac => \sMEMORY[10][14]~q\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: FF_X37_Y19_N9
\sMEMORY[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~38_combout\,
	sload => VCC,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][14]~q\);

-- Location: FF_X36_Y19_N13
\sMEMORY[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~38_combout\,
	sload => VCC,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][14]~q\);

-- Location: LCCOMB_X37_Y19_N8
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (RD_IDX(2) & (RD_IDX(3))) # (!RD_IDX(2) & ((RD_IDX(3) & ((\sMEMORY[9][14]~q\))) # (!RD_IDX(3) & (\sMEMORY[1][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => RD_IDX(3),
	datac => \sMEMORY[1][14]~q\,
	datad => \sMEMORY[9][14]~q\,
	combout => \Mux1~2_combout\);

-- Location: FF_X37_Y19_N15
\sMEMORY[13][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~38_combout\,
	sload => VCC,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][14]~q\);

-- Location: FF_X38_Y20_N27
\sMEMORY[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~38_combout\,
	sload => VCC,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][14]~q\);

-- Location: LCCOMB_X37_Y19_N14
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (RD_IDX(2) & ((\Mux1~2_combout\ & (\sMEMORY[13][14]~q\)) # (!\Mux1~2_combout\ & ((\sMEMORY[5][14]~q\))))) # (!RD_IDX(2) & (\Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \Mux1~2_combout\,
	datac => \sMEMORY[13][14]~q\,
	datad => \sMEMORY[5][14]~q\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X39_Y18_N14
\sMEMORY[4][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[4][14]~feeder_combout\ = \sMEMORY~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~38_combout\,
	combout => \sMEMORY[4][14]~feeder_combout\);

-- Location: FF_X39_Y18_N15
\sMEMORY[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[4][14]~feeder_combout\,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][14]~q\);

-- Location: FF_X39_Y21_N29
\sMEMORY[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~38_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][14]~q\);

-- Location: LCCOMB_X40_Y21_N22
\sMEMORY[0][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[0][14]~feeder_combout\ = \sMEMORY~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~38_combout\,
	combout => \sMEMORY[0][14]~feeder_combout\);

-- Location: FF_X40_Y21_N23
\sMEMORY[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[0][14]~feeder_combout\,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][14]~q\);

-- Location: FF_X39_Y21_N19
\sMEMORY[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~38_combout\,
	sload => VCC,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][14]~q\);

-- Location: LCCOMB_X39_Y21_N18
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (RD_IDX(2) & (((RD_IDX(3))))) # (!RD_IDX(2) & ((RD_IDX(3) & ((\sMEMORY[8][14]~q\))) # (!RD_IDX(3) & (\sMEMORY[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[0][14]~q\,
	datab => RD_IDX(2),
	datac => \sMEMORY[8][14]~q\,
	datad => RD_IDX(3),
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X39_Y21_N28
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (RD_IDX(2) & ((\Mux1~4_combout\ & ((\sMEMORY[12][14]~q\))) # (!\Mux1~4_combout\ & (\sMEMORY[4][14]~q\)))) # (!RD_IDX(2) & (((\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[4][14]~q\,
	datab => RD_IDX(2),
	datac => \sMEMORY[12][14]~q\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X36_Y20_N20
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (RD_IDX(1) & (RD_IDX(0))) # (!RD_IDX(1) & ((RD_IDX(0) & (\Mux1~3_combout\)) # (!RD_IDX(0) & ((\Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(1),
	datab => RD_IDX(0),
	datac => \Mux1~3_combout\,
	datad => \Mux1~5_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X36_Y20_N22
\Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (RD_IDX(1) & ((\Mux1~6_combout\ & (\Mux1~8_combout\)) # (!\Mux1~6_combout\ & ((\Mux1~1_combout\))))) # (!RD_IDX(1) & (((\Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~8_combout\,
	datab => RD_IDX(1),
	datac => \Mux1~1_combout\,
	datad => \Mux1~6_combout\,
	combout => \Mux1~9_combout\);

-- Location: FF_X36_Y20_N23
\DATA_OUT[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux1~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[14]~reg0_q\);

-- Location: IOIBUF_X53_Y24_N22
\DATA_IN[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(15),
	o => \DATA_IN[15]~input_o\);

-- Location: LCCOMB_X41_Y21_N18
\sMEMORY~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY~39_combout\ = (\RST~input_o\ & \DATA_IN[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \DATA_IN[15]~input_o\,
	combout => \sMEMORY~39_combout\);

-- Location: LCCOMB_X40_Y22_N2
\sMEMORY[14][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[14][15]~feeder_combout\ = \sMEMORY~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~39_combout\,
	combout => \sMEMORY[14][15]~feeder_combout\);

-- Location: FF_X40_Y22_N3
\sMEMORY[14][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[14][15]~feeder_combout\,
	ena => \sMEMORY[14][9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[14][15]~q\);

-- Location: FF_X41_Y22_N3
\sMEMORY[15][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~39_combout\,
	sload => VCC,
	ena => \sMEMORY[15][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[15][15]~q\);

-- Location: FF_X41_Y21_N19
\sMEMORY[13][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY~39_combout\,
	ena => \sMEMORY[13][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[13][15]~q\);

-- Location: FF_X39_Y21_N7
\sMEMORY[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~39_combout\,
	sload => VCC,
	ena => \sMEMORY[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[12][15]~q\);

-- Location: LCCOMB_X39_Y21_N6
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (RD_IDX(0) & ((\sMEMORY[13][15]~q\) # ((RD_IDX(1))))) # (!RD_IDX(0) & (((\sMEMORY[12][15]~q\ & !RD_IDX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[13][15]~q\,
	datac => \sMEMORY[12][15]~q\,
	datad => RD_IDX(1),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X41_Y22_N2
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (RD_IDX(1) & ((\Mux0~7_combout\ & ((\sMEMORY[15][15]~q\))) # (!\Mux0~7_combout\ & (\sMEMORY[14][15]~q\)))) # (!RD_IDX(1) & (((\Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[14][15]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[15][15]~q\,
	datad => \Mux0~7_combout\,
	combout => \Mux0~8_combout\);

-- Location: FF_X39_Y18_N23
\sMEMORY[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~39_combout\,
	sload => VCC,
	ena => \sMEMORY[7][5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[7][15]~q\);

-- Location: FF_X38_Y18_N27
\sMEMORY[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~39_combout\,
	sload => VCC,
	ena => \sMEMORY[5][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[5][15]~q\);

-- Location: FF_X38_Y20_N21
\sMEMORY[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~39_combout\,
	sload => VCC,
	ena => \sMEMORY[6][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[6][15]~q\);

-- Location: FF_X39_Y18_N25
\sMEMORY[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~39_combout\,
	sload => VCC,
	ena => \sMEMORY[4][10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[4][15]~q\);

-- Location: LCCOMB_X39_Y18_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (RD_IDX(1) & ((\sMEMORY[6][15]~q\) # ((RD_IDX(0))))) # (!RD_IDX(1) & (((\sMEMORY[4][15]~q\ & !RD_IDX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[6][15]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[4][15]~q\,
	datad => RD_IDX(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X38_Y18_N26
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (RD_IDX(0) & ((\Mux0~0_combout\ & (\sMEMORY[7][15]~q\)) # (!\Mux0~0_combout\ & ((\sMEMORY[5][15]~q\))))) # (!RD_IDX(0) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[7][15]~q\,
	datac => \sMEMORY[5][15]~q\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X41_Y21_N0
\sMEMORY[1][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[1][15]~feeder_combout\ = \sMEMORY~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~39_combout\,
	combout => \sMEMORY[1][15]~feeder_combout\);

-- Location: FF_X41_Y21_N1
\sMEMORY[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[1][15]~feeder_combout\,
	ena => \sMEMORY[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[1][15]~q\);

-- Location: FF_X40_Y21_N27
\sMEMORY[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~39_combout\,
	sload => VCC,
	ena => \sMEMORY[3][15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[3][15]~q\);

-- Location: FF_X40_Y21_N13
\sMEMORY[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~39_combout\,
	sload => VCC,
	ena => \sMEMORY[0][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[0][15]~q\);

-- Location: LCCOMB_X40_Y22_N12
\sMEMORY[2][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sMEMORY[2][15]~feeder_combout\ = \sMEMORY~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sMEMORY~39_combout\,
	combout => \sMEMORY[2][15]~feeder_combout\);

-- Location: FF_X40_Y22_N13
\sMEMORY[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sMEMORY[2][15]~feeder_combout\,
	ena => \sMEMORY[2][14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[2][15]~q\);

-- Location: LCCOMB_X40_Y21_N12
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (RD_IDX(0) & (RD_IDX(1))) # (!RD_IDX(0) & ((RD_IDX(1) & ((\sMEMORY[2][15]~q\))) # (!RD_IDX(1) & (\sMEMORY[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => RD_IDX(1),
	datac => \sMEMORY[0][15]~q\,
	datad => \sMEMORY[2][15]~q\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X40_Y21_N26
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (RD_IDX(0) & ((\Mux0~4_combout\ & ((\sMEMORY[3][15]~q\))) # (!\Mux0~4_combout\ & (\sMEMORY[1][15]~q\)))) # (!RD_IDX(0) & (((\Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(0),
	datab => \sMEMORY[1][15]~q\,
	datac => \sMEMORY[3][15]~q\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: FF_X40_Y20_N9
\sMEMORY[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~39_combout\,
	sload => VCC,
	ena => \sMEMORY[10][3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[10][15]~q\);

-- Location: FF_X40_Y20_N3
\sMEMORY[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~39_combout\,
	sload => VCC,
	ena => \sMEMORY[11][10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[11][15]~q\);

-- Location: FF_X36_Y19_N7
\sMEMORY[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~39_combout\,
	sload => VCC,
	ena => \sMEMORY[9][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[9][15]~q\);

-- Location: FF_X36_Y19_N1
\sMEMORY[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sMEMORY~39_combout\,
	sload => VCC,
	ena => \sMEMORY[8][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sMEMORY[8][15]~q\);

-- Location: LCCOMB_X36_Y19_N0
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (RD_IDX(0) & ((\sMEMORY[9][15]~q\) # ((RD_IDX(1))))) # (!RD_IDX(0) & (((\sMEMORY[8][15]~q\ & !RD_IDX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[9][15]~q\,
	datab => RD_IDX(0),
	datac => \sMEMORY[8][15]~q\,
	datad => RD_IDX(1),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X40_Y20_N2
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (RD_IDX(1) & ((\Mux0~2_combout\ & ((\sMEMORY[11][15]~q\))) # (!\Mux0~2_combout\ & (\sMEMORY[10][15]~q\)))) # (!RD_IDX(1) & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMEMORY[10][15]~q\,
	datab => RD_IDX(1),
	datac => \sMEMORY[11][15]~q\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X41_Y22_N12
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (RD_IDX(3) & ((RD_IDX(2)) # ((\Mux0~3_combout\)))) # (!RD_IDX(3) & (!RD_IDX(2) & (\Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(3),
	datab => RD_IDX(2),
	datac => \Mux0~5_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X41_Y22_N22
\Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (RD_IDX(2) & ((\Mux0~6_combout\ & (\Mux0~8_combout\)) # (!\Mux0~6_combout\ & ((\Mux0~1_combout\))))) # (!RD_IDX(2) & (((\Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RD_IDX(2),
	datab => \Mux0~8_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~6_combout\,
	combout => \Mux0~9_combout\);

-- Location: FF_X41_Y22_N23
\DATA_OUT[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux0~9_combout\,
	ena => \DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_OUT[15]~reg0_q\);

-- Location: LCCOMB_X41_Y18_N2
\sALMOST_EMPTY~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_EMPTY~6_combout\ = \sALMOST_EMPTY~4_combout\ $ (((!\sALMOST_EMPTY~5_combout\ & \sEMPTY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sALMOST_EMPTY~4_combout\,
	datac => \sALMOST_EMPTY~5_combout\,
	datad => \sEMPTY~q\,
	combout => \sALMOST_EMPTY~6_combout\);

-- Location: LCCOMB_X41_Y19_N12
\sALMOST_FULL~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sALMOST_FULL~6_combout\ = (!\SUB~0_combout\ & ((\sFULL~q\) # ((\sALMOST_FULL~5_combout\) # (\sALMOST_FULL~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sFULL~q\,
	datab => \sALMOST_FULL~5_combout\,
	datac => \sALMOST_FULL~3_combout\,
	datad => \SUB~0_combout\,
	combout => \sALMOST_FULL~6_combout\);

-- Location: LCCOMB_X40_Y19_N24
\ILLEGAL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ILLEGAL~0_combout\ = (!\RD_EN~input_o\ & ((\WR_EN~input_o\ & ((\sFULL~q\))) # (!\WR_EN~input_o\ & (\ILLEGAL~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_EN~input_o\,
	datab => \ILLEGAL~reg0_q\,
	datac => \WR_EN~input_o\,
	datad => \sFULL~q\,
	combout => \ILLEGAL~0_combout\);

-- Location: LCCOMB_X40_Y19_N20
\ILLEGAL~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ILLEGAL~1_combout\ = (\ILLEGAL~0_combout\) # ((\RD_EN~input_o\ & \sEMPTY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_EN~input_o\,
	datac => \sEMPTY~q\,
	datad => \ILLEGAL~0_combout\,
	combout => \ILLEGAL~1_combout\);

-- Location: FF_X40_Y19_N21
\ILLEGAL~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ILLEGAL~1_combout\,
	sclr => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ILLEGAL~reg0_q\);

-- Location: LCCOMB_X43_Y19_N8
\R_IDX[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_IDX[0]~5_combout\ = R_IDX(0) $ (VCC)
-- \R_IDX[0]~6\ = CARRY(R_IDX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => R_IDX(0),
	datad => VCC,
	combout => \R_IDX[0]~5_combout\,
	cout => \R_IDX[0]~6\);

-- Location: LCCOMB_X43_Y19_N10
\R_IDX[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_IDX[1]~8_combout\ = (\sALMOST_EMPTY~5_combout\ & ((R_IDX(1) & (!\R_IDX[0]~6\)) # (!R_IDX(1) & ((\R_IDX[0]~6\) # (GND))))) # (!\sALMOST_EMPTY~5_combout\ & ((R_IDX(1) & (\R_IDX[0]~6\ & VCC)) # (!R_IDX(1) & (!\R_IDX[0]~6\))))
-- \R_IDX[1]~9\ = CARRY((\sALMOST_EMPTY~5_combout\ & ((!\R_IDX[0]~6\) # (!R_IDX(1)))) # (!\sALMOST_EMPTY~5_combout\ & (!R_IDX(1) & !\R_IDX[0]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sALMOST_EMPTY~5_combout\,
	datab => R_IDX(1),
	datad => VCC,
	cin => \R_IDX[0]~6\,
	combout => \R_IDX[1]~8_combout\,
	cout => \R_IDX[1]~9\);

-- Location: FF_X43_Y19_N11
\R_IDX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R_IDX[1]~8_combout\,
	sclr => \ALT_INV_RST~input_o\,
	ena => \R_IDX[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_IDX(1));

-- Location: LCCOMB_X43_Y19_N12
\R_IDX[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_IDX[2]~10_combout\ = ((\sALMOST_EMPTY~5_combout\ $ (R_IDX(2) $ (\R_IDX[1]~9\)))) # (GND)
-- \R_IDX[2]~11\ = CARRY((\sALMOST_EMPTY~5_combout\ & (R_IDX(2) & !\R_IDX[1]~9\)) # (!\sALMOST_EMPTY~5_combout\ & ((R_IDX(2)) # (!\R_IDX[1]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sALMOST_EMPTY~5_combout\,
	datab => R_IDX(2),
	datad => VCC,
	cin => \R_IDX[1]~9\,
	combout => \R_IDX[2]~10_combout\,
	cout => \R_IDX[2]~11\);

-- Location: FF_X43_Y19_N13
\R_IDX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R_IDX[2]~10_combout\,
	sclr => \ALT_INV_RST~input_o\,
	ena => \R_IDX[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_IDX(2));

-- Location: LCCOMB_X43_Y19_N14
\R_IDX[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_IDX[3]~12_combout\ = (\sALMOST_EMPTY~5_combout\ & ((R_IDX(3) & (!\R_IDX[2]~11\)) # (!R_IDX(3) & ((\R_IDX[2]~11\) # (GND))))) # (!\sALMOST_EMPTY~5_combout\ & ((R_IDX(3) & (\R_IDX[2]~11\ & VCC)) # (!R_IDX(3) & (!\R_IDX[2]~11\))))
-- \R_IDX[3]~13\ = CARRY((\sALMOST_EMPTY~5_combout\ & ((!\R_IDX[2]~11\) # (!R_IDX(3)))) # (!\sALMOST_EMPTY~5_combout\ & (!R_IDX(3) & !\R_IDX[2]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sALMOST_EMPTY~5_combout\,
	datab => R_IDX(3),
	datad => VCC,
	cin => \R_IDX[2]~11\,
	combout => \R_IDX[3]~12_combout\,
	cout => \R_IDX[3]~13\);

-- Location: FF_X43_Y19_N15
\R_IDX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R_IDX[3]~12_combout\,
	sclr => \ALT_INV_RST~input_o\,
	ena => \R_IDX[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_IDX(3));

-- Location: LCCOMB_X43_Y19_N22
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (R_IDX(2)) # ((R_IDX(3)) # ((R_IDX(0)) # (R_IDX(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R_IDX(2),
	datab => R_IDX(3),
	datac => R_IDX(0),
	datad => R_IDX(1),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X43_Y19_N16
\R_IDX[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_IDX[4]~14_combout\ = \sALMOST_EMPTY~5_combout\ $ (\R_IDX[3]~13\ $ (R_IDX(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sALMOST_EMPTY~5_combout\,
	datad => R_IDX(4),
	cin => \R_IDX[3]~13\,
	combout => \R_IDX[4]~14_combout\);

-- Location: FF_X43_Y19_N17
\R_IDX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R_IDX[4]~14_combout\,
	sclr => \ALT_INV_RST~input_o\,
	ena => \R_IDX[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_IDX(4));

-- Location: LCCOMB_X43_Y19_N20
\SUB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUB~1_combout\ = (\SUB~0_combout\ & (!\sALMOST_EMPTY~2_combout\ & ((\LessThan2~0_combout\) # (R_IDX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => R_IDX(4),
	datac => \SUB~0_combout\,
	datad => \sALMOST_EMPTY~2_combout\,
	combout => \SUB~1_combout\);

-- Location: LCCOMB_X43_Y19_N2
\R_IDX[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_IDX[0]~7_combout\ = ((\sALMOST_EMPTY~5_combout\) # (\SUB~1_combout\)) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \sALMOST_EMPTY~5_combout\,
	datad => \SUB~1_combout\,
	combout => \R_IDX[0]~7_combout\);

-- Location: FF_X43_Y19_N9
\R_IDX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R_IDX[0]~5_combout\,
	sclr => \ALT_INV_RST~input_o\,
	ena => \R_IDX[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_IDX(0));

ww_DATA_OUT(0) <= \DATA_OUT[0]~output_o\;

ww_DATA_OUT(1) <= \DATA_OUT[1]~output_o\;

ww_DATA_OUT(2) <= \DATA_OUT[2]~output_o\;

ww_DATA_OUT(3) <= \DATA_OUT[3]~output_o\;

ww_DATA_OUT(4) <= \DATA_OUT[4]~output_o\;

ww_DATA_OUT(5) <= \DATA_OUT[5]~output_o\;

ww_DATA_OUT(6) <= \DATA_OUT[6]~output_o\;

ww_DATA_OUT(7) <= \DATA_OUT[7]~output_o\;

ww_DATA_OUT(8) <= \DATA_OUT[8]~output_o\;

ww_DATA_OUT(9) <= \DATA_OUT[9]~output_o\;

ww_DATA_OUT(10) <= \DATA_OUT[10]~output_o\;

ww_DATA_OUT(11) <= \DATA_OUT[11]~output_o\;

ww_DATA_OUT(12) <= \DATA_OUT[12]~output_o\;

ww_DATA_OUT(13) <= \DATA_OUT[13]~output_o\;

ww_DATA_OUT(14) <= \DATA_OUT[14]~output_o\;

ww_DATA_OUT(15) <= \DATA_OUT[15]~output_o\;

ww_EMPTY <= \EMPTY~output_o\;

ww_FULL <= \FULL~output_o\;

ww_ALMOST_EMPTY <= \ALMOST_EMPTY~output_o\;

ww_ALMOST_FULL <= \ALMOST_FULL~output_o\;

ww_ILLEGAL <= \ILLEGAL~output_o\;

ww_DATA_COUNT(0) <= \DATA_COUNT[0]~output_o\;

ww_DATA_COUNT(1) <= \DATA_COUNT[1]~output_o\;

ww_DATA_COUNT(2) <= \DATA_COUNT[2]~output_o\;

ww_DATA_COUNT(3) <= \DATA_COUNT[3]~output_o\;

ww_DATA_COUNT(4) <= \DATA_COUNT[4]~output_o\;
END structure;


