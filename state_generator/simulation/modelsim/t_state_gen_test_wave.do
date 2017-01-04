onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /t_state_generator/not_reset
add wave -noupdate /t_state_generator/clr
add wave -noupdate /t_state_generator/s_states
add wave -noupdate /t_state_generator/t_states
add wave -noupdate /t_state_generator/clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 217
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
WaveRestoreZoom {0 ps} {2100 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/t_state_generator/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 2000ns Edit:/t_state_generator/not_reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/t_state_generator/clr 
wave create -driver freeze -pattern constant -value 0010 -range 3 0 -starttime 0ns -endtime 2000ns sim:/t_state_generator/s_states 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/t_state_generator/clk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 200ns -endtime 2000ns Edit:/t_state_generator/clk 
WaveCollapseAll -1
wave clipboard restore
