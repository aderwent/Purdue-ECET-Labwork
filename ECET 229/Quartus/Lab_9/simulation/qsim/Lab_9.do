onerror {quit -f}
vlib work
vlog -work work Lab_9.vo
vlog -work work Lab_9.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Lab_9_vlg_vec_tst
vcd file -direction Lab_9.msim.vcd
vcd add -internal Lab_9_vlg_vec_tst/*
vcd add -internal Lab_9_vlg_vec_tst/i1/*
add wave /*
run -all
