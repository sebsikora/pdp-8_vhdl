onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /s_state_generator/not_reset
add wave -noupdate /s_state_generator/clk
add wave -noupdate /s_state_generator/HLT_flag
add wave -noupdate /s_state_generator/end_state
add wave -noupdate /s_state_generator/next_state
add wave -noupdate /s_state_generator/load
add wave -noupdate /s_state_generator/s_states
add wave -noupdate /s_state_generator/HLT_indicator
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1617857 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 232
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
WaveRestoreZoom {0 ps} {5250 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 5000ns sim:/s_state_generator/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 5000ns Edit:/s_state_generator/not_reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 5000ns sim:/s_state_generator/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 5000ns sim:/s_state_generator/HLT_flag 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/s_state_generator/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 5000ns sim:/s_state_generator/end_state 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 5000ns sim:/s_state_generator/next_state 
wave create -driver freeze -pattern constant -value 00 -range 1 0 -starttime 0ns -endtime 5000ns sim:/s_state_generator/load 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 1 -starttime 1000ns -endtime 1200ns Edit:/s_state_generator/next_state 
wave modify -driver freeze -pattern constant -value 1 -starttime 2200ns -endtime 2400ns Edit:/s_state_generator/next_state 
wave modify -driver freeze -pattern constant -value 1 -starttime 3200ns -endtime 3400ns Edit:/s_state_generator/end_state 
wave modify -driver freeze -pattern constant -value 11 -range 1 0 -starttime 4400ns -endtime 4600ns Edit:/s_state_generator/load 
wave modify -driver freeze -pattern constant -value 1 -starttime 2200ns -endtime 2500ns Edit:/s_state_generator/next_state 
wave modify -driver freeze -pattern constant -value 1 -starttime 2200ns -endtime 2400ns Edit:/s_state_generator/next_state 
wave modify -driver freeze -pattern constant -value 0 -starttime 2400ns -endtime 2500ns Edit:/s_state_generator/next_state 
wave modify -driver freeze -pattern constant -value 1 -starttime 3400ns -endtime 3500ns Edit:/s_state_generator/end_state 
wave modify -driver freeze -pattern constant -value 0 -starttime 3400ns -endtime 3500ns Edit:/s_state_generator/end_state 
wave modify -driver freeze -pattern constant -value 1 -starttime 3200ns -endtime 3400ns Edit:/s_state_generator/next_state 
wave modify -driver freeze -pattern constant -value 1 -starttime 4400ns -endtime 4600ns Edit:/s_state_generator/next_state 
wave modify -driver freeze -pattern constant -value 1 -starttime 1600ns -endtime 1800ns Edit:/s_state_generator/HLT_flag 
WaveCollapseAll -1
wave clipboard restore
