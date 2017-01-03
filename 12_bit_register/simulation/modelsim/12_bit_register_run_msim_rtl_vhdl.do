transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/ms_jk_ff/basic_gates.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/ms_jk_ff/ms_jk_ff.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/12_bit_register/register_12_bit_split.vhd}

