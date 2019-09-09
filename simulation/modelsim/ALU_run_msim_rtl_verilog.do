transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Escritorio/ALU {D:/Escritorio/ALU/registro.sv}
vlog -sv -work work +incdir+D:/Escritorio/ALU {D:/Escritorio/ALU/testRegistro.sv}

