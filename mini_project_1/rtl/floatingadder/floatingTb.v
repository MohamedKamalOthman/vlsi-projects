
module floatingTb ();
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


  localparam integer CASES = 9;
  localparam integer test_vec_1[0:CASES-1] = '{
      32'b00110010010000001111001101010111,
      32'b00111111111111111111111111111111,
      32'b10111111111111111111111111111111,
      32'b10111111111111111111111111111111,
      32'b00000000000000000000001011001010,
      32'b11000010111101100011111011111010,
      32'b11111111100000000000000000000000,
      32'b01111111100000000000000000000000,
      32'b00000000011111111111111111111111
  };
  localparam integer test_vec_2[0:CASES-1] = '{
      32'b00001101000010000100010011101101,
      32'b00111111111111111111111111111111,
      32'b00111111111111111111111111111111,
      32'b10111111111111111111111111111111,
      32'b00000000000000000000001011001010,
      32'b00111111100011100011100011100100,
      32'b11111111111111111111111111111111,
      32'b01000010111101100000000000000000,
      32'b00000000111111111111111111111111
  };
  localparam integer test_vec_sum[0:CASES-1] = '{
      32'b00110010010000001111001101010111,
      32'b01000000011111111111111111111111,
      32'b00000000000000000000000000000000,
      32'b11000000011111111111111111111111,
      32'b00000000000000000000010110010100,
      32'b11000010111101000000011000010110,
      32'b11111111100000000000000000000001,
      32'b01111111100000000000000000000000,
      32'b00000001001111111111111111111111
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