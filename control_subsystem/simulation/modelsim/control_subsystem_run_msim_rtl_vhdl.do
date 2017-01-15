transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/clock_generator/clock_generator.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/state_generator/counter_3_bit.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/state_generator/counter_3_bit_with_load.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/state_generator/decoder_3_to_8.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/ms_jk_ff/ms_jk_ff.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/ms_jk_ff/basic_gates.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/state_generator/t_state_generator.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/state_generator/s_state_generator.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/12_bit_register/register_5_bit.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/control_logic/control_logic.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/state_generator/state_generator.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/control_subsystem/control_subsystem.vhd}

