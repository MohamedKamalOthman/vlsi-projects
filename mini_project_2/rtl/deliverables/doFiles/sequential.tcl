vlog sequential.v
vsim work.sequential

add wave -position insertpoint sim:/sequential/*
add wave -position insertpoint sim:/sequential/mult/controller/*
add wave -position insertpoint sim:/sequential/mult/shifter/*
add wave -position insertpoint sim:/sequential/mult/adder/*
force -freeze sim:/sequential/i_clk 1 0, 0 {1000 ps} -r 2000
force -freeze sim:/sequential/i_rst 1 0
force -freeze sim:/sequential/i_en 1 0
run 2000
force -freeze sim:/sequential/i_rst 0 0
force -freeze sim:/sequential/i_inputA 0000_0000_0000_0000_0000_0000_0000_1100 0
force -freeze sim:/sequential/i_inputB 0000_0000_0000_0000_0000_0000_0000_1101 0
run 100000
force -freeze sim:/sequential/i_rst 1 0
run 1000
force -freeze sim:/sequential/i_rst 0 0
force -freeze sim:/sequential/i_inputA 1111_1111_1111_1111_1111_1111_1111_0100 0
force -freeze sim:/sequential/i_inputB 1111_1111_1111_1111_1111_1111_1111_0100 0
run 100000
force -freeze sim:/sequential/i_rst 1 0
run 1000
force -freeze sim:/sequential/i_rst 0 0
force -freeze sim:/sequential/i_inputA 0000_0000_0000_0000_0000_0000_0000_1100 0
force -freeze sim:/sequential/i_inputB 1111_1111_1111_1111_1111_1111_1111_0100 0
run 100000