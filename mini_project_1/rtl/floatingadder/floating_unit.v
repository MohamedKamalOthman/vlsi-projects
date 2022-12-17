module floating_unit (
    input [31:0] A,
    input [31:0] B,
    input A_S,
    output reg [31:0] result
);

  reg [31:0] S;
  reg Enable;

  reg [1:0] edata;
  reg [36:0] NA, NB;

  reg SComp, SAsub, SBsub, Compnor, SAnor, SBnor;
  reg [7:0] Esub, Enor;
  reg [27:0] MAsub, MBsub, MAnor, MBnor;

  reg [36:0] MixA, MixB, AMux, BMux;

  reg SA, SB, C;
  reg [7:0] Eout;
  reg [27:0] MAout, MBout;

  reg [27:0] MS;
  reg CO, SO;

  reg [22:0] M;
  reg [ 7:0] E;

  reg [31:0] N;

  n_case nc (
      A,
      B,
      S,
      Enable
  );

  selector sel (
      A,
      B,
      edata,
      NA,
      NB
  );

  n_subn nsbn (
      NA,
      NB,
      SComp,
      SAsub,
      SBsub,
      Esub,
      MAsub,
      MBsub
  );

  // mux_ns mxns (
  //     NA,
  //     NB,
  //     MixA,
  //     MixB,
  //     AMux,
  //     BMux,
  //     edata
  // );

  // norm nrm (
  //     NA,
  //     NB,
  //     MixA,
  //     MixB
  // );

  n_normal nnrm (
      NA,
      NB,
      edata,
      SAnor,
      SBnor,
      Compnor,
      Enor,
      MAnor,
      MBnor
  );

  mux_adder mxaddr (
      SAsub,
      SBsub,
      SComp,
      Esub,
      MAsub,
      MBsub,
      SAnor,
      SBnor,
      Compnor,
      Enor,
      MAnor,
      MBnor,
      edata,
      SA,
      SB,
      C,
      Eout,
      MAout,
      MBout
  );


  block_adder ba (
      SA,
      SB,
      C,
      MAout,
      MBout,
      A_S,
      MS,
      CO,
      SO
  );

  block_norm blknrm (
      Eout,
      CO,
      MS,
      M,
      E
  );

  vector vec (
      SO,
      E,
      M,
      N
  );

  always @ * begin 
   result = (Enable == 1'b1) ? N : S;
  end
endmodule


/// @author Abdelaziz Salah 
/// @date 4/11/2022
module n_case (
    A,
    B,
    S,
    enable
);

  ///defining inputs 
  input [31:0] A, B;

  /// defining outputs 
  output reg [31:0] S;  /// the output reg 
  output reg enable;

  /// defining utility regs  
  reg [2:0] outA, outB;
  reg [7:0] EA, EB, ES;  /// ES is the Exp of the output
  reg [22:0] MA, MB, MS;
  reg SA, SB, SS;  /// SS is the sign of the output     

  /// applying logic 

  always @ * begin
  ///assigning the sign bits
   SA = A[31];
   SB = B[31];

  /// ing the Exponents 
   EA = A[30:23];
   EB = B[30:23];

  /// assinging the mantessa ; 
   MA = A[22:0];
   MB = B[22:0];

  /// ternary on the outA 
   outA = 
    (EA == 8'h00 && MA == 23'b0) ? 3'b000:  
    (EA == 8'h00 && MA > 23'b0) ? 3'b001:  
    (EA > 8'h00 && EA < 8'hFF && MA > 23'b0) ? 3'b011:  
    (EA == 8'hFF && MA == 23'b0) ? 3'b100:  /// infinity
      (EA == 8'hFF && MA > 23'b0) ? 3'b110 :  /// NAN
      3'b011;

  /// ternary on the outA 
   outB = 
    (EB == 8'h00 && MB == 23'b0) ? 3'b000:  
    (EB == 8'h00 && MB > 23'b0) ? 3'b001:  
    (EB > 8'h00 && EB < 8'hFF && MB > 23'b0) ? 3'b011:  
    (EB == 8'hFF && MB == 23'b0) ? 3'b100:  /// infinity
      (EB == 8'hFF && MB > 23'b0) ? 3'b110 :  ///NAN
      3'b011;

  /// if not normal or subnormal
   enable = outA[0] & outB[0];


  ///applying the logic of the S

  /// ing the SS
   SS = (outA == 3'b110 || outB == 3'b110) ? 1'b1 :
     (((outA & outB) == 3'b100) & (SA == SB)) ? SA : 
     (((outA & outB) == 3'b100) & (SA != SB)) ? 1'b1: 
     (outA[0] == 1'b1 && outB == 3'b100) ? SB :
     (outB[0] == 1'b1 && outA == 3'b100) ? SA :
     (outA == 3'b000) ? SB : 
     SA; /// else set it to SA for any uncovered case. 


  /// ing the ES
   ES  = (outA == 3'b110 || outB == 3'b110) ? 8'hFF :
     (((outA & outB) == 3'b100) && (SA == SB)) ? 8'hFF : 
     (((outA & outB) == 3'b100) && (SA != SB)) ? EA: 
     (outA[0] == 1'b1 && outB == 3'b100) ? EB :
     (outB[0] == 1'b1 && outA == 3'b100) ? EA :
     (outA == 3'b000) ? EB: 
      EA; /// else set it to SA for any uncovered case. 

  /// ing the MS
   MS  = (outA == 3'b110 || outB == 3'b110) ? 23'b1 :
     (((outA & outB) == 3'b100) & (SA == SB)) ? MA: 
     (((outA & outB) == 3'b100) & (SA != SB)) ? 23'b1 : 
     (outA[0] == 1'b1 && outB == 3'b100) ? MB :
     (outB[0] == 1'b1 && outA == 3'b100) ? MA :
     (outA == 3'b000) ? MB: 
      MA; /// else set it to SA for any uncovered case. 

  /// concatinating the regs to the real output.
   S = {SS, ES, MS};
  end
endmodule


module selector (
    input  [31:0] A,
    input  [31:0] B,
    output reg [ 1:0] edata,
    output reg [36:0] NA,
    output reg [36:0] NB
);
  reg SA, SB;
  reg [7:0] EA, EB;
  reg [22:0] MA, MB;

always @ * begin
   SA = A[31];
   SB = B[31];
   EA = A[30:23];
   EB = B[30:23];
   MA = A[22:0];
   MB = B[22:0];

   NA[36] = SA;
   NB[36] = SB;

   NA[35:28] = EA;
   NB[35:28] = EB;

   NA[27] = (EA > 8'h00) ? 1'b1 : 1'b0;
   NB[27] = (EB > 8'h00) ? 1'b1 : 1'b0;

   NA[26:4] = MA;
   NA[3:0] = 4'b0;

   NB[26:4] = MB;
   NB[3:0] = 4'b0;

   edata = (EA == 8'h00 && EB == 8'h00) ? 2'b00 : (EA > 8'h00 && EB > 8'h00) ? 2'b01 : 2'b10;
end
endmodule


module n_subn (
    input [36:0] A,
    input [36:0] B,

    output reg Comp,
    output reg SA,
    output reg SB,
    output reg [7:0] EO,
    output reg [27:0] MA,
    output reg [27:0] MB
);
  reg [27:0] MAa, MBb;

  always @ * begin
   MAa  = A[27:0];
   MBb  = B[27:0];


   SA   = A[36];
   SB   = B[36];

   Comp = (MAa >= MBb) ? 1'b1 : 1'b0;

   EO   = A[35:28];

   MA   = (Comp == 1'b1) ? MAa : MBb;
   MB   = (Comp == 1'b1) ? MBb : MAa;
   end
endmodule


module mux_ns (
    input  [36:0] ANor,
    input  [36:0] BNor,
    input  [36:0] AMix,
    input  [36:0] BMix,
    output reg [36:0] A,
    output reg [36:0] B,
    input  [ 1:0] edata
);
always @ * begin
   A = edata == 2'b01 ? ANor : AMix;
   B = edata == 2'b01 ? BNor : BMix;
end
endmodule

module norm (
    input  [36:0] A,
    input  [36:0] B,
    output reg [36:0] MixA,
    output reg [36:0] MixB
);

<<<<<<< Updated upstream
  wire [36:0] NB;
  wire [ 4:0] shft;
  wire [27:0] shiftB;
=======
  reg [36:0] NB;
  reg [ 4:0] shft;

>>>>>>> Stashed changes
  comp c (
      A,
      B,
      MixA,
      NB
  );
  zero_counter z (
      NB[27:0],
      shft
  );
  n_shift ns (
      shft,
      NB[27:0],
      shiftB
  );
<<<<<<< Updated upstream

  assign MixB = {NB[36], 3'b000, shft, shiftB[27:1], 1'b1};
=======
always @ * begin

   MixB[36:28] = NB[36:28];
end
>>>>>>> Stashed changes
endmodule

module comp (
    input  [36:0] A,
    input  [36:0] B,
    output reg [36:0] NA,
    output reg [36:0] NB
);
<<<<<<< Updated upstream

  assign NA = A[35:28] == 8'b0 ? B : A;
  assign NB = A[35:28] == 8'b0 ? A : B;

=======
always @ * begin
   NA = A[35:28] == 8'b0 ? A : B;
   NB = A[35:28] == 8'b0 ? B : A;
end
>>>>>>> Stashed changes
endmodule
module zero_counter (
    input  [27:0] M,
    output reg [ 4:0] Zcount
);
  reg [27:0] Z;
always @ * begin

   Z = 28'b0;
   Zcount =  M[27:0]  == Z[27:0] ? 5'h1c : 
				 M[27:1]  == Z[27:1] ? 5'h1b :
				 M[27:2]  == Z[27:2] ? 5'h1a :
				 M[27:3]  == Z[27:3] ? 5'h19 :
				 M[27:4]  == Z[27:4] ? 5'h18 :
				 M[27:5]  == Z[27:5] ? 5'h17 :
				 M[27:6]  == Z[27:6] ? 5'h16 :
				 M[27:7]  == Z[27:7] ? 5'h15 :
				 M[27:8]  == Z[27:8] ? 5'h14 :
				 M[27:9]  == Z[27:9] ? 5'h13 :
				 M[27:10] == Z[27:10] ? 5'h12 :
				 M[27:11] == Z[27:11] ? 5'h11 :
				 M[27:12] == Z[27:12] ? 5'h10 :
				 M[27:13] == Z[27:13] ? 5'hf :
				 M[27:14] == Z[27:14] ? 5'he :
				 M[27:15] == Z[27:15] ? 5'hd :
				 M[27:16] == Z[27:16] ? 5'hc :
				 M[27:17] == Z[27:17] ? 5'hb :
				 M[27:18] == Z[27:18] ? 5'ha :
				 M[27:19] == Z[27:19] ? 5'h9 :
				 M[27:20] == Z[27:20] ? 5'h8 :
				 M[27:21] == Z[27:21] ? 5'h7 :
				 M[27:22] == Z[27:22] ? 5'h6 :
				 M[27:23] == Z[27:23] ? 5'h5 :
				 M[27:24] == Z[27:24] ? 5'h4 :
				 M[27:25] == Z[27:25] ? 5'h3 :
				 M[27:26] == Z[27:26] ? 5'h2 :
				 M[27]    == Z[27] ? 5'h1 : 5'h0;
end
endmodule

module n_shift (
    input  [ 4:0] shft,
    input  [27:0] in,
    output reg [27:0] out
);
  reg [27:0] z1, z2, z3, z4, z5;
  genvar i;
  generate
    for (i = 0; i <= 27; i = i + 1) begin
      if (i == 0)
        mux2X1 m1 (
            1'b0,
            in[0],
            shft[0],
            z1[i]
        );
      if (i > 0 && i < 28)
        mux2X1 m2 (
            in[(i-1)],
            in[i],
            shft[0],
            z1[i]
        );
      if (i >= 0 && i < 2)
        mux2X1 m3 (
            1'b0,
            z1[i],
            shft[1],
            z2[i]
        );
      if (i > 1 && i < 28)
        mux2X1 m4 (
            z1[(i-2)],
            z1[i],
            shft[1],
            z2[i]
        );
      if (i >= 0 && i < 4)
        mux2X1 m5 (
            1'b0,
            z2[i],
            shft[2],
            z3[i]
        );
      if (i > 3 && i < 28)
        mux2X1 m6 (
            z2[(i-4)],
            z2[i],
            shft[2],
            z3[i]
        );
      if (i >= 0 && i < 8)
        mux2X1 m7 (
            1'b0,
            z3[i],
            shft[3],
            z4[i]
        );
      if (i > 7 && i < 28)
        mux2X1 m8 (
            z3[(i-8)],
            z3[i],
            shft[3],
            z4[i]
        );
      if (i >= 0 && i < 16)
        mux2X1 m9 (
            1'b0,
            z4[i],
            shft[4],
            z5[i]
        );
      if (i > 15 && i < 28)
        mux2X1 m10 (
            z4[(i-16)],
            z4[i],
            shft[4],
            z5[i]
        );
    end
  endgenerate
always @ * begin

   out = z5;
end
endmodule

module mux2X1 (
    in0,
    in1,
    sel,
    out
);
  input in0, in1;
  input sel;
  output reg out;
always @ * begin

   out = (sel) ? in0 : in1;
end
endmodule

module mux2X1_r (
    in0,
    in1,
    sel,
    out
);
  input in0, in1;
  input sel;
  output reg out;
always @ * begin

   out = (sel) ? in0 : in1;
end
endmodule

module n_normal (
    input [36:0] A,
    input [36:0] B,
<<<<<<< Updated upstream
    input [1:0] edata,
    output SA,
    output SB,
    output Comp,
    output [7:0] Enor,
    output [27:0] MA,
    output [27:0] MB
=======
    output reg SA,
    output reg SB,
    output reg Comp,
    output reg [7:0] Enor,
    output reg [27:0] MA,
    output reg [27:0] MB
>>>>>>> Stashed changes
);
  reg [ 4:0] Dexp;
  reg [27:0] MShift;
  comp_exp com (
      A,
      B,
      edata,
      SA,
      SB,
      Comp,
      Enor,
      MA,
      MShift,
      Dexp
  );
  n_shift_norm sh (
      Dexp,
      MShift,
      MB
  );
endmodule

module comp_exp (
    input [36:0] A,
    input [36:0] B,
<<<<<<< Updated upstream
    input [1:0] edata,
    output SA,
    output SB,
    output Comp,
    output [7:0] Enor,
    output [27:0] MMax,
    output [27:0] MShift,
    output [4:0] Dexp
);

  wire [7:0] EA, EB, Emin;
  wire [27:0] MA, MB;
  wire [27:0] Diff;
=======
    output reg SA,
    output reg SB,
    output reg Comp,
    output reg [7:0] Enor,
    output reg [27:0] MMax,
    output reg [27:0] MShift,
    output reg [4:0] Dexp
);

  reg [7:0] EA, EB;
  reg [27:0] MA, MB;
  reg [27:0] Diff;
>>>>>>> Stashed changes


always @ * begin

<<<<<<< Updated upstream
  assign Comp = (EA > EB) ? 1'b1 : (EA < EB) ? 1'b0 : (MA >= MB) ? 1'b1 : 1'b0;

  assign Enor = Comp == 1'b1 ? EA : EB;
  assign Emin = Comp == 1'b1 ? EB : EA;
=======
   EA = A[35:28];
   EB = B[35:28];
   MA = A[27:0];
   MB = B[27:0];

   SA = A[36];
   SB = B[36];
>>>>>>> Stashed changes

   Comp = (EA > EB || MB[0] == 1'b1) ? 1'b1 : (EA < EB) ? 1'b0 : (MA >= MB) ? 1'b1 : 1'b0;

<<<<<<< Updated upstream
  assign Diff = (edata == 2'b10) ? Enor - Emin - 1 : Enor - Emin;
=======
   Enor = Comp == 1'b1 ? EA : EB;

   MMax = Comp == 1'b1 ? MA : MB;
   MShift = Comp == 1'b1 ? MB : MA;
>>>>>>> Stashed changes

   Diff = (Comp == 1'b1 && MB[0] == 1'b0) ? (EA - EB) :
			  (Comp == 1'b0) ? (EB - EA) : (EA + EB);

   Dexp = (Diff <= 27) ? Diff[4:0] : 5'b11100;
end
endmodule
module n_shift_norm (
    input  [ 4:0] shft,
    input  [27:0] in,
    output reg[27:0] out
);
  reg [27:0] z1, z2, z3, z4, z5;
  genvar i;
  generate
    for (i = 0; i <= 27; i = i + 1) begin
      if (i == 0)
        mux2X1_r m1 (
            1'b0,
            in[27],
            shft[0],
            z1[27-i]
        );
      if (i > 0 && i < 28)
        mux2X1_r m2 (
            in[27-(i-1)],
            in[27-i],
            shft[0],
            z1[27-i]
        );
      if (i >= 0 && i < 2)
        mux2X1_r m3 (
            1'b0,
            z1[27-i],
            shft[1],
            z2[27-i]
        );
      if (i > 1 && i < 28)
        mux2X1_r m4 (
            z1[27-(i-2)],
            z1[27-i],
            shft[1],
            z2[27-i]
        );
      if (i >= 0 && i < 4)
        mux2X1_r m5 (
            1'b0,
            z2[27-i],
            shft[2],
            z3[27-i]
        );
      if (i > 3 && i < 28)
        mux2X1_r m6 (
            z2[27-(i-4)],
            z2[27-i],
            shft[2],
            z3[27-i]
        );
      if (i >= 0 && i < 8)
        mux2X1_r m7 (
            1'b0,
            z3[27-i],
            shft[3],
            z4[27-i]
        );
      if (i > 7 && i < 28)
        mux2X1_r m8 (
            z3[27-(i-8)],
            z3[27-i],
            shft[3],
            z4[27-i]
        );
      if (i >= 0 && i < 16)
        mux2X1_r m9 (
            1'b0,
            z4[27-i],
            shft[4],
            z5[27-i]
        );
      if (i > 15 && i < 28)
        mux2X1_r m10 (
            z4[27-(i-16)],
            z4[27-i],
            shft[4],
            z5[27-i]
        );
    end
  endgenerate
always @ * begin

  assign out = z5;
end
endmodule

module mux_adder (
    input SAsub,
    input SBsub,
    input SComp,
    input [7:0] Esub,
    input [27:0] MAsub,
    input [27:0] MBsub,
    input SAnor,
    input SBnor,
    input NComp,
    input [7:0] Enor,
    input [27:0] MAnor,
    input [27:0] MBnor,
    input [1:0] edata,
    output reg SA,
    output reg SB,
    output reg C,
    output reg [7:0] Eout,
    output reg [27:0] MAout,
    output reg [27:0] MBout
);

always @ * begin

   SA = edata == 2'b00 ? SAsub : SAnor;
   SB = edata == 2'b00 ? SBsub : SBnor;
   C = edata == 2'b00 ? SComp : NComp;
   Eout = edata == 2'b00 ? Esub : Enor;
   MAout = edata == 2'b00 ? MAsub : MAnor;
   MBout = edata == 2'b00 ? MBsub : MBnor;
end
endmodule


// =========== ADDER BLOCK ==========
module block_adder (
    SA,
    SB,
    Comp,
    A,
    B,
    A_S,
    MS,
    CO,
    SO
);
  input SA, SB, Comp, A_S;
  input [27:0] A, B;
<<<<<<< Updated upstream
  output [27:0] MS;
  output CO, SO;
  wire [27:0] Aa_aux, Bb_aux, MS_aux;
  wire SO_aux, CO_aux, AS_aux;
=======
  output reg [27:0] MS;
  output reg Co, SO;
  reg [27:0] Aa_aux, Bb_aux;
  reg AS;
>>>>>>> Stashed changes
  signout so (
      SA,
      SB,
      Comp,
      A,
      B,
      A_S,
      Aa_aux,
      Bb_aux,
      AS_aux,
      SO_aux
  );
  Adder add (
      Aa_aux,
      Bb_aux,
      AS_aux,
      MS_aux,
      CO_aux
  );
  assign MS = ((AS_aux & SO_aux) == 1'b1) ? ((MS_aux ^ 28'hfffffff) + 1'b1) : MS_aux;
  assign CO = ((SB ^ A_S) != SA) ? 1'b0 : CO_aux;
  assign SO = SO_aux;
endmodule
module signout (
    SA,
    SB,
    Comp,
    A,
    B,
    A_S,
    Aa,
    Bb,
    AS,
    SO
);
  input SA, SB, Comp, A_S;
  input [27:0] A, B;
  output reg [27:0] Aa, Bb;
  output reg AS, SO;
  reg SB_aux;
  reg [27:0] Aa_aux, Bb_aux;

always @ * begin

   SB_aux = SB ^ A_S;
   SO = (Comp) ? SA : SB_aux;
   Aa_aux = (Comp) ? A : B;
   Bb_aux = (Comp) ? B : A;
   Aa = (SA ^ SB_aux == 1'b0) ? Aa_aux : (SA == 1'b1 && SB_aux == 1'b0) ? Bb_aux : Aa_aux;
   Bb = (SA ^ SB_aux == 1'b0) ? Bb_aux : (SA == 1'b1 && SB_aux == 1'b0) ? Aa_aux : Bb_aux;
   AS = (SA != SB_aux) ? 1'b1 : 1'b0;
end
endmodule
module Adder (
    input [27:0] add1_i,
    input [27:0] add2_i,
    input A_S,
<<<<<<< Updated upstream
    output [27:0] sum_o,
    output carry_o
);
  assign {carry_o, sum_o} = (A_S == 0) ? add1_i + add2_i : add1_i - add2_i;
=======
    output reg[Width-1:0] sum_o,
    output reg carry_o
);
always @ * begin

   {carry_o, sum_o} = (A_S == 0) ? add1_i + add2_i : add1_i + {add2_i[Width-1:1], ~add2_i[0]};
end
>>>>>>> Stashed changes
endmodule
// =========== NORM BLOCK ==========
module block_norm (
    input [7:0] ES,
    input Co,
    input [27:0] MS,
    output reg [22:0] M,
    output reg [7:0] E
);
<<<<<<< Updated upstream
  wire [4:0] Zcount_aux, shift;
  wire [27:0] number, slct, Zin;
  assign Zin[27]   = (Co) ? 1'b1 : MS[27];
  assign Zin[26:0] = MS[26:0];
=======
  reg [4:0] Zcount_aux, shift;
  reg [27:0] number;
>>>>>>> Stashed changes
  zero_counter zc (
      Zin,
      Zcount_aux
  );
  exponent exp (
      ES,

      Co,
      Zcount_aux,
      shift,
      E
  );
  n_shift sh (
      shift,
      MS,
      number
  );
  assign slct = (Co) ? {1'b1, number[27:1]} : number;
  round r (
      slct,
      M
  );

endmodule
module exponent (
    input [7:0] ES,
    input Co,
    input [4:0] Zcount_aux,
    output reg [4:0] shift,
    output reg [7:0] E
);
<<<<<<< Updated upstream
  assign shift = (ES > Zcount_aux) ? Zcount_aux : (ES < Zcount_aux) ? ES[4:0] : Zcount_aux;
  assign E = (Zcount_aux == 5'b11100)? 8'h00 : (ES > Zcount_aux) ? ES - Zcount_aux + Co : (ES < Zcount_aux) ? 8'h00 : 8'h01;
=======
always @ * begin

   shift = (ES > Zcount_aux) ? Zcount_aux : (ES < Zcount_aux) ? ES[4:0] : Zcount_aux;
   E = (ES > Zcount_aux) ? ES - shift + Co : (ES < Zcount_aux) ? 8'h00 : 8'h01;
end
>>>>>>> Stashed changes
endmodule
module round (
    input  [27:0] number,
    output reg[22:0] M
);
<<<<<<< Updated upstream
  assign M = (number[3:0] > 4'b1000) ? number[26:4] + 1'b1 : number[26:4];
=======
always @ * begin

 M = (number[3:0] >= 4'b1000) ? number[26:4] + 1'b1 : number[26:4];
end
>>>>>>> Stashed changes
endmodule

// =========== VECTOR BLOCK ===========
module vector (
    input S,
    input [7:0] E,
    input [22:0] M,
    output reg [31:0] N
);

always @ * begin

   N[31] = S;
   N[30:23] = E;
   N[22:0] = M;

end
endmodule
// =========== END ==========

