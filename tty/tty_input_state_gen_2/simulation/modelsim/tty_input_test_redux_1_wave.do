onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tty_input_state_gen_2/CLR_RX_FLAG
add wave -noupdate /tty_input_state_gen_2/RX
add wave -noupdate /tty_input_state_gen_2/clk
add wave -noupdate /tty_input_state_gen_2/not_reset
add wave -noupdate /tty_input_state_gen_2/RX_FLAG
add wave -noupdate /tty_input_state_gen_2/SLOW_clk
add wave -noupdate /tty_input_state_gen_2/SLOW_clk_RUN
add wave -noupdate /tty_input_state_gen_2/ser_clk
add wave -noupdate /tty_input_state_gen_2/ser_data_in
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {210 us}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200000ns sim:/tty_input_state_gen_2/CLR_RX_FLAG 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 200000ns sim:/tty_input_state_gen_2/RX 
wave create -driver freeze -pattern clock -initialvalue 0 -period 400ns -dutycycle 50 -starttime 0ns -endtime 200000ns sim:/tty_input_state_gen_2/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 800ns sim:/tty_input_state_gen_2/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 800ns -endtime 200000ns Edit:/tty_input_state_gen_2/not_reset 
WaveCollapseAll -1
wave clipboard restore
