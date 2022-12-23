vlog anotherTrial.v
vsim both
add wave *
force -freeze sim:/both/clk 1 0, 0 {50 ps} -r 100


force reset 1
run
force reset 0
force load 1
force Q 1100 
force M 0011
run
run

force load 0

for {set i 0} {$i < 33} {incr i} {
    run
}
