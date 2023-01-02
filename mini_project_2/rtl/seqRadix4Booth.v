
/// @author Abdelaziz Salah
/// @date 26/12/2022
/// @brief this module implements the radix 4 booth algorithm in a sequential way.

module Radix4BoothMultiplierSeq (
      clk ,  load,rst ,multiplicand,multiplier,product
);
    /// defining the inputs 
    input [31 : 0] multiplicand, multiplier; 
    input clk, rst, load;
    /// defining the outputs 
    output reg [63: 0] product ;

    /// defining utility components 
    reg [31:0] multiplicandReg , multiplierReg; 
    reg [2:0] coderReg[15:0]  ; // this is a register in which we store the codes of the multiplier. 
    reg [63:0] subRes[15:0]  ; // this is a reg in which we store the result of each step
    reg [31:0] compMultiplicand; /// this is the complement of the multiplicand to be used in the operation step.
    reg [4:0] evaluatingTheCoderCounter; /// this act as the loop counter it starts with 16 and decrements by 1 each time till reach 0 in order to evaluate the coder 
    reg [4:0] evaluatingSubResultsCounter; /// this act as the loop counter it starts with 16 and decrements by 1 each time till reach 0 in order to evaluate the sub results
    reg [4:0] evaluatingFinalResultCounter; /// this act as the loop counter it starts with 16 and decrements by 1 each time till reach 0 in order to evaluate the final result
    /*
        Coder Tabel:
        000 || 111 => multiply multiplicand by 0
        001 || 010 => multiply multiplicand by 1
        101 || 110 => multiply multiplicand by -1
        011  => multiply multiplicand by 2
        100  => multiply multiplicand by -2
    */

    /*
        Multiplication notes: 
        0-> res = 0
        1 -> res = multiplicand
        -1 -> res = 2Comp(multiplicand)
        2 -> res = multiplicand << 1
        -2 -> res = 2Comp(multiplicand << 1)
    */
