vlog signed_wallace.v
vsim work.signed_wallace

add wave -position insertpoint sim:/signed_wallace/*
force -freeze sim:/signed_wallace/i_clk 1 0, 0 {1000 ps} -r 2000
force -freeze sim:/signed_wallace/i_rst 1 0
force -freeze sim:/signed_wallace/i_en 1 0
run 2000
force -freeze sim:/signed_wallace/i_rst 0 0
force -freeze sim:/signed_wallace/i_inputA 0000_0000_0000_0000_0000_0000_0000_1100 0
force -freeze sim:/signed_wallace/i_inputB 0000_0000_0000_0000_0000_0000_0000_1101 0
run 100000
force -freeze sim:/signed_wallace/i_rst 1 0
run 1000
force -freeze sim:/signed_wallace/i_rst 0 0
force -freeze sim:/signed_wallace/i_inputA 1111_1111_1111_1111_1111_1111_1111_0100 0
force -freeze sim:/signed_wallace/i_inputB 1111_1111_1111_1111_1111_1111_1111_0100 0
run 100000
force -freeze sim:/signed_wallace/i_rst 1 0
run 1000
force -freeze sim:/signed_wallace/i_rst 0 0
force -freeze sim:/signed_wallace/i_inputA 0000_0000_0000_0000_0000_0000_0000_1100 0
force -freeze sim:/signed_wallace/i_inputB 1111_1111_1111_1111_1111_1111_1111_0100 0
run 100000