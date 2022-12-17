module Radix4BoothMultiplier (
     multiplicand,multiplier,product 
);
    /// defining the inputs 
    input [31 : 0] multiplicand, multiplier; 

    /// defining the outputs 
    output reg [63: 0] product ;

    /// defining utility components 
    reg [31:0] multiplicandReg , multiplierReg; 
    reg [2:0] coderReg[15:0]  ; // this is a register in which we store the codes of the multiplier. 
    reg [63:0] subRes[15:0]  ; // this is a reg in which we store the result of each step
    // reg [63:0] sumSubRes[15:0]; /// 
    reg [31:0] compMultiplicand; /// this is the complement of the multiplicand to be used in the operation step.
    reg[1:0] Sign; /// this is the sign of the result
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

    integer  i , j;
    always @(*) begin
        /// assinging the inputs to their regs
        compMultiplicand = ~multiplicand + 1;
        multiplicandReg = multiplicand; 
        multiplierReg = multiplier; 
        Sign = 2'b0;
        product = 64'b0;
        for(i = 0 ; i < 16 ; i = i + 1) begin
            subRes[i] = 64'b0;
            coderReg[i] = 3'b0; 
        end
        Sign[1] = multiplicand[31]; 

        /// if one of them is negative we need to get its 2's complement
        // if(multiplicandReg[31] == 1'b1) begin 
        //     compMultiplicand = multiplicandReg;
        //     multiplicandReg = ~multiplicandReg + 1;
        //     Sign[0] = 1'b1;
        // end 

        // if(multiplierReg[31] == 1'b1) begin 
        //     multiplierReg = ~multiplierReg + 1;
        //     Sign[1] = 1'b1;
        // end 

        /// preparing the coder
        for (i = 0 ; i < 16 ; i = i + 1 ) begin
            if( i == 0) begin
                case ({multiplier[1:0], 1'b0})
                    3'b000: coderReg[i] = 3'b000; // 0
                    3'b111: coderReg[i] = 3'b000; // 0
                    3'b001: coderReg[i] = 3'b001; // 1
                    3'b010: coderReg[i] = 3'b001; // 1
                    3'b101: coderReg[i] = 3'b101; // -1
                    3'b110: coderReg[i] = 3'b101; // -1
                    3'b011: coderReg[i] = 3'b010; // 2
                    3'b100: coderReg[i] = 3'b110; // -2
                    default: 
                    coderReg[i] = 3'b000 ;
                endcase
            end else begin
                if({multiplier[(2*i) + 1],multiplier[(2*i)], multiplier[(2*i) - 1] } == 3'b000) begin
                    coderReg[i] = 3'b000;
                end
                if({multiplier[(2*i) + 1],multiplier[(2*i)], multiplier[(2*i) - 1] } == 3'b111) begin
                    coderReg[i] = 3'b000;
                end
                if({multiplier[(2*i) + 1],multiplier[(2*i)], multiplier[(2*i) - 1] } == 3'b001) begin
                    coderReg[i] = 3'b001;
                end
                if({multiplier[(2*i) + 1],multiplier[(2*i)], multiplier[(2*i) - 1] } == 3'b010) begin
                    coderReg[i] = 3'b001;
                end
                if({multiplier[(2*i) + 1],multiplier[(2*i)], multiplier[(2*i) - 1] } == 3'b101) begin
                    coderReg[i] = 3'b101;
                end
                if({multiplier[(2*i) + 1],multiplier[(2*i)], multiplier[(2*i) - 1] } == 3'b110) begin
                    coderReg[i] = 3'b101;
                end
                if({multiplier[(2*i) + 1],multiplier[(2*i)], multiplier[(2*i) - 1] } == 3'b100) begin
                    coderReg[i] = 3'b110;
                end
                if({multiplier[(2*i) + 1],multiplier[(2*i)], multiplier[(2*i) - 1] } == 3'b011) begin
                    coderReg[i] = 3'b010;
                end
            end
        end

        /// applying the multiplication
        for (i =0 ; i < 16 ; i = i + 1) begin 
            j = (32 - (2 * i)) ;
            case (coderReg[i])
                3'b001: subRes[i] = {{32{multiplicandReg[31]}},multiplicandReg} <<       (2*i); // 1
                3'b101: subRes[i] = {{32{compMultiplicand[31]}},compMultiplicand} <<     (2*i); // -1
                3'b110: subRes[i] = {{32{compMultiplicand[31]}},compMultiplicand} <<(1 + (2*i)); // -2 
                3'b010: subRes[i] = {{32{multiplicandReg[31]}},multiplicandReg} <<(1 +   (2*i)); // 2 -> shift left 1
                3'b000: subRes[i] = 64'b0; // 0
                default: 
                subRes[i] = 64'b0;
            endcase
        end

        /// summing the sub results
        for (i = 0 ; i < 16 ; i = i + 1) begin
            product = product + subRes[i];
        end

        /// if the result is negative we need to get its 2's complement
    //    if(Sign[1] == 1) begin
    //        product = ~product + 1;
    //     end /// I made this because the result is always evaluated right but the sign has a problem, so I made this to fix it.


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