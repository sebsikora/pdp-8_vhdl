view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_subsystem_test/not_reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_subsystem_test/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 20000ns Edit:/tty_subsystem_test/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 200ns -endtime 20000ns Edit:/tty_subsystem_test/clk 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 800ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 800ns -endtime 20000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 9600ns -endtime 20000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 800ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 300ns Edit:/tty_subsystem_test/clk 
WaveCollapseAll -1
wave clipboard restore
