onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /control_subsystem/s_state_signals
add wave -noupdate /control_subsystem/t_state_signals
add wave -noupdate /control_subsystem/ADD_CARRY
add wave -noupdate /control_subsystem/ASSERT_CONTROL
add wave -noupdate /control_subsystem/END_STATE
add wave -noupdate /control_subsystem/NEXT_STATE
add wave -noupdate /control_subsystem/FP_ADDR_LOAD
add wave -noupdate /control_subsystem/FP_DEPOSIT
add wave -noupdate /control_subsystem/FP_EXAMINE
add wave -noupdate /control_subsystem/INC_CARRY
add wave -noupdate /control_subsystem/IRQ_ON
add wave -noupdate /control_subsystem/IRQ
add wave -noupdate /control_subsystem/IS_AUTO_INDEX
add wave -noupdate /control_subsystem/IS_NEG
add wave -noupdate /control_subsystem/IS_ZERO
add wave -noupdate /control_subsystem/IS_ZERO_LAST
add wave -noupdate /control_subsystem/LINK_VALUE
add wave -noupdate /control_subsystem/MD_BUS
add wave -noupdate /control_subsystem/START
add wave -noupdate /control_subsystem/STEP
add wave -noupdate /control_subsystem/not_reset
add wave -noupdate /control_subsystem/clk
add wave -noupdate /control_subsystem/HRQ
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 263
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
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/ADD_CARRY 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/ASSERT_CONTROL 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/END_STATE 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/NEXT_STATE 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/FP_ADDR_LOAD 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/FP_DEPOSIT 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/FP_EXAMINE 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/INC_CARRY 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns sim:/control_subsystem/IRQ_ON 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/IRQ 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/IS_AUTO_INDEX 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/IS_NEG 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/IS_ZERO 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/IS_ZERO_LAST 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/LINK_VALUE 
wave create -driver freeze -pattern constant -value 001011100111 -range 11 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/MD_BUS 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/START 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/STEP 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/control_subsystem/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 10000ns Edit:/control_subsystem/not_reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/control_subsystem/clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/control_subsystem/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/control_matrix/HRQ 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/control_subsystem/HRQ 
wave modify -driver freeze -pattern constant -value 110001110100 -range 11 0 -starttime 0ns -endtime 10000ns Edit:/control_subsystem/MD_BUS 
WaveCollapseAll -1
wave clipboard restore
