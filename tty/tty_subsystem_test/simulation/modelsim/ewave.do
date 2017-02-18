view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 20000ns sim:/tty_subsystem_test/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 500ns sim:/tty_subsystem_test/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 500ns -endtime 20000ns Edit:/tty_subsystem_test/not_reset 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 800ns sim:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 800ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 800ns -endtime 20000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 9600ns -endtime 20000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 3200ns -sequence { 0 1 0 1 0  } -repeat 2 -starttime 800ns -endtime 20000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 3200ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 800ns -endtime 20000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 3200ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 800ns -endtime 40000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 3200ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 800ns -endtime 100000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 500ns -endtime 100000ns Edit:/tty_subsystem_test/not_reset 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 3200ns -sequence { 0 1 0 1 0 1 0 1 0 1 1  } -repeat never -starttime 50000ns -endtime 100000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 36000ns -endtime 50000ns Edit:/tty_subsystem_test/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 85200ns -endtime 100000ns Edit:/tty_subsystem_test/RX 
wave create -driver freeze -pattern clock -initialvalue 0 -period 400ns -dutycycle 50 -starttime 0ps -endtime 100000ps sim:/tty_subsystem_test/clk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 400ns -dutycycle 50 -starttime 0ns -endtime 100000ns Edit:/tty_subsystem_test/clk 
WaveCollapseAll -1
wave clipboard restore
