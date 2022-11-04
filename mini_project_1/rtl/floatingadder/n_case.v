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
  output [31:0] S;  /// the output 
  output enable;

  /// defining utility wires  
  wire [2:0] outA, outB;
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
  assign outA = 
    (EA == 8'h00 && MA == 23'b0) ? 3'b000:  
    (EA == 8'h00 && MA > 23'b0) ? 3'b001:  
    (EA > 8'h00 && EA < 8'hFF && MA > 23'b0) ? 3'b011:  
    (EA == 8'hFF && MA == 23'b0) ? 3'b100:  /// infinity
      (EA == 8'hFF && MA > 23'b0) ? 3'b110 :  /// NAN
      3'b000;

  /// ternary on the outA 
  assign outB = 
    (EB == 8'h00 && MB == 23'b0) ? 3'b000:  
    (EB == 8'h00 && MB > 23'b0) ? 3'b001:  
    (EB > 8'h00 && EB < 8'hFF && MB > 23'b0) ? 3'b011:  
    (EB == 8'hFF && MB == 23'b0) ? 3'b100:  /// infinity
      (EB == 8'hFF && MB > 23'b0) ? 3'b110 :  ///NAN
      3'b000;

  /// if not normal or subnormal
  assign enable = outA[0] & outB[0];


  ///applying the logic of the S

  /// assigning the SS
  assign SS = (outA == 3'b110 || outB == 3'b110) ? 1'b1 :
     (((outA & outB) == 3'b100) & (SA == SB)) ? SA : 
     (((outA & outB) == 3'b100) & (SA != SB)) ? 1'b1: 
     (outA[0] == 1'b1 && outB == 3'b100) ? SB :
     (outB[0] == 1'b1 && outA == 3'b100) ? SA :
     (outA == 3'b000) ? SB : 
     SA; /// else set it to SA for any uncovered case. 


  /// assigning the ES
  assign ES  = (outA == 3'b110 || outB == 3'b110) ? 8'hFF :
     (((outA & outB) == 3'b100) && (SA == SB)) ? 8'hFF : 
     (((outA & outB) == 3'b100) && (SA != SB)) ? EA: 
     (outA[0] == 1'b1 && outB == 3'b100) ? EB :
     (outB[0] == 1'b1 && outA == 3'b100) ? EA :
     (outA == 3'b000) ? EB: 
      EA; /// else set it to SA for any uncovered case. 

  /// assigning the MS
  assign MS  = (outA == 3'b110 || outB == 3'b110) ? 23'b1 :
     (((outA & outB) == 3'b100) & (SA == SB)) ? MA: 
     (((outA & outB) == 3'b100) & (SA != SB)) ? 23'b1 : 
     (outA[0] == 1'b1 && outB == 3'b100) ? MB :
     (outB[0] == 1'b1 && outA == 3'b100) ? MA :
     (outA == 3'b000) ? MB: 
      MA; /// else set it to SA for any uncovered case. 

  /// concatinating the wires to the real output.
  assign S = {SS, ES, MS};

endmodule
