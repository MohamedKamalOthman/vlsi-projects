/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Wed Nov  2 22:05:45 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 766929672 */

module half_adder__0_91(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_92(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   half_adder__0_91 h1 (.a(a), .b(b), .sum(sum), .cout(cout));
endmodule

module half_adder__0_83(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_80(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_84(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_83 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_80 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_75(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_72(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_76(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_75 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_72 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_67(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_64(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_68(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_67 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_64 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder__0_93(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_92 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_84 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), .cout(
      cout));
   full_adder__0_76 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder__0_68 fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(
      c[2]));
endmodule

module half_adder__0_124(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_121(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   INV_X1 i_2 (.A(a), .ZN(sum));
endmodule

module full_adder__0_125(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;

   half_adder__0_124 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_121 h2 (.a(x), .b(), .sum(sum), .cout());
   OR2_X1 i_0_0 (.A1(x), .A2(y), .ZN(cout));
endmodule

module half_adder__0_116(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_113(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_117(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_116 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_113 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_108(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_105(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_109(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_108 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_105 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_100(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_97(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_101(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_100 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_97 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder__0_126(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_125 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_117 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), 
      .cout(cout));
   full_adder__0_109 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder__0_101 fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(
      c[2]));
endmodule

module half_adder__0_157(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_158(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   half_adder__0_157 h1 (.a(a), .b(b), .sum(sum), .cout(cout));
endmodule

module half_adder__0_149(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_146(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_150(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_149 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_146 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_141(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_138(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_142(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_141 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_138 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_133(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_130(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_134(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_133 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_130 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder__0_159(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_158 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_150 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), 
      .cout(cout));
   full_adder__0_142 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder__0_134 fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(
      c[2]));
endmodule

module mux2X1_1__0_23(out, in0, in1, sel);
   output out;
   input in0;
   input in1;
   input sel;

   MUX2_X1 i_0_0 (.A(in0), .B(in1), .S(sel), .Z(out));
endmodule

module mux2X1_4__0_7(out, in0, in1, sel);
   output [3:0]out;
   input [3:0]in0;
   input [3:0]in1;
   input sel;

   MUX2_X1 i_0_0 (.A(in0[0]), .B(in1[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in0[1]), .B(in1[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in0[2]), .B(in1[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in0[3]), .B(in1[3]), .S(sel), .Z(out[3]));
endmodule

module half_adder__0_223(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_224(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   half_adder__0_223 h1 (.a(a), .b(b), .sum(sum), .cout(cout));
endmodule

module half_adder__0_215(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_212(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_216(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_215 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_212 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_207(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_204(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_208(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_207 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_204 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_199(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_196(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_200(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_199 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_196 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder__0_225(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_224 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_216 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), 
      .cout(cout));
   full_adder__0_208 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder__0_200 fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(
      c[2]));
endmodule

module half_adder__0_256(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_257(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   half_adder__0_256 h1 (.a(a), .b(b), .sum(sum), .cout(cout));
endmodule

module half_adder__0_248(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_245(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_249(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_248 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_245 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_240(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_237(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_241(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_240 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_237 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_232(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_229(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_233(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_232 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_229 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder__0_258(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_257 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_249 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), 
      .cout(cout));
   full_adder__0_241 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder__0_233 fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(
      c[2]));
endmodule

module half_adder__0_289(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_290(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   half_adder__0_289 h1 (.a(a), .b(b), .sum(sum), .cout(cout));
endmodule

module half_adder__0_281(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_278(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_282(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_281 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_278 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_273(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_270(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_274(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_273 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_270 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_265(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_262(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_266(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_265 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_262 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder__0_291(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_290 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_282 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), 
      .cout(cout));
   full_adder__0_274 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder__0_266 fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(
      c[2]));
endmodule

module half_adder__0_322(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_323(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   half_adder__0_322 h1 (.a(a), .b(b), .sum(sum), .cout(cout));
endmodule

module half_adder__0_314(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_311(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_315(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_314 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_311 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_306(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_303(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_307(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_306 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_303 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_298(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_295(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_299(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_298 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_295 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder__0_324(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_323 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_315 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), 
      .cout(cout));
   full_adder__0_307 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder__0_299 fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(
      c[2]));
endmodule

module half_adder__0_355(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_356(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   half_adder__0_355 h1 (.a(a), .b(b), .sum(sum), .cout(cout));
endmodule

module half_adder__0_347(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_344(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_348(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_347 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_344 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_339(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_336(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_340(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_339 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_336 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_331(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_328(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_332(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_331 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_328 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder__0_357(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_356 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_348 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), 
      .cout(cout));
   full_adder__0_340 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder__0_332 fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(
      c[2]));
endmodule

module half_adder__0_388(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_389(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   half_adder__0_388 h1 (.a(a), .b(b), .sum(sum), .cout(cout));
endmodule

module half_adder__0_380(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_377(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_381(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_380 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_377 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_372(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_369(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_373(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_372 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_369 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_364(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_361(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_365(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_364 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_361 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder__0_390(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_389 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_381 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), 
      .cout(cout));
   full_adder__0_373 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder__0_365 fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(
      c[2]));
endmodule

module half_adder__0_421(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_418(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   INV_X1 i_2 (.A(a), .ZN(sum));
endmodule

module full_adder__0_422(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;

   half_adder__0_421 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_418 h2 (.a(x), .b(), .sum(sum), .cout());
   OR2_X1 i_0_0 (.A1(x), .A2(y), .ZN(cout));
endmodule

module half_adder__0_413(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_410(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_414(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_413 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_410 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_405(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_402(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_406(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_405 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_402 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_397(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_394(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_398(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_397 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_394 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder__0_423(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_422 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_414 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), 
      .cout(cout));
   full_adder__0_406 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder__0_398 fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(
      c[2]));
endmodule

module half_adder__0_454(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_451(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   INV_X1 i_2 (.A(a), .ZN(sum));
endmodule

module full_adder__0_455(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;

   half_adder__0_454 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_451 h2 (.a(x), .b(), .sum(sum), .cout());
   OR2_X1 i_0_0 (.A1(x), .A2(y), .ZN(cout));
endmodule

module half_adder__0_446(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_443(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_447(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_446 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_443 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_438(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_435(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_439(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_438 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_435 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_430(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_427(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_431(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_430 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_427 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder__0_456(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_455 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_447 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), 
      .cout(cout));
   full_adder__0_439 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder__0_431 fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(
      c[2]));
endmodule

module half_adder__0_487(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_484(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   INV_X1 i_2 (.A(a), .ZN(sum));
endmodule

module full_adder__0_488(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;

   half_adder__0_487 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_484 h2 (.a(x), .b(), .sum(sum), .cout());
   OR2_X1 i_0_0 (.A1(x), .A2(y), .ZN(cout));
endmodule

module half_adder__0_479(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_476(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_480(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_479 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_476 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_471(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_468(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_472(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_471 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_468 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_463(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_460(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_464(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_463 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_460 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder__0_489(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_488 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_480 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), 
      .cout(cout));
   full_adder__0_472 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder__0_464 fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(
      c[2]));
endmodule

module half_adder__0_520(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_517(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   INV_X1 i_2 (.A(a), .ZN(sum));
endmodule

module full_adder__0_521(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;

   half_adder__0_520 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_517 h2 (.a(x), .b(), .sum(sum), .cout());
   OR2_X1 i_0_0 (.A1(x), .A2(y), .ZN(cout));
endmodule

module half_adder__0_512(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_509(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_513(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_512 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_509 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_504(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_501(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_505(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_504 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_501 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_496(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_493(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_497(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_496 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_493 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder__0_522(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_521 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_513 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), 
      .cout(cout));
   full_adder__0_505 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder__0_497 fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(
      c[2]));
endmodule

module half_adder__0_553(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_550(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   INV_X1 i_2 (.A(a), .ZN(sum));
endmodule

module full_adder__0_554(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;

   half_adder__0_553 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_550 h2 (.a(x), .b(), .sum(sum), .cout());
   OR2_X1 i_0_0 (.A1(x), .A2(y), .ZN(cout));
endmodule

module half_adder__0_545(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_542(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_546(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_545 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_542 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_537(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_534(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_538(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_537 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_534 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_529(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_526(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_530(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_529 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_526 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder__0_555(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_554 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_546 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), 
      .cout(cout));
   full_adder__0_538 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder__0_530 fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(
      c[2]));
endmodule

module half_adder__0_43(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_40(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   INV_X1 i_2 (.A(a), .ZN(sum));
endmodule

module full_adder__0_44(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;

   half_adder__0_43 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_40 h2 (.a(x), .b(), .sum(sum), .cout());
   OR2_X1 i_0_0 (.A1(x), .A2(y), .ZN(cout));
endmodule

module half_adder__0_51(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_48(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_52(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_51 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_48 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_59(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_56(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_60(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_59 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_56 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_36(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_36 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module ripple_adder(sum, cout, a, b, cin);
   output [3:0]sum;
   output cout;
   input [3:0]a;
   input [3:0]b;
   input cin;

   wire [3:1]c;

   full_adder__0_44 fa0 (.a(a[0]), .b(b[0]), .cin(), .sum(sum[0]), .cout(c[1]));
   full_adder__0_52 fa31 (.a(a[3]), .b(b[3]), .cin(c[3]), .sum(sum[3]), .cout(
      cout));
   full_adder__0_60 fa2 (.a(a[2]), .b(b[2]), .cin(c[2]), .sum(sum[2]), .cout(
      c[3]));
   full_adder fa1 (.a(a[1]), .b(b[1]), .cin(c[1]), .sum(sum[1]), .cout(c[2]));
endmodule

module mux2X1_1__0_25(out, in0, in1, sel);
   output out;
   input in0;
   input in1;
   input sel;

   MUX2_X1 i_0_0 (.A(in0), .B(in1), .S(sel), .Z(out));
endmodule

module mux2X1_1__0_27(out, in0, in1, sel);
   output out;
   input in0;
   input in1;
   input sel;

   MUX2_X1 i_0_0 (.A(in0), .B(in1), .S(sel), .Z(out));
endmodule

module mux2X1_1__0_29(out, in0, in1, sel);
   output out;
   input in0;
   input in1;
   input sel;

   MUX2_X1 i_0_0 (.A(in0), .B(in1), .S(sel), .Z(out));
endmodule

module mux2X1_1__0_31(out, in0, in1, sel);
   output out;
   input in0;
   input in1;
   input sel;

   MUX2_X1 i_0_0 (.A(in0), .B(in1), .S(sel), .Z(out));
endmodule

module mux2X1_1__0_33(out, in0, in1, sel);
   output out;
   input in0;
   input in1;
   input sel;

   MUX2_X1 i_0_0 (.A(in0), .B(in1), .S(sel), .Z(out));
endmodule

module mux2X1_1(out, in0, in1, sel);
   output out;
   input in0;
   input in1;
   input sel;

   MUX2_X1 i_0_0 (.A(in0), .B(in1), .S(sel), .Z(out));
endmodule

module mux2X1_4__0_11(out, in0, in1, sel);
   output [3:0]out;
   input [3:0]in0;
   input [3:0]in1;
   input sel;

   MUX2_X1 i_0_0 (.A(in0[0]), .B(in1[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in0[1]), .B(in1[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in0[2]), .B(in1[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in0[3]), .B(in1[3]), .S(sel), .Z(out[3]));
endmodule

module mux2X1_4__0_13(out, in0, in1, sel);
   output [3:0]out;
   input [3:0]in0;
   input [3:0]in1;
   input sel;

   MUX2_X1 i_0_0 (.A(in0[0]), .B(in1[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in0[1]), .B(in1[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in0[2]), .B(in1[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in0[3]), .B(in1[3]), .S(sel), .Z(out[3]));
endmodule

module mux2X1_4__0_15(out, in0, in1, sel);
   output [3:0]out;
   input [3:0]in0;
   input [3:0]in1;
   input sel;

   MUX2_X1 i_0_0 (.A(in0[0]), .B(in1[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in0[1]), .B(in1[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in0[2]), .B(in1[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in0[3]), .B(in1[3]), .S(sel), .Z(out[3]));
endmodule

module mux2X1_4__0_17(out, in0, in1, sel);
   output [3:0]out;
   input [3:0]in0;
   input [3:0]in1;
   input sel;

   MUX2_X1 i_0_0 (.A(in0[0]), .B(in1[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in0[1]), .B(in1[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in0[2]), .B(in1[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in0[3]), .B(in1[3]), .S(sel), .Z(out[3]));
endmodule

module mux2X1_4__0_19(out, in0, in1, sel);
   output [3:0]out;
   input [3:0]in0;
   input [3:0]in1;
   input sel;

   MUX2_X1 i_0_0 (.A(in0[0]), .B(in1[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in0[1]), .B(in1[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in0[2]), .B(in1[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in0[3]), .B(in1[3]), .S(sel), .Z(out[3]));
endmodule

module mux2X1_4(out, in0, in1, sel);
   output [3:0]out;
   input [3:0]in0;
   input [3:0]in1;
   input sel;

   MUX2_X1 i_0_0 (.A(in0[0]), .B(in1[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in0[1]), .B(in1[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in0[2]), .B(in1[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in0[3]), .B(in1[3]), .S(sel), .Z(out[3]));
endmodule

module select_adder(a, b, sum);
   input [31:0]a;
   input [31:0]b;
   output [32:0]sum;

   wire cout0;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire cout1;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_18;
   wire n_0_19;
   wire n_0_20;
   wire n_0_21;
   wire n_0_22;
   wire n_0_23;
   wire n_0_24;
   wire n_0_25;
   wire n_0_26;
   wire n_0_27;
   wire n_0_28;
   wire n_0_29;
   wire n_0_30;
   wire n_0_31;
   wire n_0_32;
   wire n_0_33;
   wire n_0_34;
   wire n_0_35;
   wire n_0_36;
   wire n_0_37;
   wire n_0_38;
   wire n_0_39;
   wire n_0_40;
   wire n_0_41;
   wire n_0_42;
   wire n_0_43;
   wire n_0_44;
   wire n_0_45;
   wire n_0_46;
   wire n_0_47;
   wire n_0_48;
   wire n_0_49;
   wire n_0_50;
   wire n_0_51;
   wire n_0_52;
   wire n_0_53;
   wire n_0_54;
   wire n_0_55;
   wire n_0_56;
   wire n_0_57;
   wire n_0_58;
   wire n_0_59;
   wire n_0_60;
   wire n_0_61;
   wire n_0_62;
   wire n_0_63;
   wire n_0_64;
   wire n_0_65;
   wire n_0_66;
   wire n_0_67;
   wire n_0_68;
   wire n_0_9;
   wire n_0_10;
   wire n_0_11;
   wire n_0_12;
   wire n_0_13;
   wire n_0_14;
   wire n_0_15;
   wire n_0_16;
   wire n_0_17;
   wire [7:1]c;

   ripple_adder__0_93 rca_last_0 (.sum({n_0_3, n_0_2, n_0_1, n_0_0}), .cout(
      cout0), .a({a[31], a[30], a[29], a[28]}), .b({b[31], b[30], b[29], b[28]}), 
      .cin());
   ripple_adder__0_126 rca_last_1 (.sum({n_0_7, n_0_6, n_0_5, n_0_4}), .cout(
      cout1), .a({a[31], a[30], a[29], a[28]}), .b({b[31], b[30], b[29], b[28]}), 
      .cin());
   ripple_adder__0_159 rca_0 (.sum({sum[3], sum[2], sum[1], sum[0]}), .cout(
      n_0_8), .a({a[3], a[2], a[1], a[0]}), .b({b[3], b[2], b[1], b[0]}), .cin());
   mux2X1_1__0_23 mux_last_cout (.out(sum[32]), .in0(cout0), .in1(cout1), 
      .sel(c[7]));
   mux2X1_4__0_7 mux_last_sum (.out({sum[31], sum[30], sum[29], sum[28]}), 
      .in0({n_0_3, n_0_2, n_0_1, n_0_0}), .in1({n_0_7, n_0_6, n_0_5, n_0_4}), 
      .sel(c[7]));
   ripple_adder__0_225 rca_other_06 (.sum({n_0_22, n_0_21, n_0_20, n_0_19}), 
      .cout(n_0_18), .a({a[27], a[26], a[25], a[24]}), .b({b[27], b[26], b[25], 
      b[24]}), .cin());
   ripple_adder__0_258 rca_other_05 (.sum({n_0_27, n_0_26, n_0_25, n_0_24}), 
      .cout(n_0_23), .a({a[23], a[22], a[21], a[20]}), .b({b[23], b[22], b[21], 
      b[20]}), .cin());
   ripple_adder__0_291 rca_other_04 (.sum({n_0_32, n_0_31, n_0_30, n_0_29}), 
      .cout(n_0_28), .a({a[19], a[18], a[17], a[16]}), .b({b[19], b[18], b[17], 
      b[16]}), .cin());
   ripple_adder__0_324 rca_other_03 (.sum({n_0_37, n_0_36, n_0_35, n_0_34}), 
      .cout(n_0_33), .a({a[15], a[14], a[13], a[12]}), .b({b[15], b[14], b[13], 
      b[12]}), .cin());
   ripple_adder__0_357 rca_other_02 (.sum({n_0_42, n_0_41, n_0_40, n_0_39}), 
      .cout(n_0_38), .a({a[11], a[10], a[9], a[8]}), .b({b[11], b[10], b[9], 
      b[8]}), .cin());
   ripple_adder__0_390 rca_other_01 (.sum({n_0_47, n_0_46, n_0_45, n_0_44}), 
      .cout(n_0_43), .a({a[7], a[6], a[5], a[4]}), .b({b[7], b[6], b[5], b[4]}), 
      .cin());
   ripple_adder__0_423 rca_other_16 (.sum({n_0_52, n_0_51, n_0_50, n_0_49}), 
      .cout(n_0_48), .a({a[27], a[26], a[25], a[24]}), .b({b[27], b[26], b[25], 
      b[24]}), .cin());
   ripple_adder__0_456 rca_other_15 (.sum({n_0_57, n_0_56, n_0_55, n_0_54}), 
      .cout(n_0_53), .a({a[23], a[22], a[21], a[20]}), .b({b[23], b[22], b[21], 
      b[20]}), .cin());
   ripple_adder__0_489 rca_other_14 (.sum({n_0_62, n_0_61, n_0_60, n_0_59}), 
      .cout(n_0_58), .a({a[19], a[18], a[17], a[16]}), .b({b[19], b[18], b[17], 
      b[16]}), .cin());
   ripple_adder__0_522 rca_other_13 (.sum({n_0_67, n_0_66, n_0_65, n_0_64}), 
      .cout(n_0_63), .a({a[15], a[14], a[13], a[12]}), .b({b[15], b[14], b[13], 
      b[12]}), .cin());
   ripple_adder__0_555 rca_other_12 (.sum({n_0_12, n_0_11, n_0_10, n_0_9}), 
      .cout(n_0_68), .a({a[11], a[10], a[9], a[8]}), .b({b[11], b[10], b[9], 
      b[8]}), .cin());
   ripple_adder rca_other_11 (.sum({n_0_17, n_0_16, n_0_15, n_0_14}), .cout(
      n_0_13), .a({a[7], a[6], a[5], a[4]}), .b({b[7], b[6], b[5], b[4]}), .cin());
   mux2X1_1__0_25 mux_other_cout6 (.out(c[7]), .in0(n_0_18), .in1(n_0_48), 
      .sel(c[6]));
   mux2X1_1__0_27 mux_other_cout5 (.out(c[6]), .in0(n_0_23), .in1(n_0_53), 
      .sel(c[5]));
   mux2X1_1__0_29 mux_other_cout4 (.out(c[5]), .in0(n_0_28), .in1(n_0_58), 
      .sel(c[4]));
   mux2X1_1__0_31 mux_other_cout3 (.out(c[4]), .in0(n_0_33), .in1(n_0_63), 
      .sel(c[3]));
   mux2X1_1__0_33 mux_other_cout2 (.out(c[3]), .in0(n_0_38), .in1(n_0_68), 
      .sel(c[2]));
   mux2X1_1 mux_other_cout1 (.out(c[2]), .in0(n_0_43), .in1(n_0_13), .sel(n_0_8));
   mux2X1_4__0_11 mux_other_sum6 (.out({sum[27], sum[26], sum[25], sum[24]}), 
      .in0({n_0_22, n_0_21, n_0_20, n_0_19}), .in1({n_0_52, n_0_51, n_0_50, 
      n_0_49}), .sel(c[6]));
   mux2X1_4__0_13 mux_other_sum5 (.out({sum[23], sum[22], sum[21], sum[20]}), 
      .in0({n_0_27, n_0_26, n_0_25, n_0_24}), .in1({n_0_57, n_0_56, n_0_55, 
      n_0_54}), .sel(c[5]));
   mux2X1_4__0_15 mux_other_sum4 (.out({sum[19], sum[18], sum[17], sum[16]}), 
      .in0({n_0_32, n_0_31, n_0_30, n_0_29}), .in1({n_0_62, n_0_61, n_0_60, 
      n_0_59}), .sel(c[4]));
   mux2X1_4__0_17 mux_other_sum3 (.out({sum[15], sum[14], sum[13], sum[12]}), 
      .in0({n_0_37, n_0_36, n_0_35, n_0_34}), .in1({n_0_67, n_0_66, n_0_65, 
      n_0_64}), .sel(c[3]));
   mux2X1_4__0_19 mux_other_sum2 (.out({sum[11], sum[10], sum[9], sum[8]}), 
      .in0({n_0_42, n_0_41, n_0_40, n_0_39}), .in1({n_0_12, n_0_11, n_0_10, 
      n_0_9}), .sel(c[2]));
   mux2X1_4 mux_other_sum1 (.out({sum[7], sum[6], sum[5], sum[4]}), .in0({n_0_47, 
      n_0_46, n_0_45, n_0_44}), .in1({n_0_17, n_0_16, n_0_15, n_0_14}), .sel(
      n_0_8));
endmodule
