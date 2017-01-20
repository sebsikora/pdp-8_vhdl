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
WaveCollapseAll -1
wave clipboard restore
