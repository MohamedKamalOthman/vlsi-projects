module PlusAdder #(
    parameter Width = 32
) (
    input [Width-1:0] add1_i,
    input [Width-1:0] add2_i,
    output [Width-1:0] sum_o,
    output carry_o
);

  assign {carry_o, sum_o} = add1_i + add2_i;
endmodule

