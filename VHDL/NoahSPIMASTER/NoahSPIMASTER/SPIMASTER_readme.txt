SPI MASTER version 1 completed by Noah on 01/04/2020

Set of planned inputs, outputs and signals that I know I need.
Rough idea of what my processes will do.

Oscar checked this on 01/04/2020

gave advice on what's needed and how everything was going to work
--------------------------------------------------------------------
SPI MASTER version 2 completed by Noah on 06/04/2020

Expanding on notes made with the understanding of the spi clocks
function that I currently have - using the instruction manual on how
to make an spi master and looking at timing diagrams of others.

what to do when writing and reading data similar to what I've done
before.
plans for miso and mosi

Tom checked this on 06/04/2020

-on a teams call
-came to agreement on what mosi and miso do

--------------------------------------------------------------------
SPI MASTER version 3 completed by Noah on 13/04/2020

I wrote my mosi and miso processes but there are a few gaps
I need to fill but I cannot test until I see the output of the 
waveform.

I plan to go over this with Tom and look at my notes, see what
conditions are missing a result and go from there.

Tom checked this on 14/04/2020

-detect edges of the clock

--------------------------------------------------------------------
SPI MASTER version 4 completed by Noah on 18/04/2020

MOSI is to be left low.

Finish code for trailing and leading edge cases inside the spi
clock cycle process. Later on mosi will be asserted on each falling
edge of the spi clock.

Tom checked this on 19/04/2020

-agree with spi clock equation
-work on the testbench more to test what you have

--------------------------------------------------------------------
SPI MASTER version 5 completed by Noah on 20/04/2020

I completed the code for trailing and leading edge cases.
I added a CS line, simulates properly.
I began writing the testbench and checking the outputs.

Tom checked this on 20/04/2020

-on call on teams
-result was getting edge cases working
-well commented to explain the process
--------------------------------------------------------------------
SPI MASTER version 6 completed by Noah on 25/04/2020

There were a few failed attempts at doing this - lots of calls
with the group on teams. We made a lot of sub-versions of different
attempts but none worked we kept to this original.

Finalising the testbench. Transmits fine but there are
issues with RX_DV and RX_DATA not being valid.

Tried passing the data through a shared signal as I did in the
fifo but the timings are too difficult - come back to this, focus
on getting as much of the other waves right as possible.

I need to add a start line and simulate MISO.
Defining when it should go high in the source code doesn't seem 
to work.

I also need to check timing.

Tom checked this on 01/05/2020

-go through timing
-explain what we have so far and then come back to try and
finish it
--------------------------------------------------------------------
SPI MASTER version 6 completed by Noah on 02/05/2020

Created a new testbench to clean things up after experimenting.
The following remains:
I need to add a start line and simulate MISO.
Defining when it should go high in the source code doesn't seem 
to work.

I also need to check timing.

but we are focusing on getting ready to submit.

Tom checked this on 03/05/2020

-problem with definining fixed
-agree with other tasks to do
--------------------------------------------------------------------
SPI MASTER version 7 completed by Noah on 03/05/2020

MISO line done, storing the data in the memory signal has been
fixed.
my rx_dv line isn't working properly

Tom checked this on 03/05/2020

-proved miso line works on call when we checked group progress
--------------------------------------------------------------------
SPI MASTER version 8 completed by Noah on 05/05/2020

receiver data valid fixed
extra testbench processes to
prove I can turn received data into miso toggles too.

Tom checked this on 07/05/2020

-good to prove receiver works too
-confirm that the data valid line works just like the
transmitter one does
--------------------------------------------------------------------
SPI MASTER version 9 completed by Noah on 08/05/2020

I gave my code a tidy up and added more comments and separation
in the testbench

Tom checked this on 08/05/2020

-ready to submit