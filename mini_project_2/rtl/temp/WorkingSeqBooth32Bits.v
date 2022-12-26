module both32(
	// control signals
	input clk,
	input load,
	input reset,

	//inputs
	input [31:0] M,
	input [31:0] Q,
	
	//outputs
	output reg [63:0] P

    );
	 
	 reg [31:0] A 		=  32'b0;
	 reg Q_minus_one 	=  0;
	 reg [31:0] Q_temp 	=  32'b0;
	 reg [31:0] M_temp 	=  32'b0;
	 reg [31:0] Count 	=  32'd33;
	 
	 
	 
	 always @ (posedge clk)
	 begin
		if (reset == 1)
		begin
			A 		 =  32'b0;		//reset values
			Q_minus_one      =  0;
			P 		 =  8'b0;
			Q_temp 		 =  32'b0;
			M_temp 		 =  32'b0;
			Count 		 =  32'd32;

		end

		else if (load == 1)
		begin
			Q_temp 		=  Q;
			M_temp 		=  M;
		end

		else if((Q_temp[0] == Q_minus_one ) && (Count > 32'd0))
		begin
			Q_minus_one     =  Q_temp[0];
			Q_temp 		=  {A[0],Q_temp[31:1]};				// right shift Q							
			A 		=  {A[31],A[31:1]};					// right shift A	
		    Count 		=  Count - 1'b1;					
		end
		else if((Q_temp[0] == 0 && Q_minus_one == 1)  && (Count > 32'd0))
		begin
			A 		=  A + M_temp;
			Q_minus_one     =  Q_temp[0];
			Q_temp 		=  {A[0],Q_temp[31:1]};				// right shift Q
			A 		=  {A[31],A[31:1]};					// right shift A
			Count 		=  Count - 1'b1;
		end
		else if((Q_temp[0] == 1 && Q_minus_one == 0)  && (Count > 32'd0))
		begin
			A 			=  A - M_temp;
			Q_minus_one     =  Q_temp[0];
			Q_temp 		=  {A[0],Q_temp[31:1]};				// right shift Q
			A 		=  {A[31],A[31:1]};					// right shift A
			 Count 		=  Count - 1'b1;
		end
		else 
		begin
			Count = 32'b0;
		end
		P = {A, Q_temp};
		
	 end

endmodule