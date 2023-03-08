FIFO BUFFER version 1 completed by Noah on 02/03/2020

After working on the lab 01-04 so understand the function of a fifo
I began writing out a rough idea of how I will create my own component.

I have researched the head and tails method, included my research in
the OneNote book on 26/02/2020.

I have also made a note of the specific names of the inputs and 
outputs that we are to use.

-make good use of generics
-keep track of available space: full and empty flags
-array of 16-bits: keeping things simple
-buffer width to be determined
-discuss the timing: the same for everyone


Tom checked this on 05/03/2020

-easily understand the inputs, outputs and signals
-the plan for each process is concise
-controlling the data will have more to it but a basic start is good
------------------------------------------------------------------
FIFO BUFFER version 2 completed by Noah on 06/03/2020

This version focuses more on the filling in gaps for processes with 
actual code. Everything is well separated and organised, making
filling gaps easy.

Tom checked this on 08/03/2020

-sensitivity list for cont_transfer doesn't have indexes in
------------------------------------------------------------------
FIFO BUFFER version 3 completed by Noah on 09/03/2020

I have completed my update process, first draft of the controlling process
and the data transfer has been roughly done based off my plan.

I will create a testbench file when my team are happy with the generic and 
port.

I will create a case for read and write enable going high at the same
time.

Tom checked this on 13/03/2020

-we sat together
-checked the code throughout the day
-happy with starting testbench code
------------------------------------------------------------------
FIFO BUFFER version 4 completed by Noah on 15/03/2020

I have added some additional code into the cont_transfer process
for when read and write enable are high at the same time.

I will create conditions that verify that the buffer is either full or empty
based off the read and write indexes.


Tom checked this on 22/03/2020

-code for transferring data could be made clearer
with more comments
-start the testbench
------------------------------------------------------------------
FIFO BUFFER version 5 completed by Noah on 29/03/2020

I have now verifified the conditions in which the full and empty flags
will be sent high.

Tracking spaces with my data counters with the use of flags for adding
and subtraction.

Testbench created, all happy with naming... Error loading design. I fixed 
this after changing the paths and adjusting the settings 
for modelsim test benches. I passed this info onto Tom and have saved 
screenshots of how to do so. 


Tom checked this on 01/04/2020

-good to know how to set up files
-add and sub make the process really clear
-all well commented
------------------------------------------------------------------
FIFO BUFFER version 6 completed by Noah on 04/04/2020

Beginning to write the test bench
-write
-enable
-both

Tom checked this on 20/04/2020

-use the same clock process as i have
------------------------------------------------------------------
FIFO BUFFER version 7 completed by Noah on 29/04/2020

-adding illegal case to show up on the testbench simulation
-adding code to test the flags in the testbench 

Tom checked this on 29/04/2020

-proved the testbench works by showing us on teams
-suggested a few improvements but happy with the fifo overall
------------------------------------------------------------------
FIFO BUFFER version 8 completed by Noah on 08/05/2020

-showing the simulation in a group meeting, all happy with 
the testbench
-setting clock to 50MHz
-setting almost full and almost empty to 1, get a better simulation

Tom checked this on 08/05/2020

-agree with testbench doing the right thing in the simulation
-agree with period

