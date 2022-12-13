// Sequential Multiplier using shift & accumulate
//adder module
module adder (
    input  [63:0] i_in1,
    input  [63:0] i_in2,
    output [64:0] o_out1
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

  always @(posedge i_clk or posedge i_rst)
    if (i_rst) begin
      state <= idle;
      count <= 0;
      start <= 1;
      o_out <= 0;
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
          if (count < 64) begin  // multiplication finished
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
    input [64:0] i_adder,
    input [63:0] Q,
    output [63:0] A,
    output o_lsb,
    output reg [127:0] o_out
);
  reg [128:0] temp;
  reg add_temp;

  assign A = temp[127:64];
  assign o_lsb = temp[0];
  always @(posedge i_clk or posedge i_rst) begin
    if (i_rst) begin
      add_temp <= 0;
      temp <= 0;
    end else begin
      if (i_load) begin
        temp[128:64] <= 0;
        temp[63:0]   <= Q;
      end else if (i_add) add_temp <= 1;
      else if (i_shift && add_temp) begin
        temp <= {1'b0, i_adder[64], i_adder[63:0], temp[63:1]};
        add_temp <= 0;
      end else if (i_shift && !add_temp) temp <= {1'b0, temp[128:1]};
    end
  end
  always @(i_out) begin
    if (!i_out) o_out <= 0;
    else o_out <= temp[127:0];
  end
endmodule

//multiplier module
module sequential (
    input i_clk,
    input i_rst,
    input [31:0] i_in1,
    input [31:0] i_in2,
    output [63:0] o_out1
);

  wire [63:0] M, Q;
  wire [127:0] out;
  assign M = {{32{i_in1[31]}}, i_in1};
  assign Q = {{32{i_in2[31]}}, i_in2};
  assign o_out1 = out[63:0];
  wire load, add, shift, lsb, out_ready;
  wire [63:0] A;
  wire [64:0] add_out;

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
/*
vsim work.sequential
add wave -position insertpoint sim:/sequential/*
force -freeze sim:/sequential/i_clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/sequential/i_rst 1 0
run 1000
force -freeze sim:/sequential/i_rst 0 0
force -freeze sim:/sequential/i_in1 1111_1111_1111_1111_1111_1111_1111_0100 0
force -freeze sim:/sequential/i_in2 1111_1111_1111_1111_1111_1111_1111_0100 0
run 100000
force -freeze sim:/sequential/i_rst 1 0
run 1000
force -freeze sim:/sequential/i_rst 0 0
force -freeze sim:/sequential/i_in1 0000_0000_0000_0000_0000_0000_0000_1100 0
force -freeze sim:/sequential/i_in2 0000_0000_0000_0000_0000_0000_0000_1101 0
run 100000
force -freeze sim:/sequential/i_rst 1 0
run 1000
force -freeze sim:/sequential/i_rst 0 0
force -freeze sim:/sequential/i_in1 0000_0000_0000_0000_0000_0000_0000_1100 0
force -freeze sim:/sequential/i_in2 1111_1111_1111_1111_1111_1111_1111_0100 0
run 100000
*/
