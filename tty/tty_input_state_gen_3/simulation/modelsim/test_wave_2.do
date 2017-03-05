onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tty_input_state_gen_3/not_reset
add wave -noupdate /tty_input_state_gen_3/clk
add wave -noupdate /tty_input_state_gen_3/RX
add wave -noupdate /tty_input_state_gen_3/CLR_RX_FLAG
add wave -noupdate /tty_input_state_gen_3/RX_FLAG
add wave -noupdate /tty_input_state_gen_3/SLOW_CLK
add wave -noupdate /tty_input_state_gen_3/SLOW_CLK_run
add wave -noupdate /tty_input_state_gen_3/SR_CLK
add wave -noupdate /tty_input_state_gen_3/clr_ctrl
add wave -noupdate /tty_input_state_gen_3/end_ctrl
add wave -noupdate /tty_input_state_gen_3/half_tick_ctrl
add wave -noupdate /tty_input_state_gen_3/tick_ctrl
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {105236417 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 239
configure wave -valuecolwidth 45
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
WaveRestoreZoom {0 ps} {198612440 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 200000ns sim:/tty_input_state_gen_3/not_reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 400ns Edit:/tty_input_state_gen_3/not_reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 400ns sim:/tty_input_state_gen_3/clk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 400ns -endtime 200000ns Edit:/tty_input_state_gen_3/clk 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 200000ns sim:/tty_input_state_gen_3/RX 
wave modify -driver freeze -pattern constant -value 0 -starttime 1000ns -endtime 3000ns Edit:/tty_input_state_gen_3/RX 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200000ns sim:/tty_input_state_gen_3/CLR_RX_FLAG 
wave modify -driver freeze -pattern constant -value 0 -starttime 1000ns -endtime 30000ns Edit:/tty_input_state_gen_3/RX 
WaveCollapseAll -1
wave clipboard restore
