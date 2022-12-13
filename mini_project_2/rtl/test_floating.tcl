vsim work.floating
add wave -position insertpoint  \
sim:/floating/i_a \
sim:/floating/i_b \
sim:/floating/i_clk \
sim:/floating/o_res
force -freeze sim:/floating/i_clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/floating/i_a 01000000001000000000000000000000 0
force -freeze sim:/floating/i_b 01000000001000000000000000000000 0
run
add wave -position insertpoint  \
sim:/floating/i_a \
sim:/floating/i_b \
sim:/floating/i_clk \
sim:/floating/o_res \
sim:/floating/a \
sim:/floating/b \
sim:/floating/Ea \
sim:/floating/Eb \
sim:/floating/Sa \
sim:/floating/Sb \
sim:/floating/res \
sim:/floating/float_res \
sim:/floating/special_res \
sim:/floating/outA \
sim:/floating/outB \
sim:/floating/enable \
sim:/floating/Na \
sim:/floating/Nb \
sim:/floating/subn \
sim:/floating/normalized \
sim:/floating/normA \
sim:/floating/normB \
sim:/floating/select \
sim:/floating/shift \
sim:/floating/mult_res \
sim:/floating/E_res \
sim:/floating/E_sum \
sim:/floating/E_sub \
sim:/floating/M_res
run
run