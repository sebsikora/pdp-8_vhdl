onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /memory_4k/address
add wave -noupdate /memory_4k/clock
add wave -noupdate /memory_4k/data
add wave -noupdate /memory_4k/wren
add wave -noupdate /memory_4k/clken
add wave -noupdate /memory_4k/addressstall_a
add wave -noupdate /memory_4k/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {800000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
wave create -driver freeze -pattern constant -value 000000000000 -range 11 0 -starttime 0ns -endtime 3000ns sim:/memory_4k/address 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 0ns -endtime 3000ns sim:/memory_4k/clock 
wave create -driver freeze -pattern constant -value 000000000000 -range 11 0 -starttime 0ns -endtime 3000ns sim:/memory_4k/data 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 3000ns sim:/memory_4k/wren 
wave modify -driver freeze -pattern counter -startvalue 000000000000 -endvalue 111111111111 -type Range -direction Up -period 200ns -step 1 -repeat forever -range 11 0 -starttime 0ns -endtime 3000ns Edit:/memory_4k/address 
wave modify -driver freeze -pattern constant -value 1 -starttime 800ns -endtime 1200ns Edit:/memory_4k/wren 
wave modify -driver freeze -pattern constant -value 1 -starttime 800ns -endtime 1000ns Edit:/memory_4k/wren 
wave modify -driver freeze -pattern constant -value 0 -starttime 1000ns -endtime 1200ns Edit:/memory_4k/wren 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 3000ns Edit:/memory_4k/clock 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 3000ns sim:/memory_4k/clken 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 200ns Edit:/memory_4k/clken 
wave modify -driver freeze -pattern constant -value 1 -starttime 800ns -endtime 1000ns Edit:/memory_4k/clken 
wave modify -driver freeze -pattern constant -value 111111111111 -range 11 0 -starttime 800ns -endtime 1000ns Edit:/memory_4k/data 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 0ns -endtime 3000ns Edit:/memory_4k/clock 
wave modify -driver freeze -pattern constant -value 1 -starttime 1400ns -endtime 1800ns Edit:/memory_4k/clken 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 3000ns sim:/memory_4k/addressstall_a 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/memory_4k/clken 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 400ns Edit:/memory_4k/clken 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 400ns Edit:/memory_4k/addressstall_a 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 3000ns Edit:/memory_4k/clock 
wave modify -driver freeze -pattern constant -value 111111111111 -range 11 0 -starttime 800ns -endtime 1200ns Edit:/memory_4k/data 
wave modify -driver freeze -pattern constant -value 0 -starttime 1400ns -endtime 1800ns Edit:/memory_4k/clken 
wave modify -driver freeze -pattern constant -value 1 -starttime 1000ns -endtime 1200ns Edit:/memory_4k/addressstall_a 
wave modify -driver freeze -pattern constant -value 0 -starttime 800ns -endtime 1000ns Edit:/memory_4k/clken 
wave modify -driver freeze -pattern constant -value 0 -starttime 800ns -endtime 1000ns Edit:/memory_4k/wren 
wave modify -driver freeze -pattern constant -value 1 -starttime 1000ns -endtime 1200ns Edit:/memory_4k/wren 
wave modify -driver freeze -pattern constant -value 1 -starttime 1000ns -endtime 1200ns Edit:/memory_4k/clken 
wave modify -driver freeze -pattern constant -value 1 -starttime 800ns -endtime 1000ns Edit:/memory_4k/clken 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 200ns Edit:/memory_4k/clken 
wave modify -driver freeze -pattern constant -value 1 -starttime 800ns -endtime 1000ns Edit:/memory_4k/wren 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ns -endtime 400ns Edit:/memory_4k/clken 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 400ns Edit:/memory_4k/addressstall_a 
wave modify -driver freeze -pattern constant -value 0 -starttime 1000ns -endtime 1200ns Edit:/memory_4k/wren 
wave modify -driver freeze -pattern constant -value 0 -starttime 1000ns -endtime 1200ns Edit:/memory_4k/clken 
wave modify -driver freeze -pattern constant -value 0 -starttime 1000ns -endtime 1200ns Edit:/memory_4k/addressstall_a 
WaveCollapseAll -1
wave clipboard restore
