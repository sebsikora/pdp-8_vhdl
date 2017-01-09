onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /state_generator/HLT_indicator
add wave -noupdate /state_generator/IR
add wave -noupdate /state_generator/not_reset
add wave -noupdate /state_generator/clk
add wave -noupdate /state_generator/irq
add wave -noupdate /state_generator/start
add wave -noupdate /state_generator/HLT
add wave -noupdate /state_generator/HLT_reg_clk
add wave -noupdate /state_generator/HLT_reg_output
add wave -noupdate /state_generator/s_state_signals
add wave -noupdate /state_generator/t_states
TreeUpdate [SetDefaultTree]
configure wave -namecolwidth 242
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
WaveRestoreZoom {0 ps} {8400 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 00000 -range 4 0 -starttime 0ns -endtime 2000ns sim:/state_generator/IR 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 200ns sim:/state_generator/not_reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/state_generator/not_reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ns -endtime 2000ns Edit:/state_generator/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 2000ns Edit:/state_generator/not_reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/state_generator/clk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 200ns -endtime 2000ns Edit:/state_generator/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/state_generator/irq 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/state_generator/start 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 400ns Edit:/state_generator/start 
wave modify -driver freeze -pattern constant -value 0 -starttime 400ns -endtime 2000ns Edit:/state_generator/start 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ns -endtime 2000ns Edit:/state_generator/start 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 400ns Edit:/state_generator/start 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 200ns -endtime 2000ns Edit:/state_generator/clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ns -endtime 400ns Edit:/state_generator/clk 
wave modify -driver freeze -pattern constant -value 00000 -range 4 0 -starttime 0ns -endtime 3000ns Edit:/state_generator/IR 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 3000ns Edit:/state_generator/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 2000ns -endtime 3000ns Edit:/state_generator/clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 3000ns Edit:/state_generator/irq 
wave modify -driver freeze -pattern constant -value 1 -starttime 2000ns -endtime 3000ns Edit:/state_generator/start 
wave modify -driver freeze -pattern constant -value 0 -starttime 2000ns -endtime 3000ns Edit:/state_generator/start 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 3000ns Edit:/state_generator/irq 
wave modify -driver freeze -pattern constant -value 00000 -range 4 0 -starttime 0ns -endtime 4000ns Edit:/state_generator/IR 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 4000ns Edit:/state_generator/irq 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 4000ns Edit:/state_generator/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 2000ns -endtime 4000ns Edit:/state_generator/clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 2000ns -endtime 4000ns Edit:/state_generator/start 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 4000ns sim:/state_generator/HLT 
wave modify -driver freeze -pattern constant -value 1 -starttime 3200ns -endtime 4000ns Edit:/state_generator/HLT 
wave modify -driver freeze -pattern constant -value 00000 -range 4 0 -starttime 0ns -endtime 5000ns Edit:/state_generator/IR 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 5000ns Edit:/state_generator/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 2000ns -endtime 5000ns Edit:/state_generator/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 5000ns Edit:/state_generator/irq 
wave modify -driver freeze -pattern constant -value 0 -starttime 2000ns -endtime 5000ns Edit:/state_generator/start 
wave modify -driver freeze -pattern constant -value 1 -starttime 3200ns -endtime 5000ns Edit:/state_generator/HLT 
wave modify -driver freeze -pattern constant -value 00000 -range 4 0 -starttime 0ns -endtime 7000ns Edit:/state_generator/IR 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 7000ns Edit:/state_generator/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 2000ns -endtime 7000ns Edit:/state_generator/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 7000ns Edit:/state_generator/irq 
wave modify -driver freeze -pattern constant -value 0 -starttime 2000ns -endtime 7000ns Edit:/state_generator/start 
wave modify -driver freeze -pattern constant -value 1 -starttime 3200ns -endtime 7000ns Edit:/state_generator/HLT 
wave modify -driver freeze -pattern constant -value 0 -starttime 6000ns -endtime 7000ns Edit:/state_generator/HLT 
wave modify -driver freeze -pattern constant -value 1 -starttime 6000ns -endtime 6200ns Edit:/state_generator/start 
wave modify -driver freeze -pattern constant -value 0 -starttime 6000ns -endtime 6200ns Edit:/state_generator/start 
wave modify -driver freeze -pattern constant -value 1 -starttime 6400ns -endtime 6600ns Edit:/state_generator/start 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 8000ns Edit:/state_generator/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 2000ns -endtime 8000ns Edit:/state_generator/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 8000ns Edit:/state_generator/irq 
wave modify -driver freeze -pattern constant -value 0 -starttime 7000ns -endtime 8000ns Edit:/state_generator/start 
wave modify -driver freeze -pattern constant -value 0 -starttime 7000ns -endtime 8000ns Edit:/state_generator/HLT 
wave modify -driver freeze -pattern constant -value 00000 -range 4 0 -starttime 0ns -endtime 8000ns Edit:/state_generator/IR 
WaveCollapseAll -1
wave clipboard restore
