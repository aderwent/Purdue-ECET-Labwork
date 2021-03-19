onerror {quit -f}
vlib work
vlog -work work data_sel2.vo
vlog -work work data_sel2.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.data_sel2_vlg_vec_tst
vcd file -direction data_sel2.msim.vcd
vcd add -internal data_sel2_vlg_vec_tst/*
vcd add -internal data_sel2_vlg_vec_tst/i1/*
add wave /*
run -all
