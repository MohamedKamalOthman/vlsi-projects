
module floatingTbCopy ();
  /*
00110010010000001111001101010111 + 00001101000010000100010011101101 = 00110010010000001111001101010111
00111111111111111111111111111111 + 00111111111111111111111111111111 = 01000000011111111111111111111111
10111111111111111111111111111111 + 00111111111111111111111111111111 = 00000000000000000000000000000000
10111111111111111111111111111111 + 10111111111111111111111111111111 = 11000000011111111111111111111111
00000000000000000000001011001010 + 00000000000000000000001011001010 = 00000000000000000000010110010100
11000010111101100011111011111010 + 00111111100011100011100011100100 = 11000010111101000000011000010110
11111111100000000000000000000000 + 11111111111111111111111111111111 = 11111111111111111111111111111111
01111111100000000000000000000000 + 01000010111101100000000000000000 = 01111111100000000000000000000000

*/

  localparam TIME = 20;
  localparam WIDTH = 32;

  reg  [WIDTH-1:0] add1;
  reg  [WIDTH-1:0] add2;
  wire [WIDTH-1:0] sum;

  floating_unit uut0 (
      add1,
      add2,
      1'b0,
      sum
  );

  // 
  // CASES
  // 1: 2^1 + 2^8 = 258.0
  // 2: 2.0 + 2.0 = 4.0
  // 3: 512.0625 + 524.0 = 1036.0625
  // 4:
  // 5:
  // 6:
  // 7: 24.015642 - 32.0
  // 8: 32.000244 - 32.000244
  // 9: 2.56 - 0.56
  localparam integer CASES = 10;
  localparam integer test_vec_1[0:CASES-1] = '{
      32'b01000000000000000000000000000000,
      32'b01000000000000000000000000000000,
      32'b01000100000000000000010000000000,
      32'b01000000000000000000000000001001,
      32'b01000000000100100100000100001001,
      32'b00000000010100100100000100001001,
      32'b01000001110000000010000000001001,
      32'b01000010000000000000000001000000,
      32'b01000000001000111101011100001010
  };
  localparam integer test_vec_2[0:CASES-1] = '{
      32'b01000011100000000000000000000000,
      32'b01000000000000000000000000000000,
      32'b01000100000000110000000000000000,
      32'b01000010000000110000000000000000,
      32'b01100000000000110000000000000000,
      32'b00000000010000110000000000000000,
      32'b11000010000000000000000000000000,
      32'b11000010000000000000000001000000,
      32'b10111111000011110101110000101001
  };
  localparam integer test_vec_sum[0:CASES-1] = '{
      32'b01000011100000010000000000000000,
      32'b01000000100000000000000000000000,
      32'b01000100100000011000001000000000,
      32'b01000010000010110000000000000001,
      32'b01100000000000110000000000000000,
      32'b00000000100101010100000100001001,
      32'b11000000111111110111111111011100,
      32'b00000000000000000000000000000000,
      32'b00111111111111111111111111111111
  };
  integer i = 0;
  integer success = 0;
  initial begin
    for (i = 0; i < CASES; i = i + 1) begin
      add1 = test_vec_1[i];
      add2 = test_vec_2[i];
      #TIME;
      if (sum === test_vec_sum[i]) begin
        $display("TestCase#%2d: success", i + 1);
        success = success + 1;
      end else
        $display(
            "TestCase#%2d: failed with input %b and %b and Output %b, expected: %b",
            i + 1,
            test_vec_1[i],
            test_vec_2[i],
            sum,
            test_vec_sum[i]
        );
    end

  end
endmodule
