module AdderTb ();
  localparam TIME = 20;
  localparam INT32_MAX = 32'h7fffffff;
  localparam INT32_MIN = 32'h80000000;
  localparam WIDTH = 32;

  reg signed [WIDTH-1:0] add1_i;
  reg signed [WIDTH-1:0] add2_i;
  wire signed [WIDTH-1:0] sum_o;
  wire carry_o;

  // carry_lookahead_adder uut (
  //     .i_add1  (add1_i),
  //     .i_add2  (add2_i),
  //     .o_result({carry_o, sum_o})
  // );

  // carry_skip_adder uut (
  //     .i_add1  (add1_i),
  //     .i_add2  (add2_i),
  //     .o_result({carry_o, sum_o})
  // );

  // PlusAdder uut (
  //     .add1_i (add1_i),
  //     .add2_i (add2_i),
  //     .sum_o  (sum_o),
  //     .carry_o(carry_o)
  // );

  // CarryRippleAdder uut (
  //     .add1_i (add1_i),
  //     .add2_i (add2_i),
  //     .sum_o  (sum_o),
  //     .carry_o(carry_o)
  // );

  // select_adder uut (
  //     .a  (add1_i),
  //     .b  (add2_i),
  //     .sum({carry_o, sum_o})
  // );

  bypass_adder uut (
      .a  (add1_i),
      .b  (add2_i),
      .sum({carry_o, sum_o})
  );

  initial begin
    $monitor("TIME=%3d, Add1=%d, Add2=%d, Sum=%d, Carry=%d", $time, add1_i, add2_i, sum_o, carry_o);
  end

  //   always #(TIME / 2) clk = ~clk;
  localparam integer CASES = 10;
  localparam integer signed test_vec_1[0:CASES-1] = '{
      INT32_MAX,
      INT32_MIN,
      51,
      250,
      -2000000000,
      50,
      -256,
      13,
      -13,
      0
  };
  localparam integer signed test_vec_2[0:CASES-1] = '{1, -1, -55, 350, -32, -50, 256, 7, -7, 0};
  localparam integer signed test_vec_sum[0:CASES-1] = '{
      INT32_MIN,
      INT32_MAX,
      -4,
      600,
      -2000000032,
      0,
      0,
      20,
      -20,
      0
  };
  localparam integer signed test_vec_overflow[0:CASES-1] = '{1, 1, 0, 0, 0, 0, 0, 0, 0, 0};
  integer i = 0;
  integer success = 0;
  initial begin
    for (i = 0; i < CASES; i = i + 1) begin
      add1_i = test_vec_1[i];
      add2_i = test_vec_2[i];
      #TIME;
      if (sum_o == test_vec_sum[i]) begin
        $display("TestCase#%2d: success", i + 1);
        success = success + 1;
      end else
        $display(
            "TestCase#%2d: failed with input %d and %d and Output %0d and overflow status %0d, expected: %d",
            i + 1,
            test_vec_1[i],
            test_vec_2[i],
            sum_o,
            test_vec_overflow[i],
            test_vec_sum[i]
        );
    end

    $display("%0d test cases finished with %0d successful test cases and %0d failed test cases",
             CASES, success, CASES - success);
  end

endmodule
