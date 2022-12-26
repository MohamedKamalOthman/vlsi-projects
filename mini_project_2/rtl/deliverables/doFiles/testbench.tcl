vlog testbench.v
vsim multTb
add wave -position insertpoint sim:/multTb/*
run -all