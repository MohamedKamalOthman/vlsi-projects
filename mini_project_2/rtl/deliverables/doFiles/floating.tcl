vlog floating.v
vsim work.floating
add wave -position insertpoint  \
sim:/floating/i_clk \
sim:/floating/i_rst \
sim:/floating/i_load \
sim:/floating/i_a \
sim:/floating/i_b \
sim:/floating/o_res \
sim:/floating/o_overflow \
sim:/floating/o_underflow \
sim:/floating/a \
sim:/floating/b \
sim:/floating/Sa \
sim:/floating/Sb \
sim:/floating/res \
sim:/floating/float_res \
sim:/floating/special_res \
sim:/floating/outA \
sim:/floating/outB \
sim:/floating/enable \
sim:/floating/inA \
sim:/floating/inB \
sim:/floating/aSubn \
sim:/floating/bSubn \
sim:/floating/Ea \
sim:/floating/Eb \
sim:/floating/subn \
sim:/floating/shamt \
sim:/floating/zero \
sim:/floating/Na \
sim:/floating/Nb \
sim:/floating/mult_res \
sim:/floating/mult_shft \
sim:/floating/E_res \
sim:/floating/E_sum \
sim:/floating/E_sub \
sim:/floating/M_res \
sim:/floating/underflow \
sim:/floating/overflow \
sim:/floating/isFF
force -freeze sim:/floating/i_clk 1 0, 0 {5000 ps} -r 5000
force -freeze sim:/floating/i_a 11000000000000000000000000000000 0
force -freeze sim:/floating/i_b 00111110000000000000000000000000 0
force -freeze sim:/floating/i_rst 1 0
force -freeze sim:/floating/i_load 1 0
run