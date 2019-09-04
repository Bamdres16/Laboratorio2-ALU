transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Edgar/Documents/Laboratorio2-ALU {C:/Users/Edgar/Documents/Laboratorio2-ALU/sheftRight.sv}
vlog -sv -work work +incdir+C:/Users/Edgar/Documents/Laboratorio2-ALU {C:/Users/Edgar/Documents/Laboratorio2-ALU/testShiftRight.sv}

