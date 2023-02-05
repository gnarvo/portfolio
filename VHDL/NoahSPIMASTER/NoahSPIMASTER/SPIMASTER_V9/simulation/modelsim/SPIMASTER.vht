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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/02/2020 13:17:13"
                                                            
-- Vhdl Test Bench template for design  :  SPIMASTER
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SPI_Master_TB is
end entity SPI_Master_TB;

architecture TB of SPI_Master_TB is

  constant MODE : integer := 3; -- CPOL = 1, CPHA = 1
  constant CLK_DIV : integer := 25; --creates 1MHz spi clock
  constant ADDR_WIDTH : integer  := 4; --address width
  constant N : integer := 16;

  signal RST    : std_logic := '0';
  signal sSPI_CLK  : std_logic;
  signal CLK      : std_logic := '0';
  signal MOSI : std_logic := '0';
  signal MISO : std_logic := '0';
  signal TX_DATA  : std_logic_vector((N-1) downto 0) := "0100100100100000";
  signal TX_DV    : std_logic := '0';
  signal CS     : std_logic := '1';
  signal TX_Ready : std_logic;
  signal RX_DV    : std_logic := '0';
  signal RX_DATA  : std_logic_vector((N-1) downto 0) := "0000000000000000";
  signal CPOL : std_logic := '1';
  signal CPHA : std_logic := '1';
  
constant PERIOD : time := 20 ns; --gives 50MHz clk
--simulating the miso 
signal MISO_DATA : std_logic_vector((N-1) downto 0);

begin


  -- Instantiate Master
  UUT : entity work.SPIMASTER
    generic map (
      MODE => MODE,
      CLK_DIV => CLK_DIV,
      ADDR_WIDTH => ADDR_WIDTH,
      N => N
    )
    port map (
      RST    => RST,           
      CLK      => CLK,    
      TX_DATA  => TX_DATA,          
      TX_DV    => TX_DV,          
      START_TX => TX_Ready,  
      RX_DV    => RX_DV,            
      RX_DATA  => RX_DATA,    
      SPI_CLK  => sSPI_CLK, 
      MISO => MISO,
      MOSI => MOSI,
      CPOL => CPOL,
      CPHA => CPHA
    );
      
	CLOCK: PROCESS --50MHz 
	BEGIN
	
		CLK <= '1';
		WAIT FOR PERIOD/2;
		CLK <= '0';
		WAIT FOR PERIOD/2;

	END PROCESS;

  Testing : process
  begin

		--SET UP
		RST <= '0';
		RX_DV <= '0';
		MOSI <= '0';
		CS <= '1';
		CPOL <= '1';
		CPHA <= '1';
		MISO <= '0';
		wait for 100 ns;
		RST <= '1';
   		TX_DV <= '0';
		MOSI <= '0';
		CS <= '0';
		WAIT FOR 500 NS;
		
		--i have added various waits to space out the simulation
		--for the presentation and for ensuring you see the spi clock
		--------------------------------------------------------------
		--TEST TX 1: load the first piece of data and set data valid high
			wait for 100 ns;
			TX_DATA <= "0000111111110000";
			TX_DV <= '1';
			wait for 20 ns;
			TX_DV <= '0';
		
		wait for 500 ns; 
		--------------------------------------------------------------
		--TEST RX 1
		--proof that transmitting data and receiving the same data
		--is achievable through setting receive data high
			wait for 100 ns;
			RX_DV <= '1';
			wait for 20 ns;
			RX_DV <= '0';
			wait for 100 ns;	
		--------------------------------------------------------------
		--TEST TX 2: load the first piece of data and set data valid high
			wait for 100 ns;
			TX_DATA <= "0000111100000000";
			TX_DV <= '1';
			wait for 20 ns;
			TX_DV <= '0';
			wait for 500 ns; 
		--------------------------------------------------------------
		--TEST RX 2: altered to prove miso works
			wait for 100 ns;
			RX_DV <= '1';
			wait for 20 ns;
			RX_DV <= '0';
			wait for 150 ns;	
		--proof that data being receieved on the rx line can also
		--be placed on the miso line
		for i in 0 to 15 loop
			if RX_DATA(i) = '1' then
				MISO <= '1';
				wait for 50 ns;
			else
				MISO <= '0';
				wait for 50 ns;
			end if;
		end loop;
		----------------------------------------------
		wait for 200 ns;

		--proof that entirely separate data can come into the master 
		--and be turned into highs and lows on the miso line
			MISO_DATA <= "0000110000110001";
			wait for 50 ns;

				for i in 0 to 15 loop
					if MISO_DATA(i) = '1' then
						MISO <= '1';
						wait for 50 ns;
					else
						MISO <= '0';
						wait for 50 ns;
					end if;
				end loop;
		-------------------------------------------------
		
		
      wait; 
   END PROCESS testing;

end architecture TB;

