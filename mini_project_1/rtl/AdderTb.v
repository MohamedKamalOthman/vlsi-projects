module AdderTb ();
  localparam TIME = 20;
  localparam INT32_MAX = 32'h7fffffff;
  localparam INT32_MIN = 32'h80000000;
  localparam WIDTH = 32;

  reg signed [WIDTH-1:0] add1_i[7:0];
  reg signed [WIDTH-1:0] add2_i[7:0];
  wire signed [WIDTH-1:0] sum_o[7:0];
  wire carry_o[7:0];

  PlusAdder uut0 (
      .add1_i (add1_i[0]),
      .add2_i (add2_i[0]),
      .sum_o  (sum_o[0]),
      .carry_o(carry_o[0])
  );

  CarryRippleAdder uut1 (
      .add1_i (add1_i[1]),
      .add2_i (add2_i[1]),
      .sum_o  (sum_o[1]),
      .carry_o(carry_o[1])
  );

  carry_lookahead_adder uut2 (
      .i_add1  (add1_i[2]),
      .i_add2  (add2_i[2]),
      .o_result({carry_o[2], sum_o[2]})
  );

  select_adder uut3 (
      .a  (add1_i[3]),
      .b  (add2_i[3]),
      .sum({carry_o[3], sum_o[3]})
  );

  carry_skip_adder uut4 (
      .i_add1  (add1_i[4]),
      .i_add2  (add2_i[4]),
      .o_result({carry_o[4], sum_o[4]})
  );

  bypass_adder uut5 (
      .a  (add1_i[5]),
      .b  (add2_i[5]),
      .sum({carry_o[5], sum_o[5]})
  );

  carryIncrementAdder uut6 (
      .in1(add1_i[6]),
      .in2(add2_i[6]),
      .sum({carry_o[6], sum_o[6]})
  );

  carrySaveAdder uut7 (
      .in1(add1_i[7]),
      .in2(add2_i[7]),
      .sum({carry_o[7], sum_o[7]})
  );

  // integer ii = 0;
  // initial begin
  //   for (ii = 0; ii < 8; ii = ii + 1)
  //     $monitor(
  //         "Adder#%0d: TIME=%3d, Add1=%d, Add2=%d, Sum=%d, Carry=%d",
  //         ii,
  //         $time,
  //         add1_i[ii],
  //         add2_i[ii],
  //         sum_o[ii],
  //         carry_o[ii]
  //     );
  // end

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
  integer adderIndex = 0;
  integer success = 0;
  initial begin
    for (adderIndex = 0; adderIndex < 8; adderIndex = adderIndex + 1) begin
      for (i = 0; i < CASES; i = i + 1) begin
        add1_i[adderIndex] = test_vec_1[i];
        add2_i[adderIndex] = test_vec_2[i];
        #TIME;
        if (sum_o[adderIndex] == test_vec_sum[i]) begin
          $display("TestCase#%2d: success", i + 1);
          success = success + 1;
        end else
          $display(
              "TestCase#%2d: failed with input %d and %d and Output %0d and overflow status %0d, expected: %d",
              i + 1,
              test_vec_1[i],
              test_vec_2[i],
              sum_o[adderIndex],
              test_vec_overflow[i],
              test_vec_sum[i]
          );
      end
      $display(
          "Adder#%0d: #%0d test cases finished with %0d successful test cases and %0d failed test cases",
          adderIndex + 1, CASES, success, CASES - success);
      success = 0;
    end


  end

endmodule
