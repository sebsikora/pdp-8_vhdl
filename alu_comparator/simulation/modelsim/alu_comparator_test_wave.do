onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /alu_comparator/not_reset
add wave -noupdate /alu_comparator/input
add wave -noupdate /alu_comparator/clk
add wave -noupdate /alu_comparator/IS_NEG
add wave -noupdate /alu_comparator/IS_ZERO
add wave -noupdate /alu_comparator/IS_ZERO_LAST
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 220
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
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns sim:/alu_comparator/not_reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/alu_comparator/not_reset 
wave create -driver freeze -pattern repeater -initialvalue 000000000000 -period 200ns -sequence { 000000000000 000000000000 000010111000 000010111011  } -repeat forever -range 11 0 -starttime 0ps -endtime 1000ps sim:/alu_comparator/input 
WaveExpandAll -1
wave modify -driver freeze -pattern repeater -initialvalue 000000000000 -period 200ns -sequence { 000000000000 000000000000 000010111000 000010111011  } -repeat forever -range 11 0 -starttime 0ns -endtime 1000ns Edit:/alu_comparator/input 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/alu_comparator/clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/alu_comparator/clk 
WaveCollapseAll -1
wave clipboard restore
