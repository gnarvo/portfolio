--SPI MASTER V9

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity SPIMASTER is
  generic (
    MODE    : integer := 3; --set to 0 as default
    CLK_DIV : integer := 25; --edges per clock cycle
    ADDR_WIDTH : integer  := 4; --address width, USED FOR COUNTING BYTES
    N : integer := 16 --16-bits of data
    );
  port (
   RST : in std_logic;  
   CLK   : in std_logic;
	CS : out std_logic;
   START_TX : buffer std_logic; --when high, ready for next transmission
   TX_DATA   : in std_logic_vector((N-1) downto 0); --byte being transmitted on mosi
   TX_DV    : in std_logic; --data loaded, transmission complete
   RX_DATA : out std_logic_vector((N-1) downto 0); --byte being received on miso
   RX_DV   : in std_logic; --data loaded, receive complete
   SPI_CLK  : out std_logic; --spi clock
   MISO : in  std_logic; --master in slave out
   MOSI : out std_logic; --master in slave out
   CPOL : out std_logic;
   CPHA : out std_logic
   );

end entity SPIMASTER;

architecture SPIarch of SPIMASTER is

--array and signal to store data in so it can be transfered from data in to data out
	type MEMORY is array (0 to ((2**ADDR_WIDTH)-1)) of std_logic_vector((N-1) downto 0);
	signal sMEMORY: MEMORY;
	
	signal RX_IDX : std_logic_vector((ADDR_WIDTH-1) downto 0);
	signal TX_IDX : std_logic_vector((ADDR_WIDTH-1) downto 0);

  signal sCPOL : std_logic;     -- Clock polarity
  signal sCPHA : std_logic;     -- Clock phase
  signal sSCLK_C : integer range 0 to ((CLK_DIV*2)-1); --spi clock counter
  signal sSPI_CLK : std_logic; --spi clock signal
  signal sSCLK_T : integer range 0 to 16; --spi clock toggles
  signal sLEDGE  : std_logic; --leading edge
  signal sTEDGE : std_logic; --trailing edge
  signal sTX_DV : std_logic; --transmitted data is valid when high
  signal sRX_DV : std_logic;
  signal sTX_DATA : std_logic_vector((N-1)downto 0);
  signal sRX_DATA : std_logic_vector((N-1)downto 0);
  signal sMOSI : std_logic;

--track the number of bits sent (out of 8) using binary
--we tried to make these integers but kept gettings errors
--with conversions.

begin

	--SPI CLOCK GENERATION
	--spi clock will follow the mode set
	SCLK_GEN: PROCESS (CLK, RST)
	BEGIN
	--this process means that the clock 
	--starts in the correct idle state
		if RST = '0' then
			SPI_CLK  <= sCPOL;
		elsif rising_edge(CLK) then
			SPI_CLK <= sSPI_CLK;
		end if;
	END PROCESS SCLK_GEN;
	
	--SETTING CLOCK PHASE AND POLARITY
	--This was updated to make my code more transferable
	--Instead of just stating the polarity and phase, I give 
	--I provide the user with the option to simply
	--change the mode..
	CPOL <= '1';
	CPHA <= '1';
	sCPOL <= '1' when (MODE = 2) or (MODE = 3) else '0';
	sCPHA <= '1' when (MODE = 1) or (MODE = 3) else '0';

	--DATA TRANSFER: 
	DATA_TRANSFER : PROCESS(CLK)   		
	BEGIN
		if rising_edge(CLK) then
			if(RST = '0') then
				sMEMORY <= (others => (others => '0')); --clear the memory 
				CS <= '1'; --chip select is only high when idle 
				MOSI <= '0'; --mosi always stays low
			else
				--------------------------------------------------------------------------------
				if(TX_DV = '1') then
					sMEMORY(conv_integer(TX_IDX)) <= TX_DATA; --pass data to memory
					--sMEMORY(to_integer(unsigned(TX_IDX)) <= TX_DATA; --pass data to memory
					CS <= '0'; --chip select goes low	
					MOSI <= '0';
				end if;
				--------------------------------------------------------------------------------
				if(RX_DV = '1') then
					RX_DATA <= sMEMORY(conv_integer(RX_IDX)); --retreive data from memory
					--RX_DATA <= sMEMORY(to_integer(unsigned(RX_IDX))); --retreive data from memory
					CS <= '0';
					MOSI <= '0'; 
				end if;
				--------------------------------------------------------------------------------
			end if;
		end if;
	END PROCESS;
  
	--SPI CLOCK CYCLE
	--Asserting the leading and trailing edges in accordance
	--to the spi clock toggle count and cycle count.
	SCLK_CYCLE: PROCESS (CLK, RST)
	BEGIN
		if RST = '0' then
		--assert default conditions
			START_TX   <= '0'; --start is low
			sSCLK_T <= 0; --set the number of times the spi clock has
			--had a leading/falling edge to 0
			sLEDGE  <= '0';
			sTEDGE <= '0';
			--start as high
			sSPI_CLK <= sCPOL; -- assign default state to idle state
			sSCLK_C <= 0; --set the spi clock count to 0
		elsif rising_edge(CLK) then
		--assert default conditions, no transmissions yet
			sLEDGE  <= '0';
			sTEDGE <= '0';
			--can start a transmission from this point onwards
			-----------------------------------------------------------
			if TX_DV = '1' then --if the data is being transmitted
				START_TX <= '1'; --cannot start another so start is low
				sSCLK_T <= 16;  --toggles per byte = 16
			elsif sSCLK_T > 0 then
				START_TX <= '0'; --cannot start a transmission unless
				--all 8-bits have finished transmitting
				--giving 16 clock edges give plenty of time
		  -----------------------------------------------------------
				--TRAILING EDGE CASE
				if sSCLK_C = ((CLK_DIV*2)-1) then --sclk count = 3
					sSCLK_T <= sSCLK_T - 1; --decrement toggle count
					sTEDGE <= '1'; --set trailing edge high
					sSCLK_C  <= 0; --sclk count set to 0
					sSPI_CLK <= not sSPI_CLK ; --toggle the spi clock
					sMOSI <= NOT sMOSI; --toggle mosi on trailing edge
		  -----------------------------------------------------------
				--LEADING EDGE CASE	
				elsif sSCLK_C = (CLK_DIV-1) then --sclk count = 1
					sSCLK_T <= sSCLK_T - 1; --decrement toggle count
					sLEDGE  <= '1'; --set leading edge high
					sSCLK_C <= sSCLK_C + 1; --increment sclk count
					sSPI_CLK <= not sSPI_CLK ; --toggle the spi clock
		  -----------------------------------------------------------
				else
					sSCLK_C <= sSCLK_C + 1; --incremen sclk count
				end if;
			else
			--now ready for another transmission
			--nothing else is currently happening
			--start another transmission
        START_TX <= '1'; --transmitter ready to send more data
      end if;
    end if;
  end process SCLK_CYCLE;

end architecture SPIarch;