onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /state_generator/s_states
add wave -noupdate /state_generator/t_states
add wave -noupdate /state_generator/HLT_indicator
add wave -noupdate /state_generator/not_reset
add wave -noupdate /state_generator/clk
add wave -noupdate /state_generator/HLT_flag
add wave -noupdate /state_generator/NEXT_STATE
add wave -noupdate /state_generator/END_STATE
add wave -noupdate /state_generator/LOAD
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6510000 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 222
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
WaveRestoreZoom {0 ps} {10500 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/state_generator/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 10000ns Edit:/state_generator/not_reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/state_generator/clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/state_generator/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/state_generator/HLT_flag 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/state_generator/NEXT_STATE 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/state_generator/END_STATE 
wave create -driver freeze -pattern constant -value 00 -range 1 0 -starttime 0ns -endtime 10000ns sim:/state_generator/LOAD 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 1 -starttime 1000ns -endtime 1200ns Edit:/state_generator/NEXT_STATE 
wave modify -driver freeze -pattern constant -value 1 -starttime 2000ns -endtime 2200ns Edit:/state_generator/NEXT_STATE 
wave modify -driver freeze -pattern constant -value 1 -starttime 3000ns -endtime 3200ns Edit:/state_generator/NEXT_STATE 
wave modify -driver freeze -pattern constant -value 1 -starttime 3000ns -endtime 3200ns Edit:/state_generator/END_STATE 
wave modify -driver freeze -pattern constant -value 1 -starttime 4000ns -endtime 4200ns Edit:/state_generator/NEXT_STATE 
wave modify -driver freeze -pattern constant -value 1 -starttime 5000ns -endtime 5200ns Edit:/state_generator/NEXT_STATE 
wave modify -driver freeze -pattern constant -value 11 -range 1 0 -starttime 5000ns -endtime 5200ns Edit:/state_generator/LOAD 
wave modify -driver freeze -pattern constant -value 1 -starttime 6000ns -endtime 6200ns Edit:/state_generator/NEXT_STATE 
wave modify -driver freeze -pattern constant -value 1 -starttime 6600ns -endtime 6800ns Edit:/state_generator/HLT_flag 
wave modify -driver freeze -pattern constant -value 1 -starttime 7000ns -endtime 7200ns Edit:/state_generator/NEXT_STATE 
wave modify -driver freeze -pattern constant -value 1 -starttime 8000ns -endtime 8200ns Edit:/state_generator/NEXT_STATE 
wave modify -driver freeze -pattern constant -value 1 -starttime 9000ns -endtime 9200ns Edit:/state_generator/NEXT_STATE 
wave modify -driver freeze -pattern constant -value 1 -starttime 9000ns -endtime 9200ns Edit:/state_generator/END_STATE 
wave modify -driver freeze -pattern constant -value 10 -range 1 0 -starttime 5000ns -endtime 5200ns Edit:/state_generator/LOAD 
wave modify -driver freeze -pattern constant -value 11 -range 1 0 -starttime 4000ns -endtime 4200ns Edit:/state_generator/LOAD 
wave modify -driver freeze -pattern constant -value 00 -range 1 0 -starttime 4200ns -endtime 10000ns Edit:/state_generator/LOAD 
wave modify -driver freeze -pattern constant -value 1 -starttime 5000ns -endtime 5200ns Edit:/state_generator/END_STATE 
WaveCollapseAll -1
wave clipboard restore
