onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ms_jk_ff/clk
add wave -noupdate /ms_jk_ff/j
add wave -noupdate /ms_jk_ff/k
add wave -noupdate /ms_jk_ff/q
add wave -noupdate /ms_jk_ff/not_q
add wave -noupdate /ms_jk_ff/not_clk
add wave -noupdate /ms_jk_ff/not_reset
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {0 ps} {902144 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/ms_jk_ff/clk 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns sim:/ms_jk_ff/j 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns sim:/ms_jk_ff/k 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 100ns sim:/ms_jk_ff/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 100ns -endtime 1000ns Edit:/ms_jk_ff/not_reset 
WaveCollapseAll -1
wave clipboard restore
