onerror {quit -f}
vlib work
vlog -work work count8.vo
vlog -work work count8.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.count8_vlg_vec_tst
vcd file -direction count8.msim.vcd
vcd add -internal count8_vlg_vec_tst/*
vcd add -internal count8_vlg_vec_tst/i1/*
add wave /*
run -all
