onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /clock_generator/FP_ADDR_LOAD_out
add wave -noupdate /clock_generator/FP_DEPOSIT_out
add wave -noupdate /clock_generator/FP_EXAMINE_out
add wave -noupdate /clock_generator/RUN_INDICATOR
add wave -noupdate /clock_generator/HLT_INDICATOR
add wave -noupdate /clock_generator/clk
add wave -noupdate /clock_generator/END_STATE
add wave -noupdate /clock_generator/HLT_flag
add wave -noupdate /clock_generator/START
add wave -noupdate /clock_generator/STEP
add wave -noupdate /clock_generator/clk_in
add wave -noupdate /clock_generator/not_reset
add wave -noupdate /clock_generator/FP_ADDR_LOAD_in
add wave -noupdate /clock_generator/FP_DEPOSIT_in
add wave -noupdate /clock_generator/FP_EXAMINE_in
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 248
configure wave -valuecolwidth 40
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
WaveRestoreZoom {0 ps} {4371595 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns sim:/clock_generator/END_STATE 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns sim:/clock_generator/HLT_flag 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns sim:/clock_generator/START 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns sim:/clock_generator/STEP 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 4000ns sim:/clock_generator/clk_in 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 4000ns sim:/clock_generator/not_reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/clock_generator/not_reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/clock_generator/clk_in 
wave modify -driver freeze -pattern constant -value 1 -starttime 600ns -endtime 800ns Edit:/clock_generator/START 
wave modify -driver freeze -pattern constant -value 1 -starttime 600ns -endtime 1000ns Edit:/clock_generator/STEP 
wave modify -driver freeze -pattern constant -value 1 -starttime 600ns -endtime 1400ns Edit:/clock_generator/STEP 
wave modify -driver freeze -pattern constant -value 1 -starttime 1200ns -endtime 1400ns Edit:/clock_generator/END_STATE 
wave modify -driver freeze -pattern constant -value 1 -starttime 600ns -endtime 1800ns Edit:/clock_generator/STEP 
wave modify -driver freeze -pattern constant -value 0 -starttime 1200ns -endtime 1400ns Edit:/clock_generator/END_STATE 
wave modify -driver freeze -pattern constant -value 1 -starttime 1600ns -endtime 1800ns Edit:/clock_generator/END_STATE 
wave modify -driver freeze -pattern constant -value 0 -starttime 1600ns -endtime 1601ns Edit:/clock_generator/END_STATE 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1800ns Edit:/clock_generator/STEP 
wave modify -driver freeze -pattern constant -value 1 -starttime 1000ns -endtime 1200ns Edit:/clock_generator/HLT_flag 
wave modify -driver freeze -pattern constant -value 1 -starttime 2600ns -endtime 2800ns Edit:/clock_generator/START 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns sim:/clock_generator/FP_ADDR_LOAD_in 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns sim:/clock_generator/FP_DEPOSIT_in 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns sim:/clock_generator/FP_EXAMINE_in 
wave modify -driver freeze -pattern constant -value 0 -starttime 2600ns -endtime 2800ns Edit:/clock_generator/START 
wave modify -driver freeze -pattern constant -value 1 -starttime 2600ns -endtime 2800ns Edit:/clock_generator/FP_ADDR_LOAD_in 
wave modify -driver freeze -pattern constant -value 0 -starttime 2600ns -endtime 2800ns Edit:/clock_generator/FP_ADDR_LOAD_in 
wave modify -driver freeze -pattern constant -value 1 -starttime 2200ns -endtime 2400ns Edit:/clock_generator/FP_ADDR_LOAD_in 
wave modify -driver freeze -pattern constant -value 1 -starttime 3400ns -endtime 3600ns Edit:/clock_generator/END_STATE 
WaveCollapseAll -1
wave clipboard restore
