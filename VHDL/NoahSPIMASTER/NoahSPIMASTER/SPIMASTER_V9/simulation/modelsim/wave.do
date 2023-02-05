onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /spi_master_tb/CLK
add wave -noupdate /spi_master_tb/RST
add wave -noupdate /spi_master_tb/sSPI_CLK
add wave -noupdate /spi_master_tb/CS
add wave -noupdate /spi_master_tb/CPOL
add wave -noupdate /spi_master_tb/CPHA
add wave -noupdate /spi_master_tb/MOSI
add wave -noupdate /spi_master_tb/TX_Ready
add wave -noupdate /spi_master_tb/TX_DATA
add wave -noupdate /spi_master_tb/TX_DV
add wave -noupdate /spi_master_tb/RX_DATA
add wave -noupdate /spi_master_tb/RX_DV
add wave -noupdate /spi_master_tb/MISO
add wave -noupdate /spi_master_tb/MISO_DATA
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {100000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 192
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
WaveRestoreZoom {0 ps} {3953589 ps}
