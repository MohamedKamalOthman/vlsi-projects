module booth #(
    parameter N = 32
) (
    multiplicand2,
    multiplier2,
    i_rst,
    product
);
  /// defining the inputs 
  input [31:0] multiplicand2;
  input [31:0] multiplier2;
  input i_rst;
  /// defining the outputs 
  output reg [63:0] product;

  /// defining some utility components
  reg q0;  // on this we compare. 
  reg [31 : 0] accumlator;
  reg [31:0] multiplicand, multiplier;
  // reg FromAccToMult, FromMultToQ0; 

  reg [6:0] n;

  always @(*) begin
    if (i_rst === 1'b1) begin
      n = 0;
      /// initialize 
      product = 64'b0;
      accumlator = 32'b0;
      //FromAccToMult = 1'b0; 
      //FromMultToQ0 = 1'b0; 
      q0 = 1'b0;
      multiplicand = multiplicand2;
      multiplier = multiplier2;
    end else begin

      if (n < 32) begin
        /// note -> fe 1 bytl3 fe nos el arkam bybwz el denya,,,
        // if(q0 == multiplier[0]) begin 
        /// here we should do nothing, we just SAR and decrement n after that. 

        if ({multiplier[0], q0} === 2'b01) begin
          /// here we should do accumlator = accumaltor + multiplier                
          accumlator = accumlator + multiplicand;
        end else if ({multiplier[0], q0} === 2'b10) begin
          /// here we should do accumlator = accumaltor - multiplier                
          accumlator = accumlator - multiplicand;
        end

        // here we should apply shift arethmatic right
        {accumlator, multiplier, q0} = {accumlator[31], accumlator, multiplier};
        n = n + 1'b1;
      end else begin
        /// this is the last step so we should just assign the product to the AQ
        product = {accumlator, multiplier};
        n = 0;

      end
    end
  end
endmodule

module registerNbits #(
    parameter N = 8
) (
    clk,
    reset,
    en,
    inp,
    out
);
  input clk, reset, en;
  output reg [N-1:0] out;
  input [N-1:0] inp;
  always @(posedge clk) begin
    if (reset) out <= 'b0;
    else if (en) out <= inp;
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
      i_rst,
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
