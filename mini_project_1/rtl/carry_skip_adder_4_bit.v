
`include "full_adder.v"

module carry_skip_adder_4_bit (
		input [3:0]  A,
		input [3:0]  B,
		input Cin,
		output [3:0] Sum,
		output Cout
	);
	
	wire [4:0] carries;
	assign carries[0] = Cin;
	
	full_adder full_adder_bit_0
    ( 
      .i_bit1(A[0]),
      .i_bit2(B[0]),
      .i_carry(carries[0]),
      .o_sum(Sum[0]),
      .o_carry(carries[1])
      );
 
	full_adder full_adder_bit_1
    ( 
      .i_bit1(A[1]),
      .i_bit2(B[1]),
      .i_carry(carries[1]),
      .o_sum(Sum[1]),
      .o_carry(carries[2])
      );
 
	full_adder full_adder_bit_2
    ( 
      .i_bit1(A[2]),
      .i_bit2(B[2]),
      .i_carry(carries[2]),
      .o_sum(Sum[2]),
      .o_carry(carries[3])
      );
   
	full_adder full_adder_bit_3
    ( 
      .i_bit1(A[3]),
      .i_bit2(B[3]),
      .i_carry(carries[3]),
      .o_sum(Sum[3]),
      .o_carry(carries[4])
      );
	
	assign P = (A[0] ^ B[0]) & (A[1] ^ B[1]) & (A[2] ^ B[2]) & (A[3] ^ B[3]);	
	assign Cout = (P == 1'b0) ? carries[4] : Cin;

endmodule