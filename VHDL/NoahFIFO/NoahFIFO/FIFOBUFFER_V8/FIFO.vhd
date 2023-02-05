library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FIFO is
	generic(
		DATA_WIDTH : integer  := 16; --16-bits of data
		DEPTH : integer  := 16; --determines depth of fifo, used for tracking in the 
		--controlling data transfer process
		
		--consider defining flags here
		--v for defining the value at which we consider the fifo to be almost empty/full
		vA_F	: integer 	:= 1;	-- fifo flag for almost full regs away from empty fifo
		vA_E	: integer	:= 1;	-- fifo regs away from empty fifo
		
		ADDR_WIDTH : integer  := 4 --address width, used to tracking how many
		--bits have been transferred/received
		);
			
	port( 
		CLK : in std_logic;
		RST : in std_logic;
			
		--DATA
		DATA_IN : in std_logic_vector((DATA_WIDTH-1) downto 0); 
		DATA_OUT: out std_logic_vector((DATA_WIDTH-1) downto 0); 
			
		--ENABLES
		RD_EN : in std_logic; 		-- read enable 
		WR_EN	: in std_logic; 		-- write enable 
			
		--FLAGS
		EMPTY : out std_logic; 
		FULL : out std_logic; 
			
		--very important to differentiate between the values and the ports
	  	ALMOST_EMPTY		: out std_logic;
		ALMOST_FULL 		: out std_logic;
		ILLEGAL	: out std_logic; --error output
			
		--UPGRADED TO INCLUDE A COUNT
		DATA_COUNT : out std_logic_vector(ADDR_WIDTH downto 0)
		
		);
end FIFO;

architecture FIFOarch of FIFO is

	--array and signal to store data in so it can be transfered from data in to data out
	type MEMORY is array (0 to ((2**ADDR_WIDTH)-1)) of std_logic_vector((DATA_WIDTH-1) downto 0);
	signal sMEMORY: MEMORY ;
	
	signal RD_IDX : std_logic_vector((ADDR_WIDTH-1) downto 0);--count reads
	signal WR_IDX : std_logic_vector((ADDR_WIDTH-1) downto 0);--counts writes
	
	--circular buffer parameters
	signal TAIL : std_logic_vector((ADDR_WIDTH-1) downto 0);
	signal HEAD : std_logic_vector((ADDR_WIDTH-1) downto 0);
	
		--THESE ARE ALL OF THE SAME TYPE SO I COULD DEFINE THEM TOGETHER
	signal sFULL : std_logic; --full
	signal sEMPTY : std_logic; --empty
	signal sALMOST_FULL : std_logic; --one more space left until full
	signal sALMOST_EMPTY : std_logic; --one more space left until empty
	signal R_IDX : std_logic_vector(ADDR_WIDTH downto 0);  -- data counter
	signal N_IDX : std_logic_vector(ADDR_WIDTH downto 0);  -- data counter
		--when to perform which: this is for the counting of spaces
		--used to calculate current space in the fifo
	signal ADD : std_logic; --addition performed when high
	signal SUB : std_logic; --subtraction performed when high
	
