`include "fullAdder.v"

module CarryRippleAdder #(
    parameter Width = 32
) (
    input [Width-1:0] add1_i,
    input [Width-1:0] add2_i,
    output [Width-1:0] sum_o,
    output carry_o
);
  wire [Width:0] carries;

  assign carries[0] = 0;
  assign carry_o    = carries[Width];

  // Create the Full Adders
  genvar BitIndex;
  generate
    for (BitIndex = 0; BitIndex < Width; BitIndex = BitIndex + 1) begin
      fullAdder fa_inst (
          .x(add1_i[BitIndex]),
          .y(add2_i[BitIndex]),
          .cin(carries[BitIndex]),
          .sum(sum_o[BitIndex]),
          .cout(carries[BitIndex+1])
      );
    end
  endgenerate
endmodule

