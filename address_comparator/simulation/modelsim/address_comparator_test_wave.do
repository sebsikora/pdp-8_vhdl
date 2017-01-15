onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /address_comparator/input
add wave -noupdate /address_comparator/IS_AUTO_INDEX
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
WaveRestoreZoom {0 ps} {1260 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern repeater -initialvalue 000000000000 -period 200ns -sequence { 000000000000 000000000001 000000000111 000000001000 000000001010 111000001000  } -repeat forever -range 11 0 -starttime 0ns -endtime 1000ns sim:/address_comparator/input 
WaveExpandAll -1
wave modify -driver freeze -pattern repeater -initialvalue 000000000000 -period 200ns -sequence { 000000000000 000000000001 000000000111 000000001000 000000001010 111000001000  } -repeat forever -range 11 0 -starttime 0ns -endtime 1200ns Edit:/address_comparator/input 
WaveCollapseAll -1
wave clipboard restore
