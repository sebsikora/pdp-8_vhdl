onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tty_input_state_gen/CLR_RX_FLAG
add wave -noupdate /tty_input_state_gen/RX
add wave -noupdate /tty_input_state_gen/SLOW_clk
add wave -noupdate /tty_input_state_gen/clk
add wave -noupdate /tty_input_state_gen/not_reset
add wave -noupdate /tty_input_state_gen/SLOW_clk_RUN
add wave -noupdate /tty_input_state_gen/RX_FLAG
add wave -noupdate /tty_input_state_gen/ser_clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {7990000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 270
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
WaveRestoreZoom {0 ps} {21 us}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_input_state_gen/CLR_RX_FLAG 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_input_state_gen/RX 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_input_state_gen/SLOW_clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_input_state_gen/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_input_state_gen/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 20000ns Edit:/tty_input_state_gen/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 200ns -endtime 20000ns Edit:/tty_input_state_gen/clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ns -endtime 930ns Edit:/tty_input_state_gen/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 20000ns Edit:/tty_input_state_gen/RX 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ns -endtime 930ns Edit:/tty_input_state_gen/RX 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 730ns -dutycycle 50 -starttime 310ns -endtime 20000ns Edit:/tty_input_state_gen/SLOW_clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 7990ns -endtime 20000ns Edit:/tty_input_state_gen/SLOW_clk 
WaveCollapseAll -1
wave clipboard restore
