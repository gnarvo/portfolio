transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Noah Harvey/Downloads/OneDrive_2020-05-10 (1)/FOR SUBMISSION/NoahFIFO/FIFOBUFFER_V8/FIFO.vhd}

vcom -93 -work work {C:/Users/Noah Harvey/Downloads/OneDrive_2020-05-10 (1)/FOR SUBMISSION/NoahFIFO/FIFOBUFFER_V8/simulation/modelsim/FIFO.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  buffertestbench

do C:/Users/Noah Harvey/Downloads/OneDrive_2020-05-10 (1)/FOR SUBMISSION/NoahFIFO/FIFOBUFFER_V8/simulation/modelsim/ELEC241_run_msim_rtl_vhdl.do
