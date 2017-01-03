onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /register_12_bit/input
add wave -noupdate /register_12_bit/clk
add wave -noupdate /register_12_bit/not_reset
add wave -noupdate /register_12_bit/load
add wave -noupdate /register_12_bit/clear
add wave -noupdate /register_12_bit/k
add wave -noupdate /register_12_bit/j
add wave -noupdate /register_12_bit/output
TreeUpdate [SetDefaultTree]
configure wave -namecolwidth 204
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
WaveRestoreZoom {0 ps} {2394140 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 000000000000 -endvalue 111111111111 -type Range -direction Up -period 50ns -step 1 -repeat forever -range 11 0 -starttime 0ns -endtime 1000ns sim:/register_12_bit/input 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 50ns sim:/register_12_bit/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 50ns -endtime 1000ns Edit:/register_12_bit/clk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 50ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/register_12_bit/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 50ns sim:/register_12_bit/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 50ns -endtime 1000ns Edit:/register_12_bit/not_reset 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns sim:/register_12_bit/load 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns sim:/register_12_bit/clear 
wave modify -driver freeze -pattern counter -startvalue 000000000000 -endvalue 111111111111 -type Range -direction Up -period 50ns -step 1 -repeat forever -range 11 0 -starttime 50ns -endtime 1000ns Edit:/register_12_bit/input 
wave modify -driver freeze -pattern constant -value 0 -starttime 500ns -endtime 600ns Edit:/register_12_bit/load 
wave modify -driver freeze -pattern constant -value 1 -starttime 500ns -endtime 600ns Edit:/register_12_bit/clear 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/register_12_bit/clk 
wave modify -driver freeze -pattern counter -startvalue 000000000000 -endvalue 111111111111 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 11 0 -starttime 50ns -endtime 1000ns Edit:/register_12_bit/input 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/register_12_bit/clk 
wave modify -driver freeze -pattern counter -startvalue 000000000000 -endvalue 111111111111 -type Range -direction Up -period 200ns -step 1 -repeat forever -range 11 0 -starttime 200ns -endtime 1000ns Edit:/register_12_bit/input 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/register_12_bit/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ns -endtime 600ns Edit:/register_12_bit/clear 
wave modify -driver freeze -pattern constant -value 0 -starttime 400ns -endtime 600ns Edit:/register_12_bit/load 
wave modify -driver freeze -pattern constant -value 000000000000 -range 11 0 -starttime 0ns -endtime 200ns Edit:/register_12_bit/input 
wave modify -driver freeze -pattern counter -startvalue 000000000000 -endvalue 111111111111 -type Range -direction Up -period 200ns -step 1 -repeat forever -range 11 0 -starttime 200ns -endtime 2000ns Edit:/register_12_bit/input 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 2000ns Edit:/register_12_bit/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 1000ns Edit:/register_12_bit/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 2000ns Edit:/register_12_bit/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 1000ns -endtime 1400ns Edit:/register_12_bit/load 
wave modify -driver freeze -pattern constant -value 0 -starttime 1400ns -endtime 1600ns Edit:/register_12_bit/load 
wave modify -driver freeze -pattern constant -value 1 -starttime 1600ns -endtime 2000ns Edit:/register_12_bit/load 
wave modify -driver freeze -pattern constant -value 0 -starttime 1000ns -endtime 2000ns Edit:/register_12_bit/clear 
wave modify -driver freeze -pattern constant -value 1 -starttime 1400ns -endtime 1600ns Edit:/register_12_bit/clear 
WaveCollapseAll -1
wave clipboard restore
