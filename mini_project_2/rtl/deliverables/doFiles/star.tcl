vlog star.v
vsim work.star

add wave -position insertpoint sim:/star/*
force -freeze sim:/star/i_clk 1 0, 0 {1000 ps} -r 2000
force -freeze sim:/star/i_rst 1 0
force -freeze sim:/star/i_en 1 0
run 2000
force -freeze sim:/star/i_rst 0 0
force -freeze sim:/star/i_inputA 0000_0000_0000_0000_0000_0000_0000_1100 0
force -freeze sim:/star/i_inputB 0000_0000_0000_0000_0000_0000_0000_1101 0
run 100000
force -freeze sim:/star/i_rst 1 0
run 1000
force -freeze sim:/star/i_rst 0 0
force -freeze sim:/star/i_inputA 1111_1111_1111_1111_1111_1111_1111_0100 0
force -freeze sim:/star/i_inputB 1111_1111_1111_1111_1111_1111_1111_0100 0
run 100000
force -freeze sim:/star/i_rst 1 0
run 1000
force -freeze sim:/star/i_rst 0 0
force -freeze sim:/star/i_inputA 0000_0000_0000_0000_0000_0000_0000_1100 0
force -freeze sim:/star/i_inputB 1111_1111_1111_1111_1111_1111_1111_0100 0
run 100000