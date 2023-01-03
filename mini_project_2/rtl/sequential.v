// Sequential Multiplier using shift & accumulate
//adder module
module adder (
    input  [31:0] i_in1,
    input  [31:0] i_in2,
    output [32:0] o_out1
);
  assign o_out1 = i_in1 + i_in2;
endmodule
// sends out conrtols signls to see if we should add and shift or shift immediatly 
module controller (
    input i_clk,
    input i_rst,
    input i_lsb,
    output reg o_load,
    output reg o_add,
    output reg o_shift,
    output reg o_out
);
  reg [2:0] state;
  reg start;
  reg [6:0] count;
  wire [2:0] idle, init, test, add, shift;
  assign idle  = 3'b000;
  assign init  = 3'b001;
  assign test  = 3'b010;
  assign add   = 3'b011;
  assign shift = 3'b100;

  always @(posedge i_clk)
    if (i_rst) begin
      state   <= idle;
      count   <= 0;
      start   <= 1;
      o_out   <= 0;
      o_load  <= 0;
      o_add   <= 0;
      o_shift <= 0;
    end else
      case (state)
        idle: begin
          o_load  <= 0;
          o_add   <= 0;
          o_shift <= 0;
          if (start) begin
            state <= init;
            o_out <= 0;
          end else begin
            state <= idle;  //multiplier is idle
            o_out <= 1;  //output ready
          end
        end
        init: begin
          o_load  <= 1;
          o_add   <= 0;
          o_shift <= 0;
          o_out   <= 0;
          state   <= test;
        end
        test: begin
          o_load  <= 0;
          o_add   <= 0;
          o_shift <= 0;
          o_out   <= 0;
          if (i_lsb) begin  // add then shift
            state <= add;
          end else state <= shift;  // only shift
        end
        add: begin
          o_load  <= 0;
          o_add   <= 1;
          o_shift <= 0;
          o_out   <= 0;
          state   <= shift;
        end
        shift: begin
          o_load  <= 0;
          o_add   <= 0;
          o_shift <= 1;
          o_out   <= 0;
          if (count < 32) begin  // multiplication finished
            state <= test;
            count <= count + 1;
          end else begin  // multiplication finished
            count <= 0;
            state <= idle;
            start <= 0;
          end
        end
      endcase
endmodule
module shifter (
    input i_clk,
    input i_rst,
    input i_load,
    input i_add,
    input i_shift,
    input i_out,
    input [32:0] i_adder,
    input [31:0] Q,
    output [31:0] A,
    output o_lsb,
    output reg [63:0] o_out
);
  reg [64:0] temp;
  reg add_temp;

  assign A = temp[63:32];
  assign o_lsb = temp[0];
  always @(posedge i_clk) begin
    if (i_rst) begin
      add_temp <= 0;
      temp <= 0;
    end else begin
      if (i_load) begin
        temp[64:32] <= 0;
        temp[31:0]  <= Q;
      end else if (i_add) add_temp <= 1;
      else if (i_shift && add_temp) begin
        temp <= {1'b0, i_adder[32], i_adder[31:0], temp[31:1]};
        add_temp <= 0;
      end else if (i_shift && !add_temp) temp <= {1'b0, temp[64:1]};
    end
  end
  assign o_out = (i_out) ? temp[63:0] : 0;
  // always @(i_out) begin
  //   if (!i_out) o_out <= 0;
  //   else o_out <= temp[63:0];
  // end
endmodule

//multiplier module
module multunit (
    input i_clk,
    input i_rst,
    input [31:0] i_in1,
    input [31:0] i_in2,
    output [63:0] o_out1
);


  wire load, add, shift, lsb, out_ready;
  wire [31:0] A, M, Q;
  wire [32:0] add_out;
  wire [63:0] out;
  assign sign_in1 = i_in1[31];
  assign sign_in2 = i_in2[31];
  // if M is negative take 2's compliment 
  assign M = (sign_in1) ? ~i_in1 + 1 : i_in1;

  // if Q is negative take 2's compliment 
  assign Q = (sign_in2) ? ~i_in2 + 1 : i_in2;

  // if output is negative take 2's compliment
  assign o_out1 = (sign_in1 ^ sign_in2) ? ~out + 1 : out;

  adder adder (
      M,
      A,
      add_out
  );
  shifter shifter (
      i_clk,
      i_rst,
      load,
      add,
      shift,
      out_ready,
      add_out,
      Q,
      A,
      lsb,
      out
  );
  controller controller (
      i_clk,
      i_rst,
      lsb,
      load,
      add,
      shift,
      out_ready
  );
endmodule
module registerNbits #(
    parameter N = 8
) (
    i_clk,
    i_rst,
    i_en,
    inp,
    out
);
  input i_clk, i_rst, i_en;
  output reg [N-1:0] out;
  input [N-1:0] inp;
  always @(posedge i_clk) begin
    if (i_rst) out <= 'b0;
    else if (i_en) out <= inp;
  end
endmodule


module sequential (
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
  multunit mult (
      i_clk,
      i_rst,
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
/*

*/
/*
vsim work.sequential
vsim work.sequential -t ps -sdfmax multiplier.sdf

add wave -position insertpoint sim:/sequential/*
add wave -position insertpoint sim:/sequential/mult/controller/*
add wave -position insertpoint sim:/sequential/mult/shifter/*
add wave -position insertpoint sim:/sequential/mult/adder/*
force -freeze sim:/sequential/i_clk 1 0, 0 {1000000 ps} -r 2000000
force -freeze sim:/sequential/i_rst 1 0
force -freeze sim:/sequential/i_en 1 0
run 2005000
force -freeze sim:/sequential/i_rst 0 0
force -freeze sim:/sequential/i_inputA 0000_0000_0000_0000_0000_0000_0000_1100 0
force -freeze sim:/sequential/i_inputB 0000_0000_0000_0000_0000_0000_0000_1101 0
run 100000000
force -freeze sim:/sequential/i_rst 1 0
run 2000000
force -freeze sim:/sequential/i_rst 0 0
force -freeze sim:/sequential/i_inputA 1111_1111_1111_1111_1111_1111_1111_0100 0
force -freeze sim:/sequential/i_inputB 1111_1111_1111_1111_1111_1111_1111_0100 0
run 100000000
force -freeze sim:/sequential/i_rst 1 0
run 1000
force -freeze sim:/sequential/i_rst 0 0
force -freeze sim:/sequential/i_inputA 0000_0000_0000_0000_0000_0000_0000_1100 0
force -freeze sim:/sequential/i_inputB 1111_1111_1111_1111_1111_1111_1111_0100 0
run 100000
*/
