onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /alu_shifter/output
add wave -noupdate /alu_shifter/link_output
add wave -noupdate /alu_shifter/input
add wave -noupdate /alu_shifter/link_input
add wave -noupdate /alu_shifter/alu_rot_1
add wave -noupdate /alu_shifter/alu_rot_2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {666000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 212
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
WaveRestoreZoom {0 ps} {1050 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 011111111110 -range 11 0 -starttime 0ns -endtime 1000ns sim:/alu_shifter/input 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns sim:/alu_shifter/link_input 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns sim:/alu_shifter/alu_rot_1 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns sim:/alu_shifter/alu_rot_2 
wave modify -driver freeze -pattern constant -value 1 -starttime 333ns -endtime 666ns Edit:/alu_shifter/alu_rot_1 
wave modify -driver freeze -pattern constant -value 1 -starttime 666ns -endtime 1000ns Edit:/alu_shifter/alu_rot_2 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/alu_shifter/link_input 
wave modify -driver freeze -pattern constant -value 100000000001 -range 11 0 -starttime 0ns -endtime 1000ns Edit:/alu_shifter/input 
WaveCollapseAll -1
wave clipboard restore
