// ================ BYPASS ADDER ================
module bypass_adder (
    a,
    b,
    sum
);
  input [31:0] a, b;
  output [32:0] sum;
  wire [31:0] c, p;
  wire pb;
  assign pb = &p;
  assign sum[32] = c[31] & ~pb;
  half_adder ha (
      a[0],
      b[0],
      sum[0],
      c[0]
  );
  xor xor_0 (p[0], a[0], b[0]);
  genvar i;
  generate
    for (i = 0; i < 31; i = i + 1) begin
      full_adder fa (
          a[i+1],
          b[i+1],
          c[i],
          sum[i+1],
          c[i+1]
      );
      xor xor_i (p[i+1], a[i+1], b[i+1]);
    end
  endgenerate

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
// ================ END ================
