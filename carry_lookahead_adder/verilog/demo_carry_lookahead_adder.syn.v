/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Wed Nov  2 22:14:45 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1580092036 */

module halfAdder__0_44(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_45(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   halfAdder__0_44 h1 (.in1(x), .in2(y), .cout(), .sum(sum));
endmodule

module halfAdder__0_52(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_49(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_53(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_52 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_49 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_60(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_57(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_61(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_60 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_57 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_68(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_65(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_69(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_68 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_65 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_76(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_73(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_77(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_76 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_73 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_84(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_81(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_85(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_84 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_81 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_92(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_89(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_93(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_92 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_89 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_100(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_97(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_101(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_100 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_97 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_108(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_105(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_109(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_108 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_105 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_116(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_113(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_117(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_116 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_113 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_124(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_121(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_125(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_124 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_121 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_132(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_129(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_133(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_132 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_129 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_140(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_137(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_141(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_140 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_137 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_148(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_145(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_149(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_148 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_145 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_156(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_153(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_157(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_156 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_153 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_164(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_161(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_165(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_164 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_161 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_172(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_169(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_173(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_172 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_169 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_180(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_177(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_181(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_180 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_177 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_188(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_185(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_189(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_188 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_185 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_196(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_193(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_197(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_196 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_193 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_204(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_201(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_205(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_204 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_201 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_212(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_209(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_213(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_212 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_209 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_220(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_217(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_221(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_220 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_217 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_228(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_225(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_229(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_228 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_225 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_236(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_233(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_237(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_236 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_233 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_244(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_241(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_245(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_244 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_241 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_252(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_249(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_253(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_252 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_249 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_260(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_257(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_261(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_260 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_257 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_268(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_265(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_269(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_268 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_265 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_276(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_273(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_277(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_276 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_273 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_284(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder__0_281(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder__0_285(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_284 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder__0_281 h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module halfAdder__0_37(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module halfAdder(in1, in2, cout, sum);
   input in1;
   input in2;
   output cout;
   output sum;

   XOR2_X1 i_1_0 (.A(in1), .B(in2), .Z(sum));
endmodule

module fullAdder(cin, x, y, cout, sum);
   input cin;
   input x;
   input y;
   output cout;
   output sum;

   wire dummySum1;

   halfAdder__0_37 h1 (.in1(x), .in2(y), .cout(), .sum(dummySum1));
   halfAdder h2d (.in1(dummySum1), .in2(cin), .cout(), .sum(sum));
endmodule

module carry_lookahead_adder(i_add1, i_add2, o_result);
   input [31:0]i_add1;
   input [31:0]i_add2;
   output [32:0]o_result;

   wire n_0_0_0;
   wire n_0_28;
   wire n_0_0_1;
   wire n_0_0;
   wire n_0_0_2;
   wire n_0_1;
   wire n_0_0_3;
   wire n_0_2;
   wire n_0_0_4;
   wire n_0_3;
   wire n_0_0_5;
   wire n_0_4;
   wire n_0_0_6;
   wire n_0_5;
   wire n_0_0_7;
   wire n_0_6;
   wire n_0_0_8;
   wire n_0_7;
   wire n_0_0_9;
   wire n_0_8;
   wire n_0_0_10;
   wire n_0_9;
   wire n_0_0_11;
   wire n_0_10;
   wire n_0_0_12;
   wire n_0_11;
   wire n_0_0_13;
   wire n_0_12;
   wire n_0_0_14;
   wire n_0_13;
   wire n_0_0_15;
   wire n_0_14;
   wire n_0_0_16;
   wire n_0_15;
   wire n_0_0_17;
   wire n_0_16;
   wire n_0_0_18;
   wire n_0_17;
   wire n_0_0_19;
   wire n_0_18;
   wire n_0_0_20;
   wire n_0_19;
   wire n_0_0_21;
   wire n_0_20;
   wire n_0_0_22;
   wire n_0_21;
   wire n_0_0_23;
   wire n_0_22;
   wire n_0_0_24;
   wire n_0_23;
   wire n_0_0_25;
   wire n_0_24;
   wire n_0_0_26;
   wire n_0_25;
   wire n_0_0_27;
   wire n_0_26;
   wire n_0_0_28;
   wire n_0_27;
   wire n_0_0_29;
   wire w_C;
   wire n_0_0_30;
   wire w_G;
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
   wire n_0_0_43;
   wire n_0_0_44;
   wire n_0_0_45;
   wire n_0_0_46;
   wire n_0_0_47;
   wire n_0_0_48;
   wire n_0_0_49;
   wire n_0_0_50;
   wire n_0_0_51;
   wire n_0_0_52;
   wire n_0_0_53;
   wire n_0_0_54;
   wire n_0_0_55;
   wire n_0_0_56;
   wire n_0_0_57;
   wire n_0_0_58;
   wire n_0_0_59;
   wire n_0_0_60;
   wire n_0_0_61;

   fullAdder__0_45 genblk1_0_fullAdder_inst (.cin(), .x(i_add1[0]), .y(i_add2[0]), 
      .cout(), .sum(o_result[0]));
   fullAdder__0_53 genblk1_1_fullAdder_inst (.cin(w_G), .x(i_add1[1]), .y(
      i_add2[1]), .cout(), .sum(o_result[1]));
   fullAdder__0_61 genblk1_2_fullAdder_inst (.cin(w_C), .x(i_add1[2]), .y(
      i_add2[2]), .cout(), .sum(o_result[2]));
   fullAdder__0_69 genblk1_3_fullAdder_inst (.cin(n_0_27), .x(i_add1[3]), 
      .y(i_add2[3]), .cout(), .sum(o_result[3]));
   fullAdder__0_77 genblk1_4_fullAdder_inst (.cin(n_0_26), .x(i_add1[4]), 
      .y(i_add2[4]), .cout(), .sum(o_result[4]));
   fullAdder__0_85 genblk1_5_fullAdder_inst (.cin(n_0_25), .x(i_add1[5]), 
      .y(i_add2[5]), .cout(), .sum(o_result[5]));
   fullAdder__0_93 genblk1_6_fullAdder_inst (.cin(n_0_24), .x(i_add1[6]), 
      .y(i_add2[6]), .cout(), .sum(o_result[6]));
   fullAdder__0_101 genblk1_7_fullAdder_inst (.cin(n_0_23), .x(i_add1[7]), 
      .y(i_add2[7]), .cout(), .sum(o_result[7]));
   fullAdder__0_109 genblk1_8_fullAdder_inst (.cin(n_0_22), .x(i_add1[8]), 
      .y(i_add2[8]), .cout(), .sum(o_result[8]));
   fullAdder__0_117 genblk1_9_fullAdder_inst (.cin(n_0_21), .x(i_add1[9]), 
      .y(i_add2[9]), .cout(), .sum(o_result[9]));
   fullAdder__0_125 genblk1_10_fullAdder_inst (.cin(n_0_20), .x(i_add1[10]), 
      .y(i_add2[10]), .cout(), .sum(o_result[10]));
   fullAdder__0_133 genblk1_11_fullAdder_inst (.cin(n_0_19), .x(i_add1[11]), 
      .y(i_add2[11]), .cout(), .sum(o_result[11]));
   fullAdder__0_141 genblk1_12_fullAdder_inst (.cin(n_0_18), .x(i_add1[12]), 
      .y(i_add2[12]), .cout(), .sum(o_result[12]));
   fullAdder__0_149 genblk1_13_fullAdder_inst (.cin(n_0_17), .x(i_add1[13]), 
      .y(i_add2[13]), .cout(), .sum(o_result[13]));
   fullAdder__0_157 genblk1_14_fullAdder_inst (.cin(n_0_16), .x(i_add1[14]), 
      .y(i_add2[14]), .cout(), .sum(o_result[14]));
   fullAdder__0_165 genblk1_15_fullAdder_inst (.cin(n_0_15), .x(i_add1[15]), 
      .y(i_add2[15]), .cout(), .sum(o_result[15]));
   fullAdder__0_173 genblk1_16_fullAdder_inst (.cin(n_0_14), .x(i_add1[16]), 
      .y(i_add2[16]), .cout(), .sum(o_result[16]));
   fullAdder__0_181 genblk1_17_fullAdder_inst (.cin(n_0_13), .x(i_add1[17]), 
      .y(i_add2[17]), .cout(), .sum(o_result[17]));
   fullAdder__0_189 genblk1_18_fullAdder_inst (.cin(n_0_12), .x(i_add1[18]), 
      .y(i_add2[18]), .cout(), .sum(o_result[18]));
   fullAdder__0_197 genblk1_19_fullAdder_inst (.cin(n_0_11), .x(i_add1[19]), 
      .y(i_add2[19]), .cout(), .sum(o_result[19]));
   fullAdder__0_205 genblk1_20_fullAdder_inst (.cin(n_0_10), .x(i_add1[20]), 
      .y(i_add2[20]), .cout(), .sum(o_result[20]));
   fullAdder__0_213 genblk1_21_fullAdder_inst (.cin(n_0_9), .x(i_add1[21]), 
      .y(i_add2[21]), .cout(), .sum(o_result[21]));
   fullAdder__0_221 genblk1_22_fullAdder_inst (.cin(n_0_8), .x(i_add1[22]), 
      .y(i_add2[22]), .cout(), .sum(o_result[22]));
   fullAdder__0_229 genblk1_23_fullAdder_inst (.cin(n_0_7), .x(i_add1[23]), 
      .y(i_add2[23]), .cout(), .sum(o_result[23]));
   fullAdder__0_237 genblk1_24_fullAdder_inst (.cin(n_0_6), .x(i_add1[24]), 
      .y(i_add2[24]), .cout(), .sum(o_result[24]));
   fullAdder__0_245 genblk1_25_fullAdder_inst (.cin(n_0_5), .x(i_add1[25]), 
      .y(i_add2[25]), .cout(), .sum(o_result[25]));
   fullAdder__0_253 genblk1_26_fullAdder_inst (.cin(n_0_4), .x(i_add1[26]), 
      .y(i_add2[26]), .cout(), .sum(o_result[26]));
   fullAdder__0_261 genblk1_27_fullAdder_inst (.cin(n_0_3), .x(i_add1[27]), 
      .y(i_add2[27]), .cout(), .sum(o_result[27]));
   fullAdder__0_269 genblk1_28_fullAdder_inst (.cin(n_0_2), .x(i_add1[28]), 
      .y(i_add2[28]), .cout(), .sum(o_result[28]));
   fullAdder__0_277 genblk1_29_fullAdder_inst (.cin(n_0_1), .x(i_add1[29]), 
      .y(i_add2[29]), .cout(), .sum(o_result[29]));
   fullAdder__0_285 genblk1_30_fullAdder_inst (.cin(n_0_0), .x(i_add1[30]), 
      .y(i_add2[30]), .cout(), .sum(o_result[30]));
   fullAdder genblk1_31_fullAdder_inst (.cin(n_0_28), .x(i_add1[31]), .y(
      i_add2[31]), .cout(), .sum(o_result[31]));
   NAND2_X1 i_0_0_0 (.A1(n_0_0_61), .A2(n_0_0_0), .ZN(o_result[32]));
   OAI21_X1 i_0_0_1 (.A(n_0_28), .B1(i_add1[31]), .B2(i_add2[31]), .ZN(n_0_0_0));
   NAND2_X1 i_0_0_2 (.A1(n_0_0_60), .A2(n_0_0_1), .ZN(n_0_28));
   OAI21_X1 i_0_0_3 (.A(n_0_0), .B1(i_add1[30]), .B2(i_add2[30]), .ZN(n_0_0_1));
   NAND2_X1 i_0_0_4 (.A1(n_0_0_59), .A2(n_0_0_2), .ZN(n_0_0));
   OAI21_X1 i_0_0_5 (.A(n_0_1), .B1(i_add1[29]), .B2(i_add2[29]), .ZN(n_0_0_2));
   NAND2_X1 i_0_0_6 (.A1(n_0_0_58), .A2(n_0_0_3), .ZN(n_0_1));
   OAI21_X1 i_0_0_7 (.A(n_0_2), .B1(i_add1[28]), .B2(i_add2[28]), .ZN(n_0_0_3));
   NAND2_X1 i_0_0_8 (.A1(n_0_0_57), .A2(n_0_0_4), .ZN(n_0_2));
   OAI21_X1 i_0_0_9 (.A(n_0_3), .B1(i_add1[27]), .B2(i_add2[27]), .ZN(n_0_0_4));
   NAND2_X1 i_0_0_10 (.A1(n_0_0_56), .A2(n_0_0_5), .ZN(n_0_3));
   OAI21_X1 i_0_0_11 (.A(n_0_4), .B1(i_add1[26]), .B2(i_add2[26]), .ZN(n_0_0_5));
   NAND2_X1 i_0_0_12 (.A1(n_0_0_55), .A2(n_0_0_6), .ZN(n_0_4));
   OAI21_X1 i_0_0_13 (.A(n_0_5), .B1(i_add1[25]), .B2(i_add2[25]), .ZN(n_0_0_6));
   NAND2_X1 i_0_0_14 (.A1(n_0_0_54), .A2(n_0_0_7), .ZN(n_0_5));
   OAI21_X1 i_0_0_15 (.A(n_0_6), .B1(i_add1[24]), .B2(i_add2[24]), .ZN(n_0_0_7));
   NAND2_X1 i_0_0_16 (.A1(n_0_0_53), .A2(n_0_0_8), .ZN(n_0_6));
   OAI21_X1 i_0_0_17 (.A(n_0_7), .B1(i_add1[23]), .B2(i_add2[23]), .ZN(n_0_0_8));
   NAND2_X1 i_0_0_18 (.A1(n_0_0_52), .A2(n_0_0_9), .ZN(n_0_7));
   OAI21_X1 i_0_0_19 (.A(n_0_8), .B1(i_add1[22]), .B2(i_add2[22]), .ZN(n_0_0_9));
   NAND2_X1 i_0_0_20 (.A1(n_0_0_51), .A2(n_0_0_10), .ZN(n_0_8));
   OAI21_X1 i_0_0_21 (.A(n_0_9), .B1(i_add1[21]), .B2(i_add2[21]), .ZN(n_0_0_10));
   NAND2_X1 i_0_0_22 (.A1(n_0_0_50), .A2(n_0_0_11), .ZN(n_0_9));
   OAI21_X1 i_0_0_23 (.A(n_0_10), .B1(i_add1[20]), .B2(i_add2[20]), .ZN(n_0_0_11));
   NAND2_X1 i_0_0_24 (.A1(n_0_0_49), .A2(n_0_0_12), .ZN(n_0_10));
   OAI21_X1 i_0_0_25 (.A(n_0_11), .B1(i_add1[19]), .B2(i_add2[19]), .ZN(n_0_0_12));
   NAND2_X1 i_0_0_26 (.A1(n_0_0_48), .A2(n_0_0_13), .ZN(n_0_11));
   OAI21_X1 i_0_0_27 (.A(n_0_12), .B1(i_add1[18]), .B2(i_add2[18]), .ZN(n_0_0_13));
   NAND2_X1 i_0_0_28 (.A1(n_0_0_47), .A2(n_0_0_14), .ZN(n_0_12));
   OAI21_X1 i_0_0_29 (.A(n_0_13), .B1(i_add1[17]), .B2(i_add2[17]), .ZN(n_0_0_14));
   NAND2_X1 i_0_0_30 (.A1(n_0_0_46), .A2(n_0_0_15), .ZN(n_0_13));
   OAI21_X1 i_0_0_31 (.A(n_0_14), .B1(i_add1[16]), .B2(i_add2[16]), .ZN(n_0_0_15));
   NAND2_X1 i_0_0_32 (.A1(n_0_0_45), .A2(n_0_0_16), .ZN(n_0_14));
   OAI21_X1 i_0_0_33 (.A(n_0_15), .B1(i_add1[15]), .B2(i_add2[15]), .ZN(n_0_0_16));
   NAND2_X1 i_0_0_34 (.A1(n_0_0_44), .A2(n_0_0_17), .ZN(n_0_15));
   OAI21_X1 i_0_0_35 (.A(n_0_16), .B1(i_add1[14]), .B2(i_add2[14]), .ZN(n_0_0_17));
   NAND2_X1 i_0_0_36 (.A1(n_0_0_43), .A2(n_0_0_18), .ZN(n_0_16));
   OAI21_X1 i_0_0_37 (.A(n_0_17), .B1(i_add1[13]), .B2(i_add2[13]), .ZN(n_0_0_18));
   NAND2_X1 i_0_0_38 (.A1(n_0_0_42), .A2(n_0_0_19), .ZN(n_0_17));
   OAI21_X1 i_0_0_39 (.A(n_0_18), .B1(i_add1[12]), .B2(i_add2[12]), .ZN(n_0_0_19));
   NAND2_X1 i_0_0_40 (.A1(n_0_0_41), .A2(n_0_0_20), .ZN(n_0_18));
   OAI21_X1 i_0_0_41 (.A(n_0_19), .B1(i_add1[11]), .B2(i_add2[11]), .ZN(n_0_0_20));
   NAND2_X1 i_0_0_42 (.A1(n_0_0_40), .A2(n_0_0_21), .ZN(n_0_19));
   OAI21_X1 i_0_0_43 (.A(n_0_20), .B1(i_add1[10]), .B2(i_add2[10]), .ZN(n_0_0_21));
   NAND2_X1 i_0_0_44 (.A1(n_0_0_39), .A2(n_0_0_22), .ZN(n_0_20));
   OAI21_X1 i_0_0_45 (.A(n_0_21), .B1(i_add1[9]), .B2(i_add2[9]), .ZN(n_0_0_22));
   NAND2_X1 i_0_0_46 (.A1(n_0_0_38), .A2(n_0_0_23), .ZN(n_0_21));
   OAI21_X1 i_0_0_47 (.A(n_0_22), .B1(i_add1[8]), .B2(i_add2[8]), .ZN(n_0_0_23));
   NAND2_X1 i_0_0_48 (.A1(n_0_0_37), .A2(n_0_0_24), .ZN(n_0_22));
   OAI21_X1 i_0_0_49 (.A(n_0_23), .B1(i_add1[7]), .B2(i_add2[7]), .ZN(n_0_0_24));
   NAND2_X1 i_0_0_50 (.A1(n_0_0_36), .A2(n_0_0_25), .ZN(n_0_23));
   OAI21_X1 i_0_0_51 (.A(n_0_24), .B1(i_add1[6]), .B2(i_add2[6]), .ZN(n_0_0_25));
   NAND2_X1 i_0_0_52 (.A1(n_0_0_35), .A2(n_0_0_26), .ZN(n_0_24));
   OAI21_X1 i_0_0_53 (.A(n_0_25), .B1(i_add1[5]), .B2(i_add2[5]), .ZN(n_0_0_26));
   NAND2_X1 i_0_0_54 (.A1(n_0_0_34), .A2(n_0_0_27), .ZN(n_0_25));
   OAI21_X1 i_0_0_55 (.A(n_0_26), .B1(i_add1[4]), .B2(i_add2[4]), .ZN(n_0_0_27));
   NAND2_X1 i_0_0_56 (.A1(n_0_0_33), .A2(n_0_0_28), .ZN(n_0_26));
   OAI21_X1 i_0_0_57 (.A(n_0_27), .B1(i_add1[3]), .B2(i_add2[3]), .ZN(n_0_0_28));
   NAND2_X1 i_0_0_58 (.A1(n_0_0_32), .A2(n_0_0_29), .ZN(n_0_27));
   OAI21_X1 i_0_0_59 (.A(w_C), .B1(i_add1[2]), .B2(i_add2[2]), .ZN(n_0_0_29));
   NAND2_X1 i_0_0_60 (.A1(n_0_0_31), .A2(n_0_0_30), .ZN(w_C));
   OAI21_X1 i_0_0_61 (.A(w_G), .B1(i_add1[1]), .B2(i_add2[1]), .ZN(n_0_0_30));
   AND2_X1 i_0_0_62 (.A1(i_add2[0]), .A2(i_add1[0]), .ZN(w_G));
   NAND2_X1 i_0_0_63 (.A1(i_add2[1]), .A2(i_add1[1]), .ZN(n_0_0_31));
   NAND2_X1 i_0_0_64 (.A1(i_add2[2]), .A2(i_add1[2]), .ZN(n_0_0_32));
   NAND2_X1 i_0_0_65 (.A1(i_add2[3]), .A2(i_add1[3]), .ZN(n_0_0_33));
   NAND2_X1 i_0_0_66 (.A1(i_add2[4]), .A2(i_add1[4]), .ZN(n_0_0_34));
   NAND2_X1 i_0_0_67 (.A1(i_add2[5]), .A2(i_add1[5]), .ZN(n_0_0_35));
   NAND2_X1 i_0_0_68 (.A1(i_add2[6]), .A2(i_add1[6]), .ZN(n_0_0_36));
   NAND2_X1 i_0_0_69 (.A1(i_add2[7]), .A2(i_add1[7]), .ZN(n_0_0_37));
   NAND2_X1 i_0_0_70 (.A1(i_add2[8]), .A2(i_add1[8]), .ZN(n_0_0_38));
   NAND2_X1 i_0_0_71 (.A1(i_add2[9]), .A2(i_add1[9]), .ZN(n_0_0_39));
   NAND2_X1 i_0_0_72 (.A1(i_add2[10]), .A2(i_add1[10]), .ZN(n_0_0_40));
   NAND2_X1 i_0_0_73 (.A1(i_add2[11]), .A2(i_add1[11]), .ZN(n_0_0_41));
   NAND2_X1 i_0_0_74 (.A1(i_add2[12]), .A2(i_add1[12]), .ZN(n_0_0_42));
   NAND2_X1 i_0_0_75 (.A1(i_add2[13]), .A2(i_add1[13]), .ZN(n_0_0_43));
   NAND2_X1 i_0_0_76 (.A1(i_add2[14]), .A2(i_add1[14]), .ZN(n_0_0_44));
   NAND2_X1 i_0_0_77 (.A1(i_add2[15]), .A2(i_add1[15]), .ZN(n_0_0_45));
   NAND2_X1 i_0_0_78 (.A1(i_add2[16]), .A2(i_add1[16]), .ZN(n_0_0_46));
   NAND2_X1 i_0_0_79 (.A1(i_add2[17]), .A2(i_add1[17]), .ZN(n_0_0_47));
   NAND2_X1 i_0_0_80 (.A1(i_add2[18]), .A2(i_add1[18]), .ZN(n_0_0_48));
   NAND2_X1 i_0_0_81 (.A1(i_add2[19]), .A2(i_add1[19]), .ZN(n_0_0_49));
   NAND2_X1 i_0_0_82 (.A1(i_add2[20]), .A2(i_add1[20]), .ZN(n_0_0_50));
   NAND2_X1 i_0_0_83 (.A1(i_add2[21]), .A2(i_add1[21]), .ZN(n_0_0_51));
   NAND2_X1 i_0_0_84 (.A1(i_add2[22]), .A2(i_add1[22]), .ZN(n_0_0_52));
   NAND2_X1 i_0_0_85 (.A1(i_add2[23]), .A2(i_add1[23]), .ZN(n_0_0_53));
   NAND2_X1 i_0_0_86 (.A1(i_add2[24]), .A2(i_add1[24]), .ZN(n_0_0_54));
   NAND2_X1 i_0_0_87 (.A1(i_add2[25]), .A2(i_add1[25]), .ZN(n_0_0_55));
   NAND2_X1 i_0_0_88 (.A1(i_add2[26]), .A2(i_add1[26]), .ZN(n_0_0_56));
   NAND2_X1 i_0_0_89 (.A1(i_add2[27]), .A2(i_add1[27]), .ZN(n_0_0_57));
   NAND2_X1 i_0_0_90 (.A1(i_add2[28]), .A2(i_add1[28]), .ZN(n_0_0_58));
   NAND2_X1 i_0_0_91 (.A1(i_add2[29]), .A2(i_add1[29]), .ZN(n_0_0_59));
   NAND2_X1 i_0_0_92 (.A1(i_add2[30]), .A2(i_add1[30]), .ZN(n_0_0_60));
   NAND2_X1 i_0_0_93 (.A1(i_add2[31]), .A2(i_add1[31]), .ZN(n_0_0_61));
endmodule
