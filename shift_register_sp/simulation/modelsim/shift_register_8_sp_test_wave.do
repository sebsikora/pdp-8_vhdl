onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /shift_register_8_sp/not_reset
add wave -noupdate /shift_register_8_sp/clk
add wave -noupdate /shift_register_8_sp/s_in
add wave -noupdate /shift_register_8_sp/p_out
add wave -noupdate /shift_register_8_sp/s_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 206
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
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/shift_register_8_sp/not_reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/shift_register_8_sp/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/shift_register_8_sp/s_in 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 10000ns Edit:/shift_register_8_sp/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 200ns -endtime 10000ns Edit:/shift_register_8_sp/clk 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 200ns -sequence { 1 0 1 0 1 0 1 0  } -repeat never -starttime 200ns -endtime 10000ns Edit:/shift_register_8_sp/s_in 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 200ns -sequence { 1 0 1 0 1 0 1 0  } -repeat forever -starttime 200ns -endtime 10000ns Edit:/shift_register_8_sp/s_in 
WaveCollapseAll -1
wave clipboard restore
