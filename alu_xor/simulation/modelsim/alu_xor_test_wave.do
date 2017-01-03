onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /alu_xor/input
add wave -noupdate /alu_xor/alu_xor
add wave -noupdate /alu_xor/output
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
WaveRestoreZoom {0 ps} {1050 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 010101010101 -range 11 0 -starttime 0ns -endtime 1000ns sim:/alu_xor/input 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 0 -period 666ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/alu_xor/alu_xor 
WaveCollapseAll -1
wave clipboard restore
