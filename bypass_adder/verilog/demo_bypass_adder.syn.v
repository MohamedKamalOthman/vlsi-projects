/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Wed Nov  2 22:02:08 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 4269935052 */

module half_adder(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_31(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_28(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_32(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_31 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_28 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_39(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_36(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_40(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_39 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_36 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_47(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_44(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_48(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_47 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_44 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_55(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_52(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_56(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_55 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_52 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_63(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_60(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_64(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_63 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_60 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_71(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_68(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_72(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_71 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_68 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_79(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_76(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_80(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_79 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_76 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_87(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_84(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_88(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_87 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_84 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_95(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_92(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_96(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_95 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_92 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_103(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_100(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_104(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_103 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_100 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_111(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_108(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_112(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_111 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_108 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_119(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_116(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_120(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_119 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_116 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_127(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_124(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_128(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_127 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_124 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_135(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_132(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_136(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_135 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_132 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_143(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_140(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_144(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_143 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_140 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_151(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_148(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_152(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_151 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_148 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_159(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_156(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_160(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_159 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_156 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_167(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_164(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_168(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_167 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_164 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_175(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_172(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_176(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_175 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_172 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_183(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_180(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_184(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_183 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_180 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_191(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_188(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_192(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_191 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_188 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
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

module half_adder__0_223(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_220(a, b, sum, cout);
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

   wire y;
   wire x;
   wire z;

   half_adder__0_223 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_220 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_231(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_228(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_232(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_231 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_228 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_239(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_236(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_240(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_239 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_236 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_247(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_244(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_248(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_247 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_244 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_255(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_252(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_256(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_255 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_252 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_263(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_260(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module full_adder__0_264(a, b, cin, sum, cout);
   input a;
   input b;
   input cin;
   output sum;
   output cout;

   wire y;
   wire x;
   wire z;

   half_adder__0_263 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_260 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module half_adder__0_21(a, b, sum, cout);
   input a;
   input b;
   output sum;
   output cout;

   XOR2_X1 i_0_0 (.A(a), .B(b), .Z(sum));
   AND2_X1 i_0_1 (.A1(a), .A2(b), .ZN(cout));
endmodule

module half_adder__0_24(a, b, sum, cout);
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

   half_adder__0_21 h1 (.a(a), .b(b), .sum(x), .cout(y));
   half_adder__0_24 h2 (.a(x), .b(cin), .sum(sum), .cout(z));
   OR2_X1 i_0_0 (.A1(z), .A2(y), .ZN(cout));
endmodule

module bypass_adder(a, b, sum);
   input [31:0]a;
   input [31:0]b;
   output [32:0]sum;

   wire c;
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
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_9;
   wire n_0_10;
   wire n_0_11;
   wire n_0_12;
   wire n_0_13;
   wire n_0_14;
   wire n_0_15;
   wire n_0_16;
   wire n_0_17;
   wire n_0_18;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_0_25;
   wire n_0_0_26;
   wire n_0_0_27;
   wire n_0_0_28;
   wire n_0_0_29;
   wire n_0_0_30;
   wire n_0_0_31;
   wire n_0_0_32;
   wire n_0_0_33;
   wire n_0_0_34;
   wire n_0_0_35;
   wire n_0_0_36;
   wire n_0_0_37;
   wire n_0_0_38;
   wire n_0_0_39;
   wire n_0_0_40;
   wire n_0_0_41;
   wire n_0_0_42;

   half_adder ha (.a(a[0]), .b(b[0]), .sum(sum[0]), .cout(c));
   full_adder__0_32 genblk1_0_fa (.a(a[1]), .b(b[1]), .cin(c), .sum(sum[1]), 
      .cout(n_0_19));
   full_adder__0_40 genblk1_1_fa (.a(a[2]), .b(b[2]), .cin(n_0_19), .sum(sum[2]), 
      .cout(n_0_20));
   full_adder__0_48 genblk1_2_fa (.a(a[3]), .b(b[3]), .cin(n_0_20), .sum(sum[3]), 
      .cout(n_0_21));
   full_adder__0_56 genblk1_3_fa (.a(a[4]), .b(b[4]), .cin(n_0_21), .sum(sum[4]), 
      .cout(n_0_22));
   full_adder__0_64 genblk1_4_fa (.a(a[5]), .b(b[5]), .cin(n_0_22), .sum(sum[5]), 
      .cout(n_0_23));
   full_adder__0_72 genblk1_5_fa (.a(a[6]), .b(b[6]), .cin(n_0_23), .sum(sum[6]), 
      .cout(n_0_24));
   full_adder__0_80 genblk1_6_fa (.a(a[7]), .b(b[7]), .cin(n_0_24), .sum(sum[7]), 
      .cout(n_0_25));
   full_adder__0_88 genblk1_7_fa (.a(a[8]), .b(b[8]), .cin(n_0_25), .sum(sum[8]), 
      .cout(n_0_26));
   full_adder__0_96 genblk1_8_fa (.a(a[9]), .b(b[9]), .cin(n_0_26), .sum(sum[9]), 
      .cout(n_0_27));
   full_adder__0_104 genblk1_9_fa (.a(a[10]), .b(b[10]), .cin(n_0_27), .sum(
      sum[10]), .cout(n_0_28));
   full_adder__0_112 genblk1_10_fa (.a(a[11]), .b(b[11]), .cin(n_0_28), .sum(
      sum[11]), .cout(n_0_29));
   full_adder__0_120 genblk1_11_fa (.a(a[12]), .b(b[12]), .cin(n_0_29), .sum(
      sum[12]), .cout(n_0_30));
   full_adder__0_128 genblk1_12_fa (.a(a[13]), .b(b[13]), .cin(n_0_30), .sum(
      sum[13]), .cout(n_0_0));
   full_adder__0_136 genblk1_13_fa (.a(a[14]), .b(b[14]), .cin(n_0_0), .sum(
      sum[14]), .cout(n_0_1));
   full_adder__0_144 genblk1_14_fa (.a(a[15]), .b(b[15]), .cin(n_0_1), .sum(
      sum[15]), .cout(n_0_2));
   full_adder__0_152 genblk1_15_fa (.a(a[16]), .b(b[16]), .cin(n_0_2), .sum(
      sum[16]), .cout(n_0_3));
   full_adder__0_160 genblk1_16_fa (.a(a[17]), .b(b[17]), .cin(n_0_3), .sum(
      sum[17]), .cout(n_0_4));
   full_adder__0_168 genblk1_17_fa (.a(a[18]), .b(b[18]), .cin(n_0_4), .sum(
      sum[18]), .cout(n_0_5));
   full_adder__0_176 genblk1_18_fa (.a(a[19]), .b(b[19]), .cin(n_0_5), .sum(
      sum[19]), .cout(n_0_6));
   full_adder__0_184 genblk1_19_fa (.a(a[20]), .b(b[20]), .cin(n_0_6), .sum(
      sum[20]), .cout(n_0_7));
   full_adder__0_192 genblk1_20_fa (.a(a[21]), .b(b[21]), .cin(n_0_7), .sum(
      sum[21]), .cout(n_0_8));
   full_adder__0_200 genblk1_21_fa (.a(a[22]), .b(b[22]), .cin(n_0_8), .sum(
      sum[22]), .cout(n_0_9));
   full_adder__0_208 genblk1_22_fa (.a(a[23]), .b(b[23]), .cin(n_0_9), .sum(
      sum[23]), .cout(n_0_10));
   full_adder__0_216 genblk1_23_fa (.a(a[24]), .b(b[24]), .cin(n_0_10), .sum(
      sum[24]), .cout(n_0_11));
   full_adder__0_224 genblk1_24_fa (.a(a[25]), .b(b[25]), .cin(n_0_11), .sum(
      sum[25]), .cout(n_0_12));
   full_adder__0_232 genblk1_25_fa (.a(a[26]), .b(b[26]), .cin(n_0_12), .sum(
      sum[26]), .cout(n_0_13));
   full_adder__0_240 genblk1_26_fa (.a(a[27]), .b(b[27]), .cin(n_0_13), .sum(
      sum[27]), .cout(n_0_14));
   full_adder__0_248 genblk1_27_fa (.a(a[28]), .b(b[28]), .cin(n_0_14), .sum(
      sum[28]), .cout(n_0_15));
   full_adder__0_256 genblk1_28_fa (.a(a[29]), .b(b[29]), .cin(n_0_15), .sum(
      sum[29]), .cout(n_0_16));
   full_adder__0_264 genblk1_29_fa (.a(a[30]), .b(b[30]), .cin(n_0_16), .sum(
      sum[30]), .cout(n_0_17));
   full_adder genblk1_30_fa (.a(a[31]), .b(b[31]), .cin(n_0_17), .sum(sum[31]), 
      .cout(n_0_18));
   AOI21_X1 i_0_0_0 (.A(n_0_0_42), .B1(n_0_0_5), .B2(n_0_0_0), .ZN(sum[32]));
   NOR4_X1 i_0_0_1 (.A1(n_0_0_4), .A2(n_0_0_3), .A3(n_0_0_2), .A4(n_0_0_1), 
      .ZN(n_0_0_0));
   NAND4_X1 i_0_0_2 (.A1(n_0_0_38), .A2(n_0_0_32), .A3(n_0_0_18), .A4(n_0_0_12), 
      .ZN(n_0_0_1));
   NAND4_X1 i_0_0_3 (.A1(n_0_0_39), .A2(n_0_0_33), .A3(n_0_0_19), .A4(n_0_0_13), 
      .ZN(n_0_0_2));
   NAND4_X1 i_0_0_4 (.A1(n_0_0_34), .A2(n_0_0_28), .A3(n_0_0_22), .A4(n_0_0_16), 
      .ZN(n_0_0_3));
   NAND4_X1 i_0_0_5 (.A1(n_0_0_35), .A2(n_0_0_29), .A3(n_0_0_23), .A4(n_0_0_17), 
      .ZN(n_0_0_4));
   NOR4_X1 i_0_0_6 (.A1(n_0_0_9), .A2(n_0_0_8), .A3(n_0_0_7), .A4(n_0_0_6), 
      .ZN(n_0_0_5));
   NAND4_X1 i_0_0_7 (.A1(n_0_0_40), .A2(n_0_0_26), .A3(n_0_0_20), .A4(n_0_0_14), 
      .ZN(n_0_0_6));
   NAND4_X1 i_0_0_8 (.A1(n_0_0_41), .A2(n_0_0_27), .A3(n_0_0_21), .A4(n_0_0_15), 
      .ZN(n_0_0_7));
   NAND4_X1 i_0_0_9 (.A1(n_0_0_36), .A2(n_0_0_30), .A3(n_0_0_24), .A4(n_0_0_10), 
      .ZN(n_0_0_8));
   NAND4_X1 i_0_0_10 (.A1(n_0_0_37), .A2(n_0_0_31), .A3(n_0_0_25), .A4(n_0_0_11), 
      .ZN(n_0_0_9));
   XOR2_X1 i_0_0_11 (.A(b[1]), .B(a[1]), .Z(n_0_0_10));
   XOR2_X1 i_0_0_12 (.A(b[0]), .B(a[0]), .Z(n_0_0_11));
   XOR2_X1 i_0_0_13 (.A(b[13]), .B(a[13]), .Z(n_0_0_12));
   XOR2_X1 i_0_0_14 (.A(b[10]), .B(a[10]), .Z(n_0_0_13));
   XOR2_X1 i_0_0_15 (.A(b[8]), .B(a[8]), .Z(n_0_0_14));
   XOR2_X1 i_0_0_16 (.A(b[16]), .B(a[16]), .Z(n_0_0_15));
   XOR2_X1 i_0_0_17 (.A(b[15]), .B(a[15]), .Z(n_0_0_16));
   XOR2_X1 i_0_0_18 (.A(b[25]), .B(a[25]), .Z(n_0_0_17));
   XOR2_X1 i_0_0_19 (.A(b[29]), .B(a[29]), .Z(n_0_0_18));
   XOR2_X1 i_0_0_20 (.A(b[17]), .B(a[17]), .Z(n_0_0_19));
   XOR2_X1 i_0_0_21 (.A(b[26]), .B(a[26]), .Z(n_0_0_20));
   XOR2_X1 i_0_0_22 (.A(b[28]), .B(a[28]), .Z(n_0_0_21));
   XOR2_X1 i_0_0_23 (.A(b[23]), .B(a[23]), .Z(n_0_0_22));
   XOR2_X1 i_0_0_24 (.A(b[30]), .B(a[30]), .Z(n_0_0_23));
   XOR2_X1 i_0_0_25 (.A(b[20]), .B(a[20]), .Z(n_0_0_24));
   XOR2_X1 i_0_0_26 (.A(b[12]), .B(a[12]), .Z(n_0_0_25));
   XOR2_X1 i_0_0_27 (.A(b[5]), .B(a[5]), .Z(n_0_0_26));
   XOR2_X1 i_0_0_28 (.A(b[4]), .B(a[4]), .Z(n_0_0_27));
   XOR2_X1 i_0_0_29 (.A(b[21]), .B(a[21]), .Z(n_0_0_28));
   XOR2_X1 i_0_0_30 (.A(b[24]), .B(a[24]), .Z(n_0_0_29));
   XOR2_X1 i_0_0_31 (.A(b[2]), .B(a[2]), .Z(n_0_0_30));
   XOR2_X1 i_0_0_32 (.A(b[6]), .B(a[6]), .Z(n_0_0_31));
   XOR2_X1 i_0_0_33 (.A(b[19]), .B(a[19]), .Z(n_0_0_32));
   XOR2_X1 i_0_0_34 (.A(b[11]), .B(a[11]), .Z(n_0_0_33));
   XOR2_X1 i_0_0_35 (.A(b[18]), .B(a[18]), .Z(n_0_0_34));
   XOR2_X1 i_0_0_36 (.A(b[27]), .B(a[27]), .Z(n_0_0_35));
   XOR2_X1 i_0_0_37 (.A(b[3]), .B(a[3]), .Z(n_0_0_36));
   XOR2_X1 i_0_0_38 (.A(b[7]), .B(a[7]), .Z(n_0_0_37));
   XOR2_X1 i_0_0_39 (.A(b[31]), .B(a[31]), .Z(n_0_0_38));
   XOR2_X1 i_0_0_40 (.A(b[14]), .B(a[14]), .Z(n_0_0_39));
   XOR2_X1 i_0_0_41 (.A(b[9]), .B(a[9]), .Z(n_0_0_40));
   XOR2_X1 i_0_0_42 (.A(b[22]), .B(a[22]), .Z(n_0_0_41));
   INV_X1 i_0_0_43 (.A(n_0_18), .ZN(n_0_0_42));
endmodule
