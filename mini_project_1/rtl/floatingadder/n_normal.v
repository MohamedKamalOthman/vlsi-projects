module n_normal(
input [36:0] A,
input [36:0] B,
output SA,
output SB,
output Comp,
output [7:0] Enor,
output [27:0] MA,
output [27:0] MB
);
wire [4:0] Dexp;
wire [27:0] MShift;
comp_exp com(A,B,SA,SB,Comp, Enor, MA, MShift, Dexp);
n_shift sh(Dexp, MShift, MB);

endmodule

module comp_exp(
input [36:0] A,
input [36:0] B,
output SA,
output SB,
output Comp,
output [7:0]Enor,
output [27:0] MMax,
output [27:0] MShift,
output [4:0] Dexp
);

wire [7:0] EA, EB;
wire [27:0] MA, MB;
wire [27:0] Diff;

assign EA = A[35:28];
assign EB = B[35:28];
assign MA = A[27:0];
assign MB = B[27:0];

assign SA = A[36];
assign SB = B[36];

assign Comp = (EA > EB || MB[0] == 1'b1) ? 1'b1 :
			  (EA < EB) ? 1'b0 : 
			  (MA >= MB) ? 1'b1 : 1'b0;

assign Enor = Comp == 1'b1 ? EA : EB;

assign MMax = Comp == 1'b1 ? MA : MB;
assign MShift = Comp == 1'b1 ? MB : MA;

assign Diff = (Comp == 1'b1 && MB[0] == 1'b0) ? (EA - EB) :
			  (Comp == 1'b0) ? (EB - EA) : (EA + EB);
			  
assign Dexp = (Diff <= 27) ? Diff[4:0] : 5'b11100;

endmodule
module n_shift(
	input [4:0] shft,
	input [27:0] in,
	output [27:0] out
);
wire [27:0] z1,z2,z3,z4,z5;
genvar i;
generate 
for(i=0;i<=27;i=i+1)
	begin
		if(i == 0)
			mux2X1 m1 (1'b0, in[27], shft[0], z1[27-i]);
		if(i > 0 && i < 28)
			mux2X1 m2 (in[27-(i-1)], in[27-i], shft[0], z1[27-i]);
		if(i >= 0 && i < 2)
			mux2X1 m3 (1'b0, z1[27-i], shft[1], z2[27-i]);
		if(i > 1 && i < 28)
			mux2X1 m4 (z1[27-(i-2)], z1[27-i], shft[1], z2[27-i]);
		if(i >=0 && i < 4)
			mux2X1 m5 (1'b0, z2[27-i], shft[2], z3[27-i]);
		if(i > 3 && i < 28)
			mux2X1 m6 (z2[27-(i-4)], z2[27-i], shft[2], z3[27-i]);
		if(i >= 0 && i < 8)
			mux2X1 m7 (1'b0, z3[27-i], shft[3], z4[27-i]);
		if(i > 7 && i < 28)
			mux2X1 m8 (z3[27-(i-8)], z3[27-i], shft[3], z4[27-i]);
		if(i >= 0 && i < 16)
			mux2X1 m9 (1'b0, z4[27-i], shft[4], z5[27-i]);
		if(i > 15 && i < 28)
			mux2X1 m10 (z4[27-(i-16)], z4[27-i], shft[4], z5[27-i]);
	end
endgenerate
	assign out = z5;
endmodule



module mux2X1( in0,in1,sel,out);
	input in0,in1;
	input sel;
	output out;
	assign out=(sel)?in1:in0;
endmodule