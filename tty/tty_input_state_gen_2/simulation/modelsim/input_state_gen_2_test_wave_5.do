onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tty_input_state_gen_2/RX_FLAG
add wave -noupdate /tty_input_state_gen_2/SLOW_clk
add wave -noupdate /tty_input_state_gen_2/SLOW_clk_RUN
add wave -noupdate /tty_input_state_gen_2/ser_clk
add wave -noupdate /tty_input_state_gen_2/ser_data_in
add wave -noupdate /tty_input_state_gen_2/CLR_RX_FLAG
add wave -noupdate /tty_input_state_gen_2/RX
add wave -noupdate /tty_input_state_gen_2/clk
add wave -noupdate /tty_input_state_gen_2/not_reset
add wave -noupdate /tty_input_state_gen_2/state_flag
add wave -noupdate /tty_input_state_gen_2/state_flag_and_2
add wave -noupdate /tty_input_state_gen_2/state_flag_and_3
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {123657025 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 262
configure wave -valuecolwidth 40
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
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_input_state_gen_2/CLR_RX_FLAG 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_input_state_gen_2/RX 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_input_state_gen_2/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_input_state_gen_2/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 500ns -endtime 20000ns Edit:/tty_input_state_gen_2/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 0ns -endtime 20000ns Edit:/tty_input_state_gen_2/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 40000ns Edit:/tty_input_state_gen_2/RX 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 40000ns Edit:/tty_input_state_gen_2/CLR_RX_FLAG 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 40000ns Edit:/tty_input_state_gen_2/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 500ns -endtime 40000ns Edit:/tty_input_state_gen_2/not_reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 1000ns -endtime 40000ns Edit:/tty_input_state_gen_2/RX 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200000ns Edit:/tty_input_state_gen_2/CLR_RX_FLAG 
wave modify -driver freeze -pattern constant -value 0 -starttime 1000ns -endtime 200000ns Edit:/tty_input_state_gen_2/RX 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 200000ns Edit:/tty_input_state_gen_2/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 500ns -endtime 200000ns Edit:/tty_input_state_gen_2/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 120000ns -endtime 200000ns Edit:/tty_input_state_gen_2/RX 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 200000ns Edit:/tty_input_state_gen_2/clk 
WaveCollapseAll -1
wave clipboard restore
