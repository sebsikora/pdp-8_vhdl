onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /alu_main/inputA
add wave -noupdate /alu_main/inputB
add wave -noupdate /alu_main/alu_out_select
add wave -noupdate /alu_main/output
add wave -noupdate /alu_main/add_carry
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
WaveRestoreZoom {0 ps} {3150 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 100000000000 -range 11 0 -starttime 0ns -endtime 3000ns sim:/alu_main/inputA 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 000000000010 -range 11 0 -starttime 0ns -endtime 3000ns sim:/alu_main/inputB 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 111111111110 -range 11 0 -starttime 0ns -endtime 3000ns Edit:/alu_main/inputA 
wave create -driver freeze -pattern repeater -initialvalue 001 -period 1000ns -sequence { 001 010 100  } -repeat forever -range 2 0 -starttime 0ns -endtime 3000ns sim:/alu_main/alu_out_select 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 111111111100 -range 11 0 -starttime 0ns -endtime 500ns Edit:/alu_main/inputA 
WaveCollapseAll -1
wave clipboard restore
