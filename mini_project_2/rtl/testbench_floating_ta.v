module floating_tb_ta ();
  localparam TIME = 2500;
  localparam THOLD = 100;
  localparam WIDTH = 32;

  reg [WIDTH-1:0] A;
  reg [WIDTH-1:0] B;
  wire [WIDTH-1:0] OUT;
  reg clk;
  reg rst;
  reg load;
  reg en;

  floating uut (
      .i_clk(clk),
      .i_rst(rst),
      .i_load(load),
      .i_a(A),
      .i_b(B),
      .o_res(OUT)
  );

  localparam integer CASES = 17;
  localparam integer test_vec_1[0:CASES-1] = '{
      32'h49072340,
      32'h4EA0C8E4,
      32'h49072340,
      32'h4EA0C8E4,
      32'hC3818000,
      32'hCE8EF06B,
      32'hC3818000,
      32'hCE8EF06B,
      32'h3F800000,
      32'hCE8EF06B,
      32'h0,
      32'hCE8EF06B,
      32'h3FFFFFF0,  // 1.9999981
      32'hBFFFFFFF,  // -1.9999999
      32'h35D00998,
      32'h3FFFFFF0,  // 1.9999981
      32'hBFFFFFFF  // -1.9999999
  };
  localparam integer test_vec_2[0:CASES-1] = '{
      32'h44520000,
      32'h4EA0C246,
      32'hC3818000,
      32'hCE8EF06B,
      32'h49072340,
      32'h4EA0C8E4,
      32'hC3818000,
      32'hCEEF06AA,
      32'h4EA0C8E4,
      32'h3F800000,
      32'h4EA0C8E4,
      32'h0,
      32'h41A00000,  // 20.0
      32'h41A00000,  // 20.0
      32'h800000,
      32'h7F200000,  // 2.1267648E38
      32'h7F200000  // 2.1267648E38
  };
  localparam integer test_vec_mult[0:CASES-1] = '{
      32'h4DDDB5D5,
      32'h5DC9EF25,
      32'hCD08B8AA,  // rounded
      32'hDDB38CDC,
      32'hCD08B8AA,  // rounded
      32'hDDB38CDC,
      32'h47830480,
      32'h5E05762C,
      32'h4EA0C8E4,
      32'hCE8EF06B,
      32'h0,
      32'h80000000,  // -ve zero  
      32'h421FFFF6,  // 39.99996
      32'hC21FFFFF,  // -39.999996
      32'h0000000D,
      32'h7F800000,  // Inf
      32'hFF800000  // -Inf
  };

  integer i = 0;
  integer success = 0;
  integer j = 0;
  initial begin
    clk = 1;
    rst = 1;
    en  = 1;
    // #TIME clk = ~clk;
    for (i = 0; i < CASES; i = i + 1) begin
      // pull up rst then pull down
      // #TIME clk = ~clk;
      rst = 1;
      #TIME clk = ~clk;
      #TIME clk = ~clk;
      load = 1;
      #(THOLD) rst = 0;
      A = test_vec_1[i];
      B = test_vec_2[i];
      #(TIME - THOLD) clk = ~clk;
      #TIME clk = ~clk;
      #TIME clk = ~clk;
      #TIME clk = ~clk;
      #(THOLD) load = 0;
      #(TIME - THOLD) clk = ~clk;
      #TIME clk = ~clk;
      for (j = 0; j < 33; j = j + 1) begin
        #TIME clk = ~clk;
        #TIME clk = ~clk;
      end
      if (OUT == test_vec_mult[i]) begin
        $display("TestCase#%2d: success", i + 1);
        success = success + 1;
      end else
        $display(
            "TestCase#%2d: failed with input %b and %b and Output \n%b expected: \n%b",
            i + 1,
            test_vec_1[i],
            test_vec_2[i],
            OUT,
            test_vec_mult[i]
        );
    end
  end
endmodule
/*
vsim work.floating_tb_ta
add wave -position insertpoint  \
sim:/floating_tb_ta/i
add wave -position insertpoint sim:/floating_tb_ta/uut/*
add wave -position insertpoint  \
sim:/floating_tb_ta/i
run -all
*/
