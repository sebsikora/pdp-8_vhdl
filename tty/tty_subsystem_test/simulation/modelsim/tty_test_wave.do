onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tty_subsystem_test/clk
add wave -noupdate /tty_subsystem_test/not_reset
add wave -noupdate /tty_subsystem_test/RX
add wave -noupdate /tty_subsystem_test/in_sample_clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {800000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 185
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
WaveRestoreZoom {0 ps} {13125 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 20000ns sim:/tty_subsystem_test/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 500ns sim:/tty_subsystem_test/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 500ns -endtime 20000ns Edit:/tty_subsystem_test/not_reset 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 800ns sim:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 800ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 800ns -endtime 20000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 9600ns -endtime 20000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 3200ns -sequence { 0 1 0 1 0  } -repeat 2 -starttime 800ns -endtime 20000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 3200ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 800ns -endtime 20000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 3200ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 800ns -endtime 40000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 3200ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 800ns -endtime 100000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 500ns -endtime 100000ns Edit:/tty_subsystem_test/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 100000ns Edit:/tty_subsystem_test/clk 
WaveCollapseAll -1
wave clipboard restore
