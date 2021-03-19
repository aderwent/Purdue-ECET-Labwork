onerror {quit -f}
vlib work
vlog -work work lab15_part2.vo
vlog -work work lab15_part2.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.lab15_part2_vlg_vec_tst
vcd file -direction lab15_part2.msim.vcd
vcd add -internal lab15_part2_vlg_vec_tst/*
vcd add -internal lab15_part2_vlg_vec_tst/i1/*
add wave /*
run -all
