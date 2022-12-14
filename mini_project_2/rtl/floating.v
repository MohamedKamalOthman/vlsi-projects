module floating (
    input [31:0] i_a,
    input [31:0] i_b,
    input i_clk,
    output reg [31:0] o_res
);
  reg [31:0] a, b;
  wire [7:0] Ea, Eb;
  wire Sa, Sb;
  assign Sa = a[31];
  assign Sb = b[31];

  wire [31:0] res, float_res, special_res;
  wire [2:0] outA, outB;
  wire enable;

  n_case ncase (
      .A(a),
      .B(b),
      .S(special_res),
      .outA(outA),
      .outB(outB),
      .enable(enable)
  );

  wire [23:0] Na, Nb;

  // add extra bit
  assign Na = {outA != 3'b001, a[22:0]};
  assign Nb = {outB != 3'b001, b[22:0]};
  assign Ea = a[30:23];
  assign Eb = b[30:23];

  wire [47:0] mult_res;
  wire [22:0] mult_shft;
  wire [ 7:0] E_res;
  wire [8:0] E_sum, E_sub;
  wire [22:0] M_res;
  assign mult_res = Na * Nb;
  assign mult_shft = (mult_res[47]) ? mult_res[46:24] : (mult_res[46])? mult_res[45:23] : mult_res[44:22];
  assign E_sum = Ea + Eb + mult_res[47];
  assign E_sub = E_sum - 9'd127;
  assign E_res = (E_sum < 9'd127) ? 8'b0 : (E_sub[8]) ? 8'hff : E_sub[7:0];
  // possible optimizations 2's complement Esub instead of 127 - Esum
  // check bits instead of comparator E_sum < 127
  // shift max is 24 bits otherwise 0
  assign M_res = (E_res == 8'hff) ? 23'b0 : ((E_sum < 9'd127) & (E_res == 8'h00))? mult_shft >> (9'd127 - E_sum): mult_shft;
  assign float_res = {Sa ^ Sb, E_res, M_res};

  assign res = (enable) ? float_res : special_res;
  always @(posedge i_clk) begin
    a <= i_a;
    b <= i_b;
    o_res <= res;
  end

endmodule

module n_case (
    A,
    B,
    S,
    outA,
    outB,
    enable
);

  ///defining inputs 
  input [31:0] A, B;

  /// defining outputs 
  output [31:0] S;  /// the output 
  output enable;

  /// defining utility wires  
  output [2:0] outA, outB;
  wire [7:0] EA, EB, ES;  /// ES is the Exp of the output
  wire [22:0] MA, MB, MS;
  wire SA, SB, SS;  /// SS is the sign of the output     

  /// applying logic 

  ///assigning the sign bits
  assign SA = A[31];
  assign SB = B[31];

  /// assigning the Exponents 
  assign EA = A[30:23];
  assign EB = B[30:23];

  /// assinging the mantessa ; 
  assign MA = A[22:0];
  assign MB = B[22:0];

  /// ternary on the outA 
  assign outA = (EA == 8'h00 && MA == 23'b0) ? 3'b000 :  // zero
      (EA == 8'h00 && MA > 23'b0) ? 3'b001 :  // subn
      (EA > 8'h00 && EA < 8'hFF && MA > 23'b0) ? 3'b011 :  // n  
      (EA == 8'hFF && MA == 23'b0) ? 3'b100 :  /// infinity
      (EA == 8'hFF && MA > 23'b0) ? 3'b110 :  /// NAN
      3'b011;

  /// ternary on the outA 
  assign outB = (EB == 8'h00 && MB == 23'b0) ? 3'b000 :  // zero
      (EB == 8'h00 && MB > 23'b0) ? 3'b001 :  // subn
      (EB > 8'h00 && EB < 8'hFF && MB > 23'b0) ? 3'b011 :  // n
      (EB == 8'hFF && MB == 23'b0) ? 3'b100 :  /// infinity
      (EB == 8'hFF && MB > 23'b0) ? 3'b110 :  ///NAN
      3'b011;

  /// if not normal or subnormal
  assign enable = (outA[0] & outB[0]);


  ///applying the logic of the S

  /// assigning the SS
  assign SS = (outA == 3'b110 | outB == 3'b110) ? 1'b1 :  //nan
      ((outA == 3'b100) & (outB == 3'b000)) ? 1'b1 :  //nan
      ((outB == 3'b100) & (outA == 3'b000)) ? 1'b1 :  //nan 
      SA ^ SB;

  /// assigning the ES
  assign ES = (outA == 3'b110 | outB == 3'b110) ? 8'hff :  //nan
      ((outA == 3'b100) & (outB == 3'b000)) ? 8'hff :  //nan
      ((outB == 3'b100) & (outA == 3'b000)) ? 8'hff :  //nan
      ((outA == 3'b100) | (outB == 3'b100)) ? 8'hff :  //inf
      ((outA == 3'b000) | (outB == 3'b000)) ? 8'h00 :  //zero
      8'hff;  /// else set it to ff for any uncovered case. 

  /// assigning the MS
  assign MS = (outA == 3'b110 | outB == 3'b110) ? 23'b111_1111_1111_1111_1111_1111 :  //nan
      ((outA == 3'b100) & (outB == 3'b000)) ? 23'b111_1111_1111_1111_1111_1111 :  //nan
      ((outB == 3'b100) & (outA == 3'b000)) ? 23'b111_1111_1111_1111_1111_1111 :  //nan
      ((outA == 3'b100) | (outB == 3'b100)) ? 23'b0 :  //inf
      ((outA == 3'b000) | (outB == 3'b000)) ? 23'b0 :  //zero
      23'b111_1111_1111_1111_1111_1111;  /// else set it to 1's for any uncovered case. 

  /// concatinating the wires to the real output.
  assign S = {SS, ES, MS};

endmodule
