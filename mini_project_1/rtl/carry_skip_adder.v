`include "carry_skip_adder_4_bit.v"

module carry_skip_adder (
    input  [31:0] i_add1,
    input  [31:0] i_add2,
    output [32:0] o_result
);
  wire [7:0] carries;

  carry_skip_adder_4_bit bits_0_to_3 (
      i_add1[3:0],
      i_add2[3:0],
      1'b0,
      o_result[3:0],
      carries[0]
  );
  carry_skip_adder_4_bit bits_4_to_7 (
      i_add1[7:4],
      i_add2[7:4],
      carries[0],
      o_result[7:4],
      carries[1]
  );
  carry_skip_adder_4_bit bits_8_to_11 (
      i_add1[11:8],
      i_add2[11:8],
      carries[1],
      o_result[11:8],
      carries[2]
  );
  carry_skip_adder_4_bit bits_12_to_15 (
      i_add1[15:12],
      i_add2[15:12],
      carries[2],
      o_result[15:12],
      carries[3]
  );
  carry_skip_adder_4_bit bits_16_to_19 (
      i_add1[19:16],
      i_add2[19:16],
      carries[3],
      o_result[19:16],
      carries[4]
  );
  carry_skip_adder_4_bit bits_20_to_23 (
      i_add1[23:20],
      i_add2[23:20],
      carries[4],
      o_result[23:20],
      carries[5]
  );
  carry_skip_adder_4_bit bits_24_to_27 (
      i_add1[27:24],
      i_add2[27:24],
      carries[5],
      o_result[27:24],
      carries[6]
  );
  carry_skip_adder_4_bit bits_28_to_31 (
      i_add1[31:28],
      i_add2[31:28],
      carries[6],
      o_result[31:28],
      carries[7]
  );

  assign o_result[32] = carries[7];
endmodule
