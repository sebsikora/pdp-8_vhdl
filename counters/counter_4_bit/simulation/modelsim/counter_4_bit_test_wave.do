onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /counter_4_bit/not_reset
add wave -noupdate /counter_4_bit/clr
add wave -noupdate /counter_4_bit/clk
add wave -noupdate /counter_4_bit/output
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3161887 ps} 0}
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
WaveRestoreZoom {0 ps} {4200 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/counter_4_bit/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 4000ns Edit:/counter_4_bit/not_reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns sim:/counter_4_bit/clr 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 4000ns sim:/counter_4_bit/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 2000ns -endtime 2200ns Edit:/counter_4_bit/clr 
WaveCollapseAll -1
wave clipboard restore