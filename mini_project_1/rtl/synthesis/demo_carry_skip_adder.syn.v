/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Wed Nov  2 22:16:00 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 2559276440 */

module halfAdder__0_62(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_59(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_63(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_62 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_59 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_54(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_51(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_55(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_54 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_51 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_46(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_43(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_47(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_46 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_43 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_38(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_35(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_39(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_38 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_35 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module carry_skip_adder_4_bit__0_64(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire carries;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;

   fullAdder__0_63 fullAdder_bit_0 (.cin(Cin), .x(A[0]), .y(B[0]), .cout(carries), 
      .sum(Sum[0]));
   fullAdder__0_55 fullAdder_bit_1 (.cin(carries), .x(A[1]), .y(B[1]), .cout(n_0), 
      .sum(Sum[1]));
   fullAdder__0_47 fullAdder_bit_2 (.cin(n_0), .x(A[2]), .y(B[2]), .cout(n_1), 
      .sum(Sum[2]));
   fullAdder__0_39 fullAdder_bit_3 (.cin(n_1), .x(A[3]), .y(B[3]), .cout(n_2), 
      .sum(Sum[3]));
   XOR2_X1 i_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(A[1]), .B(B[1]), .Z(n_0_1));
   XOR2_X1 i_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_2));
   XOR2_X1 i_0_3 (.A(A[3]), .B(B[3]), .Z(n_0_3));
   NAND4_X1 i_0_4 (.A1(n_0_3), .A2(n_0_2), .A3(n_0_1), .A4(n_0_0), .ZN(n_0_4));
   MUX2_X1 i_0_5 (.A(Cin), .B(n_2), .S(n_0_4), .Z(Cout));
endmodule

module halfAdder__0_97(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_94(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_98(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_97 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_94 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_89(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_86(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_90(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_89 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_86 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_81(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_78(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_82(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_81 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_78 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_73(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_70(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_74(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_73 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_70 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module carry_skip_adder_4_bit__0_99(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire carries;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;

   fullAdder__0_98 fullAdder_bit_0 (.cin(Cin), .x(A[0]), .y(B[0]), .cout(carries), 
      .sum(Sum[0]));
   fullAdder__0_90 fullAdder_bit_1 (.cin(carries), .x(A[1]), .y(B[1]), .cout(n_0), 
      .sum(Sum[1]));
   fullAdder__0_82 fullAdder_bit_2 (.cin(n_0), .x(A[2]), .y(B[2]), .cout(n_1), 
      .sum(Sum[2]));
   fullAdder__0_74 fullAdder_bit_3 (.cin(n_1), .x(A[3]), .y(B[3]), .cout(n_2), 
      .sum(Sum[3]));
   XOR2_X1 i_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(A[1]), .B(B[1]), .Z(n_0_1));
   XOR2_X1 i_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_2));
   XOR2_X1 i_0_3 (.A(A[3]), .B(B[3]), .Z(n_0_3));
   NAND4_X1 i_0_4 (.A1(n_0_3), .A2(n_0_2), .A3(n_0_1), .A4(n_0_0), .ZN(n_0_4));
   MUX2_X1 i_0_5 (.A(Cin), .B(n_2), .S(n_0_4), .Z(Cout));
endmodule

module halfAdder__0_132(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_129(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_133(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_132 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_129 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_124(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_121(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_125(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_124 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_121 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_116(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_113(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_117(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_116 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_113 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_108(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_105(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_109(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_108 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_105 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module carry_skip_adder_4_bit__0_134(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire carries;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;

   fullAdder__0_133 fullAdder_bit_0 (.cin(Cin), .x(A[0]), .y(B[0]), .cout(
      carries), .sum(Sum[0]));
   fullAdder__0_125 fullAdder_bit_1 (.cin(carries), .x(A[1]), .y(B[1]), .cout(
      n_0), .sum(Sum[1]));
   fullAdder__0_117 fullAdder_bit_2 (.cin(n_0), .x(A[2]), .y(B[2]), .cout(n_1), 
      .sum(Sum[2]));
   fullAdder__0_109 fullAdder_bit_3 (.cin(n_1), .x(A[3]), .y(B[3]), .cout(n_2), 
      .sum(Sum[3]));
   XOR2_X1 i_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(A[1]), .B(B[1]), .Z(n_0_1));
   XOR2_X1 i_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_2));
   XOR2_X1 i_0_3 (.A(A[3]), .B(B[3]), .Z(n_0_3));
   NAND4_X1 i_0_4 (.A1(n_0_3), .A2(n_0_2), .A3(n_0_1), .A4(n_0_0), .ZN(n_0_4));
   MUX2_X1 i_0_5 (.A(Cin), .B(n_2), .S(n_0_4), .Z(Cout));
endmodule

module halfAdder__0_167(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_164(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_168(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_167 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_164 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_159(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_156(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_160(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_159 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_156 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_151(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_148(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_152(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_151 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_148 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_143(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_140(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_144(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_143 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_140 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module carry_skip_adder_4_bit__0_169(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire carries;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;

   fullAdder__0_168 fullAdder_bit_0 (.cin(Cin), .x(A[0]), .y(B[0]), .cout(
      carries), .sum(Sum[0]));
   fullAdder__0_160 fullAdder_bit_1 (.cin(carries), .x(A[1]), .y(B[1]), .cout(
      n_0), .sum(Sum[1]));
   fullAdder__0_152 fullAdder_bit_2 (.cin(n_0), .x(A[2]), .y(B[2]), .cout(n_1), 
      .sum(Sum[2]));
   fullAdder__0_144 fullAdder_bit_3 (.cin(n_1), .x(A[3]), .y(B[3]), .cout(n_2), 
      .sum(Sum[3]));
   XOR2_X1 i_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(A[1]), .B(B[1]), .Z(n_0_1));
   XOR2_X1 i_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_2));
   XOR2_X1 i_0_3 (.A(A[3]), .B(B[3]), .Z(n_0_3));
   NAND4_X1 i_0_4 (.A1(n_0_3), .A2(n_0_2), .A3(n_0_1), .A4(n_0_0), .ZN(n_0_4));
   MUX2_X1 i_0_5 (.A(Cin), .B(n_2), .S(n_0_4), .Z(Cout));
endmodule

module halfAdder__0_202(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_199(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_203(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_202 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_199 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_194(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_191(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_195(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_194 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_191 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_186(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_183(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_187(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_186 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_183 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_178(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_175(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_179(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_178 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_175 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module carry_skip_adder_4_bit__0_204(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire carries;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;

   fullAdder__0_203 fullAdder_bit_0 (.cin(Cin), .x(A[0]), .y(B[0]), .cout(
      carries), .sum(Sum[0]));
   fullAdder__0_195 fullAdder_bit_1 (.cin(carries), .x(A[1]), .y(B[1]), .cout(
      n_0), .sum(Sum[1]));
   fullAdder__0_187 fullAdder_bit_2 (.cin(n_0), .x(A[2]), .y(B[2]), .cout(n_1), 
      .sum(Sum[2]));
   fullAdder__0_179 fullAdder_bit_3 (.cin(n_1), .x(A[3]), .y(B[3]), .cout(n_2), 
      .sum(Sum[3]));
   XOR2_X1 i_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(A[1]), .B(B[1]), .Z(n_0_1));
   XOR2_X1 i_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_2));
   XOR2_X1 i_0_3 (.A(A[3]), .B(B[3]), .Z(n_0_3));
   NAND4_X1 i_0_4 (.A1(n_0_3), .A2(n_0_2), .A3(n_0_1), .A4(n_0_0), .ZN(n_0_4));
   MUX2_X1 i_0_5 (.A(Cin), .B(n_2), .S(n_0_4), .Z(Cout));
endmodule

module halfAdder__0_237(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_234(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_238(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_237 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_234 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_229(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_226(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_230(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_229 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_226 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_221(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_218(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_222(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_221 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_218 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_213(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_210(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_214(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_213 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_210 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module carry_skip_adder_4_bit__0_239(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire carries;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;

   fullAdder__0_238 fullAdder_bit_0 (.cin(Cin), .x(A[0]), .y(B[0]), .cout(
      carries), .sum(Sum[0]));
   fullAdder__0_230 fullAdder_bit_1 (.cin(carries), .x(A[1]), .y(B[1]), .cout(
      n_0), .sum(Sum[1]));
   fullAdder__0_222 fullAdder_bit_2 (.cin(n_0), .x(A[2]), .y(B[2]), .cout(n_1), 
      .sum(Sum[2]));
   fullAdder__0_214 fullAdder_bit_3 (.cin(n_1), .x(A[3]), .y(B[3]), .cout(n_2), 
      .sum(Sum[3]));
   XOR2_X1 i_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(A[1]), .B(B[1]), .Z(n_0_1));
   XOR2_X1 i_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_2));
   XOR2_X1 i_0_3 (.A(A[3]), .B(B[3]), .Z(n_0_3));
   NAND4_X1 i_0_4 (.A1(n_0_3), .A2(n_0_2), .A3(n_0_1), .A4(n_0_0), .ZN(n_0_4));
   MUX2_X1 i_0_5 (.A(Cin), .B(n_2), .S(n_0_4), .Z(Cout));
endmodule

module halfAdder__0_272(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_269(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_273(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_272 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_269 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_264(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_261(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_265(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_264 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_261 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_256(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_253(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_257(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_256 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_253 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_248(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_245(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_249(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_248 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_245 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), 
      .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module carry_skip_adder_4_bit__0_274(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire carries;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;

   fullAdder__0_273 fullAdder_bit_0 (.cin(Cin), .x(A[0]), .y(B[0]), .cout(
      carries), .sum(Sum[0]));
   fullAdder__0_265 fullAdder_bit_1 (.cin(carries), .x(A[1]), .y(B[1]), .cout(
      n_0), .sum(Sum[1]));
   fullAdder__0_257 fullAdder_bit_2 (.cin(n_0), .x(A[2]), .y(B[2]), .cout(n_1), 
      .sum(Sum[2]));
   fullAdder__0_249 fullAdder_bit_3 (.cin(n_1), .x(A[3]), .y(B[3]), .cout(n_2), 
      .sum(Sum[3]));
   XOR2_X1 i_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(A[1]), .B(B[1]), .Z(n_0_1));
   XOR2_X1 i_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_2));
   XOR2_X1 i_0_3 (.A(A[3]), .B(B[3]), .Z(n_0_3));
   NAND4_X1 i_0_4 (.A1(n_0_3), .A2(n_0_2), .A3(n_0_1), .A4(n_0_0), .ZN(n_0_4));
   MUX2_X1 i_0_5 (.A(Cin), .B(n_2), .S(n_0_4), .Z(Cout));
endmodule

module halfAdder__0_12(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_13(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   halfAdder__0_12 h1 (.in1(x), .in2(y), .cout(cout), .sum(sum));
endmodule

module halfAdder__0_20(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_17(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_21(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_20 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_17 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_28(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_25(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_29(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_28 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder__0_25 h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module halfAdder__0_5(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   AND2_X1 i_0_0 (.A1(in1), .A2(in2), .ZN(cout));
   XOR2_X1 i_0_1 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;
   wire dummyCarry1;
   wire dummyCarry2;

   halfAdder__0_5 h1 (.in1(x), .in2(y), .cout(dummyCarry1), .sum(dummySum1));
   halfAdder h2d (.in1(dummySum1), .in2(cin), .cout(dummyCarry2), .sum(sum));
   OR2_X1 i_0_0 (.A1(dummyCarry1), .A2(dummyCarry2), .ZN(cout));
endmodule

module carry_skip_adder_4_bit(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire carries;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;

   fullAdder__0_13 fullAdder_bit_0 (.cin(), .x(A[0]), .y(B[0]), .cout(carries), 
      .sum(Sum[0]));
   fullAdder__0_21 fullAdder_bit_1 (.cin(carries), .x(A[1]), .y(B[1]), .cout(n_0), 
      .sum(Sum[1]));
   fullAdder__0_29 fullAdder_bit_2 (.cin(n_0), .x(A[2]), .y(B[2]), .cout(n_1), 
      .sum(Sum[2]));
   fullAdder fullAdder_bit_3 (.cin(n_1), .x(A[3]), .y(B[3]), .cout(n_2), 
      .sum(Sum[3]));
   XOR2_X1 i_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(A[3]), .B(B[3]), .Z(n_0_1));
   XOR2_X1 i_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_2));
   XOR2_X1 i_0_3 (.A(A[1]), .B(B[1]), .Z(n_0_3));
   NAND4_X1 i_0_4 (.A1(n_0_3), .A2(n_0_2), .A3(n_0_1), .A4(n_0_0), .ZN(n_0_4));
   AND2_X1 i_0_5 (.A1(n_0_4), .A2(n_2), .ZN(Cout));
endmodule

module carry_skip_adder(i_add1, i_add2, o_result);
   input [31:0]i_add1;
   input [31:0]i_add2;
   output [32:0]o_result;

   wire [7:0]carries;

   carry_skip_adder_4_bit__0_64 bits_28_to_31 (.A({i_add1[31], i_add1[30], 
      i_add1[29], i_add1[28]}), .B({i_add2[31], i_add2[30], i_add2[29], 
      i_add2[28]}), .Cin(carries[6]), .Sum({o_result[31], o_result[30], 
      o_result[29], o_result[28]}), .Cout(o_result[32]));
   carry_skip_adder_4_bit__0_99 bits_24_to_27 (.A({i_add1[27], i_add1[26], 
      i_add1[25], i_add1[24]}), .B({i_add2[27], i_add2[26], i_add2[25], 
      i_add2[24]}), .Cin(carries[5]), .Sum({o_result[27], o_result[26], 
      o_result[25], o_result[24]}), .Cout(carries[6]));
   carry_skip_adder_4_bit__0_134 bits_20_to_23 (.A({i_add1[23], i_add1[22], 
      i_add1[21], i_add1[20]}), .B({i_add2[23], i_add2[22], i_add2[21], 
      i_add2[20]}), .Cin(carries[4]), .Sum({o_result[23], o_result[22], 
      o_result[21], o_result[20]}), .Cout(carries[5]));
   carry_skip_adder_4_bit__0_169 bits_16_to_19 (.A({i_add1[19], i_add1[18], 
      i_add1[17], i_add1[16]}), .B({i_add2[19], i_add2[18], i_add2[17], 
      i_add2[16]}), .Cin(carries[3]), .Sum({o_result[19], o_result[18], 
      o_result[17], o_result[16]}), .Cout(carries[4]));
   carry_skip_adder_4_bit__0_204 bits_12_to_15 (.A({i_add1[15], i_add1[14], 
      i_add1[13], i_add1[12]}), .B({i_add2[15], i_add2[14], i_add2[13], 
      i_add2[12]}), .Cin(carries[2]), .Sum({o_result[15], o_result[14], 
      o_result[13], o_result[12]}), .Cout(carries[3]));
   carry_skip_adder_4_bit__0_239 bits_8_to_11 (.A({i_add1[11], i_add1[10], 
      i_add1[9], i_add1[8]}), .B({i_add2[11], i_add2[10], i_add2[9], i_add2[8]}), 
      .Cin(carries[1]), .Sum({o_result[11], o_result[10], o_result[9], 
      o_result[8]}), .Cout(carries[2]));
   carry_skip_adder_4_bit__0_274 bits_4_to_7 (.A({i_add1[7], i_add1[6], 
      i_add1[5], i_add1[4]}), .B({i_add2[7], i_add2[6], i_add2[5], i_add2[4]}), 
      .Cin(carries[0]), .Sum({o_result[7], o_result[6], o_result[5], o_result[4]}), 
      .Cout(carries[1]));
   carry_skip_adder_4_bit bits_0_to_3 (.A({i_add1[3], i_add1[2], i_add1[1], 
      i_add1[0]}), .B({i_add2[3], i_add2[2], i_add2[1], i_add2[0]}), .Cin(), 
      .Sum({o_result[3], o_result[2], o_result[1], o_result[0]}), .Cout(
      carries[0]));
endmodule
