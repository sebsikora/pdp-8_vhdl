onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /clock_generator/not_reset
add wave -noupdate /clock_generator/clk_in
add wave -noupdate /clock_generator/STEP
add wave -noupdate /clock_generator/START
add wave -noupdate /clock_generator/clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 205
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
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/clock_generator/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 1000ns Edit:/clock_generator/not_reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/clock_generator/clk_in 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/clock_generator/clk_in 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns sim:/clock_generator/STEP 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns sim:/clock_generator/START 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ns -endtime 500ns Edit:/clock_generator/START 
wave modify -driver freeze -pattern constant -value 0 -starttime 400ns -endtime 500ns Edit:/clock_generator/START 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ns -endtime 600ns Edit:/clock_generator/START 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 2000ns Edit:/clock_generator/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 1000ns -endtime 2000ns Edit:/clock_generator/clk_in 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 1000ns -endtime 2000ns Edit:/clock_generator/clk_in 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 1000ns -endtime 2000ns Edit:/clock_generator/clk_in 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns Edit:/clock_generator/STEP 
wave modify -driver freeze -pattern constant -value 1 -starttime 1000ns -endtime 1200ns Edit:/clock_generator/START 
wave modify -driver freeze -pattern constant -value 0 -starttime 1200ns -endtime 2000ns Edit:/clock_generator/START 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ns -endtime 800ns Edit:/clock_generator/STEP 
WaveCollapseAll -1
wave clipboard restore
