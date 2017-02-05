onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tty_subsystem_test/not_reset
add wave -noupdate /tty_subsystem_test/clk
add wave -noupdate /tty_subsystem_test/RX
add wave -noupdate /tty_subsystem_test/RX_FLAG
add wave -noupdate /tty_subsystem_test/TX
add wave -noupdate /tty_subsystem_test/TX_FLAG
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9633566 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 237
configure wave -valuecolwidth 38
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {21 us}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_subsystem_test/not_reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_subsystem_test/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 20000ns Edit:/tty_subsystem_test/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 200ns -endtime 20000ns Edit:/tty_subsystem_test/clk 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 800ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 800ns -endtime 20000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 9600ns -endtime 20000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 800ns Edit:/tty_subsystem_test/RX 
WaveCollapseAll -1
wave clipboard restore
