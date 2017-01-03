onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /alu_clear/input
add wave -noupdate /alu_clear/alu_clear
add wave -noupdate /alu_clear/output
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
wave create -driver freeze -pattern constant -value 101010101010 -range 11 0 -starttime 0ns -endtime 1000ns sim:/alu_clear/input 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 0 -period 1000ps -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/alu_clear/alu_clear 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 1500ps -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/alu_clear/alu_clear 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 660ps -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/alu_clear/alu_clear 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 660ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/alu_clear/alu_clear 
WaveCollapseAll -1
wave clipboard restore
