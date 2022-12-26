module registerNbits #(
    parameter N = 8
) (
    i_clk,
    i_rst,
    i_en,
    inp,
    out
);
  input i_clk, i_rst, i_en;
  output reg [N-1:0] out;
  input [N-1:0] inp;
  always @(posedge i_clk) begin
    if (i_rst) out <= 'b0;
    else if (i_en) out <= inp;
  end
endmodule


module star (
    input i_clk,
    input i_rst,
    input i_en,
    input [31:0] i_inputA,
    input [31:0] i_inputB,
    output [63:0] o_result
);

  wire [31:0] A_reg;
  wire [31:0] B_reg;
  wire [63:0] out_reg;


  registerNbits #(32) regA (
      i_clk,
      i_rst,
      i_en,
      i_inputA,
      A_reg
  );
  registerNbits #(32) regB (
      i_clk,
      i_rst,
      i_en,
      i_inputB,
      B_reg
  );

  wire [31:0] A, B;
  wire [63:0] O;
  assign sign_in1 = A_reg[31];
  assign sign_in2 = B_reg[31];
  // if M is negative take 2's compliment 
  assign A = (sign_in1) ? ~A_reg + 1 : A_reg;

  // if Q is negative take 2's compliment 
  assign B = (sign_in2) ? ~B_reg + 1 : B_reg;

  // if output is negative take 2's compliment
  assign out_reg = (sign_in1 ^ sign_in2) ? ~O + 1 : O;

  assign O = A * B;

  registerNbits #(64) outReg (
      i_clk,
      i_rst,
      i_en,
      out_reg,
      o_result[63:0]
  );


endmodule
/*

vsim work.star -t ps -sdfmax multiplier.sdf
add wave -position insertpoint sim:/star/*
force -freeze sim:/star/i_clk 1 0, 0 {100000 ps} -r 200000
force -freeze sim:/star/i_rst 1 0
force -freeze sim:/star/i_en 1 0
run 200000
force -freeze sim:/star/i_rst 0 0
force -freeze sim:/star/i_inputA 32'd17 0
force -freeze sim:/star/i_inputB 32'd5 0
run 100000000
*/
