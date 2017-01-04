onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /counter_3_bit/clk
add wave -noupdate /counter_3_bit/clr
add wave -noupdate /counter_3_bit/output
add wave -noupdate /counter_3_bit/not_reset
add wave -noupdate /counter_3_bit/clk
add wave -noupdate /counter_3_bit/not_reset
add wave -noupdate /counter_3_bit/clr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 184
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
WaveRestoreZoom {0 ps} {2100 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 2000ns sim:/counter_3_bit/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/counter_3_bit/not_reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/counter_3_bit/clr 
wave modify -driver freeze -pattern constant -value 1 -starttime 100ns -endtime 2000ns Edit:/counter_3_bit/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 50ns -endtime 100ns Edit:/counter_3_bit/not_reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 50ns -endtime 200ns Edit:/counter_3_bit/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 400ns Edit:/counter_3_bit/clr 
wave modify -driver freeze -pattern constant -value 1 -starttime 1000ns -endtime 1200ns Edit:/counter_3_bit/clr 
wave modify -driver freeze -pattern constant -value 1 -starttime 1200ns -endtime 1400ns Edit:/counter_3_bit/clr 
wave modify -driver freeze -pattern constant -value 0 -starttime 1200ns -endtime 1400ns Edit:/counter_3_bit/clr 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ns -endtime 400ns Edit:/counter_3_bit/clr 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ns -endtime 2000ns Edit:/counter_3_bit/clr 
wave modify -driver freeze -pattern constant -value 1 -starttime 1200ns -endtime 1400ns Edit:/counter_3_bit/clr 
WaveCollapseAll -1
wave clipboard restore
