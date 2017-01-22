onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /system/FP_DATA_OUTPUT
add wave -noupdate /system/FP_PC_OUTPUT
add wave -noupdate /system/clk_out
add wave -noupdate /system/RUN_indicator
add wave -noupdate /system/HLT_indicator
add wave -noupdate /system/FP_ADDR_LOAD
add wave -noupdate /system/FP_DATA_SELECT
add wave -noupdate /system/FP_DEPOSIT
add wave -noupdate /system/FP_EXAMINE
add wave -noupdate /system/FP_SR_INPUT
add wave -noupdate /system/HRQ
add wave -noupdate /system/IRQ
add wave -noupdate /system/START
add wave -noupdate /system/STEP
add wave -noupdate /system/clk_in
add wave -noupdate /system/not_reset
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1012579 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 203
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
WaveRestoreZoom {0 ps} {10500 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/system/FP_ADDR_LOAD 
wave create -driver freeze -pattern constant -value 010 -range 2 0 -starttime 0ns -endtime 10000ns sim:/system/FP_DATA_SELECT 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/system/FP_DEPOSIT 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/system/FP_EXAMINE 
wave create -driver freeze -pattern constant -value 000000000000 -range 11 0 -starttime 0ns -endtime 10000ns sim:/system/FP_SR_INPUT 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/system/HRQ 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/system/IRQ 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/system/START 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/system/STEP 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/system/clk_in 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 200ns -endtime 10000ns Edit:/system/clk_in 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/system/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 10000ns Edit:/system/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ns -endtime 600ns Edit:/system/START 
wave modify -driver freeze -pattern constant -value 0 -starttime 400ns -endtime 600ns Edit:/system/START 
wave modify -driver freeze -pattern constant -value 1 -starttime 600ns -endtime 800ns Edit:/system/FP_DEPOSIT 
wave modify -driver freeze -pattern constant -value 100000000000 -range 11 0 -starttime 600ns -endtime 1400ns Edit:/system/FP_SR_INPUT 
wave modify -driver freeze -pattern constant -value 100000000000 -range 11 0 -starttime 600ns -endtime 2000ns Edit:/system/FP_SR_INPUT 
WaveCollapseAll -1
wave clipboard restore
