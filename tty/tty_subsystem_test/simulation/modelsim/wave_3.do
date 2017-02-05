onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tty_subsystem_test/not_reset
add wave -noupdate /tty_subsystem_test/clk
add wave -noupdate /tty_subsystem_test/RX
add wave -noupdate /tty_subsystem_test/RX_FLAG
add wave -noupdate /tty_subsystem_test/TX
add wave -noupdate /tty_subsystem_test/TX_FLAG
add wave -noupdate /tty_subsystem_test/tty_subsystem_0/tti_state_gen/ser_clk
add wave -noupdate /tty_subsystem_test/tty_subsystem_0/tto_state_gen/ser_clk
add wave -noupdate /tty_subsystem_test/not_reset
add wave -noupdate /tty_subsystem_test/clk
add wave -noupdate /tty_subsystem_test/RX
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1000000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 303
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {210 us}
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
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 300ns Edit:/tty_subsystem_test/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 800ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 800ns -endtime 10000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 1600ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 800ns -endtime 10000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 800ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 800ns -endtime 10000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 1600ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 800ns -endtime 20000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 200000ns Edit:/tty_subsystem_test/not_reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 400ns Edit:/tty_subsystem_test/clk 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 400ns -endtime 200000ns Edit:/tty_subsystem_test/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 0 -starttime 1000ns -endtime 200000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 5000ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 1000ns -endtime 200000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 5500ns -endtime 200000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 1000ns -sequence { 0 1 0 1 0 1 0 1 0  } -repeat never -starttime 1000ns -endtime 200000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 5000ns -sequence { 0 1 0 1 0 1 0 1 0  } -repeat never -starttime 1000ns -endtime 200000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 5000ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 1000ns -endtime 200000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 56000ns -endtime 200000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 6000ps -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 1000ns -endtime 200000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 6000ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 1000ns -endtime 200000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 67000ns -endtime 200000ns Edit:/tty_subsystem_test/RX 
WaveCollapseAll -1
wave clipboard restore
