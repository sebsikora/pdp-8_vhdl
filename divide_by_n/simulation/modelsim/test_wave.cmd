view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/divide_by_n/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 10000ns Edit:/divide_by_n/not_reset 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns sim:/divide_by_n/not_clear 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/divide_by_n/clk 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 400ns -endtime 10000ns Edit:/divide_by_n/clk 
WaveCollapseAll -1
wave clipboard restore
