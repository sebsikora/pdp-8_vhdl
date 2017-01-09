onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /alu_inc/output
add wave -noupdate /alu_inc/carry_out
add wave -noupdate /alu_inc/input
add wave -noupdate /alu_inc/alu_inc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {138263 ps} 0}
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
WaveRestoreZoom {0 ps} {1050 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 011111111111 -range 11 0 -starttime 0ns -endtime 1000ns sim:/alu_inc/input 
WaveExpandAll -1
wave modify -driver freeze -pattern counter -startvalue 111111111110 -endvalue 111111111111 -type Range -direction Up -period 500ps -step 1 -repeat forever -range 11 0 -starttime 0ns -endtime 1000ns Edit:/alu_inc/input 
wave modify -driver freeze -pattern counter -startvalue 111111111110 -endvalue 111111111111 -type Range -direction Up -period 500ns -step 1 -repeat forever -range 11 0 -starttime 0ns -endtime 1000ns Edit:/alu_inc/input 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 300ns sim:/alu_inc/alu_inc 
wave modify -driver freeze -pattern constant -value 1 -starttime 300ns -endtime 700ns Edit:/alu_inc/alu_inc 
wave modify -driver freeze -pattern constant -value 1 -starttime 300ns -endtime 1000ns Edit:/alu_inc/alu_inc 
wave modify -driver freeze -pattern repeater -initialvalue 011111111111 -period 500ns -sequence { 011111111111 111111111111  } -repeat forever -range 11 0 -starttime 0ns -endtime 1000ns Edit:/alu_inc/input 
wave modify -driver freeze -pattern constant -value 0 -starttime 750ns -endtime 1000ns Edit:/alu_inc/alu_inc 
WaveCollapseAll -1
wave clipboard restore
