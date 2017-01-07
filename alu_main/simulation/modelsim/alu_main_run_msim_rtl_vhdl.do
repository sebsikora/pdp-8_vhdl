transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/ms_jk_ff/basic_gates.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/alu_main/alu_main.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/alu_main/alu_and.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/alu_main/alu_add.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/alu_main/alu_or.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/alu_main/nand_1_bit_full_adder.vhd}
vcom -93 -work work {/home/sebsikora/altera/projects/pdp-8/alu_main/alu_mux.vhd}

