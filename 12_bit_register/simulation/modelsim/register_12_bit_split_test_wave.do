onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /register_12_bit_split/input_lo
add wave -noupdate /register_12_bit_split/input_hi
add wave -noupdate /register_12_bit_split/not_reset
add wave -noupdate /register_12_bit_split/clk
add wave -noupdate /register_12_bit_split/load_hi
add wave -noupdate /register_12_bit_split/load_lo
add wave -noupdate /register_12_bit_split/clear_hi
add wave -noupdate /register_12_bit_split/clear_lo
add wave -noupdate /register_12_bit_split/output_hi
add wave -noupdate /register_12_bit_split/output_lo
TreeUpdate [SetDefaultTree]
configure wave -namecolwidth 226
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
WaveRestoreZoom {0 ps} {2310 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 00000 -range 4 0 -starttime 0ns -endtime 200ns sim:/register_12_bit_split/input_lo 
WaveExpandAll -1
wave modify -driver freeze -pattern counter -startvalue 00000 -endvalue 11111 -type Range -direction Up -period 200ns -step 1 -repeat forever -range 4 0 -starttime 200ns -endtime 2000ns Edit:/register_12_bit_split/input_lo 
wave create -driver freeze -pattern constant -value 0000000 -range 6 0 -starttime 0ns -endtime 200ns sim:/register_12_bit_split/input_hi 
WaveExpandAll -1
wave modify -driver freeze -pattern counter -startvalue 0000000 -endvalue 1111111 -type Range -direction Up -period 200ns -step 1 -repeat forever -range 6 0 -starttime 200ns -endtime 2000ns Edit:/register_12_bit_split/input_hi 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 2000ns sim:/register_12_bit_split/not_reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/register_12_bit_split/not_reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 2000ns sim:/register_12_bit_split/clk 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 2000ns sim:/register_12_bit_split/load_hi 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/register_12_bit_split/load_hi 
wave modify -driver freeze -pattern constant -value 0 -starttime 1600ns -endtime 1800ns Edit:/register_12_bit_split/load_hi 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 2000ns sim:/register_12_bit_split/load_lo 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/register_12_bit_split/load_lo 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/register_12_bit_split/clear_hi 
wave modify -driver freeze -pattern constant -value 1 -starttime 1600ns -endtime 1800ns Edit:/register_12_bit_split/clear_hi 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns sim:/register_12_bit_split/clear_lo 
wave modify -driver freeze -pattern counter -startvalue 00000 -endvalue 11111 -type Range -direction Up -period 200ns -step 1 -repeat forever -range 4 0 -starttime 200ns -endtime 2200ns Edit:/register_12_bit_split/input_lo 
wave modify -driver freeze -pattern counter -startvalue 0000000 -endvalue 1111111 -type Range -direction Up -period 200ns -step 1 -repeat forever -range 6 0 -starttime 200ns -endtime 2200ns Edit:/register_12_bit_split/input_hi 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 2200ns Edit:/register_12_bit_split/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 2200ns Edit:/register_12_bit_split/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 2000ns -endtime 2200ns Edit:/register_12_bit_split/load_hi 
wave modify -driver freeze -pattern constant -value 0 -starttime 2000ns -endtime 2200ns Edit:/register_12_bit_split/load_lo 
wave modify -driver freeze -pattern constant -value 0 -starttime 2000ns -endtime 2200ns Edit:/register_12_bit_split/clear_hi 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2200ns Edit:/register_12_bit_split/clear_lo 
WaveCollapseAll -1
wave clipboard restore
