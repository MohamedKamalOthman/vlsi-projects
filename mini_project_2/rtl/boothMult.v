module booth #(parameter N = 32) (multiplicand2, multiplier2, product);
/// defining the inputs 
input  [31:0] multiplicand2;
input  [31:0] multiplier2; 

/// defining the outputs 
output reg [63:0] product;

/// defining some utility components
reg q0; // on this we compare. 
reg [31 : 0] accumlator;
reg [31:0] multiplicand, multiplier; 
// reg FromAccToMult, FromMultToQ0; 

integer  n;
always @(*) begin
    for ( n = 32  ; n >= 0 ; n=n-1)begin 
        /// at the first step 
        if (n == N ) begin 
            /// initialize 
	        product = 64'b0; 
            accumlator = 32'b0; 
            //FromAccToMult = 1'b0; 
            //FromMultToQ0 = 1'b0; 
            q0 = 1'b0; 
            multiplicand = multiplicand2; 
            multiplier = multiplier2; 
        end 



        if (n == 0) begin 
        /// this is the last step so we should just assign the product to the AQ
        product = {accumlator, multiplier}; 
        end else begin 
            /// note -> fe 1 bytl3 fe nos el arkam bybwz el denya,,,
            // if(q0 == multiplier[0]) begin 
            //     /// here we should do nothing, we just SAR and decrement n after that. 
            // end else
             if ({multiplier[0], q0} === 2'b01) begin 
            /// here we should do accumlator = accumaltor + multiplier                
            accumlator = accumlator + multiplicand; 
            end else if ({multiplier[0], q0} === 2'b10)begin
            /// here we should do accumlator = accumaltor - multiplier                
            accumlator = accumlator - multiplicand; 
            end

            // here we should apply shift arethmatic right
            {accumlator, multiplier,q0 } = {accumlator[31] ,accumlator, multiplier} ;
            
            /// applying shift right algo 
            // FromAccToMult = accumlator[0]; 
            // accumlator = accumlator >>> 1; 
            // FromMultToQ0 = multiplier[0]; 
            // multiplier = multiplier >> 1; 
            // multiplier[31] = FromAccToMult;
            // q0 = FromMultToQ0;   
        end
    end 
end
endmodule



module boothMult (
    input i_clk,
    input i_rst,
    input i_en,
    input [31:0] i_inputA,
    input [31:0] i_inputB,
    output [63:0] o_result
);

  wire [31:0] A_reg;
  wire [31:0] B_reg;
  wire [63:0] out_reg;


  registerNbits #(32) regA (
      i_clk,
      i_rst,
      i_en,
      i_inputA,
      A_reg
  );
  registerNbits #(32) regB (
      i_clk,
      i_rst,
      i_en,
      i_inputB,
      B_reg
  );
  booth boothUnit (
      A_reg,
      B_reg,
      out_reg
  );
  registerNbits #(64) outReg (
      i_clk,
      i_rst,
      i_en,
      out_reg,
      o_result[63:0]
  );
endmodule