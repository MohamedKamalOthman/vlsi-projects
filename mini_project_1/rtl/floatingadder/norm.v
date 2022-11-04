module norm(
	input [36:0] A,
	input [36:0] B,
	output [36:0] MixA,
	output [36:0] MixB
);

wire [36:0] NB;
wire [4:0] shft;

comp c (A,B,MixA, NB);
zero_counter z (NB[27:0],shft);
n_shift ns(shft, NB[27:0],MixB[27:0]);
assign MixB[36:28] = NB[36:28];	
endmodule

module comp(
	input [36:0] A,
	input [36:0] B,
	output [36:0] NA,
	output [36:0] NB
);

assign NA = A[35:28] == 8'b0 ? A : B;
assign NB = A[35:28] == 8'b0 ? B : A;

endmodule	
module zero_counter
(
	input [27:0] M,
	output [4:0] Zcount
);
wire [27:0] Z;
assign Z = 28'b0;
assign Zcount =  M[27:0]  == Z[27:0] ? 5'h1c : 
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