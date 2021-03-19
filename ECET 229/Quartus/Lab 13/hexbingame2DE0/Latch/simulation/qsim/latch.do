onerror {quit -f}
vlib work
vlog -work work latch.vo
vlog -work work latch.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.storeit_vlg_vec_tst
vcd file -direction latch.msim.vcd
vcd add -internal storeit_vlg_vec_tst/*
vcd add -internal storeit_vlg_vec_tst/i1/*
add wave /*
run -all
