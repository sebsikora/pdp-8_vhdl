view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_input_state_gen/CLR_RX_FLAG 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_input_state_gen/RX 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_input_state_gen/SLOW_clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_input_state_gen/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20000ns sim:/tty_input_state_gen/not_reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 20000ns Edit:/tty_input_state_gen/not_reset 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 200ns -endtime 20000ns Edit:/tty_input_state_gen/clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ns -endtime 930ns Edit:/tty_input_state_gen/RX 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 20000ns Edit:/tty_input_state_gen/RX 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ns -endtime 930ns Edit:/tty_input_state_gen/RX 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 730ns -dutycycle 50 -starttime 310ns -endtime 20000ns Edit:/tty_input_state_gen/SLOW_clk 
WaveCollapseAll -1
wave clipboard restore
