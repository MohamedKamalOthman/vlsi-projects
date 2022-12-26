/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Fri Dec 23 15:11:15 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 3628152568 */

module booth(clk, load, reset, M, Q, P);
   input clk;
   input load;
   input reset;
   input [3:0]M;
   input [3:0]Q;
   output [7:0]P;

   wire Q_minus_one;
   wire n_0_13;
   wire [2:0]Count;
   wire n_0_16;
   wire n_0_15;
   wire n_0_14;
   wire n_0_0;
   wire [3:0]M_temp;
   wire n_0_1_3;
   wire n_0_1_0;
   wire n_0_1_4;
   wire n_0_1_1;
   wire n_0_1_5;
   wire n_0_1_2;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_6;
   wire n_0_8;
   wire n_0_9;
   wire n_0_1_6;
   wire n_0_10;
   wire n_0_1_7;
   wire n_0_17;
   wire n_0_1_8;
   wire n_0_1_9;
   wire n_0_18;
   wire n_0_19;
   wire n_0_20;
   wire n_0_11;
   wire n_0_1_10;
   wire n_0_1_11;
   wire n_0_1_12;
   wire n_0_21;
   wire n_0_1_13;
   wire n_0_1_14;
   wire n_0_1_15;
   wire n_0_1_16;
   wire n_0_22;
   wire n_0_1_17;
   wire n_0_1_18;
   wire n_0_1_19;
   wire n_0_1_20;
   wire n_0_23;
   wire n_0_7;
   wire n_0_1_21;
   wire n_0_12;
   wire n_0_1_22;
   wire n_0_1_23;
   wire n_0_1_24;
   wire n_0_1_25;
   wire n_0_1_26;
   wire n_0_1_27;
   wire n_0_5;
   wire n_0_1_28;
   wire n_0_1_29;
   wire n_0_1_30;
   wire n_0_1_31;
   wire n_0_1_32;
   wire n_0_1_33;
   wire n_0_1_34;
   wire n_0_1_35;
   wire n_0_1_36;
   wire n_0_1_37;
   wire n_0_1_38;
   wire n_0_1_39;
   wire n_0_1_40;
   wire n_0_1_41;
   wire n_0_1_42;
   wire n_0_1_43;
   wire n_0_1_44;
   wire n_0_1_45;
   wire n_0_1_46;
   wire n_0_1_47;
   wire n_0_1_48;
   wire n_0_1_49;
   wire n_0_1_50;
   wire n_0_1_51;
   wire n_0_1_52;
   wire n_0_1_53;
   wire n_0_1_54;
   wire n_0_1_55;
   wire n_0_1_56;
   wire n_0_1_57;
   wire n_0_1_58;
   wire n_0_1_59;

   DFF_X1 Q_minus_one_reg (.D(n_0_13), .CK(clk), .Q(Q_minus_one), .QN());
   MUX2_X1 Q_minus_one_reg_enable_mux_0 (.A(Q_minus_one), .B(n_0_6), .S(n_0_7), 
      .Z(n_0_13));
   DFF_X1 \Count_reg[0]  (.D(n_0_16), .CK(clk), .Q(Count[0]), .QN());
   DFF_X1 \Count_reg[1]  (.D(n_0_15), .CK(clk), .Q(Count[1]), .QN());
   DFF_X1 \Count_reg[2]  (.D(n_0_14), .CK(clk), .Q(Count[2]), .QN());
   MUX2_X1 i_0_0_0 (.A(Count[0]), .B(n_0_8), .S(n_0_11), .Z(n_0_16));
   MUX2_X1 i_0_0_1 (.A(Count[1]), .B(n_0_9), .S(n_0_11), .Z(n_0_15));
   MUX2_X1 i_0_0_2 (.A(Count[2]), .B(n_0_10), .S(n_0_11), .Z(n_0_14));
   CLKGATE_X1 clk_gate_M_temp_reg (.CK(clk), .E(n_0_5), .GCK(n_0_0));
   DFF_X1 \M_temp_reg[3]  (.D(n_0_4), .CK(n_0_0), .Q(M_temp[3]), .QN());
   DFF_X1 \M_temp_reg[2]  (.D(n_0_3), .CK(n_0_0), .Q(M_temp[2]), .QN());
   DFF_X1 \M_temp_reg[1]  (.D(n_0_2), .CK(n_0_0), .Q(M_temp[1]), .QN());
   DFF_X1 \M_temp_reg[0]  (.D(n_0_1), .CK(n_0_0), .Q(M_temp[0]), .QN());
   DFF_X1 \P_reg[1]  (.D(n_0_18), .CK(clk), .Q(P[1]), .QN());
   DFF_X1 \P_reg[2]  (.D(n_0_19), .CK(clk), .Q(P[2]), .QN());
   DFF_X1 \P_reg[3]  (.D(n_0_20), .CK(clk), .Q(P[3]), .QN());
   DFF_X1 \P_reg[4]  (.D(n_0_21), .CK(clk), .Q(P[4]), .QN());
   DFF_X1 \P_reg[5]  (.D(n_0_22), .CK(clk), .Q(P[5]), .QN());
   DFF_X1 \P_reg[6]  (.D(n_0_23), .CK(clk), .Q(P[6]), .QN());
   DFF_X1 \P_reg[7]  (.D(n_0_12), .CK(clk), .Q(P[7]), .QN());
   DFF_X1 \P_reg[0]  (.D(n_0_17), .CK(clk), .Q(P[0]), .QN());
   HA_X1 i_0_1_0 (.A(M_temp[0]), .B(P[4]), .CO(n_0_1_0), .S(n_0_1_3));
   FA_X1 i_0_1_1 (.A(M_temp[1]), .B(P[5]), .CI(n_0_1_0), .CO(n_0_1_1), .S(
      n_0_1_4));
   FA_X1 i_0_1_2 (.A(M_temp[2]), .B(P[6]), .CI(n_0_1_1), .CO(n_0_1_2), .S(
      n_0_1_5));
   AND2_X1 i_0_1_3 (.A1(n_0_1_46), .A2(M[0]), .ZN(n_0_1));
   AND2_X1 i_0_1_4 (.A1(n_0_1_46), .A2(M[1]), .ZN(n_0_2));
   AND2_X1 i_0_1_5 (.A1(n_0_1_46), .A2(M[2]), .ZN(n_0_3));
   AND2_X1 i_0_1_6 (.A1(n_0_1_46), .A2(M[3]), .ZN(n_0_4));
   NOR2_X1 i_0_1_7 (.A1(n_0_1_51), .A2(reset), .ZN(n_0_6));
   NOR3_X1 i_0_1_8 (.A1(Count[0]), .A2(reset), .A3(n_0_1_30), .ZN(n_0_8));
   NOR3_X1 i_0_1_9 (.A1(reset), .A2(n_0_1_29), .A3(n_0_1_6), .ZN(n_0_9));
   AOI21_X1 i_0_1_10 (.A(n_0_1_7), .B1(Count[1]), .B2(Count[0]), .ZN(n_0_1_6));
   OAI21_X1 i_0_1_11 (.A(n_0_1_46), .B1(n_0_1_50), .B2(n_0_1_7), .ZN(n_0_10));
   NOR2_X1 i_0_1_12 (.A1(Count[1]), .A2(Count[0]), .ZN(n_0_1_7));
   NOR2_X1 i_0_1_13 (.A1(reset), .A2(n_0_1_8), .ZN(n_0_17));
   AOI21_X1 i_0_1_14 (.A(n_0_1_9), .B1(Q[0]), .B2(load), .ZN(n_0_1_8));
   AOI221_X1 i_0_1_15 (.A(load), .B1(n_0_1_52), .B2(n_0_1_28), .C1(n_0_1_51), 
      .C2(n_0_1_29), .ZN(n_0_1_9));
   OAI222_X1 i_0_1_16 (.A1(n_0_1_52), .A2(n_0_1_10), .B1(n_0_1_47), .B2(n_0_11), 
      .C1(n_0_1_53), .C2(n_0_1_26), .ZN(n_0_18));
   OAI222_X1 i_0_1_17 (.A1(n_0_1_53), .A2(n_0_1_10), .B1(n_0_1_48), .B2(n_0_11), 
      .C1(n_0_1_54), .C2(n_0_1_26), .ZN(n_0_19));
   OAI222_X1 i_0_1_18 (.A1(n_0_1_54), .A2(n_0_1_10), .B1(n_0_1_49), .B2(n_0_11), 
      .C1(n_0_1_26), .C2(n_0_1_11), .ZN(n_0_20));
   NAND2_X1 i_0_1_19 (.A1(n_0_1_46), .A2(load), .ZN(n_0_11));
   NAND3_X1 i_0_1_20 (.A1(n_0_1_46), .A2(n_0_1_45), .A3(n_0_1_29), .ZN(n_0_1_10));
   AOI221_X1 i_0_1_21 (.A(n_0_1_12), .B1(n_0_1_39), .B2(n_0_1_36), .C1(n_0_1_3), 
      .C2(n_0_1_33), .ZN(n_0_1_11));
   AOI211_X1 i_0_1_22 (.A(n_0_1_57), .B(n_0_1_33), .C1(M_temp[0]), .C2(n_0_1_36), 
      .ZN(n_0_1_12));
   OAI22_X1 i_0_1_23 (.A1(n_0_1_26), .A2(n_0_1_13), .B1(n_0_1_57), .B2(n_0_7), 
      .ZN(n_0_21));
   AOI221_X1 i_0_1_24 (.A(n_0_1_14), .B1(P[5]), .B2(n_0_1_23), .C1(n_0_1_4), 
      .C2(n_0_1_33), .ZN(n_0_1_13));
   AOI21_X1 i_0_1_25 (.A(n_0_1_15), .B1(n_0_1_40), .B2(n_0_1_16), .ZN(n_0_1_14));
   OAI21_X1 i_0_1_26 (.A(n_0_1_36), .B1(n_0_1_40), .B2(n_0_1_16), .ZN(n_0_1_15));
   AOI21_X1 i_0_1_27 (.A(n_0_1_41), .B1(P[5]), .B2(n_0_1_55), .ZN(n_0_1_16));
   OAI22_X1 i_0_1_28 (.A1(n_0_1_26), .A2(n_0_1_17), .B1(n_0_1_58), .B2(n_0_7), 
      .ZN(n_0_22));
   AOI221_X1 i_0_1_29 (.A(n_0_1_18), .B1(P[6]), .B2(n_0_1_23), .C1(n_0_1_5), 
      .C2(n_0_1_33), .ZN(n_0_1_17));
   AOI21_X1 i_0_1_30 (.A(n_0_1_19), .B1(n_0_1_38), .B2(n_0_1_20), .ZN(n_0_1_18));
   OAI21_X1 i_0_1_31 (.A(n_0_1_36), .B1(n_0_1_38), .B2(n_0_1_20), .ZN(n_0_1_19));
   AOI21_X1 i_0_1_32 (.A(n_0_1_43), .B1(P[6]), .B2(n_0_1_56), .ZN(n_0_1_20));
   OAI211_X1 i_0_1_33 (.A(n_0_1_21), .B(n_0_1_25), .C1(n_0_1_59), .C2(n_0_7), 
      .ZN(n_0_23));
   NAND2_X1 i_0_1_34 (.A1(n_0_1_46), .A2(n_0_1_24), .ZN(n_0_7));
   NAND3_X1 i_0_1_35 (.A1(P[7]), .A2(n_0_1_23), .A3(n_0_1_27), .ZN(n_0_1_21));
   NAND2_X1 i_0_1_36 (.A1(n_0_1_25), .A2(n_0_1_22), .ZN(n_0_12));
   OAI211_X1 i_0_1_37 (.A(P[7]), .B(n_0_1_46), .C1(n_0_1_24), .C2(n_0_1_23), 
      .ZN(n_0_1_22));
   NOR2_X1 i_0_1_38 (.A1(n_0_1_36), .A2(n_0_1_33), .ZN(n_0_1_23));
   NAND2_X1 i_0_1_39 (.A1(n_0_1_45), .A2(n_0_1_28), .ZN(n_0_1_24));
   OAI21_X1 i_0_1_40 (.A(n_0_1_27), .B1(n_0_1_34), .B2(n_0_1_31), .ZN(n_0_1_25));
   INV_X1 i_0_1_41 (.A(n_0_1_27), .ZN(n_0_1_26));
   NOR2_X1 i_0_1_42 (.A1(n_0_1_29), .A2(n_0_5), .ZN(n_0_1_27));
   NAND2_X1 i_0_1_43 (.A1(n_0_1_46), .A2(n_0_1_45), .ZN(n_0_5));
   INV_X1 i_0_1_44 (.A(n_0_1_29), .ZN(n_0_1_28));
   NOR3_X1 i_0_1_45 (.A1(Count[2]), .A2(Count[1]), .A3(Count[0]), .ZN(n_0_1_29));
   NOR2_X1 i_0_1_46 (.A1(Count[2]), .A2(Count[1]), .ZN(n_0_1_30));
   AOI21_X1 i_0_1_47 (.A(n_0_1_32), .B1(n_0_1_2), .B2(n_0_1_44), .ZN(n_0_1_31));
   OAI21_X1 i_0_1_48 (.A(n_0_1_33), .B1(n_0_1_2), .B2(n_0_1_44), .ZN(n_0_1_32));
   AND2_X1 i_0_1_49 (.A1(Q_minus_one), .A2(n_0_1_51), .ZN(n_0_1_33));
   AOI21_X1 i_0_1_50 (.A(n_0_1_35), .B1(n_0_1_44), .B2(n_0_1_37), .ZN(n_0_1_34));
   OAI21_X1 i_0_1_51 (.A(n_0_1_36), .B1(n_0_1_44), .B2(n_0_1_37), .ZN(n_0_1_35));
   NOR2_X1 i_0_1_52 (.A1(Q_minus_one), .A2(n_0_1_51), .ZN(n_0_1_36));
   AOI22_X1 i_0_1_53 (.A1(P[6]), .A2(n_0_1_56), .B1(n_0_1_42), .B2(n_0_1_38), 
      .ZN(n_0_1_37));
   OAI22_X1 i_0_1_54 (.A1(n_0_1_58), .A2(M_temp[1]), .B1(n_0_1_41), .B2(n_0_1_39), 
      .ZN(n_0_1_38));
   INV_X1 i_0_1_55 (.A(n_0_1_40), .ZN(n_0_1_39));
   NAND2_X1 i_0_1_56 (.A1(n_0_1_57), .A2(M_temp[0]), .ZN(n_0_1_40));
   NOR2_X1 i_0_1_57 (.A1(P[5]), .A2(n_0_1_55), .ZN(n_0_1_41));
   INV_X1 i_0_1_58 (.A(n_0_1_43), .ZN(n_0_1_42));
   NOR2_X1 i_0_1_59 (.A1(P[6]), .A2(n_0_1_56), .ZN(n_0_1_43));
   XOR2_X1 i_0_1_60 (.A(P[7]), .B(M_temp[3]), .Z(n_0_1_44));
   INV_X1 i_0_1_61 (.A(load), .ZN(n_0_1_45));
   INV_X1 i_0_1_62 (.A(reset), .ZN(n_0_1_46));
   INV_X1 i_0_1_63 (.A(Q[1]), .ZN(n_0_1_47));
   INV_X1 i_0_1_64 (.A(Q[2]), .ZN(n_0_1_48));
   INV_X1 i_0_1_65 (.A(Q[3]), .ZN(n_0_1_49));
   INV_X1 i_0_1_66 (.A(Count[2]), .ZN(n_0_1_50));
   INV_X1 i_0_1_67 (.A(P[0]), .ZN(n_0_1_51));
   INV_X1 i_0_1_68 (.A(P[1]), .ZN(n_0_1_52));
   INV_X1 i_0_1_69 (.A(P[2]), .ZN(n_0_1_53));
   INV_X1 i_0_1_70 (.A(P[3]), .ZN(n_0_1_54));
   INV_X1 i_0_1_71 (.A(M_temp[1]), .ZN(n_0_1_55));
   INV_X1 i_0_1_72 (.A(M_temp[2]), .ZN(n_0_1_56));
   INV_X1 i_0_1_73 (.A(P[4]), .ZN(n_0_1_57));
   INV_X1 i_0_1_74 (.A(P[5]), .ZN(n_0_1_58));
   INV_X1 i_0_1_75 (.A(P[6]), .ZN(n_0_1_59));
endmodule
