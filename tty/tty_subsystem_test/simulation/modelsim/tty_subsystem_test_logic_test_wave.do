onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tty_subsystem_test_logic/RX_FLAG
add wave -noupdate /tty_subsystem_test_logic/TX_FLAG
add wave -noupdate /tty_subsystem_test_logic/not_reset
add wave -noupdate /tty_subsystem_test_logic/clk
add wave -noupdate /tty_subsystem_test_logic/s_not_p
add wave -noupdate /tty_subsystem_test_logic/CLR_TX_FLAG
add wave -noupdate /tty_subsystem_test_logic/SEND
add wave -noupdate /tty_subsystem_test_logic/CLR_RX_FLAG
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5951140 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 254
configure wave -valuecolwidth 55
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
WaveRestoreZoom {0 ps} {10500 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/tty_subsystem_test_logic/RX_FLAG 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/tty_subsystem_test_logic/TX_FLAG 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/tty_subsystem_test_logic/not_reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/tty_subsystem_test_logic/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 10000ns Edit:/tty_subsystem_test_logic/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 200ns -endtime 10000ns Edit:/tty_subsystem_test_logic/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns Edit:/tty_subsystem_test_logic/TX_FLAG 
wave modify -driver freeze -pattern constant -value 1 -starttime 800ns -endtime 10000ns Edit:/tty_subsystem_test_logic/RX_FLAG 
wave modify -driver freeze -pattern constant -value 0 -starttime 1300ns -endtime 10000ns Edit:/tty_subsystem_test_logic/TX_FLAG 
wave modify -driver freeze -pattern constant -value 1 -starttime 3000ns -endtime 10000ns Edit:/tty_subsystem_test_logic/TX_FLAG 
wave modify -driver freeze -pattern constant -value 0 -starttime 3300ns -endtime 10000ns Edit:/tty_subsystem_test_logic/RX_FLAG 
WaveCollapseAll -1
wave clipboard restore
