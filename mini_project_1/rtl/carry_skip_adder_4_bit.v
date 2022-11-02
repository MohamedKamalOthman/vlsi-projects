
`include "fullAdder.v"

module carry_skip_adder_4_bit (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
);

  wire [4:0] carries;
  assign carries[0] = Cin;

  fullAdder fullAdder_bit_0 (
      .x(A[0]),
      .y(B[0]),
      .cin(carries[0]),
      .sum(Sum[0]),
      .cout(carries[1])
  );

  fullAdder fullAdder_bit_1 (
      .x(A[1]),
      .y(B[1]),
      .cin(carries[1]),
      .sum(Sum[1]),
      .cout(carries[2])
  );

  fullAdder fullAdder_bit_2 (
      .x(A[2]),
      .y(B[2]),
      .cin(carries[2]),
      .sum(Sum[2]),
      .cout(carries[3])
  );

  fullAdder fullAdder_bit_3 (
      .x(A[3]),
      .y(B[3]),
      .cin(carries[3]),
      .sum(Sum[3]),
      .cout(carries[4])
  );

  assign P = (A[0] ^ B[0]) & (A[1] ^ B[1]) & (A[2] ^ B[2]) & (A[3] ^ B[3]);
  assign Cout = (P == 1'b0) ? carries[4] : Cin;

endmodule
