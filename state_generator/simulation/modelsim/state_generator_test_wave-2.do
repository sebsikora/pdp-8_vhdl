onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /state_generator/IR
add wave -noupdate /state_generator/irq
add wave -noupdate /state_generator/not_reset
add wave -noupdate /state_generator/clk
add wave -noupdate /state_generator/start
add wave -noupdate /state_generator/s_states
add wave -noupdate /state_generator/t_states
add wave -noupdate /state_generator/next_state
add wave -noupdate /state_generator/IR
add wave -noupdate /state_generator/not_reset
add wave -noupdate /state_generator/clk
add wave -noupdate /state_generator/irq
add wave -noupdate /state_generator/start
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 193
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
WaveRestoreZoom {0 ps} {3150 ns}
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
WaveCollapseAll -1
wave clipboard restore
