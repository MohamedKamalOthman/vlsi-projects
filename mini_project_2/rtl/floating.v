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
  assign Ea = a[30:23];
  assign Eb = b[30:23];

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

  wire [23:0] Na, Nb, subn, normalized;
  wire [23:0] normA, normB;
  wire select;

  // add extra bit
  assign Na = {outA != 3'b001, a[22:0]};
  assign Nb = {outB != 3'b001, b[22:0]};

  assign normA = (outA == 3'b001) ? Nb : Na;
  assign subn = (outB == 3'b001) ? Nb : Na;

  assign select = outA != 3'b001 & outB != 3'b001;
  wire [4:0] shift;
  zero_counter zcn (
      subn,
      shift
  );
  assign normalized = subn << shift;
  assign normB = (select) ? Nb : normalized;

  wire [46:0] mult_res;
  wire [ 7:0] E_res;
  wire [8:0] E_sum, E_sub;
  wire [22:0] M_res;
  assign mult_res = normA * normB;
  assign E_sum = Ea + Eb;
  assign E_sub = E_sum - 9'd127;
  assign E_res = (E_sum < 9'd127) ? 8'b0 : (E_sub[8]) ? 8'hff : E_sub[7:0];
  assign M_res = (E_res == 8'hff | E_res == 8'h00) ? 23'b0 : mult_res[45:23];
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

  /// if not normal or subnormal or both subnormal
  assign enable = (outA[0] & outB[0]) & (outA != 3'b001 & outB != 3'b001);


  ///applying the logic of the S

  /// assigning the SS
  assign SS = (outA == 3'b110 || outB == 3'b110) ? 1'b1 : SA ^ SB;

  /// assigning the ES
  assign ES = (outA == 3'b110 || outB == 3'b110) ? 8'hff :  //nan
      ((outA == 3'b100) & (outB == 3'b000)) ? 8'hff :  //nan
      ((outB == 3'b100) & (outA == 3'b000)) ? 8'hff :  //nan
      ((outA == 3'b100) | (outB == 3'b100)) ? 8'hff :  //inf
      ((outA == 3'b000) | (outB == 3'b000)) ? 8'h00 :  //zero
      ((outA == 3'b001) & (outB == 3'b001)) ? 8'h00 :  //zero
      EA;  /// else set it to EA for any uncovered case. 

  /// assigning the MS
  assign MS = (outA == 3'b110 || outB == 3'b110) ? 23'b111_1111_1111_1111_1111_1111 :  //nan
      ((outA == 3'b100) & (outB == 3'b000)) ? 23'b111_1111_1111_1111_1111_1111 :  //nan
      ((outB == 3'b100) & (outA == 3'b000)) ? 23'b111_1111_1111_1111_1111_1111 :  //nan
      ((outA == 3'b100) | (outB == 3'b100)) ? 23'b0 :  //inf
      ((outA == 3'b000) | (outB == 3'b000)) ? 23'b0 :  //zero
      ((outA == 3'b001) & (outB == 3'b001)) ? 8'h00 :  //zero
      MA;  /// else set it to MA for any uncovered case. 

  /// concatinating the wires to the real output.
  assign S = {SS, ES, MS};

endmodule

module zero_counter (
    input  [23:0] M,
    output [ 4:0] Zcount
);
  wire [23:0] Z;
  assign Z = 24'b0;
  assign Zcount =  M[23:0]  == Z[23:0] ? 5'h18 : 
				 M[23:1]  == Z[23:1] ? 5'h17 :
				 M[23:2]  == Z[23:2] ? 5'h16 :
				 M[23:3]  == Z[23:3] ? 5'h15 :
				 M[23:4]  == Z[23:4] ? 5'h14 :
				 M[23:5]  == Z[23:5] ? 5'h13 :
				 M[23:6]  == Z[23:6] ? 5'h12 :
				 M[23:7]  == Z[23:7] ? 5'h11 :
				 M[23:8]  == Z[23:8] ? 5'h10 :
				 M[23:9]  == Z[23:9] ? 5'hf :
				 M[23:10] == Z[23:10] ? 5'he :
				 M[23:11] == Z[23:11] ? 5'hd :
				 M[23:12] == Z[23:12] ? 5'hc :
				 M[23:13] == Z[23:13] ? 5'hb :
				 M[23:14] == Z[23:14] ? 5'ha :
				 M[23:15] == Z[23:15] ? 5'h9 :
				 M[23:16] == Z[23:16] ? 5'h8 :
				 M[23:17] == Z[23:17] ? 5'h7 :
				 M[23:18] == Z[23:18] ? 5'h6 :
				 M[23:19] == Z[23:19] ? 5'h5 :
				 M[23:20] == Z[23:20] ? 5'h4 :
				 M[23:21] == Z[23:21] ? 5'h3 :
				 M[23:22] == Z[23:22] ? 5'h2 :
				 M[23]    == Z[23] ? 5'h1 : 5'h0;

endmodule
