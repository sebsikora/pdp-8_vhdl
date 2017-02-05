onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /divide_by_n/not_reset
add wave -noupdate /divide_by_n/clk
add wave -noupdate /divide_by_n/not_clear
add wave -noupdate /divide_by_n/SLOW_clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 181
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {9885849 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/divide_by_n/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ns -endtime 10000ns Edit:/divide_by_n/not_reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 400ns sim:/divide_by_n/clk 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 400ns -endtime 10000ns Edit:/divide_by_n/clk 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns sim:/divide_by_n/not_clear 
WaveCollapseAll -1
wave clipboard restore
