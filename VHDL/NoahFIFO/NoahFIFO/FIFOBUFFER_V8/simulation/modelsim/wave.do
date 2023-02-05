onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/CLK
add wave -noupdate /testbench/RST
add wave -noupdate /testbench/RD_EN
add wave -noupdate /testbench/WR_EN
add wave -noupdate /testbench/DATA_IN
add wave -noupdate /testbench/DATA_OUT
add wave -noupdate /testbench/DATA_COUNT
add wave -noupdate /testbench/EMPTY
add wave -noupdate /testbench/ILLEGAL
add wave -noupdate /testbench/FULL
add wave -noupdate /testbench/ALMOST_EMPTY
add wave -noupdate /testbench/ALMOST_FULL
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {91 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {1792 ns} {2304 ns}
