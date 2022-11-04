module n_subn (
    input [36:0] A,
    input [36:0] B,

    output Comp,
    output SA,
    output SB,
    output [7:0] EO,
    output [27:0] MA,
    output [27:0] MB
);
  wire [27:0] MAa, MBb;

  assign MAa  = A[27:0];
  assign MBb  = B[27:0];


  assign SA   = A[36];
  assign SB   = B[36];

  assign Comp = (MAa >= MBb) ? 1'b1 : 1'b0;

  assign EO   = A[35:28];

  assign MA   = (Comp == 1'b1) ? MAa : MBb;
  assign MB   = (Comp == 1'b1) ? MBb : MAa;
endmodule
