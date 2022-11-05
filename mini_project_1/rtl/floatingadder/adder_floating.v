// =========== ADDER BLOCK ==========
module block_adder (
    SA,
    SB,
    Comp,
    A,
    B,
    A_S,
    MS,
    Co,
    SO
);

  // defining inputs 
  input SA, SB, Comp, A_S;
  input [27:0] A, B;

  // defining outputs  
  output [27:0] MS;
  output Co, SO;

  /// defining some utility wires. 
  wire [27:0] Aa_aux, Bb_aux;
  wire AS;

  /// instantiating an object from the signout. 
  signout so (
      SA,
      SB,
      Comp,
      A,
      B,
      A_S,
      Aa_aux,
      Bb_aux,
      AS,
      SO
  );

  /// creating an adder with width = 28bits 
  Adder #(28) add (
      Aa_aux,
      Bb_aux,
      AS,
      MS,
      Co
  );
endmodule

/// ========== Sign out Module ==================
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

/// defining the inputs 
  input SA, SB, Comp, A_S;
  input [27:0] A, B;

/// defining the outputs  
  output [27:0] Aa, Bb;
  output AS, SO;
  reg SO, Aa, Bb,AS; 

  /// defining utility wires 
  reg SB_aux;
  reg [27:0] Aa_aux, Bb_aux;

  /// applying the logic for the module 
    always @ * begin
   SB_aux = SB ^ A_S;
   if(Comp) begin 
    SO = SA ;
    Aa_aux = A; 
    Bb_aux = B;
   end else begin 
    SO = SB_aux ;
    Aa_aux = B; 
    Bb_aux = A;
   end
   Aa = (SA ^ SB_aux == 1'b0) ? Aa_aux : (SA == 1'b1 && SB_aux == 1'b0) ? Bb_aux : Aa_aux;
   Bb = (SA ^ SB_aux == 1'b0) ? Bb_aux : (SA == 1'b1 && SB_aux == 1'b0) ? Aa_aux : Bb_aux;
   AS = (SA != SB_aux) ? 1'b1 : 1'b0;
    end

endmodule


/// ========= Adder ==================
module Adder #(
    parameter Width = 32
) (
    input [Width-1:0] add1_i,
    input [Width-1:0] add2_i,
    input A_S,
    output [Width-1:0] sum_o,
    output carry_o
);

  always @ * begin
   {carry_o, sum_o} = (A_S == 0) ? add1_i + add2_i : add1_i + {add2_i[Width-1:1], ~add2_i[0]};
  end

endmodule


// =========== NORM BLOCK ==========
module block_norm (
    input [7:0] ES,
    input Co,
    input [27:0] MS,
    output [22:0] M,
    output [7:0] E
);
  wire [4:0] Zcount_aux, shift;
  wire [27:0] number;
  zero_counter zc (
      MS,
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
  round r (
      number,
      M
  );
endmodule

/// ========= exponent ==================

module exponent (input [7:0] ES, input Co, input [4:0]Zcount_aux, output reg [4:0] shift, output reg [7:0] E) ;
always @ * begin 
   shift = (ES[4:0] > Zcount_aux[4:0]) ? Zcount_aux : (ES[4:0] < Zcount_aux) ? ES[4:0] : Zcount_aux;
   E = (ES > Zcount_aux) ? ES - shift + Co : (ES < Zcount_aux) ? 8'h00 : 8'h01;
end 
endmodule


/// ========= rounder ==================

module round (
    input  [27:0] number,
    output reg [22:0] M
);
  always @ * begin M = (number[3:0] >= 4'b1000) ? number[26:4] + 1'b1 : number[26:4]; end
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

/// ========= zeros counter  ==================
module zero_counter (
    input  [27:0] M,
    output reg [4:0] Zcount
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


/// ========= n shifter  ==================

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
            in[27],
            shft[0],
            z1[27-i]
        );
      if (i > 0 && i < 28)
        mux2X1 m2 (
            in[27-(i-1)],
            in[27-i],
            shft[0],
            z1[27-i]
        );
      if (i >= 0 && i < 2)
        mux2X1 m3 (
            1'b0,
            z1[27-i],
            shft[1],
            z2[27-i]
        );
      if (i > 1 && i < 28)
        mux2X1 m4 (
            z1[27-(i-2)],
            z1[27-i],
            shft[1],
            z2[27-i]
        );
      if (i >= 0 && i < 4)
        mux2X1 m5 (
            1'b0,
            z2[27-i],
            shft[2],
            z3[27-i]
        );
      if (i > 3 && i < 28)
        mux2X1 m6 (
            z2[27-(i-4)],
            z2[27-i],
            shft[2],
            z3[27-i]
        );
      if (i >= 0 && i < 8)
        mux2X1 m7 (
            1'b0,
            z3[27-i],
            shft[3],
            z4[27-i]
        );
      if (i > 7 && i < 28)
        mux2X1 m8 (
            z3[27-(i-8)],
            z3[27-i],
            shft[3],
            z4[27-i]
        );
      if (i >= 0 && i < 16)
        mux2X1 m9 (
            1'b0,
            z4[27-i],
            shft[4],
            z5[27-i]
        );
      if (i > 15 && i < 28)
        mux2X1 m10 (
            z4[27-(i-16)],
            z4[27-i],
            shft[4],
            z5[27-i]
        );
    end
  endgenerate

  always @ * begin
   out = z5;
  end
endmodule

/// ========= Mux 2 x 1 ==================

module mux2X1 (
    in0,
    in1,
    sel,
    out
);
  input in0, in1;
  input sel;
  output out;
  reg out; 

  always @ * begin
   out = (sel) ? in1 : in0;
  end
endmodule