begin

	--TRACKING SPACES: issue with not telling it what to do when neither occur is
	--now fixed
	N_IDX <= R_IDX + 1 when ADD = '1' else --increment when addition is high
		R_IDX - 1 when SUB = '1' else --decrement when subtraction is high
				R_IDX; --if neither add ors sub is high, leave count as is
		
	--send signals to their respective outputs
	full <= sFULL;
	empty <= sEMPTY;
	ALMOST_EMPTY <= sALMOST_EMPTY; 
	ALMOST_FULL <= sALMOST_FULL;
	data_count <= R_IDX;

	--DATA TRANSFER: what to do in the case of a read or write
		--this has been improved to make it clear that a write must
		--only be performed if the fifo isn't full
		--reads are only performed when the fifo isn't empty
		--we added error cases for testing so we can  indentify
		--these issues when we simulate it
	DATA_TRANSFER : PROCESS(CLK)   		
	BEGIN
		if rising_edge(CLK) then
			if(RST = '0') then
				sMEMORY <= (others => (others => '0')); --clear the memory 
				ILLEGAL <= '0';
			else
				--------------------------------------------------------------------------------
				--WRITE
				--when write is enabled and fifo is not full, data can be sent to memory
				--the write idx must be incremented in order to track how much data is being 
				--stored at any given moment
				if(WR_EN = '1') and (sFULL = '0') then
					sMEMORY (conv_integer(WR_IDX)) <= DATA_IN; --pass data to memory
					ILLEGAL <= '0';
				elsif(WR_EN = '1') and (sFULL = '1') then	--check if full and trying to write
					ILLEGAL <= '1'; --cannot write into full fifo
				end if ;
				--------------------------------------------------------------------------------
				--READ
				--when read is enabled and fifo is not empty, there is data to be read and it
				--can be retrieved from memory.
				--the read idx must be incremented in order to track how much data is being 
				--stored at any given moment
				if(RD_EN = '1') and (sEMPTY = '0') then
					DATA_OUT <= sMEMORY(conv_integer(RD_IDX)); --retreive data from memory
					ILLEGAL <= '0';
				elsif(RD_EN = '1') and (sEMPTY = '1') then			-- check if empty and trying to read 
					ILLEGAL <= '1';
				end if ;
				--------------------------------------------------------------------------------
			end if;
		end if;
	END PROCESS;
	
	--CONTROLLING THE TRANSFER OF DATA: what to do in the case of read enable and write
	--enable going high seperately, then also considering the case where they are both
	--high at the same time.
	--Updated this to still consider whether or not the fifo is full/empty depending
	--on what would be classed as an error case. 
	--Counting how much space is taken up is stil considered here too.
	CONT_TRANSFER : PROCESS(WR_EN, RD_EN, WR_IDX, RD_IDX, sEMPTY, sFULL, R_IDX)                     
	BEGIN--set default conditions
		--pass indexs to relevent pointer
		HEAD <= WR_IDX;											
		TAIL <= RD_IDX;
		--pass signals ro relevent corresponding signals
		sALMOST_FULL <= sFULL;
		sALMOST_EMPTY <= sEMPTY;
		--set both count tracking flags to zero as default
		ADD <= '0';
		SUB <= '0';

		-----------------------------------------------------------------------------------------------------------------
		--WRITE ENABLED
			--check if fifo is full
			--check if approaching full or empty conditions
			--update the write count
		if(WR_EN = '1' and RD_EN = '0') then
			if(sFULL = '0') then 
				if(conv_integer(WR_IDX) < (DEPTH-1)) then 
					--if the writes counter is < 15      		
					ADD <= '1'; --data written, send addition high
					HEAD <= WR_IDX  + '1'; --write performed, update writes counter
					sALMOST_EMPTY <= '0'; --buffer cannot be almost empty
				else	
					HEAD <= (others => '0'); --when the head = 0				
					sALMOST_FULL <= '0';  --the buffer cannot be almost full
				end if; 
				-- check if fifo is full
				if (conv_integer(WR_IDX + '1') = conv_integer(RD_IDX) or (conv_integer(WR_IDX) = (DEPTH-1) and conv_integer(RD_IDX) = 0)) then      
					--if the incremented writes counter is = read counter value or
					--if the writes counter itself is = 15 and the read counter = 0
					sALMOST_FULL <= '1'; --the buffer must be almost full 
				end if ;
			end if;
		end if;	
		
		-----------------------------------------------------------------------------------------------------------------
		--READ ENABLED
			--check if fifo is empty
			--check if approaching full or empty conditions
			--update the read count
		if(WR_EN = '0' and RD_EN = '1') then	
			if(sEMPTY = '0') then
				if(conv_integer(RD_IDX) < (DEPTH-1)) then   			
					if(conv_integer(R_IDX) > 0) then
						SUB <= '1'; --data has left fifo, send subtraction high
						--this will decrement the space count
					else
						SUB <= '0'; --no read, no data leaving fifo, no subtraction
					end if;
					TAIL <= RD_IDX + '1';--read performed, update count index
					sALMOST_FULL <= '0'; --the buffer cannot be almost full
				else	
					TAIL <= (others => '0'); --when the tail = 0
					sALMOST_FULL <= '0'; --the buffer cannot be almost full	
				end if;
				-- check if fifo is empty
				if (conv_integer(RD_IDX  + '1') = conv_integer(WR_IDX) or (conv_integer(RD_IDX) = (DEPTH-1) and conv_integer(WR_IDX) = 0 )) then     
					--if the incremented reads counter is = writes counter value or
					--if the reads counter itself is = 15 and the writes counter = 0
					sALMOST_EMPTY <= '1'; --the buffer must be almost empty
				end if ;
			end if;
		end if;
		-----------------------------------------------------------------------------------------------------------------
		--BOTH READ AND WRITE ENABLED
		if(WR_EN = '1' and RD_EN = '1') then
			if(conv_integer(WR_IDX) < (DEPTH-1)) then
				--if the writes counter is less than 15  		
				HEAD <= WR_IDX  + '1';--write performed, update count index
				--assign it to the head pointer
			else											
				HEAD <=  (others => '0'); --set head to = 0
			end if;
			if(conv_integer(RD_IDX) < (DEPTH-1)) then 
				--if the reads counter is less than 15     		
				TAIL <= RD_IDX + '1'; --read performed, update count index
				--assign it to the tail pointer
			else
				TAIL <= (others => '0'); --set tail to = 0
			end if;
		end if;
		-----------------------------------------------------------------------------------------------------------------
	END PROCESS;


	--UPDATE POINTERS, COUNTERS AND SIGNALS FOR FLAGS
	--Upon reset low, counters and signals are assigned to = 0
	--Upon reset high, set pointer values to counts, map signals across
	UPDATE : PROCESS(CLK) 
	BEGIN
		if rising_edge(CLK) then
			if (RST = '0')  then --reset low
				RD_IDX <= (others => '0');
				WR_IDX <= (others => '0');
				R_IDX <= (others => '0');
				sFULL <= '0';
				sEMPTY <= '1';
			else --reset high
				RD_IDX <= TAIL;	
				WR_IDX <= HEAD;
				R_IDX <= N_IDX;
				sFULL <= sALMOST_FULL;
				sEMPTY <= sALMOST_EMPTY;
			end if;
		end if;
	END PROCESS;

end FIFOarch;