onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tty_output_state_gen/CLR_TX_FLAG
add wave -noupdate /tty_output_state_gen/SEND
add wave -noupdate /tty_output_state_gen/SLOW_clk
add wave -noupdate /tty_output_state_gen/clk
add wave -noupdate /tty_output_state_gen/not_reset
add wave -noupdate /tty_output_state_gen/ser_data_in
add wave -noupdate /tty_output_state_gen/ser_clk
add wave -noupdate /tty_output_state_gen/TX_FLAG
add wave -noupdate /tty_output_state_gen/TX
add wave -noupdate /tty_output_state_gen/SLOW_clk_RUN
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9208817 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 249
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
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/tty_state_gen/CLR_TX_FLAG 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/tty_state_gen/not_reset 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns sim:/tty_state_gen/ser_data_in 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/tty_state_gen/clk 
wave create -driver freeze -pattern clock -initialvalue 0 -period 450ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/tty_state_gen/SLOW_clk 
wave create -driver freeze -pattern constant -value 1 -starttime 600ns -endtime 800ns sim:/tty_state_gen/SEND 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_output_state_gen/CLR_TX_FLAG 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_output_state_gen/SEND 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_output_state_gen/SLOW_clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_output_state_gen/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_output_state_gen/not_reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_output_state_gen/ser_data_in 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 20000ns Edit:/tty_output_state_gen/ser_data_in 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 20000ns Edit:/tty_output_state_gen/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 200ns -endtime 20000ns Edit:/tty_output_state_gen/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 400ns Edit:/tty_output_state_gen/CLR_TX_FLAG 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ns -endtime 600ns Edit:/tty_output_state_gen/SEND 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 730ns -dutycycle 50 -starttime 600ns -endtime 20000ns Edit:/tty_output_state_gen/SLOW_clk 
WaveCollapseAll -1
wave clipboard restore
