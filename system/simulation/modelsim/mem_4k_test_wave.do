view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 000000000000 -range 11 0 -starttime 0ns -endtime 3000ns sim:/memory_4k/address 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 0ns -endtime 3000ns sim:/memory_4k/clock 
wave create -driver freeze -pattern constant -value 000000000000 -range 11 0 -starttime 0ns -endtime 3000ns sim:/memory_4k/data 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 3000ns sim:/memory_4k/wren 
WaveCollapseAll -1
wave clipboard restore
