onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /shift_register_8_ps/not_reset
add wave -noupdate /shift_register_8_ps/clk
add wave -noupdate /shift_register_8_ps/s_not_p
add wave -noupdate /shift_register_8_ps/p_in
add wave -noupdate /shift_register_8_ps/s_in
add wave -noupdate /shift_register_8_ps/s_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1350000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 204
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
WaveRestoreZoom {0 ps} {4200 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/shift_register_8_ps/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 4000ns Edit:/shift_register_8_ps/not_reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 4000ns sim:/shift_register_8_ps/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/shift_register_8_ps/s_not_p 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 400ns Edit:/shift_register_8_ps/s_not_p 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ns -endtime 4000ns Edit:/shift_register_8_ps/s_not_p 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/shift_register_8_ps/clk 
wave create -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 0ns -endtime 200ns sim:/shift_register_8_ps/p_in 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 01010101 -range 7 0 -starttime 200ns -endtime 400ns Edit:/shift_register_8_ps/p_in 
wave modify -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 400ns -endtime 4000ns Edit:/shift_register_8_ps/p_in 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns sim:/shift_register_8_ps/s_in 
wave modify -driver freeze -pattern constant -value 10110011 -range 7 0 -starttime 2200ns -endtime 2400ns Edit:/shift_register_8_ps/p_in 
wave modify -driver freeze -pattern constant -value 0 -starttime 2200ns -endtime 2400ns Edit:/shift_register_8_ps/s_not_p 
WaveCollapseAll -1
wave clipboard restore
