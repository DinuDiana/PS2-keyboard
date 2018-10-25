transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/FACULTATE/Anul\ 2/Sem\ 2/scoala\ de\ vara\ fpga/ps2 {E:/FACULTATE/Anul 2/Sem 2/scoala de vara fpga/ps2/ps2.v}
vlog -vlog01compat -work work +incdir+E:/FACULTATE/Anul\ 2/Sem\ 2/scoala\ de\ vara\ fpga/ps2 {E:/FACULTATE/Anul 2/Sem 2/scoala de vara fpga/ps2/SIPO.v}
vlog -vlog01compat -work work +incdir+E:/FACULTATE/Anul\ 2/Sem\ 2/scoala\ de\ vara\ fpga/ps2 {E:/FACULTATE/Anul 2/Sem 2/scoala de vara fpga/ps2/verificare.v}
vlog -vlog01compat -work work +incdir+E:/FACULTATE/Anul\ 2/Sem\ 2/scoala\ de\ vara\ fpga/ps2 {E:/FACULTATE/Anul 2/Sem 2/scoala de vara fpga/ps2/latch_D_ck.v}

vlog -vlog01compat -work work +incdir+E:/FACULTATE/Anul\ 2/Sem\ 2/scoala\ de\ vara\ fpga/ps2 {E:/FACULTATE/Anul 2/Sem 2/scoala de vara fpga/ps2/test.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run -all
