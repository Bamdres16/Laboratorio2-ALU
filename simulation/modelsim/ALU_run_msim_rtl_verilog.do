transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Escritorio/ALU {D:/Escritorio/ALU/xor_gate.sv}
vlog -sv -work work +incdir+D:/Escritorio/ALU {D:/Escritorio/ALU/MuxOperaciones.sv}
vlog -sv -work work +incdir+D:/Escritorio/ALU {D:/Escritorio/ALU/substractor.sv}
vlog -sv -work work +incdir+D:/Escritorio/ALU {D:/Escritorio/ALU/or_gate.sv}
vlog -sv -work work +incdir+D:/Escritorio/ALU {D:/Escritorio/ALU/multiplicacion.sv}
vlog -sv -work work +incdir+D:/Escritorio/ALU {D:/Escritorio/ALU/division.sv}
vlog -sv -work work +incdir+D:/Escritorio/ALU {D:/Escritorio/ALU/and_gate.sv}
vlog -sv -work work +incdir+D:/Escritorio/ALU {D:/Escritorio/ALU/adder.sv}
vlog -sv -work work +incdir+D:/Escritorio/ALU {D:/Escritorio/ALU/MuxLogico.sv}
vlog -sv -work work +incdir+D:/Escritorio/ALU {D:/Escritorio/ALU/MuxAritmetico.sv}
vlog -sv -work work +incdir+D:/Escritorio/ALU {D:/Escritorio/ALU/testALU.sv}

