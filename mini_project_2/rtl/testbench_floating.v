module floating_tb ();
  localparam TIME = 1000;
  localparam WIDTH = 32;

  reg [WIDTH-1:0] A;
  reg [WIDTH-1:0] B;
  wire [WIDTH-1:0] OUT;
  reg clk;
  reg rst;
  reg en;

  floating uut (
      .i_clk(clk),
      .i_a  (A),
      .i_b  (B),
      .o_res(OUT)
  );

  localparam integer CASES = 27;
  localparam integer test_vec_1[0:CASES-1] = '{
      32'b1_10000000_00000000000000000000000,  // -2.0
      32'b0_00000000_00000000000000000000010,  // 3E-45 (subn)
      32'b1_01000000_00000000000000000000010,  // -1.0842024E-19
      32'b0_10000100_00011001011000100100010,  // 35.17298
      32'b0_10000000_11000000000000000000000,  // 3.5
      32'b0_00000000_11000000000000000000000,  // 8.816208E-39
      32'b1_00000000_10000000000000000000000,
      32'b0_00000000_00000000001000000000001,  // 5.741E-42
      32'b01000000100100011110101110000101,  // 4.56
      32'b00111111101010011001100110011010,  // 1.325
      32'b00010100101010011001100110011010,  // 1.7125224E-26
      32'b11111111111111111111111111111111,  // nan
      32'b11111111111111111111111111111111,  // nan
      32'b01111111100000000000000000000000,  // Inf
      32'b10000000000000000000000000000000,  // -0.0
      32'b11111111111111111111111111111111,  // nan
      32'b10000000000000000000000000000000,  // -0.0
      32'b10000000000000000000000000000000,  // -0.0
      32'b10000000000000000000000000000000,  // -0.0
      32'b01111111100000000000000000000000,  // Inf 
      32'b11111111100000000000000000000000,  // -Inf
      32'b00011100001010011001100110011010,  // 5.6115935E-22 
      32'b00000000001111111111111111111111,
      32'b00000000011111111111111111111111,
      32'b00000110011111111111111111111111,
      32'b00000110000000000000000000000111,
      32'b00000000100000000000000000000000
  };
  localparam integer test_vec_2[0:CASES-1] = '{
      32'b0_01111100_00000000000000000000000,  // 0.125
      32'b1_00000000_11111111111111111111111,  // -1.1754942E-38 (subn)
      32'b1_00101000_11111111111111111111111,  // -1.0842024E-19
      32'b0_10001000_11110011110010001110010,  // 999.56946
      32'b0_10000100_10111010000000000000000,  // 55.25
      32'b0_10000000_10111010000000000000000,  // 3.453125
      32'b0_10000000_11000000000000000000000,
      32'b0_10000000_10000000000000000000000,  // 3.0
      32'b0_11111110_10000000000000000000000,  // 2.5521178E38
      32'b0_11111110_10000000000000000000000,  // 2.5521178E38 
      32'b0_00111111_10000000000000000000000,  // 8.1315163E-20
      32'b1_11111111_00000000000000000000000,  // -Inf
      32'b0_00000000_00000000000000000000000,  // 0.0
      32'b1_11111111_11111111111111111111111,  // nan
      32'b1_11111111_11111111111111111111111,  // nan
      32'b0_10000000_10111010000000000000000,  // 3.453125
      32'b1_01000000_00000000000000000000010,  // -1.0842024E-19
      32'b1_00000000_00000000000000000000000,  // -0.0
      32'b0_11111111_00000000000000000000000,  // Inf 
      32'b1_00000000_11111111111111111111111,  // -1.1754942E-38 (subn)
      32'b1_11111111_00000000000000000000000,  // -Inf 
      32'b00011111110000000000000000000000,  // 8.1315163E-20
      32'b01000000011111111111111111111111,
      32'b01000000011111111111111111111111,
      32'b00111001011111111111111111111111,
      32'b00111010011111111111111111111110,
      32'b00111111000000000000000000000000
  };
  localparam integer test_vec_mult[0:CASES-1] = '{
      32'b1_01111101_00000000000000000000000,  // -0.25
      32'b1_00000000_00000000000000000000000,  // -0.0
      32'b0_00000000_00000000000000000000000,  // 0.0 (barely, it might depend on rounding)
      32'b0_10001110_00010010101010111010110,  // 35157.836
      32'b0_10000110_10000010110000000000000,  // 193.375
      32'b0_00000010_01001011100000000000000,  // 3.0443467E-38 
      32'b1_00000001_11000000000000000000000,
      32'b0_00000000_00000000011000000000011,  // 1.7223E-41
      32'b01111111100000000000000000000000,  // Inf  
      32'b01111111011111100110011001100111,  // 3.3815561E38
      32'b00000000000000000000000000000000,  // 0.0 (rounding)
      32'b11111111111111111111111111111111,  // nan
      32'b11111111111111111111111111111111,  // nan
      32'b11111111111111111111111111111111,  // nan
      32'b11111111111111111111111111111111,  // nan
      32'b11111111111111111111111111111111,  // nan
      32'b00000000000000000000000000000000,  // 0.0
      32'b00000000000000000000000000000000,  // 0.0
      32'b11111111111111111111111111111111,  // Nan
      32'b11111111100000000000000000000000,  // -Inf 
      32'b01111111100000000000000000000000,  // Inf 
      32'b00000000000000000111111100110011,  // 4.563E-41 (rounded to 0)
      32'b00000000111111111111111111111011,
      32'b00000001011111111111111111111101,
      32'b00000000011111111111111111111110,
      32'b00000001000000000000000000000101,
      32'b00000000010000000000000000000000
  };

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
            "TestCase#%2d: failed with input %b and %b and Output %b expected: %b",
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
vsim work.floating_tb
add wave -position insertpoint sim:/floating_tb/*
run -all
*/
