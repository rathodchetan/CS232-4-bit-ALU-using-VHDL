transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/chetan/Desktop/Semester4/CS232DLDCALab/lab4/q1/Adder_Substracter.vhd}
vcom -93 -work work {/home/chetan/Desktop/Semester4/CS232DLDCALab/lab4/q1/FourToOnexor.vhd}
vcom -93 -work work {/home/chetan/Desktop/Semester4/CS232DLDCALab/lab4/q1/xor_gate.vhd}
vcom -93 -work work {/home/chetan/Desktop/Semester4/CS232DLDCALab/lab4/q1/not_gate.vhd}
vcom -93 -work work {/home/chetan/Desktop/Semester4/CS232DLDCALab/lab4/q1/and_gate.vhd}
vcom -93 -work work {/home/chetan/Desktop/Semester4/CS232DLDCALab/lab4/q1/or_gate.vhd}

