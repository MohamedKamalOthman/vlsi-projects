module multTb ();
  localparam TIME = 2500;
  localparam WIDTH = 32;

  reg signed [WIDTH-1:0] A;
  reg signed [WIDTH-1:0] B;
  wire signed [2*WIDTH-1:0] OUT;
  reg clk;
  reg rst;
  reg en;
  reg load; 

  // sequential uut (
  //     clk,
  //     rst,
  //     en,
  //     A,
  //     B,
  //     OUT
  // );

  // star uut (
  //     clk,
  //     rst,
  //     en,
  //     A,
  //     B,
  //     OUT
  // );

  /// zuzz testbench
  // boothMult uut (
  //     clk,
  //     rst,
  //     en,
  //     A,
  //     B,
  //     OUT
  // );
  
  // RadixboothMult uut(
  //   clk,
  //   rst,
  //   en,
  //   A,
  //   B,
  //   OUT
  // );

  // booth_multiplier2 uut(
  //   clk,
  //   rst,
  //   A,
  //   B,
  //   OUT
  // );

RadixboothMult uut(
     clk,
	 rst,
   en,
   load,
	  A,
	  B,
	//outputs
	OUT
  );


  // RadixboothMult uut (
  //     clk,
  //     rst,
  //     en,
  //     A,
  //     B,
  //     OUT
  // );


  localparam integer CASES = 12;
  localparam [31:0] test_vec_1[0:CASES-1] = '{
      32'h87234,
      32'h50647236,
      32'h87234,
      32'h50647236,
      32'hFFFFFEFD,
      32'hB887CAAF,
      32'hFFFFFEFD,
      32'hB887CAAF,
      32'h1,
      32'hB887CAAF,
      32'h0,
      32'hB887CAAF
  };
  localparam [31:0] test_vec_2[0:CASES-1] = '{
      32'h348,
      32'h50612336,
      32'hFFFFFEFD,
      32'hB887CAAF,
      32'h87234,
      32'h50647236,
      32'hFFFFFEFD,
      32'h887CAAF3,
      32'h50647236,
      32'h1,
      32'h50647236,
      32'h0
  };
  localparam [63:0] test_vec_mult[0:CASES-1] = '{
      64'h1BB6BAA0,
      64'h193DE4CED7437964,
      64'hFFFFFFFFF7747564,
      64'hE98E647F4142AEEA,
      64'hFFFFFFFFF7747564,
      64'hE98E647F4142AEEA,  // -1617244718460915990
      64'h10609,
      64'h215D8B0A7A419A1D,
      64'h50647236,
      64'hFFFFFFFFB887CAAF,
      64'h0,
      64'h0
  };

  integer i = 0;
  integer success = 0;
  integer j = 0;
  initial begin
    clk = 0;
    rst = 1;
    en  = 1;
    // #TIME clk = ~clk;
    for (i = 0; i < CASES; i = i + 1) begin
      // pull up rst then pull down
      // #TIME clk = ~clk;
      rst = 1;
      #TIME clk = ~clk;
      #TIME clk = ~clk;
      rst = 0;
      load = 1; 
      A   = test_vec_1[i];
      B   = test_vec_2[i];
      #TIME clk = ~clk;
      #TIME clk = ~clk;
      #TIME clk = ~clk;
      #TIME clk = ~clk;
      load = 0; 
      #TIME clk = ~clk;
      #TIME clk = ~clk;
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
add wave -position insertpoint sim:/multTb/uut/regA/*
add wave -position insertpoint sim:/multTb/uut/regB/*
add wave -position insertpoint sim:/multTb/uut/outReg/*
run -all
*/
