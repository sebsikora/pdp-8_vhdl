onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top_level/control_subsystem_0/END_STATE_flag
add wave -noupdate /top_level/control_subsystem_0/NEXT_STATE_flag
add wave -noupdate /top_level/clk
add wave -noupdate /top_level/RUN_indicator
add wave -noupdate /top_level/HLT_indicator
add wave -noupdate /top_level/control_subsystem_0/s_state_signals
add wave -noupdate /top_level/control_subsystem_0/t_state_signals
add wave -noupdate /top_level/not_reset
add wave -noupdate /top_level/STEP
add wave -noupdate /top_level/clk_in
add wave -noupdate /top_level/START
add wave -noupdate /top_level/mem_data_bus_in
add wave -noupdate /top_level/NEXT_STATE
add wave -noupdate /top_level/IRQ_ON
add wave -noupdate /top_level/IRQ
add wave -noupdate /top_level/HRQ
add wave -noupdate /top_level/FP_EXAMINE
add wave -noupdate /top_level/FP_DEPOSIT
add wave -noupdate /top_level/FP_ADDR_LOAD
add wave -noupdate /top_level/END_STATE
add wave -noupdate /top_level/ASSERT_CONTROL
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2482558 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 207
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
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/top_level/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 2000ns Edit:/top_level/not_reset 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 2000ns sim:/top_level/STEP 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 2000ns sim:/top_level/clk_in 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/top_level/START 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 400ns Edit:/top_level/START 
wave create -driver freeze -pattern constant -value 101010110100 -range 11 0 -starttime 0ns -endtime 2000ns sim:/top_level/mem_data_bus_in 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/top_level/NEXT_STATE 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 2000ns sim:/top_level/IRQ_ON 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/top_level/IRQ 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/top_level/HRQ 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/top_level/FP_EXAMINE 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/top_level/FP_DEPOSIT 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/top_level/FP_ADDR_LOAD 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/top_level/END_STATE 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/top_level/ASSERT_CONTROL 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 4000ns Edit:/top_level/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 4000ns Edit:/top_level/STEP 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 4000ns Edit:/top_level/clk_in 
wave modify -driver freeze -pattern constant -value 0 -starttime 2000ns -endtime 4000ns Edit:/top_level/START 
wave modify -driver freeze -pattern constant -value 101010110100 -range 11 0 -starttime 0ns -endtime 4000ns Edit:/top_level/mem_data_bus_in 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns Edit:/top_level/NEXT_STATE 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 4000ns Edit:/top_level/IRQ_ON 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns Edit:/top_level/IRQ 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns Edit:/top_level/HRQ 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns Edit:/top_level/FP_EXAMINE 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns Edit:/top_level/FP_DEPOSIT 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns Edit:/top_level/FP_ADDR_LOAD 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns Edit:/top_level/END_STATE 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns Edit:/top_level/ASSERT_CONTROL 
wave modify -driver freeze -pattern constant -value 1 -starttime 600ns -endtime 800ns Edit:/top_level/HRQ 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 4000ns Edit:/top_level/IRQ 
wave modify -driver freeze -pattern constant -value 0 -starttime 600ns -endtime 800ns Edit:/top_level/HRQ 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns Edit:/top_level/IRQ 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 4000ns Edit:/top_level/IRQ 
WaveCollapseAll -1
wave clipboard restore
