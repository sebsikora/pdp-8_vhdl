onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /nand_1_bit_full_adder/carry_in
add wave -noupdate /nand_1_bit_full_adder/inputA
add wave -noupdate /nand_1_bit_full_adder/inputB
add wave -noupdate /nand_1_bit_full_adder/output
add wave -noupdate /nand_1_bit_full_adder/carry_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 195
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
WaveRestoreZoom {0 ps} {2052850 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns sim:/nand_1_bit_full_adder/carry_in 
wave modify -driver freeze -pattern constant -value 1 -starttime 1000ns -endtime 2000ns Edit:/nand_1_bit_full_adder/carry_in 
wave create -driver freeze -pattern clock -initialvalue 0 -period 500ns -dutycycle 50 -starttime 0ns -endtime 2000ns sim:/nand_1_bit_full_adder/inputA 
wave create -driver freeze -pattern clock -initialvalue 0 -period 1000ns -dutycycle 50 -starttime 0ns -endtime 2000ns sim:/nand_1_bit_full_adder/inputB 
WaveCollapseAll -1
wave clipboard restore
