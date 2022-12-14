module multTb ();
  localparam TIME = 1000;
  localparam WIDTH = 32;

  reg signed [WIDTH-1:0] A;
  reg signed [WIDTH-1:0] B;
  wire signed [2*WIDTH-1:0] OUT;
  reg clk;
  reg rst;
  reg en;

  sequential uut (
      clk,
      rst,
      en,
      A,
      B,
      OUT
  );
  localparam integer CASES = 8;
  localparam integer signed test_vec_1[0:CASES-1] = '{12, 5, -51, -25, 0, 1, -12, 13};
  localparam integer signed test_vec_2[0:CASES-1] = '{-32, 15, -4, -60, 1234, 12, 72, 20};
  localparam integer signed test_vec_mult[0:CASES-1] = '{-384, 75, 204, 1500, 0, 12, -864, 260};

  integer i = 0;
  integer success = 0;
  integer j = 0;
  initial begin
    clk = 1;
    rst = 1;
    en  = 1;
    #TIME clk = ~clk;
    for (i = 0; i < CASES; i = i + 1) begin
      // pull up rst then pull down
      #TIME clk = ~clk;
      rst = 1;
      #TIME clk = ~clk;
      #TIME clk = ~clk;
      rst = 0;
      A   = test_vec_1[i];
      B   = test_vec_2[i];
      for (j = 0; j < 200; j = j + 1) begin
        #TIME clk = ~clk;
        #TIME clk = ~clk;
      end
      if (OUT == test_vec_mult[i]) begin
        $display("TestCase#%2d: success", i + 1);
        success = success + 1;
      end else
        $display(
            "TestCase#%2d: failed with input %d and %d and Output %0d expected: %d",
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
vsim work.multTb
add wave -position insertpoint sim:/multTb/*
run -all
*/
