// ================ SELECT ADDER ================
module select_adder (
    a,
    b,
    sum
);
  input [31:0] a, b;
  output [32:0] sum;
  wire [31:0] sum0, sum1;
  wire [7:1] c;
  wire [7:0] cout0, cout1;
  // carry = 0
  ripple_adder rca_0 (
      sum0[3:0],
      cout0[0],
      a[3:0],
      b[3:0],
      1'b0
  );
  // carry = 1
  ripple_adder rca_1 (
      sum1[3:0],
      cout1[0],
      a[3:0],
      b[3:0],
      1'b1
  );
  mux2X1_4 mux_sum (
      sum[3:0],
      sum0[3:0],
      sum1[3:0],
      1'b0
  );
  mux2X1_1 mux_cout (
      c[1],
      cout0[0],
      cout1[0],
      1'b0
  );

  // carry = 1
  ripple_adder rca_other_0[6:1] (
      sum0[27:4],
      cout0[6:1],
      a[27:4],
      b[27:4],
      1'b0
  );
  // carry = 0
  ripple_adder rca_other_1[6:1] (
      sum1[27:4],
      cout1[6:1],
      a[27:4],
      b[27:4],
      1'b1
  );
  mux2X1_4 mux_other_sum[6:1] (
      sum[27:4],
      sum0[27:4],
      sum1[27:4],
      c[6:1]
  );
  mux2X1_1 mux_other_cout[6:1] (
      c[7:2],
      cout0[6:1],
      cout1[6:1],
      c[6:1]
  );

  // carry = 0
  ripple_adder rca_last_0 (
      sum0[31:28],
      cout0[7],
      a[31:28],
      b[31:28],
      1'b0
  );
  // carry = 1
  ripple_adder rca_last_1 (
      sum1[31:28],
      cout1[7],
      a[31:28],
      b[31:28],
      1'b1
  );
  mux2X1_4 mux_last_sum (
      sum[31:28],
      sum0[31:28],
      sum1[31:28],
      c[7]
  );
  mux2X1_1 mux_last_cout (
      sum[32],
      cout0[7],
      cout1[7],
      c[7]
  );
endmodule
// ================ RCA4 ================
module ripple_adder (
    output [3:0] sum,
    output cout,
    input [3:0] a,
    b,
    input cin
);
  wire [3:1] c;
  full_adder fa0 (
      a[0],
      b[0],
      cin,
      sum[0],
      c[1]
  );
  full_adder fa[2:1] (
      a[2:1],
      b[2:1],
      c[2:1],
      sum[2:1],
      c[3:2]
  );
  full_adder fa31 (
      a[3],
      b[3],
      c[3],
      sum[3],
      cout
  );
endmodule
// ================ FA ================
module full_adder (
    a,
    b,
    cin,
    sum,
    cout
);
  input a, b, cin;
  output sum, cout;
  wire x, y, z;
  half_adder h1 (
      .a(a),
      .b(b),
      .sum(x),
      .cout(y)
  );
  half_adder h2 (
      .a(x),
      .b(cin),
      .sum(sum),
      .cout(z)
  );
  or or_1 (cout, z, y);
endmodule
// ================ HA ================
module half_adder (
    a,
    b,
    sum,
    cout
);
  input a, b;
  output sum, cout;
  xor xor_1 (sum, a, b);
  and and_1 (cout, a, b);
endmodule
// ================ MUX ================
module mux2X1_1 (
    out,
    in0,
    in1,
    sel
);
  input in0, in1;
  input sel;
  output out;
  assign out = (sel) ? in1 : in0;
endmodule
module mux2X1_4 (
    out,
    in0,
    in1,
    sel
);
  input [3:0] in0, in1;
  input sel;
  output [3:0] out;
  assign out = (sel) ? in1 : in0;
endmodule
// ================ END ================
