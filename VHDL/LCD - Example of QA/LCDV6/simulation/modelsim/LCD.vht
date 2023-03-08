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
-- Generated on "04/19/2020 18:36:52"
                                                            
-- Vhdl Test Bench template for design  :  LCD
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LCD_vhd_tst IS
END LCD_vhd_tst;
ARCHITECTURE LCD_arch OF LCD_vhd_tst IS
-- constants                                                 
-- signals                                                   
--SIGNAL check : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL Control_Data : STD_LOGIC;
SIGNAL Data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Data_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Enable : STD_LOGIC;
SIGNAL LCD_On : STD_LOGIC;
SIGNAL Read_Write : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT LCD
	PORT (
	--check : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	clock : OUT STD_LOGIC;
	Control_Data : OUT STD_LOGIC;
	Data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Enable : OUT STD_LOGIC;
	LCD_On : OUT STD_LOGIC;
	Read_Write : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : LCD
	PORT MAP (
-- list connections between master ports and signals
	--check => check,
	clock => clock,
	Control_Data => Control_Data,
	Data_in => Data_in,
	Data_out => Data_out,
	Enable => Enable,
	LCD_On => LCD_On,
	Read_Write => Read_Write,
	reset => reset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once   
		reset<='0'; wait for 15 ms;

		Data_in<= "01101010"; wait for 2 ms;

		Data_in<="01100001"; wait for 2 ms;  
		
		reset<='1'; wait for 20 ns;

		Data_in<="01101000"; wait for 4 ms;

		reset<='0'; wait for 15 ms;
		
		Data_in<="01001010"; wait for 2 ms;                 
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		
WAIT;                                                        
END PROCESS always;                                          
END LCD_arch;
