/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Wed Nov  2 21:46:37 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 2320341698 */

module datapath(add2_i, add1_i, p_0);
   input [31:0]add2_i;
   input [31:0]add1_i;
   output [32:0]p_0;

   HA_X1 i_0 (.A(add2_i[0]), .B(add1_i[0]), .CO(n_0), .S(p_0[0]));
   FA_X1 i_1 (.A(add2_i[1]), .B(add1_i[1]), .CI(n_0), .CO(n_1), .S(p_0[1]));
   FA_X1 i_2 (.A(add2_i[2]), .B(add1_i[2]), .CI(n_1), .CO(n_2), .S(p_0[2]));
   FA_X1 i_3 (.A(add2_i[3]), .B(add1_i[3]), .CI(n_2), .CO(n_3), .S(p_0[3]));
   FA_X1 i_4 (.A(add2_i[4]), .B(add1_i[4]), .CI(n_3), .CO(n_4), .S(p_0[4]));
   FA_X1 i_5 (.A(add2_i[5]), .B(add1_i[5]), .CI(n_4), .CO(n_5), .S(p_0[5]));
   FA_X1 i_6 (.A(add2_i[6]), .B(add1_i[6]), .CI(n_5), .CO(n_6), .S(p_0[6]));
   FA_X1 i_7 (.A(add2_i[7]), .B(add1_i[7]), .CI(n_6), .CO(n_7), .S(p_0[7]));
   FA_X1 i_8 (.A(add2_i[8]), .B(add1_i[8]), .CI(n_7), .CO(n_8), .S(p_0[8]));
   FA_X1 i_9 (.A(add2_i[9]), .B(add1_i[9]), .CI(n_8), .CO(n_9), .S(p_0[9]));
   FA_X1 i_10 (.A(add2_i[10]), .B(add1_i[10]), .CI(n_9), .CO(n_10), .S(p_0[10]));
   FA_X1 i_11 (.A(add2_i[11]), .B(add1_i[11]), .CI(n_10), .CO(n_11), .S(p_0[11]));
   FA_X1 i_12 (.A(add2_i[12]), .B(add1_i[12]), .CI(n_11), .CO(n_12), .S(p_0[12]));
   FA_X1 i_13 (.A(add2_i[13]), .B(add1_i[13]), .CI(n_12), .CO(n_13), .S(p_0[13]));
   FA_X1 i_14 (.A(add2_i[14]), .B(add1_i[14]), .CI(n_13), .CO(n_14), .S(p_0[14]));
   FA_X1 i_15 (.A(add2_i[15]), .B(add1_i[15]), .CI(n_14), .CO(n_15), .S(p_0[15]));
   FA_X1 i_16 (.A(add2_i[16]), .B(add1_i[16]), .CI(n_15), .CO(n_16), .S(p_0[16]));
   FA_X1 i_17 (.A(add2_i[17]), .B(add1_i[17]), .CI(n_16), .CO(n_17), .S(p_0[17]));
   FA_X1 i_18 (.A(add2_i[18]), .B(add1_i[18]), .CI(n_17), .CO(n_18), .S(p_0[18]));
   FA_X1 i_19 (.A(add2_i[19]), .B(add1_i[19]), .CI(n_18), .CO(n_19), .S(p_0[19]));
   FA_X1 i_20 (.A(add2_i[20]), .B(add1_i[20]), .CI(n_19), .CO(n_20), .S(p_0[20]));
   FA_X1 i_21 (.A(add2_i[21]), .B(add1_i[21]), .CI(n_20), .CO(n_21), .S(p_0[21]));
   FA_X1 i_22 (.A(add2_i[22]), .B(add1_i[22]), .CI(n_21), .CO(n_22), .S(p_0[22]));
   FA_X1 i_23 (.A(add2_i[23]), .B(add1_i[23]), .CI(n_22), .CO(n_23), .S(p_0[23]));
   FA_X1 i_24 (.A(add2_i[24]), .B(add1_i[24]), .CI(n_23), .CO(n_24), .S(p_0[24]));
   FA_X1 i_25 (.A(add2_i[25]), .B(add1_i[25]), .CI(n_24), .CO(n_25), .S(p_0[25]));
   FA_X1 i_26 (.A(add2_i[26]), .B(add1_i[26]), .CI(n_25), .CO(n_26), .S(p_0[26]));
   FA_X1 i_27 (.A(add2_i[27]), .B(add1_i[27]), .CI(n_26), .CO(n_27), .S(p_0[27]));
   FA_X1 i_28 (.A(add2_i[28]), .B(add1_i[28]), .CI(n_27), .CO(n_28), .S(p_0[28]));
   FA_X1 i_29 (.A(add2_i[29]), .B(add1_i[29]), .CI(n_28), .CO(n_29), .S(p_0[29]));
   FA_X1 i_30 (.A(add2_i[30]), .B(add1_i[30]), .CI(n_29), .CO(n_30), .S(p_0[30]));
   FA_X1 i_31 (.A(add2_i[31]), .B(add1_i[31]), .CI(n_30), .CO(p_0[32]), .S(
      p_0[31]));
endmodule

module PlusAdder(add1_i, add2_i, sum_o, carry_o);
   input [31:0]add1_i;
   input [31:0]add2_i;
   output [31:0]sum_o;
   output carry_o;

   datapath i_0_0 (.add2_i(add2_i), .add1_i(add1_i), .p_0({carry_o, sum_o[31], 
      sum_o[30], sum_o[29], sum_o[28], sum_o[27], sum_o[26], sum_o[25], 
      sum_o[24], sum_o[23], sum_o[22], sum_o[21], sum_o[20], sum_o[19], 
      sum_o[18], sum_o[17], sum_o[16], sum_o[15], sum_o[14], sum_o[13], 
      sum_o[12], sum_o[11], sum_o[10], sum_o[9], sum_o[8], sum_o[7], sum_o[6], 
      sum_o[5], sum_o[4], sum_o[3], sum_o[2], sum_o[1], sum_o[0]}));
endmodule
