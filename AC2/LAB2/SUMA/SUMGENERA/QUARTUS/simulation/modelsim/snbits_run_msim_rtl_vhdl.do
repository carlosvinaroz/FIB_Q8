transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/FIB_Q8/AC2/LAB2/SUMA/SUMGENERA/CODIGO/snbits.vhd}
vcom -93 -work work {d:/fib_q8/ac2/lab2/suma/componentes/sum1bit/codigo/s1bit.vhd}

vcom -2008 -work work {D:/FIB_Q8/AC2/LAB2/SUMA/SUMGENERA/QUARTUS/../PRUEBAS/prueba_snbits_reloj.vhd}
vcom -93 -work work {D:/FIB_Q8/AC2/LAB2/SUMA/SUMGENERA/QUARTUS/../PRUEBAS/snref.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  prueba_snbits_reloj

do D:/FIB_Q8/AC2/LAB2/SUMA/SUMGENERA/QUARTUS/../PRUEBAS/formato_ventanas.do
