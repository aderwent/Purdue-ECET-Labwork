onerror {quit -f}
vlib work
vlog -work work random.vo
vlog -work work random.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.random_vlg_vec_tst
vcd file -direction random.msim.vcd
vcd add -internal random_vlg_vec_tst/*
vcd add -internal random_vlg_vec_tst/i1/*
add wave /*
run -all