integer i; 
    always @(posedge clk) begin

        /// reseting the registers. 
        if(rst == 1'b1) begin
            multiplicandReg = 32'b0; 
            multiplierReg = 32'b0; 
            product = 64'b0;
            evaluatingFinalResultCounter = 5'b10000;
            evaluatingSubResultsCounter = 5'b10000;
            evaluatingTheCoderCounter = 5'b10000;
            for(i = 0 ; i < 16 ; i = i + 1) begin
                subRes[i] = 64'b0;
                coderReg[i] = 3'b0; 
            end
        end
        
        /// loading the numbers to be evaluated. 
        else if (load == 1'b1) begin
            multiplicandReg = multiplicand; 
            multiplierReg = multiplier;
            compMultiplicand = ~multiplicand + 1;
        end else begin 
            /// alogrithm 
            //1- first we must prepare the coder in 16 clock cycles.
            if(evaluatingTheCoderCounter != 5'b0) begin 

                if( evaluatingTheCoderCounter == 1'b1) begin
                    case ({multiplier[1:0], 1'b0})
                        3'b000: coderReg[evaluatingTheCoderCounter - 1] = 3'b000; // 0
                        3'b111: coderReg[evaluatingTheCoderCounter - 1] = 3'b000; // 0
                        3'b001: coderReg[evaluatingTheCoderCounter - 1] = 3'b001; // 1
                        3'b010: coderReg[evaluatingTheCoderCounter - 1] = 3'b001; // 1
                        3'b101: coderReg[evaluatingTheCoderCounter - 1] = 3'b101; // -1
                        3'b110: coderReg[evaluatingTheCoderCounter - 1] = 3'b101; // -1
                        3'b011: coderReg[evaluatingTheCoderCounter - 1] = 3'b010; // 2
                        3'b100: coderReg[evaluatingTheCoderCounter - 1] = 3'b110; // -2
                        default: 
                        coderReg[evaluatingTheCoderCounter - 1] = 3'b000 ;
                    endcase
                end else begin
                    if({multiplier[(2*(evaluatingTheCoderCounter - 1)) + 1],multiplier[(2*(evaluatingTheCoderCounter - 1))], multiplier[(2*(evaluatingTheCoderCounter - 1)) - 1] } == 3'b000) begin
                        coderReg[evaluatingTheCoderCounter - 1] = 3'b000;
                    end
                    if({multiplier[(2*(evaluatingTheCoderCounter - 1)) + 1],multiplier[(2*(evaluatingTheCoderCounter - 1))], multiplier[(2*(evaluatingTheCoderCounter - 1)) - 1] } == 3'b111) begin
                        coderReg[evaluatingTheCoderCounter - 1] = 3'b000;
                    end
                    if({multiplier[(2*(evaluatingTheCoderCounter - 1)) + 1],multiplier[(2*(evaluatingTheCoderCounter - 1))], multiplier[(2*(evaluatingTheCoderCounter - 1)) - 1] } == 3'b001) begin
                        coderReg[evaluatingTheCoderCounter - 1] = 3'b001;
                    end
                    if({multiplier[(2*(evaluatingTheCoderCounter - 1)) + 1],multiplier[(2*(evaluatingTheCoderCounter - 1))], multiplier[(2*(evaluatingTheCoderCounter - 1)) - 1] } == 3'b010) begin
                        coderReg[evaluatingTheCoderCounter - 1] = 3'b001;
                    end
                    if({multiplier[(2*(evaluatingTheCoderCounter - 1)) + 1],multiplier[(2*(evaluatingTheCoderCounter - 1))], multiplier[(2*(evaluatingTheCoderCounter - 1)) - 1] } == 3'b101) begin
                        coderReg[evaluatingTheCoderCounter - 1] = 3'b101;
                    end
                    if({multiplier[(2*(evaluatingTheCoderCounter - 1)) + 1],multiplier[(2*(evaluatingTheCoderCounter - 1))], multiplier[(2*(evaluatingTheCoderCounter - 1)) - 1] } == 3'b110) begin
                        coderReg[evaluatingTheCoderCounter - 1] = 3'b101;
                    end
                    if({multiplier[(2*(evaluatingTheCoderCounter - 1)) + 1],multiplier[(2*(evaluatingTheCoderCounter - 1))], multiplier[(2*(evaluatingTheCoderCounter - 1)) - 1] } == 3'b100) begin
                        coderReg[evaluatingTheCoderCounter - 1] = 3'b110;
                    end
                    if({multiplier[(2*(evaluatingTheCoderCounter - 1)) + 1],multiplier[(2*(evaluatingTheCoderCounter - 1))], multiplier[(2*(evaluatingTheCoderCounter - 1)) - 1] } == 3'b011) begin
                        coderReg[evaluatingTheCoderCounter - 1] = 3'b010;
                    end
                end
            evaluatingTheCoderCounter = evaluatingTheCoderCounter - 1;
            //2- second we have to apply 16 different operations on the multiplicand. in 16 clock cycles.
            end else if (evaluatingSubResultsCounter != 5'b0) begin 
            case (coderReg[evaluatingSubResultsCounter - 1])
                3'b001: subRes[evaluatingSubResultsCounter - 1] = {{32{multiplicandReg[31]}},multiplicandReg} <<       (2*(evaluatingSubResultsCounter - 1)); // 1
                3'b101: subRes[evaluatingSubResultsCounter - 1] = {{32{compMultiplicand[31]}},compMultiplicand} <<     (2*(evaluatingSubResultsCounter - 1)); // -1
                3'b110: subRes[evaluatingSubResultsCounter - 1] = {{32{compMultiplicand[31]}},compMultiplicand} <<(1 + (2*(evaluatingSubResultsCounter - 1))); // -2 
                3'b010: subRes[evaluatingSubResultsCounter - 1] = {{32{multiplicandReg[31]}},multiplicandReg} <<(1 +   (2*(evaluatingSubResultsCounter - 1))); // 2 -> shift left 1
                3'b000: subRes[evaluatingSubResultsCounter - 1] = 64'b0; // 0
                default: 
                subRes[evaluatingSubResultsCounter - 1] = 64'b0;
            endcase
            evaluatingSubResultsCounter = evaluatingSubResultsCounter - 1;

            //3- last we need to sum the results of the 16 operations. in 16 clock cycles.
            end else if (evaluatingFinalResultCounter != 5'b0) begin
                product = product + subRes[evaluatingFinalResultCounter - 1];
                evaluatingFinalResultCounter = evaluatingFinalResultCounter - 1;
            end else begin 
                evaluatingFinalResultCounter=  5'b0;
                evaluatingSubResultsCounter=  5'b0;
                evaluatingTheCoderCounter=  5'b0;
                product = product; 
            end
        end
    end


endmodule



module RadixboothMult (
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
  Radix4BoothMultiplier Radix4BoothMultiplierUnit (
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