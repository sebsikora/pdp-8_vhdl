transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/ms_jk_ff/ms_jk_ff.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/ms_jk_ff/basic_gates.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/counters/counter_4_bit/counter_4_bit.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/tty/tty_state_gen/tty_state_gen.vhd}

