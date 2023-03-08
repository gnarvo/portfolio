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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/20/2020 13:42:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SPIMASTER
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SPIMASTER_vhd_vec_tst IS
END SPIMASTER_vhd_vec_tst;
ARCHITECTURE SPIMASTER_arch OF SPIMASTER_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL RX_DATA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RX_PULSE : STD_LOGIC;
SIGNAL SClk : STD_LOGIC;
SIGNAL SPI_MISO : STD_LOGIC;
SIGNAL SPI_MOSI : STD_LOGIC;
SIGNAL TX_DATA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL TX_PULSE : STD_LOGIC;
SIGNAL TX_RDY : STD_LOGIC;
COMPONENT SPIMASTER
	PORT (
	CLK : IN STD_LOGIC;
	RST : IN STD_LOGIC;
	RX_DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RX_PULSE : OUT STD_LOGIC;
	SClk : OUT STD_LOGIC;
	SPI_MISO : IN STD_LOGIC;
	SPI_MOSI : OUT STD_LOGIC;
	TX_DATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	TX_PULSE : IN STD_LOGIC;
	TX_RDY : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SPIMASTER
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	RST => RST,
	RX_DATA => RX_DATA,
	RX_PULSE => RX_PULSE,
	SClk => SClk,
	SPI_MISO => SPI_MISO,
	SPI_MOSI => SPI_MOSI,
	TX_DATA => TX_DATA,
	TX_PULSE => TX_PULSE,
	TX_RDY => TX_RDY
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 500000 ps;
	CLK <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;
-- TX_DATA[7]
t_prcs_TX_DATA_7: PROCESS
BEGIN
	TX_DATA(7) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(7) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(7) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(7) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(7) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(7) <= '0';
	WAIT FOR 12000000 ps;
	TX_DATA(7) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(7) <= '0';
	WAIT FOR 10000000 ps;
	TX_DATA(7) <= '1';
	WAIT FOR 6000000 ps;
	TX_DATA(7) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(7) <= '1';
	WAIT FOR 6000000 ps;
	TX_DATA(7) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(7) <= '1';
	WAIT FOR 6000000 ps;
	TX_DATA(7) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(7) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(7) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(7) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(7) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(7) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(7) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(7) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(7) <= '0';
WAIT;
END PROCESS t_prcs_TX_DATA_7;
-- TX_DATA[6]
t_prcs_TX_DATA_6: PROCESS
BEGIN
	TX_DATA(6) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '1';
	WAIT FOR 10000000 ps;
	TX_DATA(6) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(6) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(6) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(6) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(6) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(6) <= '1';
	WAIT FOR 6000000 ps;
	TX_DATA(6) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(6) <= '1';
	WAIT FOR 6000000 ps;
	TX_DATA(6) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(6) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(6) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(6) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(6) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(6) <= '1';
WAIT;
END PROCESS t_prcs_TX_DATA_6;
-- TX_DATA[5]
t_prcs_TX_DATA_5: PROCESS
BEGIN
	TX_DATA(5) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(5) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(5) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(5) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(5) <= '1';
	WAIT FOR 12000000 ps;
	TX_DATA(5) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(5) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(5) <= '1';
	WAIT FOR 6000000 ps;
	TX_DATA(5) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(5) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(5) <= '1';
	WAIT FOR 6000000 ps;
	TX_DATA(5) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(5) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(5) <= '0';
WAIT;
END PROCESS t_prcs_TX_DATA_5;
-- TX_DATA[4]
t_prcs_TX_DATA_4: PROCESS
BEGIN
	TX_DATA(4) <= '1';
	WAIT FOR 6000000 ps;
	TX_DATA(4) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(4) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(4) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(4) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(4) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(4) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(4) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(4) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(4) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(4) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(4) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(4) <= '1';
	WAIT FOR 6000000 ps;
	TX_DATA(4) <= '0';
	WAIT FOR 14000000 ps;
	TX_DATA(4) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(4) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(4) <= '1';
	WAIT FOR 8000000 ps;
	TX_DATA(4) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(4) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(4) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(4) <= '1';
	WAIT FOR 6000000 ps;
	TX_DATA(4) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(4) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(4) <= '0';
WAIT;
END PROCESS t_prcs_TX_DATA_4;
-- TX_DATA[3]
t_prcs_TX_DATA_3: PROCESS
BEGIN
	TX_DATA(3) <= '1';
	WAIT FOR 10000000 ps;
	TX_DATA(3) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(3) <= '1';
	WAIT FOR 10000000 ps;
	TX_DATA(3) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(3) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(3) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(3) <= '1';
	WAIT FOR 10000000 ps;
	TX_DATA(3) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(3) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(3) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(3) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(3) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(3) <= '1';
	WAIT FOR 6000000 ps;
	TX_DATA(3) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(3) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(3) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(3) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(3) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(3) <= '1';
	WAIT FOR 12000000 ps;
	TX_DATA(3) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(3) <= '1';
WAIT;
END PROCESS t_prcs_TX_DATA_3;
-- TX_DATA[2]
t_prcs_TX_DATA_2: PROCESS
BEGIN
	TX_DATA(2) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(2) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(2) <= '1';
	WAIT FOR 6000000 ps;
	TX_DATA(2) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(2) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(2) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(2) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(2) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(2) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(2) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(2) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(2) <= '0';
	WAIT FOR 8000000 ps;
	TX_DATA(2) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(2) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(2) <= '1';
	WAIT FOR 18000000 ps;
	TX_DATA(2) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(2) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(2) <= '0';
	WAIT FOR 10000000 ps;
	TX_DATA(2) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(2) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(2) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(2) <= '0';
WAIT;
END PROCESS t_prcs_TX_DATA_2;
-- TX_DATA[1]
t_prcs_TX_DATA_1: PROCESS
BEGIN
	TX_DATA(1) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(1) <= '1';
	WAIT FOR 6000000 ps;
	TX_DATA(1) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(1) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(1) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(1) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(1) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(1) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '1';
	WAIT FOR 6000000 ps;
	TX_DATA(1) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(1) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(1) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(1) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(1) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(1) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(1) <= '1';
WAIT;
END PROCESS t_prcs_TX_DATA_1;
-- TX_DATA[0]
t_prcs_TX_DATA_0: PROCESS
BEGIN
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 6000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 4000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 4000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 14000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 8000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '1';
	WAIT FOR 2000000 ps;
	TX_DATA(0) <= '0';
WAIT;
END PROCESS t_prcs_TX_DATA_0;

-- TX_PULSE
t_prcs_TX_PULSE: PROCESS
BEGIN
	TX_PULSE <= '0';
	WAIT FOR 2560000 ps;
	TX_PULSE <= '1';
	WAIT FOR 2560000 ps;
	TX_PULSE <= '0';
WAIT;
END PROCESS t_prcs_TX_PULSE;

-- SPI_MISO
t_prcs_SPI_MISO: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		SPI_MISO <= '0';
		WAIT FOR 4000000 ps;
		SPI_MISO <= '1';
		WAIT FOR 4000000 ps;
	END LOOP;
	SPI_MISO <= '0';
WAIT;
END PROCESS t_prcs_SPI_MISO;
END SPIMASTER_arch;
