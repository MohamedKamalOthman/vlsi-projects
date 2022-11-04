module selector (
    input  [31:0] A,
    input  [31:0] B,
    output [ 1:0] edata,
    output [36:0] NA,
    output [36:0] NB
);
  wire SA, SB;
  wire [7:0] EA, EB;
  wire [22:0] MA, MB;

  assign SA = A[31];
  assign SB = B[31];
  assign EA = A[30:23];
  assign EB = B[30:23];
  assign MA = A[22:0];
  assign MB = B[22:0];

  assign NA[36] = SA;
  assign NB[36] = SB;

  assign NA[35:28] = EA;
  assign NB[35:28] = EB;

  assign NA[27] = (EA > 8'h00) ? 1'b1 : 1'b0;
  assign NB[27] = (EB > 8'h00) ? 1'b1 : 1'b0;

  assign NA[26:4] = MA;
  assign NA[3:0] = 4'b0;

  assign NB[26:4] = MB;
  assign NB[3:0] = 4'b0;

  assign edata = (EA == 8'h00 && EB == 8'h00) ? 2'b00 : (EA > 8'h00 && EB > 8'h00) ? 2'b01 : 2'b10;
endmodule
