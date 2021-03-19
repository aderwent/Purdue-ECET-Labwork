onerror {quit -f}
vlib work
vlog -work work twobit_compare.vo
vlog -work work twobit_compare.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.twobit_compare_vlg_vec_tst
vcd file -direction twobit_compare.msim.vcd
vcd add -internal twobit_compare_vlg_vec_tst/*
vcd add -internal twobit_compare_vlg_vec_tst/i1/*
add wave /*
run -all
