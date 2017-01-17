onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top_level/not_reset
add wave -noupdate /top_level/STEP
add wave -noupdate /top_level/clk_in
add wave -noupdate /top_level/START
add wave -noupdate /top_level/clk
add wave -noupdate /top_level/mem_data_bus_in
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
WaveRestoreZoom {0 ps} {2100 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/top_level/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 2000ns Edit:/top_level/not_reset 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 2000ns sim:/top_level/STEP 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 2000ns sim:/top_level/clk_in 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/top_level/START 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 400ns Edit:/top_level/START 
wave create -driver freeze -pattern constant -value 101010110100 -range 11 0 -starttime 0ns -endtime 2000ns sim:/top_level/mem_data_bus_in 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
