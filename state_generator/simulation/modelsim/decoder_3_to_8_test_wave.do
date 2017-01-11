onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /decoder_3_to_8/input
add wave -noupdate /decoder_3_to_8/output
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
wave create -driver freeze -pattern constant -value 111 -range 2 0 -starttime 0ns -endtime 1000ns sim:/decoder_3_to_8/input 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 110 -range 2 0 -starttime 0ns -endtime 1000ns Edit:/decoder_3_to_8/input 
WaveCollapseAll -1
wave clipboard restore
